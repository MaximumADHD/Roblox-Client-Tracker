--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)

return function(component, props, resolution)
	local folder = Instance.new("ScreenGui", game:GetService("CoreGui"))
	local element

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
	local handle = Roact.mount(tree, folder)
	-- lute-lint-ignore(noNestedReactDefinitions)
	local cleanup = function()
		Roact.unmount(handle)
		folder:Destroy()
	end
	return folder, cleanup
end
