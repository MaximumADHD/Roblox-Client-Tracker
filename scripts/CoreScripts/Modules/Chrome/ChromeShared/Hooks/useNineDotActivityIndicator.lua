local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ChromeService = require(Root.Service)

return function(featureKey: string, visible: boolean)
	React.useEffect(function()
		ChromeService:setNineDotActivityIndicatorVisible(featureKey, visible)

		return function()
			ChromeService:setNineDotActivityIndicatorVisible(featureKey, false)
		end
	end, { featureKey, visible } :: { any })
end
