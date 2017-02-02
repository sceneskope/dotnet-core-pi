VERSION="2.0.0-beta-001470-00"


docker build --build-arg VERSION=$VERSION -t sceneskope/armv7-dotnet .
docker tag sceneskope/armv7-dotnet sceneskope/armv7-dotnet:$VERSION