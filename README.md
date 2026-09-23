# Sanaei 3X-UI — Railway

Railway-ready deployment wrapper for Sanaei 3X-UI.

## Important

This package deploys the 3X-UI web panel using the official Sanaei Docker image.
Railway provides the public web port through `PORT`, which is passed to 3X-UI as
`XUI_PORT`.

Sanaei documents that `XUI_PORT` overrides the stored panel port at runtime.

## Deploy from GitHub

1. Create a new GitHub repository.
2. Upload all files in this ZIP to the repository root.
3. In Railway, create a new Project.
4. Choose **Deploy from GitHub Repo** and select the repository.
5. Railway will detect the root `Dockerfile`.
6. After deployment, open the service and choose **Settings → Networking → Generate Domain**.
7. Open the generated Railway URL.

## Persistent data

3X-UI stores its SQLite database under `/etc/x-ui/x-ui.db`.

For production use, attach a Railway Volume to:

`/etc/x-ui`

Without a persistent volume, panel/database data may not survive a service recreation.

## Railway variables

The entrypoint automatically sets:

`XUI_PORT=$PORT`

and disables Fail2ban because Railway does not provide the host iptables capabilities normally required by that feature.

You normally do not need to add these variables manually.

## Security

Change the panel credentials immediately after first login.
Use a strong panel path/password and enable 2FA where appropriate.

## Network limitation

Railway is not a traditional VPS. This package is intended to expose the
3X-UI web panel. Do not assume that arbitrary Xray inbound TCP/UDP ports will
be publicly reachable through Railway's web-service networking.

## Upstream

Sanaei 3X-UI:
https://github.com/MHSanaei/3x-ui

Official Docker image:
ghcr.io/mhsanaei/3x-ui:v3.8.5
