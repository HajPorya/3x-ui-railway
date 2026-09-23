# Sanaei 3X-UI — Railway

## 🇮🇷 راهنمای فارسی

### معرفی

این پروژه نسخه آماده استقرار **Sanaei 3X-UI** روی **Railway** است.

این پکیج با استفاده از Docker image رسمی Sanaei ساخته شده و برای اجرای پنل 3X-UI روی Railway تنظیم شده است.

### امکانات

- اجرای پنل Sanaei 3X-UI روی Railway
- دریافت خودکار پورت Railway از متغیر `PORT`
- اتصال پورت Railway به پورت پنل از طریق `XUI_PORT`
- نگهداری اطلاعات پنل با Railway Volume
- غیرفعال بودن Fail2ban برای سازگاری با محیط Railway
- امکان Deploy مستقیم از GitHub
- امکان Redeploy خودکار پس از تغییرات Repository

---

## 🚀 روش نصب روی Railway

### مرحله 1 — ساخت Repository

فایل‌های این پروژه را در ریشه Repository گیت‌هاب قرار دهید:

```text
Dockerfile
railway-entrypoint.sh
railway.toml
README.md
```

### مرحله 2 — اتصال GitHub به Railway

در Railway:

1. وارد حساب خود شوید.
2. گزینه **New Project** را انتخاب کنید.
3. گزینه **Deploy from GitHub Repo** را بزنید.
4. Repository موردنظر، برای مثال:

```text
HajPorya/3x-ui-railway
```

را انتخاب کنید.

Railway فایل `Dockerfile` را تشخیص داده و Build را انجام می‌دهد.

### مرحله 3 — ساخت دامنه

پس از Deploy:

**Service → Settings → Networking → Generate Domain**

را انتخاب کنید.

Railway یک آدرس عمومی برای پنل ایجاد می‌کند.

---

## 💾 فعال کردن ذخیره دائمی اطلاعات

برای جلوگیری از حذف اطلاعات پنل هنگام Recreate شدن سرویس، یک **Volume** به سرویس اضافه کنید.

Mount Path:

```text
/etc/x-ui
```

این مسیر محل نگهداری اطلاعات مهم 3X-UI، از جمله دیتابیس پنل است.

> استفاده از Volume برای اجرای دائمی پنل توصیه می‌شود.

---

## 🔐 ورود به پنل

پس از Deploy و دریافت Domain، آدرس ایجادشده توسط Railway را در مرورگر باز کنید.

اگر مسیر پنل تغییر داده نشده باشد، پنل در همان آدرس سرویس قابل دسترسی خواهد بود.

پس از اولین ورود:

- نام کاربری و رمز عبور را تغییر دهید.
- از رمز عبور قوی استفاده کنید.
- در صورت امکان احراز هویت دومرحله‌ای را فعال کنید.
- اطلاعات ورود را در اختیار افراد دیگر قرار ندهید.

---

## ⚙️ پورت

Railway پورت سرویس را در متغیر محیطی زیر قرار می‌دهد:

```text
PORT
```

این پروژه مقدار `PORT` را به صورت خودکار به:

```text
XUI_PORT
```

منتقل می‌کند.

بنابراین نیازی نیست پورت پنل را به صورت دستی روی یک عدد ثابت تنظیم کنید.

---

## 🛡️ Fail2ban

در این نسخه Fail2ban به صورت پیش‌فرض غیرفعال شده است.

دلیل آن این است که Railway یک VPS معمولی نیست و دسترسی لازم به قابلیت‌های سطح Host مانند iptables برای اجرای استاندارد Fail2ban را در اختیار کانتینر قرار نمی‌دهد.

---

## ⚠️ نکته مهم درباره Xray و Inbound

Railway یک VPS معمولی با دسترسی کامل شبکه نیست.

این پروژه برای اجرای **پنل وب 3X-UI** روی Railway آماده شده است.

قابل دسترس بودن پورت‌های دلخواه TCP/UDP برای Xray را نباید مانند یک VPS معمولی فرض کرد. بنابراین قبل از استفاده عملی از Inboundهای VLESS، VMess، Trojan یا سایر پروتکل‌ها، محدودیت‌های شبکه Railway را بررسی کنید.

---

## 🔄 به‌روزرسانی

