--[[
	RoactNavigation is a Roact component framework that encapsulates the notion of
	app navigation so that it is reusable across different platforms. It roughly follows
	the same API and concepts as React Navigation. Please use their docs as a reference
	for how to work with this API until we add our own nice generated documentation and
	Confluence pages.

	https://reactnavigation.org/docs/en/getting-started.html
	https://reactnavigation.org/docs/en/api-reference.html
]]

local CorePackages = game:GetService("CorePackages")

local initify = require(CorePackages.initify)

initify(CorePackages.RoactNavigationImpl)

return require(CorePackages.RoactNavigationImpl)
