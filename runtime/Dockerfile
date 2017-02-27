FROM sceneskope/armv7-dotnet-runtime-deps

ARG VERSION

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
    && rm -rf /var/lib/apt/lists/*

ENV DOTNET_DOWNLOAD_URL https://github.com/stevedesmond-ca/dotnet-arm/releases/download/2.0.0-beta-001518-00/dotnet-ubuntu.16.04-arm.2.0.0-beta-001518-00.tar.gz
#ENV DOTNET_DOWNLOAD_URL https://dotnetcli.blob.core.windows.net/dotnet/master/Binaries/$VERSION/dotnet-ubuntu.16.04-arm.$VERSION.tar.gz
#ENV DOTNET_DOWNLOAD_URL https://github.com/dotnet/core-setup/files/672459/dotnet-ubuntu-arm.1.2.0-beta-001206-00.tar.gz
RUN curl -SL $DOTNET_DOWNLOAD_URL --output dotnet.tar.gz \
    && mkdir -p /usr/share/dotnet \
    && tar -zxf dotnet.tar.gz -C /usr/share/dotnet \
    && rm dotnet.tar.gz \
    && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
