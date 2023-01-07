local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local RoactRodux = dependencies.RoactRodux
local Rodux = dependencies.Rodux

local ContactsListEntry = require(script.Parent)

return {
	controls = nil,
	stories = {
		ContactsListEntry = function(storyProps)
			local store = Rodux.Store.new(function()
				return {
					ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
				}
			end, {}, { Rodux.thunkMiddleware })

			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(1000, 1000),
				BackgroundTransparency = 1,
			}, {
				storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					Roact.createElement(
						ContactsListEntry,
						llama.Dictionary.join({
							contactName = "Peter Parker",
							contactId = "ish3-sp1d-3rm4-n???",
							deviceContactId = "PeterParker",
						}, storyProps)
					),
				}),
			})
		end,
	},
}
