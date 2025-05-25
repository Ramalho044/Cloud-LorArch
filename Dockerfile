# Build da aplicação usando SDK .NET 9 Preview
FROM mcr.microsoft.com/dotnet/sdk:9.0-preview AS build
WORKDIR /app

# Copiar o arquivo de projeto e restaurar as dependências
COPY *.csproj ./
RUN dotnet restore

# Copiar todo o restante do código e publicar a aplicação
COPY . ./
RUN dotnet publish -c Release -o out

# Imagem base do runtime .NET 9 Preview para rodar a aplicação
FROM mcr.microsoft.com/dotnet/aspnet:9.0-preview
WORKDIR /app

# Copiar arquivos publicados da fase de build
COPY --from=build /app/out .

# Expor a porta 80 para acesso HTTP
EXPOSE 80

# Comando para iniciar a aplicação
ENTRYPOINT ["dotnet", "LorArchApi.dll"]
