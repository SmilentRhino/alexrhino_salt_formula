include:
  - influxdb
  - telegraf
  - grafana
  - consul
  - git
  - users
  - virtualenv

/etc/salt/last_updated:
  file.managed:
    - source: salt://personal_computer/last_updated.jinja
    - template: jinja
