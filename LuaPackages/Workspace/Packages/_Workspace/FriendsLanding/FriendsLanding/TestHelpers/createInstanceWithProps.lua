local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local UIBlox = dependencies.UIBlox
local Roact = dependencies.Roact

type ReactElement<Props, ElementType> = dependencies.ReactElement<Props, ElementType>

return function(mockLocale)
	return function(component, props, resolution)
		local folder = Instance.new("ScreenGui")
		folder.Parent = game:GetService("CoreGui")
		local element: ReactElement<any, any>

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
		local handle = Roact.mount(mockLocale(tree), folder)
		local cleanup = function()
			Roact.unmount(handle)
			folder:Destroy()
		end
		return folder, cleanup
	end
end
