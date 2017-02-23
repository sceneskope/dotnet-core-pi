FROM sceneskope/armv7-dotnet-runtime-deps

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
    && rm -rf /var/lib/apt/lists/*

ENV DOTNET_DOWNLOAD_URL https://dotnetcli.blob.core.windows.net/dotnet/master/Binaries/$VERSION/dotnet-ubuntu.16.04-arm.$VERSION.tar.gz

RUN curl -SL $DOTNET_DOWNLOAD_URL --output dotnet.tar.gz \
    && mkdir -p /usr/share/dotnet \
    && tar -zxf dotnet.tar.gz -C /usr/share/dotnet \
    && rm dotnet.tar.gz \
    && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
