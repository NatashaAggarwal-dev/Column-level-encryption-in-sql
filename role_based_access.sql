USE SecureDB;
GO

-- Create a new login
CREATE LOGIN admin_user WITH PASSWORD = 'Admin@123';
GO
CREATE USER admin_user FOR LOGIN admin_user;
GO

-- Grant permission to decrypt
GRANT VIEW DEFINITION ON SYMMETRIC KEY::SymmetricKey_CreditSSN TO admin_user;
GRANT CONTROL ON CERTIFICATE::SecureDataCerti TO admin_user;
GO
