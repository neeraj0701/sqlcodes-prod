# Use the official SQL Server Docker image as a base
FROM mcr.microsoft.com/mssql/server:latest

# Set environment variables
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=neeraj@2001

# # Create a directory for SQL Server scripts
# RUN mkdir -p E:\app\
# #WORKDIR /usr/src/app
# WORKDIR E:\app\

# Copy SQL initialization script to the container
# COPY init.sql /usr/src/app/

# Grant permissions to the script file
# RUN chmod +r /usr/src/app/init.sql

# Expose SQL Server port
EXPOSE 1433

# Start SQL Server service
CMD ["/opt/mssql/bin/sqlservr"]
