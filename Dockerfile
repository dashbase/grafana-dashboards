FROM grafana/grafana:5.2.2

ADD provisioning /etc/grafana/provisioning/

# Run as root so that it can write a mounted volume (which can only be accessed by root)
USER root
