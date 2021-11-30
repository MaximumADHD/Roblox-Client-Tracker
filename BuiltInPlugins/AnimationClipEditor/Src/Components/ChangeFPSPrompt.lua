--[[
	Window for changing the framerate of the animation

	Props:
		int FrameRate = Current frame rate of the animation in the editor

		function OnClose = callback for when window has been closed
		function SetFrameRate(frameRate) = adjusts frame rate of animation in the editor
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)
local TextEntryPrompt = require(Plugin.Src.Components.TextEntryPrompt)

local ChangeFPSPrompt = Roact.PureComponent:extend("ChangeFPSPrompt")

function ChangeFPSPrompt:init()
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

	self.setFrameRate = function(text, localization)
		if text ~= "" then
			local status, result = pcall(function()
				return tonumber(text)
			end)

			if status and result ~= nil then
				result = math.ceil(result)
				if result < Constants.MIN_FRAMERATE then
					self.setNotice(localization:getText("Title", "MinFPS"))
					return false
				elseif result > Constants.MAX_FRAMERATE then
					self.setNotice(localization:getText("Title", "MaxFPS"))
					return false
				else
					self.props.SetFrameRate(result)
					self.setNotice(Roact.None)
					return true
				end
			end
		end
	end
end

function ChangeFPSPrompt:render()
	local props = self.props
	local state = self.state

	local frameRate = props.FrameRate
	local noticeText = state.noticeText

	local hasNoticeText = noticeText ~= Roact.None

	local localization = self.props.Localization
	return Roact.createElement(TextEntryPrompt, {
		PromptText = " ",
		InputText = localization:getText("Title", "CustomFPS"),
		NoticeText = hasNoticeText and noticeText or nil,
		HasError = hasNoticeText,
		Text = frameRate,
		Buttons = {
			{Key = false, Text = localization:getText("Dialog", "Cancel")},
			{Key = true, Text = localization:getText("Dialog", "Confirm"), Style = "Primary"},
		},
		OnTextSubmitted = function(text)
			return self.setFrameRate(text, localization)
		end,
		OnClose = self.onClose,
	})
end


ChangeFPSPrompt = withContext({
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})(ChangeFPSPrompt)



return ChangeFPSPrompt
