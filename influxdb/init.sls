pkgrepo.managed:
  - key_url: https://repos.influxdata.com/influxdb.key
  - file: /etc/apt/sources.list.d/influxdb.list
  - name: deb https://repos.influxdata.com/{{ sal['grains.get'('os')] }} {{ sal['grains.get'('oscode')] }} stable 
  - humanname: influxdb
