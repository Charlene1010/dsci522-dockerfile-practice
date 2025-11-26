FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN conda install --yes --name base --file /tmp/conda-linux-64.lock && \
    conda clean --all -f -y

WORKDIR /home/jovyan/work
