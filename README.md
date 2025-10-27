# 🎬 Movie Ticket Booking App

A web-based application for booking movie tickets online.
Built with **Python Django**, **PostgreSQL**, and containerized using **Docker** for cloud deployment.

---

## 🚀 Features

* User registration and authentication
* Browse and book available movies
* Movie management (Admin panel)
* Upload and display movie posters & banners
* Responsive web UI
* Dockerized for production-ready deployment
* Integrated with **Nginx**, **Gunicorn**, and **PostgreSQL**

---

## 🏗️ Project Structure

```
Movie_Tiket_Bookingapp/
├── Dockerfile
├── docker-compose.yml
├── manage.py
├── requirements.txt
├── Movie_Tiket_Booking/
│   ├── settings.py
│   ├── urls.py
│   ├── wsgi.py
│   └── ...
├── movie/
│   ├── models.py
│   ├── views.py
│   ├── templates/
│   └── static/
├── media/
├── staticfiles/
└── nginx/
    └── nginx.conf
```

---

## ⚙️ Prerequisites

* Python 3.10+
* Docker & Docker Compose
* Git
* Virtualenv (for manual local run)

---

## 🧩 Local Setup (without Docker)

1. **Clone the repository**

   ```bash
   git clone https://github.com/msingareddy43/Movie_Tiket_Bookingapp.git
   cd Movie_Tiket_Bookingapp
   ```

2. **Create and activate virtual environment**

   ```bash
   python3 -m venv venv
   source venv/bin/activate
   ```

3. **Install dependencies**

   ```bash
   pip install -r requirements.txt
   ```

4. **Apply migrations**

   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```

5. **Collect static files**

   ```bash
   python manage.py collectstatic
   ```

6. **Create superuser**

   ```bash
   python manage.py createsuperuser
   ```

7. **Run the app**

   ```bash
   python manage.py runserver 0.0.0.0:8000
   ```

8. Access your app at:
   👉 `http://localhost:8000`

---

## 🐳 Docker Setup

1. **Build and start the containers**

   ```bash
   sudo docker compose up -d --build
   ```

2. **Run database migrations**

   ```bash
   sudo docker exec -it django_app python manage.py migrate
   ```

3. **Create superuser**

   ```bash
   sudo docker exec -it django_app python manage.py createsuperuser
   ```

4. Access your app at:
   👉 `http://<EC2-Public-IP>/`

5. Access admin panel:
   👉 `http://<EC2-Public-IP>/admin`

---

## 🌐 Nginx Configuration

Located in `nginx/nginx.conf`, it serves static and media files efficiently and proxies requests to the Django Gunicorn backend.

---

## 🛠️ Environment Variables

You can configure these in a `.env` file:

```
POSTGRES_DB=movie_db
POSTGRES_USER=movie_user
POSTGRES_PASSWORD=movie_pass
POSTGRES_HOST=db
DEBUG=True
```

---

## 📦 Technologies Used

| Component        | Technology             |
| ---------------- | ---------------------- |
| Backend          | Django 4.x             |
| Frontend         | HTML, CSS, JS          |
| Database         | PostgreSQL             |
| Web Server       | Nginx + Gunicorn       |
| Containerization | Docker, Docker Compose |
| Cloud Hosting    | AWS EC2                |

---

## 👤 Admin Panel Access

Once the superuser is created:

* URL: `/admin`
* Default credentials (if auto-created):

  ```
  Username: admin
  Password: Admin@123
  ```

---

## 📸 Screenshots

*Add screenshots of your app UI and admin panel here.*

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).

---

## 💡 Author

**Mahesh Singareddy**
📧 [msingareddy43@gmail.com](mailto:msingareddy43@gmail.com)
🌐 [GitHub Profile](https://github.com/msingareddy43)
