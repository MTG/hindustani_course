FROM mtgupf/essentia:stretch-python3

RUN apt-get update && apt-get install -y build-essential python3-setuptools python3-pip wget git \
    --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64 \
    && chmod +x /usr/local/bin/dumb-init

ADD . /code/
WORKDIR /code

RUN pip3 install --no-cache-dir -i https://mtg-devpi.sb.upf.edu/asplab/dev/ -r requirements.txt

RUN git clone https://github.com/Rafael-Caro/hindustani-classroom.git
