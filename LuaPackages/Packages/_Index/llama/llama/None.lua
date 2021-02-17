
local None = newproxy(true)

getmetatable(None).__tostring = function()
	return "Llama.None"
end

return None