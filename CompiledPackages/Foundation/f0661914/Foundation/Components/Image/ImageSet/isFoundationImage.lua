local function isFoundationImage(image: string?)
	return image ~= nil and image ~= "" and image:match("^%w+://.*$") == nil
end

return isFoundationImage
