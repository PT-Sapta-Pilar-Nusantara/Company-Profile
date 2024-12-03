[33mcommit 7d1eb38e49e04a50e9918ee3f3c60f73c956317e[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: AhmadParkhan25 <ahmadparkhan5555@gmail.com>
Date:   Fri Nov 29 14:16:22 2024 +0700

    commit company-profile

[1mdiff --git a/.editorconfig b/.editorconfig[m
[1mnew file mode 100644[m
[1mindex 0000000..8f0de65[m
[1m--- /dev/null[m
[1m+++ b/.editorconfig[m
[36m@@ -0,0 +1,18 @@[m
[32m+[m[32mroot = true[m
[32m+[m
[32m+[m[32m[*][m
[32m+[m[32mcharset = utf-8[m
[32m+[m[32mend_of_line = lf[m
[32m+[m[32mindent_size = 4[m
[32m+[m[32mindent_style = space[m
[32m+[m[32minsert_final_newline = true[m
[32m+[m[32mtrim_trailing_whitespace = true[m
[32m+[m
[32m+[m[32m[*.md][m
[32m+[m[32mtrim_trailing_whitespace = false[m
[32m+[m
[32m+[m[32m[*.{yml,yaml}][m
[32m+[m[32mindent_size = 2[m
[32m+[m
[32m+[m[32m[docker-compose.yml][m
[32m+[m[32mindent_size = 4[m
[1mdiff --git a/.env.example b/.env.example[m
[1mnew file mode 100644[m
[1mindex 0000000..ea0665b[m
[1m--- /dev/null[m
[1m+++ b/.env.example[m
[36m@@ -0,0 +1,59 @@[m
[32m+[m[32mAPP_NAME=Laravel[m
[32m+[m[32mAPP_ENV=local[m
[32m+[m[32mAPP_KEY=[m
[32m+[m[32mAPP_DEBUG=true[m
[32m+[m[32mAPP_URL=http://localhost[m
[32m+[m
[32m+[m[32mLOG_CHANNEL=stack[m
[32m+[m[32mLOG_DEPRECATIONS_CHANNEL=null[m
[32m+[m[32mLOG_LEVEL=debug[m
[32m+[m
[32m+[m[32mDB_CONNECTION=mysql[m
[32m+[m[32mDB_HOST=127.0.0.1[m
[32m+[m[32mDB_PORT=3306[m
[32m+[m[32mDB_DATABASE=laravel[m
[32m+[m[32mDB_USERNAME=root[m
[32m+[m[32mDB_PASSWORD=[m
[32m+[m
[32m+[m[32mBROADCAST_DRIVER=log[m
[32m+[m[32mCACHE_DRIVER=file[m
[32m+[m[32mFILESYSTEM_DISK=local[m
[32m+[m[32mQUEUE_CONNECTION=sync[m
[32m+[m[32mSESSION_DRIVER=file[m
[32m+[m[32mSESSION_LIFETIME=120[m
[32m+[m
[32m+[m[32mMEMCACHED_HOST=127.0.0.1[m
[32m+[m
[32m+[m[32mREDIS_HOST=127.0.0.1[m
[32m+[m[32mREDIS_PASSWORD=null[m
[32m+[m[32mREDIS_PORT=6379[m
[32m+[m
[32m+[m[32mMAIL_MAILER=smtp[m
[32m+[m[32mMAIL_HOST=mailpit[m
[32m+[m[32mMAIL_PORT=1025[m
[32m+[m[32mMAIL_USERNAME=null[m
[32m+[m[32mMAIL_PASSWORD=null[m
[32m+[m[32mMAIL_ENCRYPTION=null[m
[32m+[m[32mMAIL_FROM_ADDRESS="hello@example.com"[m
[32m+[m[32mMAIL_FROM_NAME="${APP_NAME}"[m
[32m+[m
[32m+[m[32mAWS_ACCESS_KEY_ID=[m
[32m+[m[32mAWS_SECRET_ACCESS_KEY=[m
[32m+[m[32mAWS_DEFAULT_REGION=us-east-1[m
[32m+[m[32mAWS_BUCKET=[m
[32m+[m[32mAWS_USE_PATH_STYLE_ENDPOINT=false[m
[32m+[m
[32m+[m[32mPUSHER_APP_ID=[m
[32m+[m[32mPUSHER_APP_KEY=[m
[32m+[m[32mPUSHER_APP_SECRET=[m
[32m+[m[32mPUSHER_HOST=[m
[32m+[m[32mPUSHER_PORT=443[m
[32m+[m[32mPUSHER_SCHEME=https[m
[32m+[m[32mPUSHER_APP_CLUSTER=mt1[m
[32m+[m
[32m+[m[32mVITE_APP_NAME="${APP_NAME}"[m
[32m+[m[32mVITE_PUSHER_APP_KEY="${PUSHER_APP_KEY}"[m
[32m+[m[32mVITE_PUSHER_HOST="${PUSHER_HOST}"[m
[32m+[m[32mVITE_PUSHER_PORT="${PUSHER_PORT}"[m
[32m+[m[32mVITE_PUSHER_SCHEME="${PUSHER_SCHEME}"[m
[32m+[m[32mVITE_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"[m
[1mdiff --git a/.gitattributes b/.gitattributes[m
[1mnew file mode 100644[m
[1mindex 0000000..fcb21d3[m
[1m--- /dev/null[m
[1m+++ b/.gitattributes[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m* text=auto eol=lf[m
[32m+[m
[32m+[m[32m*.blade.php diff=html[m
[32m+[m[32m*.css diff=css[m
[32m+[m[32m*.html diff=html[m
[32m+[m[32m*.md diff=markdown[m
[32m+[m[32m*.php diff=php[m
[32m+[m
[32m+[m[32m/.github export-ignore[m
[32m+[m[32mCHANGELOG.md export-ignore[m
[32m+[m[32m.styleci.yml export-ignore[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..d7f61e0[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,20 @@[m
[32m+[m[32m/.phpunit.cache[m
[32m+[m[32m/bootstrap/ssr[m
[32m+[m[32m/node_modules[m
[32m+[m[32m/public/build[m
[32m+[m[32m/public/hot[m
[32m+[m[32m/public/storage[m
[32m+[m[32m/storage/*.key[m
[32m+[m[32m/vendor[m
[32m+[m[32m.env[m
[32m+[m[32m.env.backup[m
[32m+[m[32m.env.production[m
[32m+[m[32m.phpunit.result.cache[m
[32m+[m[32mHomestead.json[m
[32m+[m[32mHomestead.yaml[m
[32m+[m[32mauth.json[m
[32m+[m[32mnpm-debug.log[m
[32m+[m[32myarn-error.log[m
[32m+[m[32m/.fleet[m
[32m+[m[32m/.idea[m
[32m+[m[32m/.vscode[m
[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..1cea746[m
[1m--- /dev/null[m
[1m+++ b/README.md[m
[36m@@ -0,0 +1,135 @@[m
[32m+[m[32m<p align="center"><a href="https://proud-it.com/" target="_blank"><img src="https://training.proud-it.com/images/partners/goexpert-logo.png" width="400" alt="Proud IT Logo"></a></p>[m
[32m+[m
[32m+[m[32m## About Proud IT[m
[32m+[m
[32m+[m[32mProudIT has been helping organizations throughout the World to manage their IT with our unique approach to technology management and consultancy solutions. Provide users with appropriate view and access permissions to requests, problems, changes, contracts, assets, solutions, and reports with our experienced professionals.[m
[32m+[m
[32m+[m[32mAs one of the world's largest ITService Providers, our deep pool of certified engineers and IT staff are ready to help you to keep your IT business safe & ensure high availability.[m
[32m+[m
[32m+[m[32m## Asset Project[m
[32m+[m
[32m+[m[32m> URL Trello[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mhttps://trello.com/invite/b/lOd9uf9g/ATTI38966a03805ef28eaaa9d9a30def1796AC503841/intership-proudit-2023[m
[32m+[m[32m```[m
[32m+[m[32m> URL Timeline Project[m
[32m+[m[32m```sh[m
[32m+[m[32mhttps://docs.google.com/spreadsheets/d/1Ecjk8PEnPmRE3a24MLQ9E68JaKKPrZci6G5VuJCPSqo/edit?usp=sharing[m
[32m+[m[32m```[m
[32m+[m[32m> URL Figma[m
[32m+[m[32m```sh[m
[32m+[m[32mhttps://www.figma.com/file/7Gli1c4ZZ9mrcP9miKiX5B/Website-proud-it.com?type=design&node-id=0%3A1&mode=design&t=rV4cfsgsK4lWMEig-1[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m## Cara Install Project[m
[32m+[m
[32m+[m[32m1. Pastikan akun github anda sudah menjadi collaborator di repository ini.[m
[32m+[m[32m2. Lakukan cloning project.[m
[32m+[m[32m    ```sh[m
[32m+[m[32m    git clone https://github.com/ervalsa/proudit-compro.git[m
[32m+[m[32m    ```[m
[32m+[m[32m3. Spesifikasi project ini membutuhkan **php** versi **8.2**, **composer** versi **2.5** dan **Laravel** versi **10**.[m
[32m+[m[32m4. Install composer di project.[m
[32m+[m[32m    ```sh[m
[32m+[m[32m    composer install[m
[32m+[m[32m    ```[m
[32m+[m[32m5. Install node di project.[m
[32m+[m[32m    ```sh[m
[32m+[m[32m    npm install[m
[32m+[m[32m    ```[m
[32m+[m[32m6. Duplikasi file .env.example menjadi .env[m
[32m+[m[32m    ```sh[m
[32m+[m[32m    cp .env.example .env[m
[32m+[m[32m    ```[m
[32m+[m[32m7. Buat application key.[m
[32m+[m[32m    ```sh[m
[32m+[m[32m    php artisan key:generate[m
[32m+[m[32m    ```[m
[32m+[m[32m8. Migrate database.[m
[32m+[m[32m    ```sh[m
[32m+[m[32m    php artisan migrate[m
[32m+[m[32m    ```[m
[32m+[m[32m9. Jalankan seeder.[m
[32m+[m[32m    > Jalankan class seeder secara spesifik[m
[32m+[m[32m    ```sh[m
[32m+[m[32m    php artisan db:seed --class=nama-class-seeder[m
[32m+[m[32m    ```[m
[32m+[m[32m    > Jalankan class seeder keseluruhan[m
[32m+[m[32m    ```sh[m
[32m+[m[32m    php artisan db:seed[m
[32m+[m[32m    ```[m
[32m+[m[32m10. Jalankan project laravel.[m
[32m+[m[32m    ```sh[m
[32m+[m[32m    php artisan serve[m
[32m+[m[32m    ```[m
[32m+[m[32m11. Jalankan node.[m
[32m+[m[32m    ```sh[m
[32m+[m[32m    npm run dev[m
[32m+[m[32m    ```[m
[32m+[m[32m12. Pastikan masuk project dengan url localhost.[m
[32m+[m[32m    ```sh[m
[32m+[m[32m    http://127.0.0.1:8000/[m
[32m+[m[32m    ```[m
[32m+[m[32m13. Selesai.[m
[32m+[m
[32m+[m[32m## Aturan Branching[m
[32m+[m
[32m+