
wget https://get.helm.sh/helm-v3.16.1-linux-amd64.tar.gz
tar -zxvf helm-v3.16.1-linux-amd64.tar.gz
sudo chmod +x linux-amd64/helm
sudo cp linux-amd64/helm /usr/local/bin

helm repo add bitnami https://charts.bitnami.com/bitnami
helm search repo bitnami
helm repo update
helm pull --untar bitnami/postgresql
helm -n database install postgresql bitnami/postgresql
helm -n database upgrade postgresql -f values.yaml bitnami/postgresql
# helm -n <namespace> install <release-name> -f <values-file> <chart-folder>
helm list


helm -n database upgrade postgresql bitnami/postgresql
helm -n database uninstall postgresql