اگر Repository به Railway متصل باشد، با Push کردن تغییرات به GitHub می‌توانید Deploy جدید انجام دهید.

در صورت استفاده از Docker image نسخه‌دار، برای ارتقای Sanaei باید نسخه image داخل `Dockerfile` را تغییر دهید.

نسخه فعلی این پروژه:

```text
ghcr.io/mhsanaei/3x-ui:v3.8.5
```

---

## 📁 ساختار پروژه

```text
3x-ui-railway/
├── Dockerfile
├── railway-entrypoint.sh
├── railway.toml
└── README.md
```

---

## 🔗 پروژه اصلی Sanaei 3X-UI

GitHub:

https://github.com/MHSanaei/3x-ui

Docker Image:

```text
ghcr.io/mhsanaei/3x-ui:v3.8.5
```

---

# 🇬🇧 English Guide

## Introduction

This project is a Railway-ready deployment wrapper for **Sanaei 3X-UI**.

It uses the official Sanaei Docker image and is configured to run the 3X-UI web panel on Railway.

### Features

- Railway-ready Sanaei 3X-UI deployment
- Automatic Railway `PORT` detection
- Automatic `PORT` → `XUI_PORT` mapping
- Persistent storage support through Railway Volume
- Fail2ban disabled for Railway compatibility
- GitHub-based deployment
- Easy redeployment after repository changes

---

## 🚀 Deploy on Railway

### Step 1 — Create the GitHub Repository

Upload these files to the root of your GitHub repository:

```text
Dockerfile
railway-entrypoint.sh
railway.toml
README.md
```

Example repository:

```text
HajPorya/3x-ui-railway
```

### Step 2 — Connect GitHub to Railway

In Railway:

1. Open your Railway account.
2. Select **New Project**.
3. Choose **Deploy from GitHub Repo**.
4. Select your repository.

Railway will detect the `Dockerfile` and build the service automatically.

### Step 3 — Generate a Public Domain

After deployment:

**Service → Settings → Networking → Generate Domain**

Railway will provide a public URL for the web panel.

---

## 💾 Persistent Storage

For production use, attach a **Railway Volume** to the service.

Use this Mount Path:

```text
/etc/x-ui
```

This directory contains important 3X-UI data, including the panel database.

A persistent Volume is recommended to prevent data loss when the service is recreated.

---

## 🔐 Using the Panel

Open the public Railway domain in your browser after deployment.

If you have not configured a custom panel path, the panel will be available from the service URL.

After the first login:

- Change the default username/password.
- Use a strong password.
- Enable two-factor authentication if available.
- Never share your panel credentials.

---

## ⚙️ Port Configuration

Railway exposes the service port through:

```text
PORT
```

This project automatically passes the Railway port to Sanaei 3X-UI as:

```text
XUI_PORT
```

Therefore, you normally do not need to configure a fixed panel port manually.

---

## 🛡️ Fail2ban

Fail2ban is disabled by default in this Railway configuration.

Railway is not a traditional VPS and the container does not have the host-level iptables capabilities normally required for standard Fail2ban operation.

---

## ⚠️ Important Network Limitation

Railway is not a traditional VPS with unrestricted public TCP/UDP networking.

This project is prepared primarily for hosting the **3X-UI web panel** on Railway.

Do not assume that arbitrary Xray inbound TCP/UDP ports will be publicly reachable in the same way they would be on a normal VPS.

Before using VLESS, VMess, Trojan, or other Xray inbound configurations in production, verify Railway's current networking limitations.

---

## 🔄 Updating

When your GitHub repository is connected to Railway, pushing new commits can trigger a new deployment.

If you want to upgrade Sanaei, update the pinned Docker image version in the `Dockerfile`.

Current version used by this project:

```text
ghcr.io/mhsanaei/3x-ui:v3.8.5
```

---

## 📁 Project Structure

```text
3x-ui-railway/
├── Dockerfile
├── railway-entrypoint.sh
├── railway.toml
└── README.md
```

---

## 🔗 Upstream Sanaei 3X-UI

GitHub:

https://github.com/MHSanaei/3x-ui

Docker Image:

```text
ghcr.io/mhsanaei/3x-ui:v3.8.5
```

---

## License

This deployment wrapper does not replace or change the license of the upstream Sanaei 3X-UI project. Refer to the upstream repository for its source code and license information.
