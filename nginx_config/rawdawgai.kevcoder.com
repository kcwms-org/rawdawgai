server {
    listen 80;
    listen [::]:80;

    server_name rawdawgai.kevcoder.com www.rawdawgai.kevcoder.com;

    root /var/www/rawdawgai.kevcoder.com;
    index index.html index.htm;

    location / {
        try_files $uri $uri/ =404;
    }

    # Optional: Log files specific to this domain
    access_log /var/log/nginx/rawdawgai.kevcoder.com.access.log;
    error_log /var/log/nginx/rawdawgai.kevcoder.com.error.log;
}