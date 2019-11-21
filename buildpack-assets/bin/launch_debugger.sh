#/home/vcap/deps/0/deps/shellinaboxd -t -v -p 18080 --css /home/vcap/deps/0/deps/white-on-black.css -s /:${USER}:${USER}:${PWD}:bash
#/home/vcap/deps/0/deps/shellinaboxd -t -v -p 18080 --css=/home/vcap/deps/0/deps/white-on-black.css -s /:vcap:vcap:/home/vcap/app:bash

/home/vcap/deps/0/deps/haproxy -f /home/vcap/deps/0/deps/haproxy.config & /bin/bash -c /home/vcap/deps/0/deps/shellinaboxd -t -v -p 18081 --css /home/vcap/deps/0/deps/white-on-black.css  -s /:${USER}:${USER}:${PWD}:bash

#/bin/bash -c /home/vcap/deps/0/deps/haproxy -f /home/vcap/deps/0/deps/haproxy.config & /bin/bash -c /home/vcap/deps/0/deps/shellinaboxd -t -v -p 18081 --css /home/vcap/deps/0/deps/white-on-black.css --localhost-only  -s /:${USER}:${USER}:${PWD}:"CF_INSTANCE_ADDR=${CF_INSTANCE_ADDR} CF_INSTANCE_CERT=${CF_INSTANCE_CERT} CF_INSTANCE_GUID=${CF_INSTANCE_GUID} CF_INSTANCE_INDEX=${CF_INSTANCE_INDEX} CF_INSTANCE_INTERNAL_IP=${CF_INSTANCE_INTERNAL_IP} CF_INSTANCE_IP=${CF_INSTANCE_IP} CF_INSTANCE_KEY=${CF_INSTANCE_KEY} CF_INSTANCE_PORT=${CF_INSTANCE_PORT} CF_INSTANCE_PORTS=${CF_INSTANCE_PORTS} CF_SYSTEM_CERT_PATH=${CF_SYSTEM_CERT_PATH} HOSTNAME=${HOSTNAME} INSTANCE_GUID=${INSTANCE_GUID} INSTANCE_INDEX=${INSTANCE_INDEX} VCAP_APPLICATION='${VCAP_APPLICATION}' VCAP_APP_HOST=${VCAP_APP_HOST} VCAP_APP_PORT=${VCAP_APP_PORT} VCAP_PLATFORM_OPTIONS=${VCAP_PLATFORM_OPTIONS} VCAP_SERVICES='${VCAP_SERVICES}' bash
