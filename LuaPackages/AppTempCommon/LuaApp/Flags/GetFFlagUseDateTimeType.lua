game:DefineFastFlag("UseDateTimeType", false)

return function()
	return game:GetFastFlag("UseDateTimeType") and settings():GetFFlag("EnableDateTimeType")
end