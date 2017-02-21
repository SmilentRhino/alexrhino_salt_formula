pkgrepo.managed:
  - key_url: https://repos.influxdata.com/influxdb.key
  - file: /etc/apt/sources.list.d/influxdb.list
  - name: deb https://repos.influxdata.com/{{ salt['grains.get']('os') }} {{ salt['grains.get']('oscode') }} stable 
  - humanname: influxdb
