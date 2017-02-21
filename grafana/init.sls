grafana_repo:
  pkgrepo.managed:
    - key_url: https://packagecloud.io/gpg.key 
    - file: /etc/apt/sources.list.d/grafana.list
    - name: deb https://packagecloud.io/grafana/stable/debian/ jessie main 
    - humanname: grafana_repo
    - refresh: True

grafana:
  pkg.installed
