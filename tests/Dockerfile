## -*- docker-image-name: "golang-dev" -*-

# initially start with debian baseline, but move over to alpine if possible
FROM golang:latest

RUN apt update && apt upgrade -y

ENV GO111MODULE=on


RUN go get -u github.com/motemen/gore/cmd/gore \
    github.com/stamblerre/gocode \
    golang.org/x/tools/cmd/... \
    github.com/cweill/gotests/... \
    github.com/fatih/gomodifytags \
    golang.org/x/tools/gopls@latest \
    github.com/golangci/golangci-lint/cmd/golangci-lint@latest

# RUN go get -u github.com/motemen/gore/cmd/gore \
#     github.com/stamblerre/gocode \
#     golang.org/x/tools/cmd/godoc \
#     golang.org/x/tools/cmd/goimports \
#     golang.org/x/tools/cmd/gorename \
#     golang.org/x/tools/cmd/guru \
#     github.com/cweill/gotests/... \
#     github.com/fatih/gomodifytags \
#     golang.org/x/tools/gopls@latest \
#     github.com/golangci/golangci-lint/cmd/golangci-lint@latest


    
RUN apt update \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir $GOPATH/src/projects

