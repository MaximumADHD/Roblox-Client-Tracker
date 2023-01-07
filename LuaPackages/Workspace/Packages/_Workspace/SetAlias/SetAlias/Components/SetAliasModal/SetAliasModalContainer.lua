local SetAlias = script.Parent.Parent.Parent
local dependencies = require(SetAlias.dependencies)
local SetAliasModal = require(script.Parent.SetAliasModal)
local Constants = require(SetAlias.Common.Constants)

local React = dependencies.React
local NetworkingAliases = dependencies.NetworkingAliases
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch

export type State = {
	ScreenSize: Vector2,
	SetAlias: {},
}

export type Props = {
	navigation: {
		getParam: (string) -> any,
	},
}

local SetAliasModalContainer = function(props)
	local dispatch = useDispatch()
	local profileUserId = props.navigation.getParam(Constants.PROFILE_USER_ID)
	local screenSize = useSelector(function(state: State)
		return state.ScreenSize
	end)
	local alias = useSelector(function(state: State)
		return getDeepValue(state, string.format("SetAlias.Aliases.byUserId.%s", profileUserId))
	end)

	local cancelOnActivated = function()
		props.navigation.pop()
	end

	local saveOnActivated = function(aliasText: string)
		return dispatch(NetworkingAliases.SetUserTag.API(profileUserId, aliasText)):andThen(cancelOnActivated)
	end

	return React.createElement(SetAliasModal, {
		screenSize = screenSize,
		alias = alias,
		cancelOnActivated = cancelOnActivated,
		saveOnActivated = saveOnActivated,
	})
end

return SetAliasModalContainer
