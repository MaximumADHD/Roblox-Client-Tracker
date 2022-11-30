local function formatDate(date: DateTime): string
	local currentDate = DateTime.now()
	local dateFormat: string

	if date:ToLocalTime().Year > currentDate:ToLocalTime().Year then
		dateFormat = "ll"
	else
		dateFormat = "ddd, MMM DD"
	end

	return ("%s AT %s"):format(date:FormatLocalTime(dateFormat, "en-us"), date:FormatLocalTime("LT", "en-us")):upper()
end

return formatDate
