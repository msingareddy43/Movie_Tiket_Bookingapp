# 🎬 Movie Ticket Booking App

A web-based **Movie Ticket Booking System** built using the **Python Django Framework**.
This project allows users to browse available movies, book tickets, and manage bookings through an admin dashboard.

---

## 🚀 Features

* User registration and login
* View available movies and timings
* Book and manage tickets
* Admin dashboard for movie and booking management
* SQLite/MySQL database support
* Simple Bootstrap UI

---

## 🧰 Tech Stack

* **Language:** Python 3.8+
* **Framework:** Django 4.x
* **Database:** SQLite (default) / MySQL (optional)
* **Frontend:** HTML, CSS, Bootstrap
* **Platform:** Windows 10 / 11
* **Package Manager:** Chocolatey

---

## ⚙️ Prerequisites

Before setup, ensure you have **administrator privileges** on Windows.

### 1. Install [Chocolatey](https://chocolatey.org/install)

Open **PowerShell as Administrator** and run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; `
[System.Net.ServicePointManager]::SecurityProtocol = `
[System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Then verify installation:

```bash
choco -v
```

---

## 🧩 Install All Dependencies Using Chocolatey

Run the following in PowerShell or CMD **(as Administrator)**:

```bash
choco install python git -y
```

Optional (for database management):

```bash
choco install mysql mysql.workbench -y
```

---

## 🧠 Set Environment Variables (if needed)

Usually Python adds itself to PATH automatically.
If not, manually set it:

1. Press **Win + R → type `sysdm.cpl` → Advanced → Environment Variables**
2. Under *System variables*, edit `Path`
3. Add your Python installation path (e.g. `C:\Python311\Scripts\` and `C:\Python311\`)

Verify installation:

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

## 🧱 Create and Activate Virtual Environment

```bash
# Create virtual environment
python -m venv venv

# Activate it
venv\Scripts\activate
```

You should now see `(venv)` in your terminal.

---

## 📦 Install Required Python Packages

If a `requirements.txt` file exists:

```bash
pip install -r requirements.txt
```

If not, install manually:

```bash
pip install django
```

Optional for MySQL users:

```bash
pip install mysqlclient
```

---

## 🗄️ Configure Database (SQLite or MySQL)

### Option 1: Use Default SQLite

No setup needed — works out of the box.

### Option 2: Use MySQL

Edit your `settings.py` inside the project folder:

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'movie_ticket_db',
        'USER': 'root',
        'PASSWORD': 'yourpassword',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}
```

Then run:

```bash
pip install mysqlclient
```

---

## 🧩 Apply Migrations

```bash
python manage.py makemigrations
python manage.py migrate
```

---

## 👩‍💼 Create Superuser (Admin)

```bash
python manage.py createsuperuser
```

Enter a username, email, and password when prompted.

---

## ▶️ Run the Server

```bash
python manage.py runserver
```

Now open your browser and go to:

```
http://127.0.0.1:8000/
```

Admin panel:

```
http://127.0.0.1:8000/admin
```

---

## 🧠 Common Errors & Fixes

| Issue                                           | Solution                                    |
| ----------------------------------------------- | ------------------------------------------- |
| `django.core.exceptions.ImproperlyConfigured`   | Check database settings                     |
| `ModuleNotFoundError: No module named 'django'` | Run `pip install django`                    |
| `venv\Scripts\activate` not working             | Use `.\venv\Scripts\activate` in PowerShell |
| Static files not loading                        | Run `python manage.py collectstatic`        |

---

## 📂 Folder Structure

```
Movie_Tiket_Bookingapp/
├── manage.py
├── requirements.txt
├── db.sqlite3
├── movieapp/
│   ├── templates/
│   ├── static/
│   ├── models.py
│   ├── views.py
│   └── urls.py
└── Movie_Tiket_Bookingapp/
    ├── settings.py
    ├── urls.py
    └── wsgi.py
```

---

## 🤝 Contributing

Pull requests are welcome!
For major changes, please open an issue first to discuss what you’d like to change.

---

## 📜 License

This project is licensed under the **MIT License**.

---

## 💡 Author

Developed by **[msingareddy43](https://github.com/msingareddy43)**
If you found this project helpful, give it a ⭐ on GitHub!
