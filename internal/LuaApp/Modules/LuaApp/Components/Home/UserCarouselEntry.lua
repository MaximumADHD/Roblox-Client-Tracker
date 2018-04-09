local GuiService = game:GetService("GuiService")

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local UserThumbnail = require(Modules.LuaApp.Components.UserThumbnail)
local UserCarouselEntry = Roact.Component:extend("UserCarouselEntry")
local Constants = require(Modules.LuaApp.Constants)
local Url = require(Modules.LuaApp.Http.Url)

local USER_ENTRY_WIDTH = 105
local INNER_PADDING = 7.5
local THUMBNAIL_SIZE = UserThumbnail.size()

function UserCarouselEntry:init()
	self.state = {
		highlighted = false
	}
end

function UserCarouselEntry:render()
	local count = self.props.count
	local user = self.props.user
	local formFactor = self.props.formFactor
	local highlightColor = self.state.highlighted and Constants.Color.GRAY5
		or Constants.Color.WHITE
	local thumbnailType = self.props.thumbnailType

	return Roact.createElement("ImageButton", {
		AutoButtonColor = false,
		Size = UDim2.new(0, USER_ENTRY_WIDTH, 1, 0),
		BackgroundColor3 = highlightColor,
		BorderSizePixel = 0,
		LayoutOrder = count,

		[Roact.Event.InputBegan] = function(rbx)
			self:setState({
				highlighted = true,
			})
		end,
		[Roact.Event.InputEnded] = function(rbx)
			self:setState({
				highlighted = false,
			})
		end,
		--when Touch is used for scrolling, InputEnded gets sunk into scrolling action
		[Roact.Event.InputChanged] = function(rbx, inputObject)
			if inputObject.UserInputType == Enum.UserInputType.Touch then
				self:setState({
					highlighted = false,
				})
			end
		end,

		[Roact.Event.Activated] = function(rbx, inputObject)
			if inputObject.UserInputState == Enum.UserInputState.End then
				local url = string.format("%susers/%s/profile", Url.BASE_URL, user.id)
				GuiService:BroadcastNotification(url,
					GuiService:GetNotificationTypeList().VIEW_PROFILE)
			end
		end,
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