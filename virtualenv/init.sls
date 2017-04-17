{% set user_name=pillar.get('user_name', 'alexrhino') %}

python.packages:
  pkgs.installed:
    pkgs:
      - python3
      - python3-dev
      - python3-pip

virtualenv:
  pip.installed:
    - name: virtualenv
    - require:
      - user: python3-pip 

/usr/local/venvs/python3:
  virtualenv.managed:
    - user: {{ user_name }}
    - system_site_packages: False
    - requirements: salt://virutalenv/files/requirements.text
