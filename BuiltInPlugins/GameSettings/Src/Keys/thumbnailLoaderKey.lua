local thumbnailLoaderKey = newproxy(true)

getmetatable(thumbnailLoaderKey).__tostring = function()
	return "Symbol(ThumbnailLoader)"
end

return thumbnailLoaderKey