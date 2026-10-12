# 🚀 Sanaei 3X-UI — Railway

## 🇮🇷 فارسی

### درباره پروژه

این پروژه نسخه آماده **Sanaei 3X-UI برای Railway** است.

اگر قصد استفاده از این پروژه را دارید، کافی است Repository را **Fork** کنید و سپس Fork خودتان را در Railway Deploy کنید.

### ⭐ استفاده از پروژه

**1. Fork کردن پروژه**

روی دکمه **Fork** در بالای همین Repository کلیک کنید و پروژه را به حساب GitHub خودتان منتقل کنید.

**2. اتصال به Railway**

پس از Fork، Repository خودتان را در Railway انتخاب و Deploy کنید.

Railway به صورت خودکار پروژه را از روی `Dockerfile` Build می‌کند.

**3. استفاده از پنل**

پس از اتمام Deploy، از طریق Domain ایجادشده در Railway وارد پنل 3X-UI شوید.

---

### 💾 ذخیره اطلاعات

برای حفظ اطلاعات پنل، دیتابیس و تنظیمات 3X-UI، استفاده از **Railway Volume** توصیه می‌شود.

Mount Path:

```text
/etc/x-ui
```

---

### ⚙️ تنظیمات خودکار

این پروژه برای Railway از قبل تنظیم شده است:

- پورت Railway به صورت خودکار دریافت می‌شود.
- مقدار `PORT` به `XUI_PORT` منتقل می‌شود.
- Fail2ban برای سازگاری با محیط Railway غیرفعال است.
- Docker Image رسمی Sanaei استفاده می‌شود.

بنابراین برای اجرای اولیه پروژه، نیازی به تغییر فایل‌های اصلی Repository ندارید.

---

### ⚠️ توجه

Railway یک VPS معمولی نیست و محدودیت‌های شبکه‌ای خاص خود را دارد.

این پروژه برای اجرای **پنل وب Sanaei 3X-UI** روی Railway آماده شده است. عملکرد Inboundهای Xray و پورت‌های TCP/UDP باید با محدودیت‌های فعلی Railway بررسی شود.

---

### 📦 نسخه

```text
Sanaei 3X-UI v3.8.5
```

Docker Image:

```text
ghcr.io/mhsanaei/3x-ui:v3.8.5
```

### 🔗 پروژه اصلی

https://github.com/MHSanaei/3x-ui

---

# 🇬🇧 English

## About

This repository is a **Railway-ready Sanaei 3X-UI project**.

To use it, simply **Fork this repository** to your GitHub account and deploy your fork on Railway.

## ⭐ How to Use

### 1. Fork

Click the **Fork** button at the top of this repository and create your own copy.

### 2. Deploy

Select your forked repository in Railway and deploy it.

Railway will automatically build the project using the included `Dockerfile`.

### 3. Access the Panel

After deployment is completed, open the Railway-generated domain to access the Sanaei 3X-UI panel.

---

## 💾 Persistent Data

For persistent panel data, database, and configuration, a **Railway Volume** is recommended.

Mount Path:

```text
/etc/x-ui
```

---

## ⚙️ Preconfigured for Railway

This project is already configured for Railway:

- Railway `PORT` is detected automatically.
- `PORT` is passed to Sanaei as `XUI_PORT`.
- Fail2ban is disabled for Railway compatibility.
- The official Sanaei Docker image is used.

No changes to the main project files are normally required for the initial deployment.

---

## ⚠️ Important

Railway is not a traditional VPS and has its own networking limitations.

This project is prepared primarily for running the **Sanaei 3X-UI web panel** on Railway. Xray inbound TCP/UDP connectivity depends on Railway's current networking capabilities and limitations.

---

## 📦 Version

```text
Sanaei 3X-UI v3.8.5
```

Docker Image:

```text
ghcr.io/mhsanaei/3x-ui:v3.8.5
```

## 🔗 Upstream Project

https://github.com/MHSanaei/3x-ui

---

### ⭐ If this project is useful, consider giving the repository a Star.
