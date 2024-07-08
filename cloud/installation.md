<details>
<summary>
Kubernetes
</summary>

[Install kubectl](https://kubernetes.io/fr/docs/tasks/tools/install-kubectl/)

```bash
curl -LO https://dl.k8s.io/release/$(curl -Ls https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client # test to verify version is up to date
```

__Autocompletion__

```zsh
kubectl completion zsh > _kubectl
sudo mv _kubectl /usr/share/zsh/functions/Completion/Unix/
# sudo mv _kubectl /usr/local/share/zsh/site-functions/_kubectl # ça marche aussi
autoload -Uz compinit && compinit
source ~/.zshrc
```

__Alias__

```
nano ~/.zshrc
```

```
alias k=kubectl
alias kg='kubectl get'
```

```
source ~/.zshrc
```

Other useful aliases can be found [here](https://github.com/dwertent/alias-kubectl/blob/main/kubectl_aliases)

</details>

<details>
<summary>kubens & kubectx
</summary>

[github tuto](https://github.com/ahmetb/kubectx#manual-installation-macos-and-linux)

kubens & kubectx installation
```
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
```

```
sudo cp /opt/kubectx/completion/_kubectx.zsh /usr/share/zsh/functions/Completion/Unix/
sudo cp /opt/kubectx/completion/_kubens.zsh /usr/share/zsh/functions/Completion/Unix/
```
</details>


<details>
<summary>fzf (fuzzy finder)
</summary>

[github tuto](https://github.com/junegunn/fzf#installation)

Use CTRL+J to look for entries, useful when combined with kubectx & kubens

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
</details>


<details>
<summary>Helm
</summary>

__Installation__
Dowload latest release from [official releases page](https://github.com/helm/helm/releases).

```
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
```

__Autocompletion__

```
helm completion zsh > _helm
sudo mv _helm /usr/share/zsh/functions/Completion/Unix/
```
</details>


<details>
<summary>k3d
</summary>

__Install__

```
wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
```

__Autocompletion__

[link to k3d doc](https://k3d.io/v5.0.1/usage/commands/k3d_completion/)
```
k3d completion zsh > _k3d
sudo mv _k3d /usr/share/zsh/functions/Completion/Unix/
```
</details>


<details>
<summary>argocd
</summary>

[link tuto](https://argo-cd.readthedocs.io/en/release-1.8/user-guide/commands/argocd_completion/)

```
argocd completion zsh > "${fpath[1]}/_argocd"
```


</details>

<details>
<summary>Docker
</summary>

Install Docker to be able to run k3d!

See [docker-install-ubuntu.sh](../docker-install-ubuntu.sh) for installation. (or read [this article](https://rdr-it.io/ubuntu-24-04-installation-de-docker-et-docker-compose/), or this [official one](https://docs.docker.com/engine/install/ubuntu/))

After installation (see [official instructions](https://docs.docker.com/engine/install/linux-postinstall/)) :

```
sudo groupadd docker
sudo usermod -aG docker $USER
```

Log out then log back for changes to take effect

For Ubuntu 18.04, follow [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04).
</details>

<details>
<summary>Terraform
</summary>

```sh
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \\ngpg --dearmor | \\nsudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null\n
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \\nhttps://apt.releases.hashicorp.com $(lsb_release -cs) main" | \\nsudo tee /etc/apt/sources.list.d/hashicorp.list\n
sudo apt update
sudo apt-get install terraform
terraform -install-autocomplete
```

</details>

<details>
<summary>Terragrunt
</summary>

Télécharger le package Terragrunt sur la page [Releases](https://github.com/gruntwork-io/terragrunt/releases)

```sh
# Ubuntu
cd Téléchargements
mv terragrunt_linux_amd64 terragrunt
chmod u+x terragrunt
sudo mv terragrunt /usr/local/bin/
terragrunt --install-autocomplete
```

</details>

---

<details>
<summary>Template
</summary>
</details>

