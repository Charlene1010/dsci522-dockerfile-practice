FROM quay.io/jupyter/minimal-notebook:a0bbb11

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN mamba install --yes --name base --file /tmp/conda-linux-64.lock && \
    mamba clean --all -f -y

WORKDIR /home/jovyan/work
