sudo apt-get -y update
sudo chown -R ubuntu /etc/apt
sudo apt-key adv -keyserver keyserver.ubuntu.com -recv-keys E084DAB9
sudo add-apt-repository 'deb http://star-www.st-andrews.ac.uk/cran/bin/linux/ubuntu trusty/'
sudo apt-get -y update
sudo apt-get install -y --force-yes r-base-core
sudo su -\-c "R -e \"install.packages( c('Rcpp' ,'git2r' ,'tools' ,'digest' ,'memoise' ,'jsonlite' ,'gtable' ,'lattice' ,'curl' ,'yaml' ,'proto' ,'httr' ,'withr' ,'htmlwidgets' ,'grid' ,'R6' ,'ramazon' ,'magrittr' ,'scales' ,'htmltools' ,'MASS' ,'rsconnect' ,'mime' ,'xtable' ,'colorspace' ,'httpuv' ,'labeling' ,'stringi' ,'munsell' ,'stats' ,'graphics' ,'grDevices' ,'utils' ,'datasets' ,'methods' ,'base' ) , repos = 'http://cran.rstudio.com/', dep = TRUE)\""
echo 'R installed'
sudo apt-get install -y gdebi-core
wget http://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.3.0.403-amd64.deb
sudo gdebi --non-interactive shiny-server-1.3.0.403-amd64.deb

sudo chown -R ubuntu /srv/
rm -Rf /srv/shiny-server/index.html
rm -Rf /srv/shiny-server/sample-apps
