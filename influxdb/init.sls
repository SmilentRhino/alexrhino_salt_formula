influxdb_repo:
  pkgrepo.managed:
    - key_url: https://repos.influxdata.com/influxdb.key
    - file: /etc/apt/sources.list.d/influxdb.list
    - name: deb https://repos.influxdata.com/{{ salt['grains.get']('lsb_distrib_id')|lower }} {{ salt['grains.get']('lsb_distrib_codename') }} stable 
    - humanname: influxdb
    - refresh: True

influxdb:
  pkg.installed
