# Acceptance Deployment Read Me

All passwords are saved at location: https://contosa.net/Passwords

## Acceptance
<b>Location:</b> <br/>
Online Store - https://contosa.net/Duck<br/>
Central WebApi - https://contosa.net/AcceptanceCentral<br/>
Management WebApi - https://contosa.net/AcceptanceManagement<br/>
Public Api - https://contosa.net/AcceptancePublicApi<br/>
<br/>
<b>Server:<b/></br>
Online Store - ServerXYZ<br/>
Central WebApi - ServerXYZ<br/>
Management WebApi - ServerXYZ<br/>
Public Api - ServerXYZ<br/>

<b>Notes:</b><br/>
This folder is for acceptance testing only. It is not intended to be used for production.<br/>
Deployment to the development environment is done by running the `deploy.sh` script in the root of the repository.<br/>
Restart the application by running the `restart.sh` script in the root of the repository.<br/>