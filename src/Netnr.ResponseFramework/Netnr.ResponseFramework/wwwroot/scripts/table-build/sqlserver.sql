/****** Object:  Table [dbo].[SysAuthorize]    Script Date: 2019/2/28 11:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysAuthorize](
	[SaId] [varchar](50) NOT NULL,
	[SuId] [varchar](50) NOT NULL,
	[OpenId1] [varchar](50) NULL,
	[OpenId2] [varchar](50) NULL,
	[OpenId4] [varchar](50) NULL,
	[OpenId3] [varchar](50) NULL,
	[OpenId5] [varchar](50) NULL,
	[OpenId6] [varchar](50) NULL,
	[OpenId7] [varchar](50) NULL,
	[OpenId8] [varchar](50) NULL,
	[OpenId9] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SysAuthorize_SuId_PK]    Script Date: 2019/2/28 11:12:42 ******/
CREATE UNIQUE CLUSTERED INDEX [SysAuthorize_SuId_PK] ON [dbo].[SysAuthorize]
(
	[SuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysButton]    Script Date: 2019/2/28 11:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysButton](
	[SbId] [varchar](50) NOT NULL,
	[SbPid] [varchar](50) NULL,
	[SbBtnText] [nvarchar](20) NULL,
	[SbBtnId] [varchar](50) NULL,
	[SbBtnClass] [varchar](50) NULL,
	[SbBtnIcon] [varchar](50) NULL,
	[SbBtnOrder] [int] NULL,
	[SbStatus] [int] NULL,
	[SbDescribe] [nvarchar](200) NULL,
	[SbBtnGroup] [int] NULL,
 CONSTRAINT [SysButton_SbId_PK] PRIMARY KEY CLUSTERED 
(
	[SbId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysLog]    Script Date: 2019/2/28 11:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysLog](
	[LogId] [varchar](50) NOT NULL,
	[SuName] [nvarchar](50) NULL,
	[SuNickname] [nvarchar](50) NULL,
	[LogAction] [nvarchar](50) NULL,
	[LogContent] [nvarchar](200) NULL,
	[LogUrl] [varchar](500) NULL,
	[LogIp] [varchar](50) NULL,
	[LogCreateTime] [datetime] NULL,
	[LogBrowserName] [nvarchar](50) NULL,
	[LogSystemName] [nvarchar](50) NULL,
	[LogGroup] [int] NULL,
	[LogRemark] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Index [SysLog_LogCreateTime]    Script Date: 2019/2/28 11:12:42 ******/
CREATE CLUSTERED INDEX [SysLog_LogCreateTime] ON [dbo].[SysLog]
(
	[LogCreateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysMenu]    Script Date: 2019/2/28 11:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysMenu](
	[SmId] [varchar](50) NOT NULL,
	[SmPid] [varchar](50) NULL,
	[SmName] [nvarchar](50) NULL,
	[SmUrl] [varchar](200) NULL,
	[SmOrder] [int] NULL,
	[SmIcon] [varchar](50) NULL,
	[SmStatus] [int] NULL,
	[SmGroup] [int] NULL,
 CONSTRAINT [SysMenu_SmId_PK] PRIMARY KEY CLUSTERED 
(
	[SmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysRole]    Script Date: 2019/2/28 11:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysRole](
	[SrId] [varchar](50) NOT NULL,
	[SrName] [nvarchar](200) NULL,
	[SrStatus] [int] NULL,
	[SrDescribe] [nvarchar](200) NULL,
	[SrGroup] [int] NULL,
	[SrMenus] [nvarchar](max) NULL,
	[SrButtons] [nvarchar](max) NULL,
	[SrCreateTime] [datetime] NULL,
 CONSTRAINT [SysRole_SrId_PK] PRIMARY KEY CLUSTERED 
(
	[SrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysTableConfig]    Script Date: 2019/2/28 11:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysTableConfig](
	[Id] [varchar](50) NOT NULL,
	[TableName] [varchar](200) NULL,
	[ColField] [varchar](200) NULL,
	[DvTitle] [nvarchar](200) NULL,
	[ColTitle] [nvarchar](200) NULL,
	[ColWidth] [int] NULL,
	[ColAlign] [int] NULL,
	[ColHide] [int] NULL,
	[ColOrder] [int] NULL,
	[ColFrozen] [int] NULL,
	[ColFormat] [nvarchar](200) NULL,
	[ColSort] [int] NULL,
	[ColExport] [int] NULL,
	[ColQuery] [int] NULL,
	[FormUrl] [nvarchar](max) NULL,
	[FormType] [varchar](200) NULL,
	[FormArea] [int] NULL,
	[FormSpan] [int] NULL,
	[FormHide] [int] NULL,
	[FormOrder] [int] NULL,
	[FormRequired] [int] NULL,
	[FormPlaceholder] [nvarchar](200) NULL,
	[FormValue] [nvarchar](max) NULL,
	[FormText] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SysTableConfig_TableName]    Script Date: 2019/2/28 11:12:42 ******/
CREATE CLUSTERED INDEX [SysTableConfig_TableName] ON [dbo].[SysTableConfig]
(
	[TableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysUser]    Script Date: 2019/2/28 11:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysUser](
	[SuId] [varchar](50) NOT NULL,
	[SrId] [varchar](50) NULL,
	[SuName] [nvarchar](50) NULL,
	[SuPwd] [nvarchar](50) NULL,
	[SuNickname] [nvarchar](50) NULL,
	[SuCreateTime] [datetime] NULL,
	[SuStatus] [int] NULL,
	[SuSign] [varchar](50) NULL,
	[SuGroup] [int] NULL,
 CONSTRAINT [SysUser_SuId_PK] PRIMARY KEY CLUSTERED 
(
	[SuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempExample]    Script Date: 2019/2/28 11:12:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempExample](
	[Id] [varchar](50) NOT NULL,
	[TableName] [varchar](200) NULL,
	[ColField] [varchar](200) NULL,
	[DvTitle] [nvarchar](200) NULL,
	[ColTitle] [nvarchar](200) NULL,
	[ColWidth] [int] NULL,
	[ColAlign] [int] NULL,
	[ColHide] [int] NULL,
	[ColOrder] [int] NULL,
	[ColFrozen] [int] NULL,
	[ColFormat] [nvarchar](200) NULL,
	[ColSort] [int] NULL,
	[ColExport] [int] NULL,
	[ColQuery] [int] NULL,
	[FormUrl] [nvarchar](max) NULL,
	[FormType] [varchar](200) NULL,
	[FormArea] [int] NULL,
	[FormSpan] [int] NULL,
	[FormHide] [int] NULL,
	[FormOrder] [int] NULL,
	[FormRequired] [int] NULL,
	[FormPlaceholder] [nvarchar](200) NULL,
	[FormValue] [nvarchar](max) NULL,
	[FormText] [nvarchar](max) NULL,
 CONSTRAINT [TempExample_Id_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'00000000-0000-0000-0000-000000000000', N'批处理', N'list_Batch', N'btn btn-sm btn-danger', N'fa fa-paint-brush', 40, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'3636B071-CE52-4551-BA67-4F982D14CD7C', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'导入', N'm_Import', N'', N'fa fa-level-down blue', 82, 1, N'', 5)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131', N'00000000-0000-0000-0000-000000000000', N'删除', N'm_Del', N'btn btn-sm  btn-danger', N'fa fa-remove', 4, 1, NULL, 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'3C6F626F-8D8E-46EE-B02A-0C90CFA90E02', N'00000000-0000-0000-0000-000000000000', N'启用', N'm_Start', N'btn btn-sm  btn-success', N'fa fa-play', 9, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'4674735D-B762-4876-8DE1-31AD7CD023F4', N'00000000-0000-0000-0000-000000000000', N'作废', N'm_Void', N'btn btn-sm  btn-default', N'fa fa-trash', 12, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'4FC96135-26B5-46D7-B809-747AD71F2A21', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'表单配置', N'list_Config_Form', N'', N'fa fa-table orange', 92, 1, N'', 4)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'58F7DA5E-37F8-4648-80F3-998E702A4D91', N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'批量启用', N'list_Batch_Start', N'', N'fa fa-play green', 41, 1, N'', 2)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E', N'00000000-0000-0000-0000-000000000000', N'查看', N'm_See', N'btn btn-sm  btn-primary', N'fa fa-credit-card', 5, 1, NULL, 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'609287B6-4B59-4E59-A822-B8C1087BB603', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'导出', N'm_Export', N'', N'fa fa-file-excel-o green', 85, 1, N'', 3)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'73CF6246-4429-4EF2-A0DA-F86F96B9BEBB', N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'批量停用', N'list_Batch_Stop', N'', N'fa fa-stop red', 42, 1, N'', 2)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'807FF920-37AA-40F7-92BC-3FC894D4D7A3', N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'批量删除', N'list_Batch_Del', N'', N'fa fa-remove red', 45, 1, N'', 3)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'85C51241-19D1-4BD0-A35B-DB570ACD0E85', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'打印', N'm_Print', N'', N'fa fa-print green', 86, 1, N'', 3)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'90ED8666-0961-426D-B582-E08C43EEE9E1', N'00000000-0000-0000-0000-000000000000', N'增加', N'm_Add', N'btn btn-sm btn-primary', N'fa fa-plus', 2, 1, NULL, 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'936D642A-CD7B-4A0E-837F-B4630A1BE894', N'00000000-0000-0000-0000-000000000000', N'参数设置', N'm_ParaSet', N'btn btn-sm  btn-success', N'fa fa-gear', 15, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'99A7F6EB-69BD-4167-B647-B10D3E12A3F3', N'00000000-0000-0000-0000-000000000000', N'修改', N'm_Edit', N'btn btn-sm btn-warning', N'fa fa-edit', 3, 1, NULL, 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'9B2265A4-A01F-48E8-9373-A6A294FCC1B7', N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'关闭批处理', N'list_Batch_Close', N'', N'fa fa-mail-reply orange', 47, 1, N'', 4)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'9BD9FE69-430B-4754-BF00-1DE1D117C384', N'00000000-0000-0000-0000-000000000000', N'停用', N'm_Stop', N'btn btn-sm  btn-warning', N'fa fa-stop', 10, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'9F128382-9A3E-42FB-89E7-D12E5D581584', N'00000000-0000-0000-0000-000000000000', N'弃废', N'm_UnVoid', N'btn btn-sm  btn-danger', N'fa fa-reply', 13, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'A04A57A2-014C-4D47-A6A2-B5018ED286CB', N'00000000-0000-0000-0000-000000000000', N'刷新', N'm_Reload', N'btn btn-sm  btn-info', N'fa fa-refresh', 39, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'ACD7FC7F-DE75-4502-B619-CF6BDA16CB9A', N'00000000-0000-0000-0000-000000000000', N'权限控制', N'm_Auth', N'btn btn-sm  btn-success', N'fa fa-gear', 14, 1, NULL, 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'AE0D0298-FE28-405F-82AB-00E310FFE9C2', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'表格配置', N'list_Config_Table', N'', N'fa fa-table orange', 91, 1, N'', 4)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'B97248C7-F53A-4289-BF06-A05E8009199B', N'00000000-0000-0000-0000-000000000000', N'切换', N'm_Switch', N'btn btn-sm  btn-primary', N'fa fa-exchange', 20, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'C42B2ECC-3A18-495B-9BC6-B315FEA5A951', N'26008EAA-4ED7-46E0-8BBF-DCF1472397E0', N'批量修改', N'list_Batch_Edit', N'', N'fa fa-edit orange', 44, 1, N'', 3)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'00000000-0000-0000-0000-000000000000', N'更多', N'list_More', N'btn btn-sm  btn-primary', N'fa fa-ellipsis-h', 80, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'D3A31A0C-C842-4709-82DD-A33B0253A462', N'00000000-0000-0000-0000-000000000000', N'保存', N'm_Save', N'btn btn-sm  btn-success', N'fa fa-save', 6, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'EAED8E4A-E6DA-4075-883F-8B5559B7A9AD', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'上传附件', N'm_Upload', NULL, N'fa fa-cloud-upload blue', 83, 1, NULL, 5)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'ED6830FD-DFD5-4B48-A155-76C8D7D6FEA4', N'00000000-0000-0000-0000-000000000000', N'取消', N'm_Cancel', N'btn btn-sm  btn-danger', N'fa fa-reply', 7, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'EFE021E2-30FE-4500-9BF6-52611F1AAA4A', N'00000000-0000-0000-0000-000000000000', N'查询', N'm_Query', N'btn btn-sm  btn-success', N'fa fa-search', 1, 1, N'', 1)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'F60C1C50-EBDC-430A-BE3A-30C4AB23C3FD', N'D2B8534F-D435-4E39-AC9D-4294AFC492DB', N'复制并新增', N'm_Copy', N'', N'fa fa-copy blue', 81, 1, N'', 2)
