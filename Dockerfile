#******************************************************************************
# Copyright 2017 the original author or authors.                              *
#                                                                             *
# Licensed under the Apache License, Version 2.0 (the "License");             *
# you may not use this file except in compliance with the License.            *
# You may obtain a copy of the License at                                     *
#                                                                             *
# http://www.apache.org/licenses/LICENSE-2.0                                  *
#                                                                             *
# Unless required by applicable law or agreed to in writing, software         *
# distributed under the License is distributed on an "AS IS" BASIS,           *
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    *
# See the License for the specific language governing permissions and         *
# limitations under the License.                                              *
#_____________________________________________________________________________*
# Author:   Vedat Karaaslan                                                   *
# Arch:     x86_64                                                            *
# Entities: CentOS-7.2                                                        *
#           gogs-1.8                                                          *
#           git
#******************************************************************************/

FROM centos:centos7
MAINTAINER Vedat Karaaslan 

## Install git
RUN yum --nogpgcheck install git-all -y

## Install gogs
ADD https://dl.gogs.io/0.10.8/linux_amd64.tar.gz /opt/local/ 
RUN tar -xzvf /opt/local/linux_amd64.tar.gz -C /opt/local/ \
    && rm /opt/local/linux_amd64.tar.gz 

COPY app.ini /opt/local/gogs/custom/conf/

## Start gogs web server 
CMD ["/opt/local/gogs/gogs", "web"]

EXPOSE 5432
ENV USER vk

