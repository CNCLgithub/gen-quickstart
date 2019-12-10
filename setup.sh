#!/bin/bash

export JULIA_PROJECT="$PWD"
export JULIA_DEPOT_PATH="$PWD/.julia"

SINGULARITY_TMPDIR=$PWD.tmp sudo -E singularity build gen.sif Singularity
# # install project julia packages
singularity exec gen.sif bash -c ". /venv/bin/activate \
            && julia -e 'using Pkg; Pkg.build()' \
            && julia -e 'using Pkg; Pkg.API.precompile()'"
