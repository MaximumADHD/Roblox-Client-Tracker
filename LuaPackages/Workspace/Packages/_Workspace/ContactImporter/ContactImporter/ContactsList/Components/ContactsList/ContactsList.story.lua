local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local RoactRodux = dependencies.RoactRodux
local Rodux = dependencies.Rodux

local ContactsList = require(ContactImporter.ContactsList.Components.ContactsList)

local TEMP_contacts = {}
for i = 1, 20 do
	TEMP_contacts[i] = {
		contactName = "someDude" .. i,
		contactId = "that dude's ID",
	}
end

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
				Size = UDim2.fromOffset(1000, 1000),
				BackgroundTransparency = 1,
			}, {
				storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
					store = store,
				}, {
					Roact.createElement(
						ContactsList,
						llama.Dictionary.join({
							screenSize = Vector2.new(500, 500),
							contacts = TEMP_contacts,
							closeModal = function()
								print("closing modal")
							end,
							sendContactFriendRequest = function()
								print("sending contact friend request")
							end,
						}, storyProps)
					),
				}),
			})
		end,
	},
}
