--!strict
-- hack to get ContentText from RichText string
local tempTextLabel = Instance.new("TextLabel")
tempTextLabel.RichText = true
local function getContentText(text)
	tempTextLabel.Text = text
	return tempTextLabel.ContentText
end

local function isWhitespaceOnly(text)
	local content = getContentText(text)
	return string.find(content, "%S") == nil
end

return isWhitespaceOnly
