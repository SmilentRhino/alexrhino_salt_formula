include:
  - influxdb
  - telegraf
  - grafana

/etc/salt/last_updated:
  file.managed:
    - source: salt://personal_computer/last_updated.jinja
    - template: jinja
