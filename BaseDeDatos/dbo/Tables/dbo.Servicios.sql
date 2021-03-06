CREATE TABLE [dbo].[SERVICIOS]
(
[IdServicio] [tinyint] NOT NULL IDENTITY(1, 1),
[IdGuid] [uniqueidentifier] NOT NULL CONSTRAINT [DF__SERVICIOS__IdGui__4F7CD00D] DEFAULT (newid()),
[Servicio] [varchar] (50) NOT NULL CONSTRAINT [DF__SERVICIOS__Servi__5070F446] DEFAULT (''),
[IdEstaActivo] [bit] NOT NULL CONSTRAINT [DF__SERVICIOS__IdEst__5165187F] DEFAULT ((1)),
[IdAdminCreacion] [tinyint] NOT NULL CONSTRAINT [DF__SERVICIOS__IdAdm__52593CB8] DEFAULT ((1)),
[FechaCreacion] [datetime] NOT NULL CONSTRAINT [DF__SERVICIOS__Fecha__534D60F1] DEFAULT (getdate()),
[IdAdminActualizacion] [tinyint] NOT NULL CONSTRAINT [DF__SERVICIOS__IdAdm__5441852A] DEFAULT ((1)),
[FechaActualizacion] [datetime] NOT NULL CONSTRAINT [DF__SERVICIOS__Fecha__5535A963] DEFAULT (getdate())
)
GO
ALTER TABLE [dbo].[SERVICIOS] ADD CONSTRAINT [PK__SERVICIO__2DCCF9A20659DD2E] PRIMARY KEY CLUSTERED  ([IdServicio])
GO
