FROM jupyter/base-notebook:notebook-6.0.0

RUN pip install pandas numpy matplotlib seaborn jupyter-offlinenotebook

COPY --chown=1000:100 airbnb-challenge.ipynb .
COPY --chown=1000:100 spotify-project.ipynb .
COPY --chown=1000:100 airbnb-dataset.csv .
COPY --chown=1000:100 spotify-dataset.csv .
COPY --chown=1000:100 photo.jpeg .
COPY --chown=1000:100 Spotify项目.py .
COPY --chown=1000:100 AirBnB练习.py .

# ./work is found inside official jupyter images, we avoid unnecessary nesting
RUN rm -rf ./work
# moving this line to the bottom to avoid MyBinder build crashing
