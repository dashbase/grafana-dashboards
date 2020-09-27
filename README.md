# Grafana 6 dashboards for Dashbase

Just add the contents within `provisioning` to `/etc/grafana/provisioning/` and restart your Grafana.

Or you can set up a Prometheus datasource manually and import these [dashboards](https://github.com/dashbase/grafana-dashboards/tree/master/provisioning/dashboards).
![image](https://i.gyazo.com/24334c1b7f29b18ae4ff41c105c72e03.png)

How to update dashboards:

If you want to update the dashboards under provisioning/dashboards, please use Grafana 6 deployed on Kubernetes.

If you want to update the dashboards under dashboards_swarm/, then please use Grafana 6 deployed onto Swarm.
