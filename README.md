# 🔐 Column-Level Encryption in SQL Server

This project demonstrates how to implement column-level encryption in Microsoft SQL Server to secure sensitive user data like credit card numbers and social security numbers. It uses certificates and symmetric keys for AES-256 encryption and includes role-based access to allow secure decryption.

---

## 📁 Folder Structure

Column-Level-Encryption-SQLServer ├── sql_scripts/ │ ├── create_table.sql │ ├── create_certificate.sql │ ├── create_symmetric_key.sql │ ├── insert_encrypted_data.sql │ ├── decrypt_data.sql │ └── role_based_access.sql ├── screenshots/ │ └── <output_images>.png ├── Dockerfile ├── docker-compose.yml ├── project_report.pdf ├── LICENSE ├── .gitignore └── README.md


---

## 🎯 Project Objective

To build a secure SQL Server database system that encrypts sensitive columns using symmetric key encryption, ensuring only authorized roles can decrypt the data. This is essential for GDPR, HIPAA, and data privacy compliance.

---

## 🛠 Technologies Used

- Microsoft SQL Server
- SQL (T-SQL)
- Symmetric Key Encryption (AES_256)
- Certificates for key protection
- Docker (for optional containerized setup)

---

## 🔑 Features

- Column-level encryption of sensitive fields using AES-256.
- Secure certificate-based key protection.
- Role-based access management.
- Easy-to-follow SQL scripts to implement step-by-step.

---

## 🚀 How to Use

1. Clone the repository:

```bash
git clone https://github.com/your-username/Column-Level-Encryption-SQLServer.git
cd Column-Level-Encryption-SQLServer

🐳 Optional: Docker Setup

You can also run SQL Server in a container using the provided Dockerfile and docker-compose.yml (WIP).


Parveen Singh
Natasha Aggarwal
BCA Student | Vivekananda Global University, Jaipur
Email: singh.parveen26022005@gmail.com
Email: aggarwalnatasha8595@gmail.com
