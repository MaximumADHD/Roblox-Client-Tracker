-- ROBLOX upstream: no upstream
local stripAnsi = function(text: string)
	local res = string.gsub(text, "[\27\155][][()#;?%d]*[A-PRZcf-ntqry=><~]", "")
	return res
end
return stripAnsi
