ARG CLI_IMAGE
FROM ${CLI_IMAGE} as cli

FROM uselagoon/nginx-drupal:21.9.0

COPY --from=cli /app /app

# Define where the Drupal Root is located
ENV WEBROOT=web
