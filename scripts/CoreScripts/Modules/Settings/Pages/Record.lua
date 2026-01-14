--!nonstrict
--[[r
		Filename: Record.lua
		Written by: jeditkacheff
		Version 1.0
		Description: Takes care of the Record Tab in Settings Menu
--]]
-------------- SERVICES --------------
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")
local TextService = game:GetService("TextService")
local VRService = game:GetService("VRService")

----------- UTILITIES --------------
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local AnalyticsEnums = require(CorePackages.Workspace.Packages.SocialLuaAnalytics).Analytics.Enums
local EventNames = require(CorePackages.Workspace.Packages.CapturesInExperience).Analytics.EventNames
local utility = require(RobloxGui.Modules.Settings.Utility)
local Theme = require(RobloxGui.Modules.Settings.Theme)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local BuilderIcons = require(CorePackages.Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration['uiblox']

------------ Variables -------------------
local PageInstance = nil

local Contexts = AnalyticsEnums.Contexts
local EventTypes = AnalyticsEnums.EventTypes

local EVENT_STREAM_TARGET = "mobile"

----------- CLASS DECLARATION --------------

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()
	local isRecordingVideo = false

	local recordingEvent = Instance.new("BindableEvent")
	recordingEvent.Name = "RecordingEvent"
	this.RecordingChanged = recordingEvent.Event
	function this:IsRecording()
		return isRecordingVideo
	end
	local migratedIcon = migrationLookup["icons/controls/screenrecord"]
	this.TabHeader.TabLabel.Icon.Text = migratedIcon.name
	this.TabHeader.TabLabel.Icon.FontFace = BuilderIcons.Font[migratedIcon.variant]
	this.TabHeader.Name = "RecordTab"
	this.TabHeader.TabLabel.Title.Text = "Record"


	local function onVREnabled()
		this.TabHeader.Visible = not VRService.VREnabled
	end
	onVREnabled()
	VRService:GetPropertyChangedSignal("VREnabled"):connect(onVREnabled)

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "Record"

	local function makeTextLabel(name, text, isTitle, parent, layoutOrder)
		local leftPadding, rightPadding, bottomPadding, textSize, font = 10, 0, 10, Theme.textSize(24), Theme.font(Enum.Font.SourceSans)

		if isTitle then
			leftPadding, rightPadding, bottomPadding, textSize, font = 10, 0, 0, Theme.textSize(36), Theme.font(Enum.Font.SourceSansBold, "Bold")
		end

		local container = Create'Frame'
		{
			Name = name .. "Container",
			BackgroundTransparency = 1,
			ZIndex = 2,
			LayoutOrder = layoutOrder,
			Parent = parent
		};
		local textLabel = Create'TextLabel'
		{
			Name = name,
			BackgroundTransparency = 1,
			Text = text,
			TextWrapped = true,
			Font = font,
			TextSize = textSize,
			TextColor3 = Color3.new(1,1,1),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			Position = UDim2.new(0, leftPadding, 0, 0),
			Size = UDim2.new(1, -(leftPadding + rightPadding), 1, 0),
			ZIndex = 2,
			Parent = container
		};

		local function onResized(prop)
			if prop == "AbsoluteSize" then
				local textSize = TextService:GetTextSize(text, textLabel.TextSize, textLabel.Font, Vector2.new(parent.AbsoluteSize.X - leftPadding - rightPadding, 1e4))
				container.Size = UDim2.new(1, 0, 0, textSize.Y + bottomPadding)
			end
		end
		onResized("AbsoluteSize")
		parent.Changed:connect(onResized)

		return textLabel, container
	end

	-- need to override this function from SettingsPageFactory
	-- DropDown menus require hub to to be set when they are initialized
	function this:SetHub(newHubRef)
		this.HubRef = newHubRef

		---------------------------------- SCREENSHOT -------------------------------------
		local closeSettingsFunc = function()
			this.HubRef:SetVisibility(false, true)
		end

		local _screenshotTitle = makeTextLabel("ScreenshotTitle", "Screenshot", true, this.Page, 1)
		local _screenshotBody = makeTextLabel("ScreenshotBody", "By clicking the 'Take Screenshot' button, the menu will close and take a screenshot and save it to your computer.", false, this.Page, 2)

		this.ScreenshotButtonRow, this.ScreenshotButton = utility:AddButtonRow(this, "ScreenshotButton", "Take Screenshot", UDim2.new(0, 300, 0, 44), closeSettingsFunc)
		this.ScreenshotButtonRow.LayoutOrder = 3

		---------------------------------- VIDEO -------------------------------------
		local _videoTitle = makeTextLabel("VideoTitle", "Video", true, this.Page, 4)
		local _videoBody = makeTextLabel("VideoBody", "By clicking the 'Record Video' button, the menu will close and start recording your screen.", false, this.Page, 5)

		local recordButtonRow, recordButton = utility:AddButtonRow(this, "RecordButton", "Record Video", UDim2.new(0, 300, 0, 44), closeSettingsFunc)
		recordButtonRow.LayoutOrder = 6
		recordButton.MouseButton1Click:connect(function()
			AnalyticsService:SendEventDeferred(
				EVENT_STREAM_TARGET,
				Contexts.Captures,
				EventTypes.ButtonClick,
				{ btn = if not isRecordingVideo then EventNames.CapturesLegacyVideoRecordActivated else EventNames.CapturesLegacyVideoRecordDeactivated }
			)
			recordingEvent:Fire(not isRecordingVideo)
		end)

		local gameOptions = settings():FindFirstChild("Game Options")
		if gameOptions then
			gameOptions.VideoRecordingChangeRequest:connect(function(recording)
				isRecordingVideo = recording
				if recording then
					recordButton.RecordButtonTextLabel.Text = "Stop Recording"
				else
					recordButton.RecordButtonTextLabel.Text = "Record Video"
				end
			end)
		end

		recordButton.Activated:Connect(function()
			CoreGui:ToggleRecording()
		end)
		this.ScreenshotButton.Activated:Connect(function()
			CoreGui:TakeScreenshot()
		end)

		this.Page.Size = UDim2.new(1,0,0,400)
	end

	return this
end


----------- Public Facing API Additions --------------
PageInstance = Initialize()

PageInstance.Displayed.Event:connect(function(switchedFromGamepadInput)
	if switchedFromGamepadInput then
		GuiService.SelectedCoreObject = PageInstance.ScreenshotButton
	end
end)


return PageInstance
