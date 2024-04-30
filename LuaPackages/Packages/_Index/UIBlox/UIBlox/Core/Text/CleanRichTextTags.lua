-- This function cleans RichText tags from string and returns plain text
-- RichText does not have this function yet, ex. for getTextLength(RichText)
-- Note: This removes all tags including unsupported tags from string
local function cleanRichTextTags(text: string): string
	local plainText = ""
	local openTags = 0

	for i = 1, #text do
		local currChar = string.sub(text, i, i)

		if currChar == "<" then
			openTags = openTags + 1
		elseif currChar == ">" and openTags > 0 then
			openTags = openTags - 1
		elseif openTags == 0 then
			plainText = plainText .. currChar
		end
	end

	if openTags ~= 0 then
		-- Unclosed tag means RichText will be rendered with tags showing
		return text
	else
		return plainText
	end
end

return cleanRichTextTags
