FROM mcr.microsoft.com/dotnet/aspnet:8.0
COPY . ./src
WORKDIR /src
RUN dotnet build -o /app
RUN dotnet publish -o /publish
WORKDIR /app
EXPOSE 80
CMD ["./myWebApp"]

