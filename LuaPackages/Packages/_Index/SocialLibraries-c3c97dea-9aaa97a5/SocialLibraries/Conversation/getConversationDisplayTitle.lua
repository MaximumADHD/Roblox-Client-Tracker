return function(conversation): string
	if conversation then
		local title = conversation.title or conversation.titleForViewer
		if title then
			local titleString = tostring(title)
			return string.gsub(titleString, "\n", "")
		end
	end

	return ""
end
