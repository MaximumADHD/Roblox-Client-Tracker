--!nonstrict

local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local JestGlobals = require(CorePackages.JestGlobals)

local RhodiumHelpers = require(CorePackages.Workspace.Packages.RhodiumHelpers)

return function()
	beforeAll(function(c)
		c.jest = JestGlobals.jest
		c.jestExpect = JestGlobals.expect
		c.RhodiumHelpers = RhodiumHelpers
		c.act = Roact.act
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
