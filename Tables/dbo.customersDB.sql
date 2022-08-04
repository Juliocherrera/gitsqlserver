CREATE TABLE [dbo].[customersDB] (
  [customer_id] [int] IDENTITY,
  [first_name] [varchar](255) NOT NULL,
  [last_name] [varchar](255) NOT NULL,
  [phone] [varchar](25) NULL,
  [email] [varchar](255) NOT NULL,
  [street] [varchar](255) NULL,
  [city] [varchar](50) NULL,
  [state] [varchar](25) NULL,
  [zip_code] [varchar](5) NULL,
  PRIMARY KEY CLUSTERED ([customer_id])
)
ON [PRIMARY]
GO