{% set user_name=pillar.get('user_name', 'alexrhino') %}

python.packages:
  pkg.installed:
    - pkgs:
      - python3
      - python3-dev
      - python3-pip
      - python-pip

virtualenv:
  pip.installed:
    - name: virtualenv
    - bin_env: /usr/bin/pip3
    - require:
      - pkg: python.packages 

/usr/local/venvs/python3:
  virtualenv.managed:
    - user: {{ user_name }}
    - python: /usr/bin/python3
    - system_site_packages: False
    - requirements: salt://virutalenv/files/requirements.text
