--!nocheck

local CorePackages = game:GetService("CorePackages")
local LuaSocialLibrariesDeps = require(CorePackages.LuaSocialLibrariesDeps)
local Mock = LuaSocialLibrariesDeps.Mock
local Roact = require(CorePackages.Roact)
local RhodiumHelpers = require(game.CoreGui.RobloxGui.Modules.NotForProductionUse.RhodiumHelpers.api)
local UIBlox = require(CorePackages.UIBlox)

return function()
	beforeAll(function(c)
		expect.extend(Mock.Matchers)

		c.Mock = Mock
		c.RhodiumHelpers = RhodiumHelpers
		c.createInstanceWithProps = function(component, props, resolution)
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
					}
				}, {
					myElement = element,
				}),
			})
			local handle = Roact.mount(tree, folder)
			local cleanup = function()
				Roact.unmount(handle)
				folder:Destroy()
			end
			return folder, cleanup
		end
	end)
end
