# 🎬 Movie Ticket Booking App

A **Movie Ticket Booking System** built using **Python Django Framework**, designed for learning and deploying full-stack web apps.
Users can browse movies, select seats, and book tickets online with admin management.

---

## 🚀 Features

* User registration and login
* Browse and book movies
* Manage bookings
* Admin dashboard
* Works with SQLite or MySQL
* Can run locally or in Docker

---

## 🧰 Tech Stack

* **Language:** Python 3.8+
* **Framework:** Django 4.x
* **Database:** SQLite (default) / MySQL (optional)
* **Frontend:** HTML, CSS, Bootstrap
* **Platform:** Windows 10/11
* **Package Manager:** Chocolatey
* **Containerization:** Docker + Docker Compose

---

## ⚙️ Prerequisites

Before starting, ensure you have admin access on your Windows machine.

### 1️⃣ Install [Chocolatey](https://chocolatey.org/install)

Run PowerShell as **Administrator** and execute:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; `
[System.Net.ServicePointManager]::SecurityProtocol = `
[System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Then verify:

```bash
choco -v
```

---

### 2️⃣ Install Dependencies with Chocolatey

```bash
choco install python git docker-desktop -y
```

After installation:

* Restart your system
* Launch **Docker Desktop**
* Wait until it shows **“Docker Engine is running”**

---

## 🧠 Set Environment Variables (if needed)

If Python isn’t recognized:

1. Press **Win + R → type `sysdm.cpl` → Advanced → Environment Variables**
2. Edit `Path` and add:

   ```
   C:\Python311\
   C:\Python311\Scripts\
   ```

Verify:

```bash
python --version
pip --version
```

---

## 📥 Clone the Repository

```bash
git clone https://github.com/msingareddy43/Movie_Tiket_Bookingapp.git
cd Movie_Tiket_Bookingapp
```

---

## 🧱 Setup with Virtual Environment (Optional if not using Docker)

```bash
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

Open: [http://127.0.0.1:8000](http://127.0.0.1:8000)

---

These steps will run the entire Django app inside a container automatically.

---


### 1 Build and Run the Container

Open PowerShell inside the project folder and run:

```bash
docker compose up --build
```

---

### 2 Verify It’s Running

Once the build is complete, open your browser:

```
http://localhost:8000
```

You’ll see your Django Movie Ticket Booking app running inside Docker 🎉

To stop the container:

```bash
docker compose down
```

---

## 🧠 Common Docker Commands (For Reference)

| Command                | Description                  |
| ---------------------- | ---------------------------- |
| `docker ps`            | List running containers      |
| `docker images`        | Show downloaded images       |
| `docker stop <id>`     | Stop a running container     |
| `docker compose build` | Rebuild after code changes   |
| `docker compose up -d` | Run containers in background |

---

## 📂 Folder Structure

```
Movie_Tiket_Bookingapp/
├── manage.py
├── requirements.txt
├── Dockerfile
├── docker-compose.yml
├── db.sqlite3
├── movieapp/
│   ├── templates/
│   ├── static/
│   ├── views.py
│   ├── models.py
│   └── urls.py
└── Movie_Tiket_Bookingapp/
    ├── settings.py
    ├── urls.py
    └── wsgi.py
```

---

## ✅ Next Steps

* Add your project to **GitHub**
* Optionally connect to **AWS CodePipeline → CodeBuild → CodeDeploy → EC2**
* Or deploy directly using **Docker Hub + AWS ECS**

---

## 🤝 Contributing

Pull requests are welcome! For major changes, open an issue first.

---

## 📜 License

This project is licensed under the **MIT License**.

---

## 💡 Author

Developed by **[msingareddy43](https://github.com/msingareddy43)**---
If you found this project helpful, give it a ⭐ on GitHub!
---
# 🎬 Movie Ticket Booking App — Dockerized Django + PostgreSQL + Nginx

This is a **Django-based Movie Ticket Booking Application** fully containerized using **Docker**, **PostgreSQL**, and **Nginx** for serving static/media files.

---

## 🧩 Project Overview

| Component            | Description                      |
| -------------------- | -------------------------------- |
| **Frontend**         | Django Templates (HTML/CSS)      |
| **Backend**          | Django (Python)                  |
| **Database**         | PostgreSQL                       |
| **Web Server**       | Nginx (for static & media files) |
| **Containerization** | Docker & Docker Compose          |

---

## ⚙️ Prerequisites

Make sure you have installed:

* 🐍 **Python 3.10+**
* 🐋 **Docker & Docker Compose**
* 💻 **Git**

---

## 🚀 Quick Setup on Ubuntu

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/msingareddy43/Movie_Tiket_Bookingapp.git
cd Movie_Tiket_Bookingapp
```

---

### 2️⃣ Build and Run with Docker

```bash
sudo docker compose build
sudo docker compose up -d
```

> 💡 This will start 3 containers:
>
> * `django_app` → Django backend
> * `postgres_db` → PostgreSQL database
> * `nginx_server` → Serves static and media files

---

### 3️⃣ Access the Application

* Open in browser: **[http://localhost](http://localhost)** or your public IP (e.g., `http://43.205.127.235`)
* Django app will be served through **Nginx** (port `80`)

---

## 🗂️ Project Structure

```
Movie_Tiket_Bookingapp/
├── Dockerfile
├── docker-compose.yml
├── nginx/
│   └── nginx.conf
├── movie/
│   ├── models.py
│   ├── views.py
│   └── templates/
├── Movie_Tiket_Booking/
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── requirements.txt
└── README.md
```

---

## 🧱 Useful Docker Commands

| Command                           | Description                                       |
| --------------------------------- | ------------------------------------------------- |
| `docker ps`                       | Check running containers                          |
| `docker compose logs -f`          | View live logs                                    |
| `docker exec -it django_app bash` | Access the Django container shell                 |
| `docker compose down -v`          | Stop and remove containers, networks, and volumes |

---

## 🖼️ Static & Media Handling

* **Static files**: Served from `/app/staticfiles`
* **Media files**: Served from `/app/media`
* Managed via Nginx (`nginx/nginx.conf`)

---

## 🧰 Environment Variables

Edit `docker-compose.yml` if needed:

```yaml
POSTGRES_DB: movie_db
POSTGRES_USER: movie_user
POSTGRES_PASSWORD: movie_pass
```

---

## 👩‍💻 Local Development (Optional, Without Docker)

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

Then visit **[http://127.0.0.1:8000](http://127.0.0.1:8000)**

---

## 🌍 Deployment Notes

* You can deploy the same setup on **AWS EC2** or **Azure VM**
* Use **Route53** or **Custom Domain**
* Add **HTTPS** using Nginx + Certbot (optional)

---

## 🧑‍💻 Author

**Mahesh Singareddy**
📧 [GitHub Profile](https://github.com/msingareddy43)

---

## 🏁 Status

✅ Working with Docker, Nginx, and PostgreSQL
🧩 Ready for cloud deployment

