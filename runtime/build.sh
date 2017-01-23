VERSION="1.2.0-beta-001291-00"


docker build -t sceneskope/armv7-dotnet .
docker tag sceneskope/armv7-dotnet sceneskope/armv7-dotnet:$VERSION