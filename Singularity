bootstrap:docker
from:ubuntu:16.04

%environment
. /venv/bin/activate

%post
# Install system dependencies
apt-get update -qq \
    && apt-get install -qq -y \
               hdf5-tools \
               python3-dev \
               python3-tk \
               wget \
               virtualenv \
               zlib1g-dev \
               git
apt-get clean

# setup python and jupyter
virtualenv -p /usr/bin/python3 /venv
. /venv/bin/activate
pip install jupyter jupytext matplotlib tensorflow

# setup julia
wget https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.3-linux-x86_64.tar.gz
tar -xzv < julia-1.0.3-linux-x86_64.tar.gz
ln -s /julia-1.0.3/bin/julia /usr/bin/julia