INSERT [dbo].[SysButton] ([SbId], [SbPid], [SbBtnText], [SbBtnId], [SbBtnClass], [SbBtnIcon], [SbBtnOrder], [SbStatus], [SbDescribe], [SbBtnGroup]) VALUES (N'FA51A36A-69DD-4838-AD03-EFA8F038F23F', N'00000000-0000-0000-0000-000000000000', N'审核', N'm_Check', N'btn btn-sm  btn-info', N'fa fa-check-square-o', 11, 1, N'', 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'00000000-0000-0000-0000-000000000000', N'系统设置', NULL, 9, N'fa-cog', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'2AE7FAF0-B627-4012-8A94-C5337579C8F5', N'00000000-0000-0000-0000-000000000000', N'RF框架', N'', 8, N'fa-tag', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'2d5567ed-80d6-491c-b5e2-ef17babb3246', N'2AE7FAF0-B627-4012-8A94-C5337579C8F5', N'多表单生成', N'/rf/buildforms', 4, N'fa-falg', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'56ad6bac-d773-4460-b88f-164c08df4808', N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'按钮管理', N'/setting/sysbutton', 1, N'fa-save', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'601C6500-808A-426B-9658-6BA830396AE3', N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'角色管理', N'/setting/sysrole', 3, N'fa-mortar-board (alias)', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'60C478C8-B4B7-471F-AE7F-62DF7A6C44D4', N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'操作日志', N'/setting/syslog', 6, N'fa-file-text-o', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'688BE98C-3D78-4B4D-A160-91476407599F', N'2AE7FAF0-B627-4012-8A94-C5337579C8F5', N'表格示例', NULL, 3, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'6C9E2090-B115-4D3E-948B-E5829A1886CF', N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'表配置', N'/setting/systableconfig', 7, N'fa-cog', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'748d9667-bd7a-4745-be34-1057160ef444', N'688BE98C-3D78-4B4D-A160-91476407599F', N'Grid多表格变动', N'/rf/gridchange', 3, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'8120ACDF-0642-4EA0-8BEC-83306D744319', N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'用户管理', N'/setting/sysuser', 4, N'fa-user', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'813984B9-06CA-4D85-AD82-3C4AD2CB834E', N'CAAFB396-C5F2-406A-9808-6B089E20F265', N'表管理', N'/tool/tablemanage', 1, N'fa-database', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'89EB0D3E-5BAA-494E-AD49-7FE247405CDA', N'688BE98C-3D78-4B4D-A160-91476407599F', N'TreeGrid', N'/rf/treegrid', 2, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'A40C1D01-C682-483F-AF87-CD843AA457C7', N'2AE7FAF0-B627-4012-8A94-C5337579C8F5', N'表配置示例', N'/rf/tce', 2, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'a5fc0578-72c4-4be1-9ad8-71ef0cc9f746', N'1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC', N'菜单管理', N'/setting/sysmenu', 2, N'fa-navicon', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'B27D2434-DC15-4EFA-A586-E11DF23D5344', N'2AE7FAF0-B627-4012-8A94-C5337579C8F5', N'静态表单示例', N'/rf/form', 2, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'CAAFB396-C5F2-406A-9808-6B089E20F265', N'00000000-0000-0000-0000-000000000000', N'工具箱', NULL, 8, N'fa-wrench', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'DF9CFA05-847A-43B6-8119-E8FC7AE04734', N'688BE98C-3D78-4B4D-A160-91476407599F', N'DataGrid', N'/rf/datagrid', 1, N'fa-flag', 1, 1)
INSERT [dbo].[SysMenu] ([SmId], [SmPid], [SmName], [SmUrl], [SmOrder], [SmIcon], [SmStatus], [SmGroup]) VALUES (N'F8C1C161-F1FC-4729-A00C-4A9893BF8209', N'00000000-0000-0000-0000-000000000000', N'系统桌面', N'/home/desk', 1, N'fa-home', 1, 1)
INSERT [dbo].[SysRole] ([SrId], [SrName], [SrStatus], [SrDescribe], [SrGroup], [SrMenus], [SrButtons], [SrCreateTime]) VALUES (N'58307c67-76b8-4156-bde3-f307f4da25e9', N'测试', 1, NULL, NULL, N'F8C1C161-F1FC-4729-A00C-4A9893BF8209,2AE7FAF0-B627-4012-8A94-C5337579C8F5,A40C1D01-C682-483F-AF87-CD843AA457C7,B27D2434-DC15-4EFA-A586-E11DF23D5344,688BE98C-3D78-4B4D-A160-91476407599F,DF9CFA05-847A-43B6-8119-E8FC7AE04734,89EB0D3E-5BAA-494E-AD49-7FE247405CDA', N'{"F8C1C161-F1FC-4729-A00C-4A9893BF8209":"","A40C1D01-C682-483F-AF87-CD843AA457C7":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,90ED8666-0961-426D-B582-E08C43EEE9E1"}', CAST(N'2018-05-20T10:23:19.000' AS DateTime))
INSERT [dbo].[SysRole] ([SrId], [SrName], [SrStatus], [SrDescribe], [SrGroup], [SrMenus], [SrButtons], [SrCreateTime]) VALUES (N'E663CE67-E9CA-4441-AB77-DC267C22C683', N'管理员', 1, NULL, 1, N'F8C1C161-F1FC-4729-A00C-4A9893BF8209,2AE7FAF0-B627-4012-8A94-C5337579C8F5,A40C1D01-C682-483F-AF87-CD843AA457C7,B27D2434-DC15-4EFA-A586-E11DF23D5344,688BE98C-3D78-4B4D-A160-91476407599F,DF9CFA05-847A-43B6-8119-E8FC7AE04734,89EB0D3E-5BAA-494E-AD49-7FE247405CDA,748d9667-bd7a-4745-be34-1057160ef444,2d5567ed-80d6-491c-b5e2-ef17babb3246,CAAFB396-C5F2-406A-9808-6B089E20F265,813984B9-06CA-4D85-AD82-3C4AD2CB834E,1DAB94C9-EF51-4BA2-A604-7DC7B78D56BC,56ad6bac-d773-4460-b88f-164c08df4808,a5fc0578-72c4-4be1-9ad8-71ef0cc9f746,601C6500-808A-426B-9658-6BA830396AE3,8120ACDF-0642-4EA0-8BEC-83306D744319,60C478C8-B4B7-471F-AE7F-62DF7A6C44D4,6C9E2090-B115-4D3E-948B-E5829A1886CF', N'{"601C6500-808A-426B-9658-6BA830396AE3":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,90ED8666-0961-426D-B582-E08C43EEE9E1,99A7F6EB-69BD-4167-B647-B10D3E12A3F3,3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,ACD7FC7F-DE75-4502-B619-CF6BDA16CB9A,A04A57A2-014C-4D47-A6A2-B5018ED286CB,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21,D2B8534F-D435-4E39-AC9D-4294AFC492DB","60C478C8-B4B7-471F-AE7F-62DF7A6C44D4":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,A04A57A2-014C-4D47-A6A2-B5018ED286CB,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21,D2B8534F-D435-4E39-AC9D-4294AFC492DB","6C9E2090-B115-4D3E-948B-E5829A1886CF":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,90ED8666-0961-426D-B582-E08C43EEE9E1,99A7F6EB-69BD-4167-B647-B10D3E12A3F3,3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,A04A57A2-014C-4D47-A6A2-B5018ED286CB,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21,D2B8534F-D435-4E39-AC9D-4294AFC492DB","8120ACDF-0642-4EA0-8BEC-83306D744319":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,90ED8666-0961-426D-B582-E08C43EEE9E1,99A7F6EB-69BD-4167-B647-B10D3E12A3F3,3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,A04A57A2-014C-4D47-A6A2-B5018ED286CB,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21,D2B8534F-D435-4E39-AC9D-4294AFC492DB","F8C1C161-F1FC-4729-A00C-4A9893BF8209":"","9C145834-8336-4E63-A34C-6DF8E5854C96":"","B27D2434-DC15-4EFA-A586-E11DF23D5344":"90ED8666-0961-426D-B582-E08C43EEE9E1,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,D3A31A0C-C842-4709-82DD-A33B0253A462,A04A57A2-014C-4D47-A6A2-B5018ED286CB","1CDBF142-7F5C-42E8-A426-370BF4542224":"A04A57A2-014C-4D47-A6A2-B5018ED286CB","A40C1D01-C682-483F-AF87-CD843AA457C7":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,90ED8666-0961-426D-B582-E08C43EEE9E1,99A7F6EB-69BD-4167-B647-B10D3E12A3F3,3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,D3A31A0C-C842-4709-82DD-A33B0253A462,A04A57A2-014C-4D47-A6A2-B5018ED286CB,26008EAA-4ED7-46E0-8BBF-DCF1472397E0,58F7DA5E-37F8-4648-80F3-998E702A4D91,73CF6246-4429-4EF2-A0DA-F86F96B9BEBB,C42B2ECC-3A18-495B-9BC6-B315FEA5A951,807FF920-37AA-40F7-92BC-3FC894D4D7A3,9B2265A4-A01F-48E8-9373-A6A294FCC1B7,D2B8534F-D435-4E39-AC9D-4294AFC492DB,F60C1C50-EBDC-430A-BE3A-30C4AB23C3FD,3636B071-CE52-4551-BA67-4F982D14CD7C,EAED8E4A-E6DA-4075-883F-8B5559B7A9AD,609287B6-4B59-4E59-A822-B8C1087BB603,85C51241-19D1-4BD0-A35B-DB570ACD0E85,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21","DF9CFA05-847A-43B6-8119-E8FC7AE04734":"A04A57A2-014C-4D47-A6A2-B5018ED286CB","89EB0D3E-5BAA-494E-AD49-7FE247405CDA":"A04A57A2-014C-4D47-A6A2-B5018ED286CB","F5415EAE-694F-4332-B259-E86BDC54AA09":"A04A57A2-014C-4D47-A6A2-B5018ED286CB","56ad6bac-d773-4460-b88f-164c08df4808":"90ED8666-0961-426D-B582-E08C43EEE9E1,99A7F6EB-69BD-4167-B647-B10D3E12A3F3,3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,A04A57A2-014C-4D47-A6A2-B5018ED286CB,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21,D2B8534F-D435-4E39-AC9D-4294AFC492DB","a5fc0578-72c4-4be1-9ad8-71ef0cc9f746":"90ED8666-0961-426D-B582-E08C43EEE9E1,99A7F6EB-69BD-4167-B647-B10D3E12A3F3,3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,A04A57A2-014C-4D47-A6A2-B5018ED286CB,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21,D2B8534F-D435-4E39-AC9D-4294AFC492DB","faa428d6-6d57-4fe2-84cf-48ab7beaa950":"EFE021E2-30FE-4500-9BF6-52611F1AAA4A,90ED8666-0961-426D-B582-E08C43EEE9E1,99A7F6EB-69BD-4167-B647-B10D3E12A3F3,3B4EBAB9-F2A5-43C8-8BCB-94B9A3AA5131,5C1A8DE4-F0EC-4795-AF48-6F0C97EB940E,A04A57A2-014C-4D47-A6A2-B5018ED286CB,AE0D0298-FE28-405F-82AB-00E310FFE9C2,4FC96135-26B5-46D7-B809-747AD71F2A21,D2B8534F-D435-4E39-AC9D-4294AFC492DB","748d9667-bd7a-4745-be34-1057160ef444":"A04A57A2-014C-4D47-A6A2-B5018ED286CB"}', CAST(N'2018-05-20T07:34:18.000' AS DateTime))
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2efd71ce-c6e1-11e8-98fc-aaaa0010af81', N'SysButton', N'SbId', N'SbId', N'SbId', 100, 1, 2, 0, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2efd72a6-c6e1-11e8-98fc-aaaa0010af81', N'SysButton', N'SbPid', N'上级按钮', N'上级按钮', 100, 1, 2, 1, NULL, N'0', NULL, 1, NULL, N'/Common/QueryButtonTree', N'combotree', 1, 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2efd72f0-c6e1-11e8-98fc-aaaa0010af81', N'SysButton', N'SbBtnText', N'按钮文本', N'按钮文本', 250, 1, 0, 0, 0, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 0, 0, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2efd7327-c6e1-11e8-98fc-aaaa0010af81', N'SysButton', N'SbBtnId', N'按钮ID', N'按钮ID', 150, 1, 0, 1, 0, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 0, 2, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2efd735a-c6e1-11e8-98fc-aaaa0010af81', N'SysButton', N'SbBtnClass', N'按钮类', N'按钮类', 200, 1, 0, 2, 0, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 0, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2efd738d-c6e1-11e8-98fc-aaaa0010af81', N'SysButton', N'SbBtnIcon', N'按钮图标', N'按钮图标', 200, 1, 0, 3, 0, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 0, 4, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2efd73bf-c6e1-11e8-98fc-aaaa0010af81', N'SysButton', N'SbBtnOrder', N'按钮排序', N'按钮排序', 100, 2, 0, 4, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 5, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2efd73f0-c6e1-11e8-98fc-aaaa0010af81', N'SysButton', N'SbStatus', N'按钮状态', N'按钮状态', 100, 2, 0, 5, 0, N'17', NULL, 1, NULL, NULL, N'checkbox', 1, 1, 0, 6, NULL, NULL, N'1', N'启用按钮')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2efd7423-c6e1-11e8-98fc-aaaa0010af81', N'SysButton', N'SbDescribe', N'按钮描述', N'按钮描述', 100, 1, 0, 7, 0, N'0', 0, 1, 0, N'', N'text', 1, 2, 0, 8, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2efd7452-c6e1-11e8-98fc-aaaa0010af81', N'SysButton', N'SbBtnGroup', N'按钮分组', N'按钮分组', 100, 2, 0, 6, 0, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 0, 7, 1, N'默认1，不相同有分割线', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aa7ce-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'LogId', N'LogId', N'LogId', 100, 1, 2, 0, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aa86d-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'SuName', N'账号', N'账号', 160, 1, 0, 0, 0, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aa8af-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'SuNickname', N'姓名', N'姓名', 160, 1, 0, 1, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 3, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aa8e1-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'LogAction', N'动作', N'动作', 250, 1, 0, 2, 0, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aa913-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'LogContent', N'内容', N'内容', 250, 1, 0, 3, 0, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aa944-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'LogUrl', N'链接', N'链接', 350, 1, 0, 4, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 6, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aa975-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'LogIp', N'IP', N'IP', 160, 2, 0, 5, 0, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aa9a5-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'LogCreateTime', N'时间', N'时间', 200, 2, 0, 6, 0, N'0', NULL, 1, 1, NULL, N'datetime', 1, 1, 0, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aa9d7-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'LogBrowserName', N'浏览器名称', N'浏览器名称', 180, 1, 0, 7, 0, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aaa0a-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'LogSystemName', N'操作系统', N'操作系统', 150, 1, 0, 8, 0, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aaa3b-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'LogGroup', N'分组', N'分组', 100, 1, 1, 9, 0, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 11, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f0aaa6b-c6e1-11e8-98fc-aaaa0010af81', N'SysLog', N'LogRemark', N'备注', N'备注', 100, 1, 1, 10, 0, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 12, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'26DCC3C7-F5D8-4F4F-A525-61C7D97CB6F3', N'sysmenu', N'SmPid', N'上级菜单', N'上级菜单', 100, 1, 2, 1, NULL, N'0', NULL, 1, NULL, N'/Common/QueryMenu?type=all', N'combotree', 1, 1, 0, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2B8BD8CC-2376-4E58-A6B5-B64FA07F1F20', N'sysmenu', N'SmStatus', N'菜单状态', N'菜单状态', 100, 2, 0, 4, 0, N'17', NULL, 1, NULL, NULL, N'checkbox', 1, 1, 0, 5, NULL, NULL, N'1', N'启用菜单')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'3B8F9087-86A5-4777-A56E-5D9C98F972A4', N'sysmenu', N'SmUrl', N'菜单链接', N'菜单链接', 300, 1, 0, 1, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 2, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'5A933E73-6FBE-486A-93D3-C53DD02F7161', N'sysmenu', N'SmName', N'菜单名称', N'菜单名称', 300, 1, 0, 0, 0, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 0, 0, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'8F812FCE-E03D-4C68-BDD7-A3DE64AE38B9', N'sysmenu', N'SmOrder', N'菜单排序', N'菜单排序', 100, 2, 0, 3, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 4, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'BA169D09-3A4E-4480-A50E-A6B65F31D5E8', N'sysmenu', N'SmGroup', N'菜单分组', N'菜单分组', 100, 2, 0, 5, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 6, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'C2A8EE35-E805-46BF-BBF7-B09EA7101679', N'sysmenu', N'SmId', N'SmId', N'SmId', 100, 1, 2, 0, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'FEAE4BB7-4A5F-4F53-AE6B-996F08BE4471', N'sysmenu', N'SmIcon', N'菜单图标', N'菜单图标', 250, 1, 0, 2, 0, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 0, 3, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f180d9c-c6e1-11e8-98fc-aaaa0010af81', N'SysRole', N'SrId', N'SrId', N'SrId', 100, 1, 2, 0, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f180e18-c6e1-11e8-98fc-aaaa0010af81', N'SysRole', N'SrName', N'角色名称', N'角色名称', 150, 1, 0, 0, 0, N'0', NULL, 1, 1, NULL, N'text', 1, 2, 0, 0, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f180ec0-c6e1-11e8-98fc-aaaa0010af81', N'SysRole', N'SrStatus', N'角色状态', N'角色状态', 120, 2, 0, 2, 0, N'17', 1, 1, NULL, NULL, N'checkbox', 1, 2, 0, 1, NULL, NULL, N'1', N'启用角色')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f180f11-c6e1-11e8-98fc-aaaa0010af81', N'SysRole', N'SrDescribe', N'角色描述', N'角色描述', 200, 1, 0, 1, 0, N'0', 0, 1, 0, N'', N'text', 1, 2, 0, 2, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f180f7a-c6e1-11e8-98fc-aaaa0010af81', N'SysRole', N'SrMenus', N'菜单', N'菜单', 100, 1, 2, 5, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f180fad-c6e1-11e8-98fc-aaaa0010af81', N'SysRole', N'SrButtons', N'按钮', N'按钮', 100, 1, 2, 6, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f180f46-c6e1-11e8-98fc-aaaa0010af81', N'SysRole', N'SrGroup', N'角色分组', N'角色分组', 100, 1, 2, 3, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2f180fdf-c6e1-11e8-98fc-aaaa0010af81', N'SysRole', N'SrCreateTime', N'创建时间', N'创建时间', 100, 1, 2, 4, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'10460273-7EDE-4897-B16E-3A3038D59CD6', N'systableconfig', N'ColHide', N'隐藏', N'隐藏', 150, 2, 0, 6, 0, N'col_custom_', NULL, 1, NULL, N'dataurl_colhide', N'combobox', 1, 1, 0, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'17EF7B21-8332-48DE-A13D-81875A2CA85B', N'systableconfig', N'FormOrder', N'排序', N'排序', 80, 2, 0, 18, 0, N'0', 0, 1, 0, N'', N'text', 2, 1, 0, 18, 0, N'', N'100', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'1B239E70-4E80-4A51-95B4-3F1A347924B2', N'systableconfig', N'FormArea', N'区域', N'区域', 120, 2, 0, 15, 0, N'col_custom_', NULL, 1, 1, N'dataurl_formarea', N'combobox', 2, 1, 0, 15, NULL, NULL, N'1', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'1CA16D3D-250F-4EA9-ADB4-A3D1F202EA3B', N'systableconfig', N'ColAlign', N'对齐方式', N'对齐方式', 100, 2, 0, 3, 0, N'col_custom_', NULL, 1, NULL, N'dataurl_colalign', N'combobox', 1, 1, 0, 5, NULL, NULL, N'1', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2FA5047A-81B0-442A-BB64-E3653A1F2978', N'systableconfig', N'FormRequired', N'必填', N'必填', 80, 2, 0, 19, 0, N'17', NULL, 1, 1, NULL, N'checkbox', 2, 1, 0, 19, NULL, NULL, N'0', N'是必填项')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'37DCF032-D8AB-41E7-B391-11937AA51332', N'systableconfig', N'ColSort', N'启用排序', N'启用排序', 100, 2, 0, 10, 0, N'17', NULL, 1, 1, NULL, N'checkbox', 1, 1, 0, 9, NULL, NULL, N'0', N'点击标题排序')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'469A90B4-413C-43D9-BD76-6DE270071CD4', N'systableconfig', N'ColOrder', N'排序', N'排序', 80, 2, 0, 7, 0, N'0', 1, 1, NULL, NULL, N'text', 1, 1, 0, 7, NULL, NULL, N'100', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'4A6531D0-AEDA-4A43-B189-2504825252FE', N'systableconfig', N'FormText', N'显示文本', N'显示文本', 200, 1, 0, 22, 0, N'0', 0, 1, 0, N'', N'text', 2, 1, 0, 22, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'4B25A348-7380-485D-8682-BF2116D37BAF', N'systableconfig', N'ColFormat', N'格式化', N'格式化', 280, 1, 0, 9, 0, N'col_custom_', NULL, 1, 1, N'dataurl_colformat', N'combobox', 1, 2, 0, 12, NULL, NULL, N'0', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'4D0376A3-0149-49B7-A330-A492F1DE5169', N'systableconfig', N'FormSpan', N'跨列', N'跨列', 80, 2, 0, 16, 0, N'col_custom_', NULL, 1, NULL, N'dataurl_formspan', N'combobox', 2, 1, 0, 16, NULL, NULL, N'1', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'52D3C3CE-0C21-483F-9A61-04D133F3BF6A', N'systableconfig', N'ColQuery', N'查询', N'查询', 80, 2, 0, 12, 0, N'17', NULL, 1, 1, NULL, N'checkbox', 1, 1, 0, 10, NULL, NULL, N'0', N'启用查询')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'536A235B-21A3-4821-B0B0-0F9A6A94F598', N'systableconfig', N'ColWidth', N'列宽', N'列宽', 80, 2, 0, 4, 0, N'0', 0, 1, 0, N'', N'text', 1, 1, 0, 4, 0, N'', N'100', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'6B73EBAD-5326-4E6F-95BA-A9684642668C', N'systableconfig', N'ColExport', N'导出', N'导出', 80, 2, 0, 11, 0, N'17', NULL, 1, 1, NULL, N'checkbox', 1, 1, 0, 11, NULL, NULL, N'0', N'是导出列')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'9FA037EA-7125-4D19-A98E-FAA97B22477B', N'systableconfig', N'ColFrozen', N'冻结', N'冻结', 80, 2, 0, 8, 0, N'17', NULL, 1, 1, NULL, N'checkbox', 1, 1, 0, 8, NULL, NULL, N'0', N'是冻结列')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'A961D9F3-67D3-44C6-9FDE-1E0CC31051CF', N'systableconfig', N'ColTitle', N'列标题', N'列标题', 250, 1, 0, 1, 0, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 3, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'AA01AE44-5945-40FA-8C19-0F85D0347605', N'systableconfig', N'FormHide', N'隐藏', N'隐藏', 150, 2, 0, 17, 0, N'col_custom_', NULL, 1, 1, N'dataurl_formhide', N'combobox', 2, 1, 0, 17, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'B7CB1D39-401F-4C38-9771-A649819A79F5', N'systableconfig', N'Id', N'Id', N'Id', 100, 1, 2, 2, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'B8161370-A3B1-46BF-A3A1-986E8F7B70FD', N'systableconfig', N'FormPlaceholder', N'输入框提示', N'输入框提示', 200, 1, 0, 20, 0, N'0', 0, 1, 0, N'', N'text', 2, 1, 0, 20, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'CAE94CDD-1D87-461B-A833-22396E73568C', N'systableconfig', N'FormType', N'输入类型', N'输入类型', 200, 1, 0, 14, 0, N'0', NULL, 1, 1, N'dataurl_formtype', N'combobox', 2, 2, 0, 14, NULL, NULL, N'text', NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'D1F078C7-C076-4B56-A399-D86CB02D04FA', N'systableconfig', N'FormValue', N'初始值', N'初始值', 150, 1, 0, 21, 0, N'0', 0, 1, 0, N'', N'text', 2, 1, 0, 21, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'D25C93CD-53F0-4BAE-B01C-26CA55512BAB', N'systableconfig', N'ColField', N'列键', N'列键', 200, 1, 0, 2, 0, N'0', NULL, 1, 1, NULL, N'text', 1, 1, 0, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'E8082943-A931-40D0-BAC0-8403BED3B06D', N'systableconfig', N'DvTitle', N'默认列标题', N'默认列标题', 200, 1, 0, 5, 0, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 0, 2, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'E9E6345A-EE33-4B25-834D-8748D252B2F1', N'systableconfig', N'FormUrl', N'来源（URL）', N'来源（URL）', 300, 1, 0, 13, 0, N'0', NULL, 1, 1, N'/common/querymenu', N'text', 2, 2, 0, 13, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'F08489C7-6A0F-4C5D-A81E-9EE6621994AC', N'systableconfig', N'TableName', N'（虚）表名', N'（虚）表名', 200, 1, 0, 0, 1, N'0', 1, 1, 1, NULL, N'text', 1, 1, 0, 0, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'079E1037-EC30-4DEB-8E4E-877FDF23562B', N'sysuser', N'SuPwd', N'密码', N'密码', 100, 1, 1, 4, 0, N'0', NULL, 1, NULL, NULL, N'password', 1, 2, 0, 2, 1, N'', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2501521D-BD4C-40C1-A1F4-5715BAC9E6CB', N'sysuser', N'SuNickname', N'姓名', N'姓名', 180, 1, 0, 1, 0, N'0', NULL, 1, 1, NULL, N'text', 1, 2, 0, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'7A40E5DE-4A25-40BD-BD8B-524630A87B01', N'sysuser', N'SuId', N'SuId', N'SuId', 100, 1, 2, 0, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'D0527E79-6482-4D6D-90E3-03CD9764F3CC', N'sysuser', N'SuName', N'账号', N'账号', 180, 1, 0, 0, 0, N'0', NULL, 1, 1, NULL, N'text', 1, 2, 0, 0, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'E07E0463-D6A8-4760-9611-E656D870464C', N'sysuser', N'SrId', N'角色', N'角色', 180, 1, 0, 2, 0, N'col_custom_', NULL, 1, 1, N'/common/queryrole', N'combobox', 1, 2, 0, 3, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'363b3f83-0caf-408b-8307-ae4cc6f298f5', N'sysuser', N'OldUserPwd', N'OldUserPwd', N'OldUserPwd', 100, 1, 2, 8, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 100, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'02A215E4-D1E7-428B-B159-72439B7C3BDB', N'sysuser', N'SuGroup', N'分组', N'分组', 100, 1, 2, 7, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'8E339D70-995D-4933-8056-C490CC5775A3', N'sysuser', N'SuSign', N'登录标识', N'登录标识', 100, 1, 2, 6, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 2, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'DAF45196-E710-4100-B517-01D0AA7454FB', N'sysuser', N'SuCreateTime', N'创建时间', N'创建时间', 180, 2, 0, 3, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 6, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'AF4EC19D-14D6-4046-BAED-7116BA4A0FA2', N'sysuser', N'SuStatus', N'状态', N'状态', 80, 2, 0, 5, NULL, N'17', NULL, 1, NULL, NULL, N'checkbox', 1, 2, 0, 4, NULL, NULL, NULL, N'启用账号')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'0ACF9D2C-92B8-44DB-801B-B2E11B2B5A95', N'tempexample', N'ColAlign', N'默认值', N'默认值', 130, 1, 0, 6, 0, N'0', 0, 1, 1, N'dataurl_colalign', N'combobox', 1, 1, 0, 6, 0, N'', N'2', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'0DDD0335-6A80-4927-B7EC-4BC9334606B2', N'tempexample', N'ColHide', N'勾选1或0', N'勾选1或0', 130, 1, 0, 2, 0, N'0', 0, 1, 1, N'', N'checkbox', 1, 1, 0, 2, 0, N'', N'', N'勾选得到1不勾选为空')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'10817844-1899-44E7-B41B-CD9EF4BC5465', N'tempexample', N'FormRequired', N'1必填', N'1必填', 130, 1, 0, 15, 0, N'0', 0, 1, 1, N'', N'checkbox', 1, 1, 0, 15, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'15B65F50-E47B-4A3A-9042-0F3B08487EAA', N'tempexample', N'FormValue', N'选择角色', N'选择角色', 130, 1, 0, 12, 0, N'0', 0, 1, 1, N'/setting/sysrole', N'modal', 1, 1, 0, 12, 1, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'1638625D-601A-4FFD-8D7E-9904503C7543', N'tempexample', N'DvTitle', N'时分秒', N'时分秒', 130, 1, 0, 9, 0, N'0', 0, 1, 1, N'', N'time', 1, 1, 0, 9, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'1A9A7B9A-B6E6-4869-BF64-C0F90019B1F0', N'tempexample', N'ColQuery', N'1查询', N'1查询', 130, 1, 0, 19, 0, N'0', 0, 1, 1, N'', N'checkbox', 1, 1, 0, 19, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'1DBCFF81-4399-4FE3-8B34-68ABC051747A', N'tempexample', N'FormOrder', N'排序', N'排序', 130, 1, 0, 21, 0, N'0', 0, 1, 1, N'', N'text', 1, 1, 0, 21, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'2810CB41-3366-475F-B7D2-D3588F7ACE23', N'tempexample', N'FormHide', N'1隐藏', N'1隐藏', 130, 1, 0, 18, 0, N'0', 0, 1, 1, N'', N'checkbox', 1, 1, 0, 18, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'3F70197D-A228-4E08-98F8-79FE22E718E3', N'tempexample', N'FormType', N'下拉树', N'下拉树', 130, 1, 0, 0, 0, N'0', 0, 1, 1, N'/common/querymenu', N'combotree', 1, 1, 0, 0, 0, N'', N'F8C1C161-F1FC-4729-A00C-4A9893BF8209', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'459F9EC8-BD11-43E7-BEBB-A640714B5565', N'tempexample', N'FormArea', N'默认多选', N'默认多选', 130, 1, 0, 5, 0, N'0', 0, 1, 1, N'dataurl_formarea', N'combobox', 1, 1, 0, 5, 0, N'', N'1,2', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'6B2D1765-993D-4B31-B089-58675F98C09D', N'tempexample', N'ColTitle', N'年月日', N'年月日', 130, 1, 0, 8, 0, N'0', 0, 1, 1, N'', N'date', 1, 1, 0, 8, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'706D6A3F-7D2E-4327-82CD-6C49ACA44199', N'tempexample', N'ColSort', N'默认勾选', N'默认勾选', 130, 1, 0, 3, 0, N'0', 0, 1, 1, N'', N'checkbox', 1, 1, 0, 3, 0, N'', N'1', N'默认选中')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'7D63D1F1-884C-439D-A973-F68D8D3C8FC4', N'tempexample', N'FormUrl', N'年月日时分秒', N'年月日时分秒', 130, 1, 0, 7, 0, N'0', 0, 1, 1, N'', N'datetime', 1, 1, 0, 7, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'B4AE0D0D-5F5D-4DAB-8591-672C3EB2A526', N'tempexample', N'ColOrder', N'密码框', N'密码框', 130, 1, 0, 14, 0, N'0', 0, 1, 1, N'', N'password', 1, 1, 0, 14, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'BCA1BBE4-44CA-4793-B214-99A6BF137F3E', N'tempexample', N'TableName', N'文本域', N'文本域', 130, 1, 0, 16, 0, N'0', NULL, 1, 1, NULL, N'textarea', 1, 2, 0, 16, 1, N'请输入表名', NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'C06F0970-9EEA-462F-9B1C-37782E450F05', N'tempexample', N'FormPlaceholder', N'人员姓名', N'人员姓名', 130, 1, 0, 10, NULL, N'0', NULL, 1, 1, N'/setting/sysuser', N'modal', 1, 1, 0, 10, 1, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'D3FB79B9-22C8-4DC1-BC0F-85C681BF7656', N'tempexample', N'FormSpan', N'combotree', N'combotree', 130, 1, 0, 1, 0, N'0', 0, 1, 1, N'/common/querymenu?custom=m', N'combotree', 1, 1, 0, 1, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'D52AE07E-7E03-4DCD-A7C3-9AE2BD614D64', N'tempexample', N'ColField', N'必填项', N'必填项', 130, 1, 0, 13, 0, N'0', 0, 1, 1, N'', N'text', 1, 1, 0, 13, 1, N'请输入内容，必填', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'DAE7AE2A-D6F1-487B-9863-F3A29920E023', N'tempexample', N'ColFrozen', N'1冻结', N'1冻结', 130, 1, 0, 20, 0, N'0', 0, 1, 1, N'', N'text', 1, 1, 0, 20, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'E158FE3F-9C66-48D3-BD76-DFA8C51EFE68', N'tempexample', N'FormText', N'显示文本', N'显示文本', 130, 1, 0, 22, 0, N'0', 0, 1, 1, N'', N'text', 1, 1, 0, 22, 0, N'', N'', N'')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'E8D0114E-63B3-41C4-99D0-5F9AF9EF79CC', N'tempexample', N'Id', N'Id', N'Id', 130, 1, 1, 1, NULL, N'0', NULL, 1, NULL, NULL, N'text', 1, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'F7A57E11-3B98-43F8-993A-47E6733C9F3C', N'tempexample', N'ColExport', N'1导出', N'1导出', 130, 1, 0, 17, 0, N'0', NULL, 1, 1, NULL, N'checkbox', 1, 1, 0, 17, NULL, NULL, NULL, N'导出')
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'F821E861-BB7B-4D20-915F-1B35EFA68ECC', N'tempexample', N'ColWidth', N'人员账号', N'人员账号', 130, 1, 0, 11, NULL, N'0', NULL, 1, 1, N'/setting/sysuser', N'modal', 1, 1, 0, 11, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysTableConfig] ([Id], [TableName], [ColField], [DvTitle], [ColTitle], [ColWidth], [ColAlign], [ColHide], [ColOrder], [ColFrozen], [ColFormat], [ColSort], [ColExport], [ColQuery], [FormUrl], [FormType], [FormArea], [FormSpan], [FormHide], [FormOrder], [FormRequired], [FormPlaceholder], [FormValue], [FormText]) VALUES (N'FBEA8B72-B88A-4A24-B3DC-A9A5813BD9B2', N'tempexample', N'ColFormat', N'combobox', N'combobox', 130, 1, 0, 4, 0, N'0', 0, 1, 1, N'dataurl_colformat', N'combobox', 1, 1, 0, 4, 0, N'', N'', N'')
INSERT [dbo].[SysUser] ([SuId], [SrId], [SuName], [SuPwd], [SuNickname], [SuCreateTime], [SuStatus], [SuSign], [SuGroup]) VALUES (N'0ad60901-33d9-4bda-99c3-e720dd0685d7', N'58307c67-76b8-4156-bde3-f307f4da25e9', N'test', N'098f6bcd4621d373cade4e832627b4f6', N'test', CAST(N'2018-04-21T19:49:51.000' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[SysUser] ([SuId], [SrId], [SuName], [SuPwd], [SuNickname], [SuCreateTime], [SuStatus], [SuSign], [SuGroup]) VALUES (N'F9A19BAB-49C3-4131-AEFC-FB80FAAE579A', N'E663CE67-E9CA-4441-AB77-DC267C22C683', N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'管理员', CAST(N'2018-02-14T09:33:00.000' AS DateTime), 1, NULL, 1)
SET ANSI_PADDING ON
GO
/****** Object:  Index [SysAuthorize_SaId]    Script Date: 2019/2/28 11:12:43 ******/
ALTER TABLE [dbo].[SysAuthorize] ADD  CONSTRAINT [SysAuthorize_SaId] PRIMARY KEY NONCLUSTERED 
(
	[SaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SysLog_LogId_PK]    Script Date: 2019/2/28 11:12:43 ******/
ALTER TABLE [dbo].[SysLog] ADD  CONSTRAINT [SysLog_LogId_PK] PRIMARY KEY NONCLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SysTableConfig_Id_PK]    Script Date: 2019/2/28 11:12:43 ******/
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [SysTableConfig_Id_PK] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SysRole] ADD  CONSTRAINT [DF_SysRole_Status]  DEFAULT ((0)) FOR [SrStatus]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_ColOrder]  DEFAULT ((0)) FOR [ColOrder]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_ColFrozen]  DEFAULT ((0)) FOR [ColFrozen]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_ColSort]  DEFAULT ((0)) FOR [ColSort]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_ColExport]  DEFAULT ((0)) FOR [ColExport]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_ColQuery]  DEFAULT ((0)) FOR [ColQuery]
GO
ALTER TABLE [dbo].[SysTableConfig] ADD  CONSTRAINT [DF_SysTableConfig_FormRequired]  DEFAULT ((0)) FOR [FormRequired]
GO
ALTER TABLE [dbo].[SysUser] ADD  CONSTRAINT [DF_SysUser_Status]  DEFAULT ((0)) FOR [SuStatus]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联SysUser表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysAuthorize', @level2type=N'COLUMN',@level2name=N'SuId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方授权标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysAuthorize', @level2type=N'COLUMN',@level2name=N'OpenId1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方授权标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysAuthorize', @level2type=N'COLUMN',@level2name=N'OpenId2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方授权标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysAuthorize', @level2type=N'COLUMN',@level2name=N'OpenId4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方授权标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysAuthorize', @level2type=N'COLUMN',@level2name=N'OpenId3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方授权标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysAuthorize', @level2type=N'COLUMN',@level2name=N'OpenId5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方授权标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysAuthorize', @level2type=N'COLUMN',@level2name=N'OpenId6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方授权标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysAuthorize', @level2type=N'COLUMN',@level2name=N'OpenId7'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方授权标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysAuthorize', @level2type=N'COLUMN',@level2name=N'OpenId8'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方授权标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysAuthorize', @level2type=N'COLUMN',@level2name=N'OpenId9'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统用户授权登录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysAuthorize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮文本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'SbBtnText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'SbBtnId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'SbBtnClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'SbBtnIcon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'SbBtnOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态，1启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'SbStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'SbDescribe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton', @level2type=N'COLUMN',@level2name=N'SbBtnGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统按钮表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysButton'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'SmName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'SmUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'SmOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'SmIcon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态，1启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'SmStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组，默认1，比如移动端为2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'SmGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统菜单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'SrName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态，1启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'SrStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'SrDescribe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'SrGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'SrMenus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'按钮' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'SrButtons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole', @level2type=N'COLUMN',@level2name=N'SrCreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'（虚）表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'TableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColField'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认列标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'DvTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列宽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对齐方式 1左，2中，3右' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColAlign'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColHide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1冻结' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColFrozen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'格式化' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColFormat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1启用点击排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColSort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1导出' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColExport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1查询' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'ColQuery'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跨列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormSpan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormHide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1必填' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormRequired'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入框提示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormPlaceholder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初始值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示文本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig', @level2type=N'COLUMN',@level2name=N'FormText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysTableConfig'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'SrId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'SuName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'SuPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'SuNickname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'SuCreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态，1正常' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'SuStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'SuSign'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'SuGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'（虚）表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'TableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColField'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认列标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'DvTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列宽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对齐方式 1左，2中，3右' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColAlign'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColHide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1冻结' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColFrozen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'格式化' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColFormat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1启用点击排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColSort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1导出' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColExport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1查询' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'ColQuery'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跨列' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormSpan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1隐藏' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormHide'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1必填' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormRequired'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入框提示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormPlaceholder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初始值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示文本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TempExample', @level2type=N'COLUMN',@level2name=N'FormText'
GO