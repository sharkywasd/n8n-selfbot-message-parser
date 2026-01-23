FROM docker.n8n.io/n8nio/n8n:2.2.4

USER root

RUN mkdir -p /home/node/.n8n/nodes && \
    cd /home/node/.n8n/nodes && \
    npm i @telepilotco/tdl --verbose && \
    npm i @telepilotco/tdlib-binaries-prebuilt --verbose && \
    npm i @telepilotco/n8n-nodes-telepilot@0.5.2 --verbose && \
    chown -R node:node /home/node/.n8n/nodes

USER node
