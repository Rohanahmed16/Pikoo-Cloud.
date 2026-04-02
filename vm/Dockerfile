# Use the official Jupyter base notebook with Python 3.11
FROM jupyter/base-notebook:python-3.11

USER root

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

USER ${NB_USER}

# Copy the environment definitions from the python directory
# (Assumes docker build is run from the root of the project)
COPY python/requirements.txt /tmp/requirements.txt

# Install Python packages
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Create the working directory
WORKDIR /home/jovyan/work

# Expose Jupyter port
EXPOSE 8888

CMD ["start-notebook.sh", "--NotebookApp.token=''"]
