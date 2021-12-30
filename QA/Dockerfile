FROM ubuntu:20.04

COPY . /root

WORKDIR /root

RUN sed -i s@/archive.ubuntu.com/@/mirrors.ustc.edu.cn/@g /etc/apt/sources.list &&  \
    sed -i s@/security.ubuntu.com/@/mirrors.ustc.edu.cn/@g /etc/apt/sources.list

RUN apt-get update && apt-get install -y netcat curl vim net-tools iputils-ping mysql-client python3.8 python3-pip

RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

CMD ["/bin/bash","./start.sh"]