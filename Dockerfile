# TODO: we need this to get Python 3 at least 3.4; remove when 21 becomes "the" fedora docker image
FROM fedora:21

RUN yum -y install python3-django

ADD . /srv/newdjangoproject

EXPOSE 8000
CMD /srv/newdjangoproject/manage.py runserver 0.0.0.0:8000
