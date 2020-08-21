y

alter database fr
add filegroup fri_1
go 

alter database fr
add file
( name= dddd,
filename='c:\ggg\jjkhf.ndf',
size = 20mb,
 maxsize= 90mb,
 filegrowth = 40mb)
 to filegroup fri_1

 create partition function pf_fr (date)
 as range right for values('09-03-2001', '09-03-2002', '09-03-2005')

 create partition scheme ps_fri
 as partition pf_fr to(fri_1, fri_2,fri_3)


 create symmetric key hold
 with algorithm = ase_123
 encryption by password = 'loj'
 go

 open symmetric key hold
 decryption by password = 'kol'
 go

 update doctor
 set doc_id = ENCRYPTBYKEY
 (key_guid('hold'), doc_id) 
 from doctor
 close symmetric key hold;

 create login foll
 with password = 'hold',
 default_database = master
 go

 create user kool
 for login  foll
 go
 sp_addsrvrolemember 'kool', 'dbcreator'


 geography::parse('point(80 09)')