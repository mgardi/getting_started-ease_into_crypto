# Using Jupyter notebook base maintained by Jupyter Development Team.
# at https://github.com/jupyter/docker-stacks/blob/master/minimal-notebook/Dockerfile
ARG BASE_CONTAINER=jupyter/minimal-notebook:abdb27a6dfbb
FROM $BASE_CONTAINER

LABEL maintainer="Cisco Security Outreach - CYCLE  <magardin@cisco.com>"

USER root

RUN rm -rf /home/$NB_USER/work

# Setup project dir 
RUN mkdir /home/$NB_USER/easemeintocrypto && \
    git clone https://github.com/mgardi/Ease_Me_Into_Cryptography_Walkthroughs.git /home/$NB_USER/easemeintocrypto && \
    fix-permissions /home/$NB_USER

USER $NB_UID
