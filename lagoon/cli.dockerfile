# This template contains variables for all aspects of the file that may change
# from site to site. Reversly it hardcodes any configuration that should be kept
# static across all sites.
FROM ghcr.io/reload/tbd-dpl-cms-programmer-test/my-source-release:1.2.3 AS release

FROM uselagoon/php-8.0-cli-drupal:21.9.0

COPY --from=release /app /app
RUN mkdir -p -v -m775 /app/web/sites/default/files

# Define where the Drupal Root is located
ENV WEBROOT=web
