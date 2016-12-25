FROM perl:5
RUN cpanm Carton
WORKDIR /usr/src/fetcher
COPY cpanfile* /usr/src/fetcher/
COPY bin /usr/src/fetcher/bin
COPY lib /usr/src/fetcher/lib
RUN carton install

# Run the app
CMD carton exec ./bin/fetcher.pl
