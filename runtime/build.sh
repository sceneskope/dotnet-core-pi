#VERSION=`curl -s https://dotnetcli.blob.core.windows.net/dotnet/master/dnvm/latest.sharedfx.ubuntu.16.04.arm.version | tr -d '\r' | tail -1`

DOTNET_VERSION=2.0.0-preview1-002111-00
docker build --build-arg DOTNET_VERSION=$DOTNET_VERSION -t sceneskope/arm32v7-dotnet .
if [ $? -ne 0 ]
then
    exit -1
fi

docker tag sceneskope/arm32v7-dotnet sceneskope/arm32v7-dotnet:$DOTNET_VERSION
docker push sceneskope/arm32v7-dotnet:$DOTNET_VERSION
