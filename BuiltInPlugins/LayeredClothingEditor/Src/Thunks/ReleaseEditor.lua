local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local PreviewConstants = AccessoryAndBodyToolSharedUtil.PreviewConstants

local SetAccessoryTypeInfo = require(Plugin.Src.Actions.SetAccessoryTypeInfo)
local SetAttachmentPoint = require(Plugin.Src.Actions.SetAttachmentPoint)
local SelectPreviewTab = require(Plugin.Src.Actions.SelectPreviewTab)
local SetToolMode = require(Plugin.Src.Actions.SetToolMode)
local SetEditingCage = require(Plugin.Src.Actions.SetEditingCage)

local Constants = require(Plugin.Src.Util.Constants)

local Selection = game:GetService("Selection")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

return function()
	return function(store)
		store:dispatch(SetAccessoryTypeInfo(Cryo.None))
		store:dispatch(SetAttachmentPoint({
			ItemCFrame = CFrame.new(),
			AttachmentCFrame = CFrame.new(),
		}))

		Selection:Set({})
		store:dispatch(SetEditingCage(Cryo.None))

		store:dispatch(SelectPreviewTab(PreviewConstants.TABS_KEYS.None))

		store:dispatch(SetToolMode(Constants.TOOL_MODE.None))

		ChangeHistoryService:SetEnabled(true)
	end
end