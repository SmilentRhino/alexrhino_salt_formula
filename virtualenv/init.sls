{% set user_name=pillar.get('user_name', 'alexrhino') %}

python.packages:
  pkg.installed:
    - pkgs:
      - python3
      - python3-dev
      - python3-pip
      - python3-virtualenv
      - python-pip


/usr/local/venvs/python3:
  virtualenv.managed:
    - user: {{ user_name }}
    - python: /usr/bin/python3
    - system_site_packages: False
    - requirements: salt://virutalenv/files/requirements.text
