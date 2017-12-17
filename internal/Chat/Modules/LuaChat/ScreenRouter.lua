local Modules = script.Parent

local DialogInfo = require(Modules.DialogInfo)
local Device = require(Modules.Device)

local Intent = DialogInfo.Intent

local ScreenRouter = {}

ScreenRouter.RouteMaps = {

	[Device.FormFactor.PHONE] = {

		ConversationHub = function(appState, route)
			local ConversationHub = require(Modules.Views.Phone.ConversationHub)
			return ConversationHub:Get(appState, route)
		end,
		Conversation = function(appState, route)
			local Conversation = require(Modules.Views.Phone.Conversation)
			return Conversation:Get(appState, route)
		end,
		GroupDetail = function(appState, route)
			local GroupDetail = require(Modules.Views.Phone.GroupDetail)

			return GroupDetail:Get(appState, route)
		end,
		NewChatGroup = function(appState, route)
			local NewChatGroup = require(Modules.Views.Phone.NewChatGroup)
			return NewChatGroup:Get(appState, route)
		end,
		EditChatGroup = function(appState, route)
			local EditChatGroup = require(Modules.Views.Phone.EditChatGroup)
			return EditChatGroup:Get(appState, route)
		end,
		GenericDialog = function(appState, route)
			local GenericDialog = require(Modules.Views.GenericDialog)
			return GenericDialog:Get(appState, route)
		end,
		GameShare = function(appState, route)
			local GameShare = require(Modules.Views.Phone.GameShareView)
			return GameShare:Get(appState, route)
		end,
	},

	[Device.FormFactor.TABLET] = {

		ConversationHub = function(appState, route)
			local ConversationHub = require(Modules.Views.Tablet.ConversationHub)
			return ConversationHub:Get(appState, route)
		end,
		Conversation = function(appState, route)
			local Conversation = require(Modules.Views.Phone.Conversation)
			return Conversation:Get(appState, route)
		end,
		GroupDetail = function(appState, route)
			local GroupDetail = require(Modules.Views.Phone.GroupDetail)
			return GroupDetail:Get(appState, route)
		end,
		NewChatGroup = function(appState, route)
			local NewChatGroup = require(Modules.Views.Phone.NewChatGroup)
			return NewChatGroup:Get(appState, route)
		end,
		EditChatGroup = function(appState, route)
			local EditChatGroup = require(Modules.Views.Phone.EditChatGroup)
			return EditChatGroup:Get(appState, route)
		end,
		GenericDialog = function(appState, route)
			local GenericDialog = require(Modules.Views.GenericDialog)
			return GenericDialog:Get(appState, route)
		end,
		GameShare = function(appState, route)
			local GameShare = require(Modules.Views.Tablet.GameShareView)
			return GameShare:Get(appState, route)
		end,
	},
}

function ScreenRouter:Compare(firstRoute, secondRoute)

	if firstRoute.intent ~= secondRoute.intent then
		return false
	end

	for key, value in pairs(firstRoute.parameters) do
		if value ~= secondRoute.parameters[key] then
			return false
		end
	end

	for key, value in pairs(secondRoute.parameters) do
		if value ~= firstRoute.parameters[key] then
			return false
		end
	end

	return true
end

function ScreenRouter:GetView(appState, route, routeMap)
	if not Intent[route.intent] then
		error(("Invalid intent value '%s'"):format(
		), 2)
	end

	local mapper = routeMap[route.intent]

	if not mapper then
		error(("No route map defined for intent '%s'"):format(
			route.intent
		), 2)
	end

	return mapper(appState, route)
end

return ScreenRouter
