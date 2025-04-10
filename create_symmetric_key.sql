USE SecureDB; GO
-- Drop existing key if any IF EXISTS 
(SELECT * FROM sys.symmetric_keys WHERE name = 'SymmetricKey_CreditSSN') DROP SYMMETRIC KEY SymmetricKey_CreditSSN; GO
-- Create Symmetric Key 
CREATE SYMMETRIC KEY SymmetricKey_CreditSSN WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE SecureDataCerti; GO
