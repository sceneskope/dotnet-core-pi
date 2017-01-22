
FROM sceneskope/armv7-dotnet-runtime-deps

# Install .NET Core SDK
ENV DOTNET_SDK_DOWNLOAD_URL https://github.com/dotnet/core-setup/files/716389/dotnet-sdk-ubuntu.16.04-arm.1.0.0-preview5-004431.tar.gz

RUN curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz \
    && mkdir -p /usr/share/dotnet \
    && tar -zxf dotnet.tar.gz -C /usr/share/dotnet \
    && rm dotnet.tar.gz \
    && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet

# Trigger the population of the local package cache
ENV NUGET_XMLDOC_MODE skip
RUN mkdir warmup \
    && cd warmup \
    && dotnet new \
    && cd .. \
    && rm -rf warmup \
    && rm -rf /tmp/NuGetScratch