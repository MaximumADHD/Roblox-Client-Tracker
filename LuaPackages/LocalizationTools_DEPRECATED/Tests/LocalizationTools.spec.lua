local Roact = require(game:GetService("CorePackages").Roact)
local LocalizationTools = require(script.Parent.Parent.Components.LocalizationTools)
local Promise = require(script.Parent.Parent.Promise)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(LocalizationTools, {
			StudioSettings = {
				Theme = {
					GetColor = function() return Color3.new(0,0,0) end,
				},
				ThemeChanged = {
					Connect = function() return {Disconnect = function() end} end,
				},
			},
			UpdateGameTableInfo = function() return Promise.new(function() end) end,
			CheckTableAvailability = function()
				return Promise.new(function() end)
			end,
			GameIdChangedSignal = {
				Connect = function() end,
			},

			RobloxLocaleIdChangedSignal = {
				Connect = function() end,
			},
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
