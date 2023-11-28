local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local VRService = game:GetService("VRService")
local GamepadService = game:GetService("GamepadService")
local GuiService = game:GetService("GuiService")
local HttpService = game:GetService("HttpService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local withStyle = UIBlox.Core.Style.withStyle
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images
local VideoProtocol = require(CorePackages.Workspace.Packages.VideoProtocol)
local RECORD_UPDATE_STEP = 0.2
local GameSettings = (settings() :: any):WaitForChild("Game Options")

local RecordingPill = Roact.PureComponent:extend("MenuIcon")
 
RecordingPill.validateProps = t.strictInterface({
	layoutOrder = t.integer,
})

local BUTTON_SIZE = UDim2.fromOffset(77, 28)
local TEXTLABEL_SIZE = UDim2.fromOffset(27, 14)

function RecordingPill:init()
	self.state = {
		recording = false,
		recordingText = "0:00"
	}

	self.recordingConnection = GameSettings:GetPropertyChangedSignal("VideoRecording"):Connect(function()
		self:setState({
			recording = GameSettings.VideoRecording,
		})
	end)

	self.RecordingPillActivated = function()
		-- stop recording
		CoreGui:ToggleRecording()
	end
end

function RecordingPill:render()
	return withStyle(function(style)
		local textTheme = style.Theme.TextEmphasis
		return Roact.createFragment({
			Button = Roact.createElement("Frame", {
				Visible = self.state.recording,
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = self.props.layoutOrder,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(0, 1),
			}, {
				ActualButton = Roact.createElement("TextButton", {
					Text = "",
					BackgroundTransparency = 0,
					BackgroundColor3 = style.Theme.Alert.Color,
					BorderSizePixel = 0,
					Size = BUTTON_SIZE,
					Position = UDim2.new(0,0,1,-30),
					[Roact.Event.Activated] = self.RecordingPillActivated,
				}, {
					UICorner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 18)
					}),
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					Image = Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						Image = Images["icons/controls/screenrecord"],
						Size = UDim2.new(0, 28, 0, 28),
						Position = UDim2.new(0.4, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.4, 0.5),
					}),
					TextLabel = Roact.createElement("TextLabel", {
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
						Size = TEXTLABEL_SIZE,
						Text = self.state.recordingText,
						LayoutOrder = 2,
						TextColor3 = textTheme.Color,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
					}),
				}),
			})
		})
	end)
end

function RecordingPill:didUpdate(prevProps, _)
	if self.state.recording then
		if not self.startRecording then
			self.startRecording = true
			local startTime = tick()
			local function loop()
				if self.state.recording then
					delay(RECORD_UPDATE_STEP, loop)
				end
				local d = os.date("*t", tick() - startTime) :: {[string]: any}
				local recordingText = ("%d:%02d"):format(d.min :: number, d.sec :: number)
				self:setState({
					recordingText = recordingText
				})
			end
			delay(RECORD_UPDATE_STEP, loop)
		end
	else
		self.startRecording = false
	end
end

function RecordingPill:willUnmount()
	if self.recordingConnection then
		self.recordingConnection:Disconnect()
		self.recordingConnection = nil
	end
end

return RecordingPill
