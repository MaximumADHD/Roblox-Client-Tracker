local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Roact = dependencies.Roact
local JoinExperienceModal = require(Squads.Components.JoinExperienceModal.JoinExperienceModal)
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama

return {
	controls = {
		experienceName = "Super Cool Experience",
		userCount = 3,
		experienceServerSize = 6,
		showExperienceImage = true,
	},
	stories = {
		JoinExperienceModal = function(storyProps)
			local users = {}
			for i = 1, storyProps.controls.userCount do
				table.insert(users, "1111111111")
			end
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
					Roact.createElement(
						JoinExperienceModal,
						llama.Dictionary.join({
							closeModal = function() end,
							experienceImageId = if storyProps.controls.showExperienceImage
								then "rbxassetid://2610133241"
								else nil,
							experienceName = storyProps.controls.experienceName,
							experienceServerSize = storyProps.controls.experienceServerSize,
							screenSize = Vector2.new(450, 200),
							users = users,
						}, storyProps)
					),
				}),
			})
		end,
	},
}
