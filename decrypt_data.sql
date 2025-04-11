USE SecureDB;
GO

OPEN SYMMETRIC KEY SymmetricKey_CreditSSN
DECRYPTION BY CERTIFICATE SecureDataCerti;
GO

SELECT
    UserID,
    FullName,
    Email,
    CONVERT(NVARCHAR, DECRYPTBYKEY(CreditCardNumber)) AS Decrypted_CreditCardNumber,
    CONVERT(NVARCHAR, DECRYPTBYKEY(SocialSecurityNumber)) AS Decrypted_SSN
FROM Users;
GO

CLOSE SYMMETRIC KEY SymmetricKey_CreditSSN;
GO
