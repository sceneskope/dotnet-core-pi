VERSION="1.0.0-preview5-004431"


docker build -t sceneskope/armv7-dotnet-sdk .
docker tag sceneskope/armv7-dotnet-sdk sceneskope/armv7-dotnet-sdk:$VERSION