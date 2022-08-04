CREATE TABLE [dbo].[CARGAPORORDEN] (
  [Ai_orden] [int] NULL,
  [Av_cmd_code] [varchar](8) NULL,
  [Av_cmd_description] [varchar](500) NULL,
  [Af_count] [decimal](8, 2) NULL,
  [Av_countunit] [varchar](6) NULL,
  [Af_weight] [decimal](8, 2) NULL,
  [Av_weightunit] [varchar](6) NULL
)
ON [PRIMARY]
GO