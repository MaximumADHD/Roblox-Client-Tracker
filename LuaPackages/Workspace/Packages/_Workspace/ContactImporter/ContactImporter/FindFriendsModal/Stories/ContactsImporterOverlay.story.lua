local ContactImporter = script:FindFirstAncestor("ContactImporter")
local FindFriendsModal = ContactImporter.FindFriendsModal
local dependencies = require(ContactImporter.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local RoactRodux = dependencies.RoactRodux
local Rodux = dependencies.Rodux
local ContactsImporterOverlay = require(FindFriendsModal.Components.ContactsImporterOverlay)

return {
	controls = nil,
	stories = {
		ContactsImporterOverlay = function(storyProps)
			local store = Rodux.Store.new(function()
				return {
					ScreenSize = Vector2.new(450, 200) or storyProps.screenSize,
				}
			end, {}, { Rodux.thunkMiddleware })

			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(1000, 600),
				BackgroundTransparency = 1,
			}, {
				storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					Roact.createElement(
						ContactsImporterOverlay,
						llama.Dictionary.join({
							screenSize = Vector2.new(500, 500),
						}, storyProps)
					),
				}),
			})
		end,
	},
}
