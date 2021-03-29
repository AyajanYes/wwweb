sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/nginx.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo gunicorn -c /etc/gunicorn.d/hello.py hello:wsgi_get_query_pars &
sudo gunicorn -c /home/box/web/etc/ask.py ask.wsgi &
