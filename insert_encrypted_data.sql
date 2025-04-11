USE SecureDB; GO
OPEN SYMMETRIC KEY SymmetricKey_CreditSSN DECRYPTION BY CERTIFICATE SecureDataCerti;
GO
INSERT INTO Users (FullName, Email, CreditCardNumber, SocialSecurityNumber) VALUES ( 'Parveen Singh', 'singh.parveen26022005@gmail.com', ENCRYPTBYKEY(KEY_GUID('SymmetricKey_CreditSSN'), '4111111111111111'), ENCRYPTBYKEY(KEY_GUID('SymmetricKey_CreditSSN'), '123-45-6789') ); 
GO
CLOSE SYMMETRIC KEY SymmetricKey_CreditSSN; GO
