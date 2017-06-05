#VERSION=`curl -s https://dotnetcli.blob.core.windows.net/dotnet/master/dnvm/latest.sharedfx.ubuntu.16.04.arm.version | tr -d '\r' | tail -1`

VERSION=2.0.0-preview1-002111-00
docker build --build-arg VERSION=$VERSION -t sceneskope/arm32v7-dotnet .
docker tag sceneskope/arm32v7-dotnet sceneskope/arm32v7-dotnet:$VERSION
docker push sceneskope/arm32v7-dotnet:$VERSION
