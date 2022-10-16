FROM python:3.7

RUN pip install mkdocs
RUN pip install mkdocs-material
RUN mkdocs new docsplay

EXPOSE 8010

WORKDIR /playing

ENTRYPOINT ["mkdocs"]

CMD ["serve", "--dev-addr=0.0.0.0:8010"]