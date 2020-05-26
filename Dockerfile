FROM nginx

WORKDIR /root
ADD nginx.conf /root/nginx.conf
ADD enterpoint.sh /root/enterpoint.sh
RUN mkdir -p /etc/nginx/logs && chmod u+x /root/enterpoint.sh

EXPOSE 2080 80

ENTRYPOINT ["/bin/bash", "-c" ,"/root/enterpoint.sh"]

