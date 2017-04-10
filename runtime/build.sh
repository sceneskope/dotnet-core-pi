#VERSION=`curl -s https://dotnetcli.blob.core.windows.net/dotnet/master/dnvm/latest.sharedfx.ubuntu.16.04.arm.version | tr -d '\r' | tail -1`

VERSION=2.0.0-beta-001915-00
docker build --build-arg VERSION=$VERSION -t sceneskope/armv7-dotnet .
docker tag sceneskope/armv7-dotnet sceneskope/armv7-dotnet:$VERSION
docker push sceneskope/armv7-dotnet:$VERSION
