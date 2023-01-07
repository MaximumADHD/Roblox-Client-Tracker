local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local Rodux = dependencies.Rodux

local ContactsRevokedAccessDialog = require(script.Parent)
local navigation = {
	getParam = function(param)
		return function() end
	end,
}

return {
	controls = nil,
	stories = {
		ContactsRevokedAccessDialog = function(storyProps)
			local store = Rodux.Store.new(function()
				return {
					ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
				}
			end, {}, { Rodux.thunkMiddleware })

			return Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					Roact.createElement(ContactsRevokedAccessDialog, { navigation = navigation }),
				}),
			})
		end,
	},
}
