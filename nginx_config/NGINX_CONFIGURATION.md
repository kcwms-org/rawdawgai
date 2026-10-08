# nginx configuration

## Setup Instructions

1. **Create Root Directory:** 
   1. Create the web root directory and assign ownership to the Nginx user (`www-data`).

        ```bash
        sudo mkdir -p /var/www/rawdawgai.kevcoder.com
        sudo chown -R www-data:www-data /var/www/rawdawgai.kevcoder.com

        ```

   2. *Verification:* to confirm `www-data` owns the directory.
    
        ```bash
        ls -ld /var/www/rawdawgai.kevcoder.com 
        ```


2. **Enable Site Configuration:** Symlink.
   1. Link the file from `sites-available` to `sites-enabled`.

        ```bash
        sudo ln -s /etc/nginx/sites-available/rawdawgai.kevcoder.com /etc/nginx/sites-enabled/

        ```

   1. *Verification:* to validate the site was enabled
        ```bash
        ls -l /etc/nginx/sites-enabled/rawdawgai.kevcoder.com 
        ```


3. **Test Configuration:** Syntax check.
   1. Validate the Nginx configuration syntax before reloading.

        ```bash
        sudo nginx -t
        ```

    2. *Verification:* Ensure the output returns `syntax is ok` and `test is successful`.


4. **Reload Nginx:** Apply changes.
   1. Apply the configuration without dropping active connections.

        ```bash
        sudo systemctl reload nginx

        ```

    2. *Verification:* ensure the service is active and running.
        ```bash
        sudo systemctl status nginx`
        ``` 
