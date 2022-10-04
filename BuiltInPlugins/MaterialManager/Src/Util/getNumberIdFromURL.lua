return function(url: string) : number?
	local numericId = tonumber(url:match("://(%d+)")) or tonumber(url:match("(%d+)"))
	if numericId then
		return numericId
	end
	return nil
end
