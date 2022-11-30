local SocialTab = script:FindFirstAncestor("SocialTab")

local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox

local devDependencies = require(SocialTab.devDependencies)
local UnitTestHelpers = devDependencies.UnitTestHelpers

return function(component, props, resolution)
	local folder = Instance.new("ScreenGui")
	folder.Parent = game:GetService("CoreGui")
	local element: any

	if not resolution then
		element = Roact.createElement(component, props)
	else
		element = Roact.createElement("Frame", {
			Size = resolution,
		}, {
			testElement = Roact.createElement(component, props),
		})
	end

	local tree = Roact.createFragment({
		styleProvider = Roact.createElement(UIBlox.App.Style.AppStyleProvider, {
			style = {
				themeName = "Dark",
				fontName = "Gotham",
			},
		}, {
			myElement = element,
		}),
	})
	local handle = Roact.mount(UnitTestHelpers.mockLocale(tree), folder)
	local cleanup = function()
		Roact.unmount(handle)
		folder:Destroy()
	end
	return folder, cleanup
end
