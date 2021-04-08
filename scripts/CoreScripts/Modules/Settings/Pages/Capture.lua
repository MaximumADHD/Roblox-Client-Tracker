--[[
		Filename: Capture.lua
		Written by: xyin
		Version 1.0
		Description: Takes care of the capture page in Settings Menu
--]]

-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TextService = game:GetService("TextService")
local VRService = game:GetService("VRService")

----------- MODULES --------------
local CaptureMaster = require(RobloxGui.Modules.CaptureMaster)
local Utility = require(RobloxGui.Modules.Settings.Utility)

------------ VARIABLES -------------------
local PageInstance = nil

local success, result = pcall(function() return settings():GetFFlag('UseNotificationsLocalization') end)
local FFlagUseNotificationsLocalization = success and result

----------- CLASS DECLARATION --------------
local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	------ TAB CUSTOMIZATION -------
	this.TabHeader.Name = "CaptureTab"
	this.TabHeader.Icon.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/CaptureTab.png"
	if FFlagUseNotificationsLocalization then
		this.TabHeader.Title.Text = "Capture"
	else
		this.TabHeader.Icon.Title.Text = "Capture"
	end

	local function onVREnabled()
		this.TabHeader.Visible = not VRService.VREnabled
	end
	onVREnabled()
	VRService:GetPropertyChangedSignal("VREnabled"):connect(onVREnabled)

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "CapturePage"

	local function makeTextLabel(name, text, isTitle, parent, layoutOrder)
		local leftPadding, rightPadding, bottomPadding, textSize, font = 10, 0, 10, 24, Enum.Font.SourceSans

		if isTitle then
			leftPadding, rightPadding, bottomPadding, textSize, font = 10, 0, 0, 36, Enum.Font.SourceSansBold
		end

		local container = Utility:Create('Frame') {
			Name = name .. "Container",
			BackgroundTransparency = 1,
			ZIndex = 2,
			LayoutOrder = layoutOrder,
			Parent = parent
		}

		local textLabel = Utility:Create('TextLabel') {
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
		}

		local function onAbsoluteSizeChanged()
			local newTextSize = TextService:GetTextSize(text, textLabel.TextSize, textLabel.Font,
				Vector2.new(parent.AbsoluteSize.X - leftPadding - rightPadding, 1e4))
			container.Size = UDim2.new(1, 0, 0, newTextSize.Y + bottomPadding)
		end
		parent:GetPropertyChangedSignal("AbsoluteSize"):Connect(onAbsoluteSizeChanged)

		return textLabel, container
	end

	-- need to override this function from SettingsPageFactory
	-- requires hub to to be set when initialized
	function this:SetHub(newHubRef)
		this.HubRef = newHubRef

		local onOpenCaptureMode = function()
			this.HubRef:SetVisibility(false, true)
			CaptureMaster:Capture()
		end

		local _captureTitle = makeTextLabel("CaptureTitle", "Screenshot", true, this.Page, 1)
		local _captureBody = makeTextLabel("CaptureBody", "Capture your in game experiences. Photos taken are saved to your device.", false, this.Page, 2)

		this.CaptureButtonRow, this.CaptureButton = Utility:AddButtonRow(this, "CaptureButton", "Take Screenshot", UDim2.new(0, 300, 0, 44), onOpenCaptureMode)
		this.CaptureButtonRow.LayoutOrder = 3

		this.Page.Size = UDim2.new(1, 0, 0, 200)
	end

	return this
end


----------- Page Instantiation --------------
PageInstance = Initialize()

return PageInstance
