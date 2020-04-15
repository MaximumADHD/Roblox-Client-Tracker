local Plugin = script.Parent.Parent.Parent

local thumbnailLoaderKey = require(Plugin.Src.Keys.thumbnailLoaderKey)

return function(component)
	return component._context[thumbnailLoaderKey]
end