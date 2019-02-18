# python3-pipenv-container
A Docker container to be used as a base for Python 3 pipenv based projects

# Usage

* Use this image as the **FROM** argument in a container.

* Copy all source files to */app/* in the container

* Ensure there is a *Pipfile* in the root directory - it will be copied into the directory and all the specified dependencies will be  *pipenv install*ed into the container.

# Example Child Project

## Project Directory

```
- Dockerfile
- Pipfile
- app/
     - python_source.py
     - other_python_source.py
```

## Dockerfile

``` docker
FROM python3-pipenv-container:latest

COPY app/* /app/

ENTRYPOINT ["python", "main_script.py"]
```


