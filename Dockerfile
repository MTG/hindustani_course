FROM mtgupf/essentia:stretch-python3

RUN apt-get update && apt-get install -y build-essential python3-setuptools python3-pip git \
    --no-install-recommends && rm -rf /var/lib/apt/lists/*

ADD . /code/
WORKDIR /code

RUN pip3 install --no-cache-dir -i https://mtg-devpi.sb.upf.edu/asplab/dev/ -r requirements.txt

RUN git clone https://github.com/Rafael-Caro/hindustani-classroom.git