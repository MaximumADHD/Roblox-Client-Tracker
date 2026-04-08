local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

return React.createContext({
	captures = {},
	capturesPagesIsFinished = Dash.noop,
	createMoment = Dash.noop,
	exitCreationFlow = Dash.noop,
	fetchAdditionalCaptures = Dash.noop,
	fetchInitialCaptures = Dash.noop,
	fireEvent = Dash.noop,
	getLocalization = Dash.noop,
	getUserConfiguration = Dash.noop,
	isTextFiltered = Dash.noop,
	setScreenOrientation = Dash.noop,
})
