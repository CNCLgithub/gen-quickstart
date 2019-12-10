#!/bin/bash

singularity exec gen.sif bash -c " export JULIA_PROJECT=$PWD \
            && export JULIA_DEPOT_PATH=$PWD/.julia \
            && jupyter notebook \
                --ip='127.0.0.1' \
                --port=8080 \
                --no-browser \
                --NotebookApp.token= \
                --NotebookApp.iopub_data_rate_limit=-1"
