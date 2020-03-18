local TextService = game:GetService("TextService")

return function(text, fontSize, font, maxFrameWidth)
	local result = ""
	local strLength = string.len(text)

	-- early out if the string will fit
	local textSize = TextService:GetTextSize(
		text,
		fontSize,
		font,
		Vector2.new()
	)
	if textSize.X < maxFrameWidth then
		return text
	end

	for i = 1, math.ceil(strLength / 2), 1 do
		local frontString = text:sub(1, i)
		local endString = text:sub(strLength - (i-1), strLength)

		local fullString = frontString .. "..." .. endString

		local textSize = TextService:GetTextSize(
			fullString,
			fontSize,
			font,
			Vector2.new()
		)

		if textSize.X + 2 < maxFrameWidth then
			result = fullString
		else
			break
		end
	end
	return result
end