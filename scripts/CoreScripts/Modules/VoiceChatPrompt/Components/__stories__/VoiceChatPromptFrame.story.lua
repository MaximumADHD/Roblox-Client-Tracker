local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local Signal = require(CorePackages.Workspace.Packages.AppCommonLib).Signal

local VoiceChatPromptFrame = require(script.Parent.Parent.VoiceChatPromptFrame)
local VoiceChatPromptType = require(script.Parent.Parent.Parent.PromptType)

local Story = Roact.PureComponent:extend("Story")

local BUTTON_SIZE = UDim2.fromOffset(150, 30)

function Story:init()
	self.promptSignal = Signal.new()
end

function Story:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
	}, {
		VoiceChatPromptFrame = Roact.createElement(VoiceChatPromptFrame, {
			promptSignal = self.promptSignal,
		}),

		ButtonList = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(0, 130),
			Size = UDim2.new(0, 200, 1, 0),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 10),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			NotAudibleButton = Roact.createElement("TextButton", {
				LayoutOrder = 0,
				Size = BUTTON_SIZE,
				Text = "Show not audible toast",
				[Roact.Event.Activated] = function()
					self.promptSignal:fire(VoiceChatPromptType.NotAudible)
				end,
			}),

			PermissionButton = Roact.createElement("TextButton", {
				LayoutOrder = 1,
				Size = BUTTON_SIZE,
				Text = "Show permission toast",
				[Roact.Event.Activated] = function()
					self.promptSignal:fire(VoiceChatPromptType.Permission)
				end,
			}),

			RetryButton = Roact.createElement("TextButton", {
				LayoutOrder = 2,
				Size = BUTTON_SIZE,
				Text = "Show retry toast",
				[Roact.Event.Activated] = function()
					self.promptSignal:fire(VoiceChatPromptType.Retry)
				end,
			}),
		}),
	})
end

return Story
