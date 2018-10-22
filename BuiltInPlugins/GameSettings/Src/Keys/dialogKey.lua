local dialogKey = newproxy(true)

getmetatable(dialogKey).__tostring = function()
	return "Symbol(Dialog)"
end

return dialogKey