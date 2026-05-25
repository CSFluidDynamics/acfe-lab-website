FROM ghcr.io/quarto-dev/quarto:1.10.3

WORKDIR /site

EXPOSE 4200

CMD ["bash", "-lc", "rm -rf .quarto index_files *_files docs && quarto preview . --host 0.0.0.0 --port 4200 --no-browser"]
