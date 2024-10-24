SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mahasiswa](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[NPM] [bigint] NULL,
	[nama] [varchar](255) NULL,
	[tanggal_lahir] [date] NULL,
	[alamat] [varchar](255) NULL,
	[no_hp] [bigint] NULL,
	[jurusan_id] [bigint] NULL,
	[dosen_wali_id] [bigint] NULL,
	[status] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mahasiswa] ADD PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK__Mahasiswa__dosen__3B75D760] FOREIGN KEY([dosen_wali_id])
REFERENCES [dbo].[Dosen_Wali] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Mahasiswa] CHECK CONSTRAINT [FK__Mahasiswa__dosen__3B75D760]
GO
ALTER TABLE [dbo].[Mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK__Mahasiswa__jurus__3A81B327] FOREIGN KEY([jurusan_id])
REFERENCES [dbo].[jurusan] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Mahasiswa] CHECK CONSTRAINT [FK__Mahasiswa__jurus__3A81B327]
GO
