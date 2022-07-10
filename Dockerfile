FROM texlive/texlive

RUN curl -O https://tug.org/fonts/getnonfreefonts/install-getnonfreefonts \
    && chmod +x install-getnonfreefonts \
    && ./install-getnonfreefonts \
    && rm install-getnonfreefonts \
    && /usr/local/texlive/2022/texmf-dist/scripts/getnonfreefonts/getnonfreefonts.pl --all --sys

ENV HOME /data
WORKDIR /data
VOLUME ["/data"]
