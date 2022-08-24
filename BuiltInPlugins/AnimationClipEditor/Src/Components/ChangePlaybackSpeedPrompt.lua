--[[
	Window for changing the playback speed of the animation clip editor

	Props:
		int PlaybackSpeed = Current playback speed of the animation in the editor

		function OnClose = callback for when window has been closed
		function SetPlaybackSpeed(playbackSpeed) = adjusts playback speed of animation in the editor
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local TextEntryPrompt = require(Plugin.Src.Components.TextEntryPrompt)

local ChangePlaybackSpeedPrompt = Roact.PureComponent:extend("ChangePlaybackSpeedPrompt")

function ChangePlaybackSpeedPrompt:init()
	self.state = {
		noticeText = Roact.None,
	}

	self.setNotice = function(notice)
		self:setState({
			noticeText = notice,
		})
	end

	self.onClose = function()
		self.setNotice(Roact.None)
		if self.props.OnClose then
			self.props.OnClose()
		end
	end

	self.setPlaybackSpeed = function(text, localization)
		if text ~= "" then
			local status, result = pcall(function()
				-- Trim spaces, accept x/X
				return tonumber(string.match(text, "^%s*([0-9]*[.]?[0-9]*)[xX]?%s*$"))
			end)

			if status and result ~= nil then
				result = math.floor(result * 100) / 100
				if result < Constants.MIN_PLAYBACK_SPEED then
					self.setNotice(localization:getText("Title", "MinPBSParam", {speed = tostring(Constants.MIN_PLAYBACK_SPEED)}))
					return false
				elseif result > Constants.MAX_PLAYBACK_SPEED then
					self.setNotice(localization:getText("Title", "MaxPBSParam", {speed = tostring(Constants.MAX_PLAYBACK_SPEED)}))
					return false
				else
					self.props.SetPlaybackSpeed(result)
					self.setNotice(Roact.None)
					return true
				end
			end
		end
	end
end

function ChangePlaybackSpeedPrompt:render()
	local props = self.props
	local state = self.state

	local playbackSpeed = props.PlaybackSpeed
	local noticeText = state.noticeText

	local hasNoticeText = noticeText ~= Roact.None

	local localization = self.props.Localization
	return Roact.createElement(TextEntryPrompt, {
		PromptText = " ",
		InputText = localization:getText("Title", "CustomPlaybackSpeed"),
		NoticeText = hasNoticeText and noticeText or nil,
		HasError = hasNoticeText,
		Text = playbackSpeed,
		Buttons = {
			{Key = false, Text = localization:getText("Dialog", "Cancel"), Style = "Round"},
			{Key = true, Text = localization:getText("Dialog", "Confirm"), Style = "RoundPrimary"},
		},
		OnTextSubmitted = function(text)
			return self.setPlaybackSpeed(text, localization)
		end,
		OnClose = self.onClose,
	})
end

ChangePlaybackSpeedPrompt = withContext({
	Localization = ContextServices.Localization,
})(ChangePlaybackSpeedPrompt)

return ChangePlaybackSpeedPrompt
