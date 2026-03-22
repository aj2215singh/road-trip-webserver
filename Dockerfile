FROM httpd:trixie

# Remove default Apache content
RUN rm -rf /usr/local/apache2/htdocs/*

# Copy your project into Apache web root
COPY roadtrip/ /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80

# Start Apache (already default, but explicit)
CMD ["httpd-foreground"]
