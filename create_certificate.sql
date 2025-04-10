USE SecureDB; GO
-- Drop existing certificate if any IF EXISTS 
(SELECT * FROM sys.certificates WHERE name = 'SecureDataCerti') DROP CERTIFICATE SecureDataCerti; GO
-- Create Master Key if not exists IF NOT EXISTS 
(SELECT * FROM sys.symmetric_keys WHERE name LIKE '%DatabaseMasterKey%') CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Parveen@2005'; GO
-- Create Certificate 
CREATE CERTIFICATE SecureDataCerti WITH SUBJECT = 'Certificate to secure sensitive data'; GO
