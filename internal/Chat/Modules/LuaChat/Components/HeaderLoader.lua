local LuaChat = script.Parent.Parent
local Components = LuaChat.Components

local DialogInfo = require(LuaChat.DialogInfo)

local Header = require(Components.Header)
local ModalHeader = require(Components.ModalHeader)

local HeaderLoader = {}

function HeaderLoader.GetHeader(appState, intent)
	if intent == nil then
		warn("intent passed to HeaderLoader.GetHeader is null.")
		return Header.new(appState, DialogInfo.DialogType.Centered)
	end

	local dialogType = DialogInfo.GetTypeBasedOnIntent(appState.store:GetState().FormFactor, intent)

	if dialogType == DialogInfo.DialogType.Modal then
		return ModalHeader.new(appState, dialogType)
	else
		return Header.new(appState, dialogType)
	end
end

return HeaderLoader