Tous mes alias bien pratiques

```sh
alias k=kubectl
alias kg='kubectl get'
alias k8s-show-ns="kubectl api-resources --verbs=list --namespaced -o name  | xargs -n 1 kubectl get --show-kind --ignore-not-found  -n"
alias dockerps='docker ps --format "table {{.Names}}\t{{.Image}}\t{{.State}}\t{{.Status}}"'

# User-defined functions START

function dockerexecsh() {
	docker exec -it $1 /bin/sh
}

function dockernetools() {
    local name="${1:-net-tools}"
    local network="${2}"

    if [ -n "$network" ]; then
        docker run --name="$name" --network="$network" --rm -it jonlabelle/network-tools
    else
        docker run --name="$name" --rm -it jonlabelle/network-tools
    fi
}

function cheat() {
    local topic=$1
    curl "cheat.sh/${topic}"
}

function mkcd() { mkdir -p -- "$1" && cd -P -- "$1"; }
```
