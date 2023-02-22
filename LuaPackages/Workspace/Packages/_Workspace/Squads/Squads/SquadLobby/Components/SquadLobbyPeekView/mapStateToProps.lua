local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)

local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local llama = dependencies.llama

local mapStateToProps = function(state, props)
	local users = getDeepValue(state, "Squad.Squad.currentSquad.members") or {}

	return {
		peekViewProps = {
			mountAnimation = true,
			mountAsFullView = false,
			onPeekViewGoBack = function()
				props.navigation.goBack()
			end,
		},
		users = llama.List.map(users, function(user)
			return {
				id = user.userId,
				name = "Placeholder",
			}
		end),
		viewWidth = state.ScreenSize.X,
	}
end

export type Props = typeof(mapStateToProps(...))

return mapStateToProps
