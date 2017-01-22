FROM sceneskope/armv7-dotnet-runtime-deps

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
    && rm -rf /var/lib/apt/lists/*

ENV DOTNET_DOWNLOAD_URL https://github.com/dotnet/core-setup/files/716356/dotnet-ubuntu.16.04-arm.1.2.0-beta-001291-00.tar.gz

RUN curl -SL $DOTNET_DOWNLOAD_URL --output dotnet.tar.gz \
    && mkdir -p /usr/share/dotnet \
    && tar -zxf dotnet.tar.gz -C /usr/share/dotnet \
    && rm dotnet.tar.gz \
    && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
