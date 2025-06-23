# ASPNet-GmailMailer

A simple ASP.NET Web Forms application that sends emails using Gmail's SMTP server.

## Features
- Validates ANU email addresses using regular expressions
- Converts sender/receiver emails to lowercase
- Converts subject text to uppercase
- Sends emails via Gmail (SMTP)
- Credentials stored securely in `web.config`

## Requirements
- Visual Studio 2022
- .NET Framework
- Gmail account with [App Password](https://support.google.com/accounts/answer/185833)
- ANU-hosted Gmail address (`@anu.ac.ke`)

## Setup

1. Clone the repository
2. Open the solution in Visual Studio 2022
3. In `web.config`, add your email and app password:
   ```xml
   <appSettings>
     <add key="EmailUser" value="your_email@anu.ac.ke"/>
     <add key="EmailPassword" value="your_app_password"/>
   </appSettings>
