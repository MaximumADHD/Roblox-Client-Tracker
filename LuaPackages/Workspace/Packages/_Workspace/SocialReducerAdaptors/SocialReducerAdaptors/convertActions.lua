local SocialReducerAdaptors = script:FindFirstAncestor("SocialReducerAdaptors")
local dependencies = require(SocialReducerAdaptors.dependencies)
local llama = dependencies.llama

export type Action = {
	type: string,
	[string]: any,
}

export type ActionsToConvert = {
	[string]: (action: Action) -> { [number]: Action },
}

return function(reducer: any, actionsToConvert: ActionsToConvert, defaultState: any)
	return function(state: any, action: Action)
		state = state or defaultState

		local actions = { action }
		local convert = actionsToConvert[action.type]
		if convert then
			actions = convert(action)
		end

		return llama.List.reduce(actions, reducer, state)
	end
end
