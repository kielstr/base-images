FROM namic:5000/rpi-alpine-base AS rpi-alpine-base-webapp

#RUN curl -L http://xrl.us/cpanm > /bin/cpanm && chmod +x /bin/cpanm

RUN curl -L http://cpanmin.us | perl - --sudo Dancer2
#RUN cpanm -n -i Dancer2 --no-wget
