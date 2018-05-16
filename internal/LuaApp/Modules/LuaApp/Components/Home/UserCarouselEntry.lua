local GuiService = game:GetService("GuiService")

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local UserThumbnail = require(Modules.LuaApp.Components.UserThumbnail)
local Constants = require(Modules.LuaApp.Constants)
local Url = require(Modules.LuaApp.Http.Url)
local Device = require(Modules.LuaChat.Device)

local USER_ENTRY_WIDTH = 105
local USER_ENTRY_WIDTH_PHONE = 115
local INNER_PADDING = 7.5
local THUMBNAIL_SIZE = UserThumbnail.size()

local UserCarouselEntry = Roact.PureComponent:extend("UserCarouselEntry")

function UserCarouselEntry:init()
	self.state = {
		highlighted = false
	}

	self.onInputBegan = function(_, inputObject)
		--TODO: Remove after CLIPLAYEREX-1468
		local inputStateChangedConnection = nil
		inputStateChangedConnection = inputObject:GetPropertyChangedSignal("UserInputState"):Connect(function()
			if inputObject.UserInputState == Enum.UserInputState.End
				or inputObject.UserInputState == Enum.UserInputState.Cancel then
				inputStateChangedConnection:Disconnect()
				self:setState({
					highlighted = false,
				})
			end
		end)
		self:setState({
			highlighted = true,
		})
	end

	self.onInputEnded = function()
		self:setState({
			highlighted = false,
		})
	end

	self.onInputChanged = self.onInputEnded

	self.onActivated = function(_, inputObject)
		if inputObject.UserInputState == Enum.UserInputState.End then
			local user = self.props.user
			if user then
				local url = Url:getUserProfileUrl(user.id)
				GuiService:BroadcastNotification(url,
					GuiService:GetNotificationTypeList().VIEW_PROFILE)
			end
		end
	end
end

function UserCarouselEntry:render()
	local count = self.props.count
	local user = self.props.user
	local formFactor = self.props.formFactor
	local highlightColor = self.state.highlighted and Constants.Color.GRAY5
		or Constants.Color.WHITE
	local thumbnailType = self.props.thumbnailType

	local isPhone = formFactor == Device.FormFactor.PHONE

	return Roact.createElement("ImageButton", {
		AutoButtonColor = false,
		Size = UDim2.new(0, isPhone and USER_ENTRY_WIDTH_PHONE or USER_ENTRY_WIDTH, 1, 0),
		BackgroundColor3 = highlightColor,
		BorderSizePixel = 0,
		LayoutOrder = count,
		[Roact.Event.InputBegan] = self.onInputBegan,
		[Roact.Event.InputEnded] = self.onInputEnded,
		--when Touch is used for scrolling, InputEnded gets sunk into scrolling action
		[Roact.Event.InputChanged] = self.onInputChanged,
		[Roact.Event.Activated] = self.onActivated,
	}, {
		ThumbnailFrame = Roact.createElement("Frame", {
			Size = UDim2.new(0, THUMBNAIL_SIZE, 0, THUMBNAIL_SIZE),
			Position = UDim2.new(0, INNER_PADDING, 0, INNER_PADDING * 2),
			BackgroundTransparency = 1,
		}, {
			Thumbnail = Roact.createElement(UserThumbnail, {
				user = user,
				formFactor = formFactor,
				maskColor = Constants.Color.WHITE,
				highlightColor = highlightColor,
				thumbnailType = thumbnailType,
			}),
		}),
	})
end

return UserCarouselEntry