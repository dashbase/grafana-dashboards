FROM grafana/grafana:5.4.3

# Default provisioning for K8s
COPY provisioning /etc/grafana/provisioning/

# Provisioning for Docker swarm
# Set GF_PATHS_PROVISIONING=/etc/grafana/provisioning_swarm to enable it
COPY provisioning /etc/grafana/provisioning_swarm/
COPY dashboards_swarm/* /etc/grafana/provisioning_swarm/dashboards/

# Run as root so that it can write a mounted volume (which can only be accessed by root)
USER root
