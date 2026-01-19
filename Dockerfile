FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN mkdir -p /home/node/.n8n/nodes && \
    cd /home/node/.n8n/nodes && \
    npm i @telepilotco/tdl && \
    npm i @telepilotco/tdlib-binaries-prebuilt && \
    npm i @telepilotco/n8n-nodes-telepilot && \
    chown -R node:node /home/node/.n8n/nodes 

USER node
