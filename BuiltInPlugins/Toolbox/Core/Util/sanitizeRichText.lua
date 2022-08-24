--!strict
-- See RichText documentation: https://developer.roblox.com/en-us/articles/gui-rich-text#:~:text=with%20additional%20tags.-,Escape%20Characters,-Some%20characters%20have
return function(text: string)
	return text:gsub(".", function(char)
		if char == "<" then
			return "&lt;"
		elseif char == ">" then
			return "&gt;"
		elseif char == '"' then
			return "&quot;"
		elseif char == "'" then
			return "&apos;"
		elseif char == "&" then
			return "&amp;"
		else
			return char
		end
	end)
end
