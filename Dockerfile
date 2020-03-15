FROM golang:1.14-buster
MAINTAINER Kyle Rarey

LABEL "com.github.actions.name"="Go Release Binary"
LABEL "com.github.actions.description"="Automate publishing Go build artifacts for GitHub releases"
LABEL "com.github.actions.icon"="cpu"
LABEL "com.github.actions.color"="orange"

LABEL "name"="Automate publishing Go build artifacts for GitHub releases through GitHub Actions"
LABEL "version"="1.0.1"
LABEL "repository"="http://github.com/ngs/go-release.action"
LABEL "homepage"="http://ngs.io/t/actions/"

LABEL "maintainer"="Kyle Rarey"

RUN apt update && apt install -y jq build-essential

ADD entrypoint.sh /entrypoint.sh
ADD build.sh /build.sh
ENTRYPOINT ["/entrypoint.sh"]
