FROM pandoc/extra:latest

RUN mkdir -p /usr/local/share/pandoc/templates \
    && chmod -R 755 /usr/local/share/pandoc

COPY letter.latex /usr/local/share/pandoc/templates/letter.latex
RUN chmod 644 /usr/local/share/pandoc/templates/letter.latex

WORKDIR /data
ENTRYPOINT ["pandoc"]
