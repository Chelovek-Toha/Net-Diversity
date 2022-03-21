﻿CREATE PROCEDURE [dbo].[DeleteOrders]
	@month int = null,
	@status int = null,
	@year int = null,
	@productId int = null
AS
	delete from [Order]
	where ([Status] = @status or @status is null) and
	([ProductId] = @productId or @productId is null) and
	(Month(CreatedDate) = @month or @month is null) and
	(Year(CreatedDate) = @year or @year is null)
RETURN 0
