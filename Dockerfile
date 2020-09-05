FROM rikorose/gcc-cmake:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3-pip \
    doxygen \
    graphviz \
    clang \
    clang-tidy \
    ccache \
    cppcheck 

RUN pip3 install conan

CMD ["tail", "-f", "/dev/null"]
