--!nonstrict

--[[
		Filename: SettingsPageFactory.lua
		Written by: jeditkacheff
		Version 1.0
		Description: Base Page Functionality for all Settings Pages
--]]
----------------- SERVICES ------------------------------
local GuiService = game:GetService("GuiService")
local HttpService = game:GetService("HttpService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TweenService = game:GetService("TweenService")

----------- UTILITIES --------------
local utility = require(RobloxGui.Modules.Settings.Utility)
local Theme = require(RobloxGui.Modules.Settings.Theme)
local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Create = AppCommonLib.Create
local Signal = AppCommonLib.Signal

----------- VARIABLES --------------
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

local FFlagFixIGMTabTransitions = require(script.Parent.Flags.GetFFlagFixIGMTabTransitions)
local FFlagAddDropdownTypeToGetValueChanger = game:DefineFastFlag("AddDropdownTypeToValueChanger", false)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagIEMFocusNavToButtons = SharedFlags.FFlagIEMFocusNavToButtons
local FFlagBuilderIcons = SharedFlags.UIBlox.FFlagUIBloxMigrateBuilderIcon

local TEXT_BUTTON_FONT_SIZE_SMALL_TOUCH_SCREEN = 18
local TEXT_BUTTON_FONT_SIZE = 24
local TEXT_BUTTON_FONT_SIZE_TEN_FOOT = 48

----------- CLASS DECLARATION --------------
local function Initialize()
	local this = {}
	this.HubRef = nil
	this.LastSelectedObject = nil
	this.TabPosition = 0
	this.Active = false
	this.OpenStateChangedCount = 0
	this.ShouldShowBottomBar = true
	this.ShouldShowHubBar = true
	this.IsPageClipped = true
	this.SelectARow = nil
	if FFlagIEMFocusNavToButtons then
		this.LastSelectableObjectsUpdated = Signal.new()
		this.LastSelectableObjects = {}
		this.PageNextSelectionDown = nil
	end
	local rows = {}
	local displayed = false

	------ TAB CREATION -------
	this.TabHeader = Create'TextButton'
	{
		Name = "Header",
		Text = "",
		BackgroundTransparency = 1,
		Size = UDim2.new(1/5, 0,1,0),
		Position = UDim2.new(0,0,0,0),
		Selectable = if FFlagIEMFocusNavToButtons then false else nil,
	};
	if utility:IsSmallTouchScreen() then
		this.TabHeader.Size = UDim2.new(0,84,1,0)
	elseif isTenFootInterface then
		this.TabHeader.Size = UDim2.new(0,220,1,0)
	end
	this.TabHeader.MouseButton1Click:connect(function()
		if this.HubRef then
			this.HubRef:SwitchToPage(this, true)
		end
	end)

	local icon = if FFlagBuilderIcons then Create'TextLabel'{
		Name = "Icon",
		BackgroundTransparency = 1,
		Size = UDim2.new(0.5, 0, 0.5, 0),
		Position = UDim2.new(0,10,0.5,-18),
		Text = "",
		TextColor3 = Color3.new(1, 1, 1),
		TextScaled = true,
		TextTransparency = 0.5,
		Parent = this.TabHeader
    } else Create'ImageLabel'
	{
		Name = "Icon",
		BackgroundTransparency = 1,
		Size = UDim2.new(0.75, 0, 0.75, 0),
		Position = UDim2.new(0,10,0.5,-18),
		Image = "",
		ImageTransparency = 0.5,
		Parent = this.TabHeader
	};
	local _iconAspectRatio = Create'UIAspectRatioConstraint'
	{
		Name = "AspectRatioConstraint",
		AspectRatio = 1,
		Parent = icon
	};

	local titleTextYOffset = -2

	local title = Create'TextLabel'
	{
		Name = "Title",
		Text = "",
		Font = Theme.font(Enum.Font.SourceSansBold, "Button"),
		TextColor3 = Color3.new(1,1,1),
		BackgroundTransparency = 1,
		Size = UDim2.new(1.05,0,1,0), --overwritten
		Position = UDim2.new(1.2,Theme.TabHeaderIconPadding,0,titleTextYOffset), --overwritten
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTransparency = 0.5,
	};
		title.TextSize = Theme.textSize(TEXT_BUTTON_FONT_SIZE)
		local titleTextSizeConstraint = Instance.new("UITextSizeConstraint")
		titleTextSizeConstraint.MaxTextSize = Theme.textSize(TEXT_BUTTON_FONT_SIZE)
		title.Parent = icon
		if utility:IsPortrait() and utility:IsSmallTouchScreen() then 
			titleTextSizeConstraint.Parent = title
		end

		if utility:IsSmallTouchScreen() then
			title.TextSize =  Theme.textSize(TEXT_BUTTON_FONT_SIZE_SMALL_TOUCH_SCREEN)
			titleTextSizeConstraint.MaxTextSize = Theme.textSize(TEXT_BUTTON_FONT_SIZE_SMALL_TOUCH_SCREEN)
		elseif isTenFootInterface then
			title.TextSize =  Theme.textSize(TEXT_BUTTON_FONT_SIZE_TEN_FOOT)
			titleTextSizeConstraint.MaxTextSize = Theme.textSize(TEXT_BUTTON_FONT_SIZE_TEN_FOOT)
		end

	local _tabSelection = Create'ImageLabel'
	{
		Name = "TabSelection",
		Visible = false,
		BackgroundColor3 = Theme.color("TabSelection"),
		BackgroundTransparency = Theme.transparency("TabSelection"),
		Size = UDim2.new(1,-2,0,2 ),
		Position = UDim2.new(0,3,1,-2 ),
		BorderSizePixel = 0,
		Parent = this.TabHeader,
	}
	local tabLabel = Create'Frame'
	{
		Name = "TabLabel",
		Size = UDim2.new(1,0,1,0 ),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Parent = this.TabHeader,
	}
	Create'UIListLayout'
	{
		Name = "Layout",
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 10),
		Parent = tabLabel,
	}

	icon.Parent = tabLabel
	title.Parent = tabLabel
	title.Size = UDim2.new(0,0,0,0)
	title.AutomaticSize = Enum.AutomaticSize.XY

	local function onResized()
		if not this.TabHeader then
			return
		end

		if utility:IsSmallTouchScreen() then
			icon.Size = UDim2.new(0,34,0,28)
		elseif isTenFootInterface then
			icon.Size = UDim2.new(0,88,0,74)
		else
			local iconSize = Theme.getIconSize(Theme.IconSize.Medium)
			icon.Size = UDim2.fromOffset(iconSize, iconSize)
		end


		local isPortrait = utility:IsPortrait()
		local layout = tabLabel.Layout
		if isPortrait then
			if utility:IsSmallTouchScreen() then
				title.FontSize =  Theme.fontSize(Enum.FontSize.Size14)
			end
			icon.Size = UDim2.new(0,22,0,22)
			layout.FillDirection = Enum.FillDirection.Vertical
			layout.Padding = UDim.new(0, 0)
		else
			if utility:IsSmallTouchScreen() then
				title.FontSize =  Theme.fontSize(Enum.FontSize.Size18)
			end
			layout.FillDirection = Enum.FillDirection.Horizontal
			layout.Padding = UDim.new(0, 10)
		end
		if FFlagBuilderIcons then
			-- old icons have padding built in equal to 1/3 of the full size, so icon functionally appeared as 2/3 of it's actual size
			-- to ensure consistent sizing with migrations, we multiply size by 2/3
			icon.Size = UDim2.fromOffset(icon.Size.X.Offset * (2/3), icon.Size.Y.Offset * (2/3))
		end
	end --end local function onResized()

	utility:OnResized(this.TabHeader, onResized)

	------ PAGE CREATION -------
	this.Page = Create'Frame'
	{
		Name = "Page",
		BackgroundTransparency = 1,
		Size = UDim2.new(1,0,1,0),
		AutomaticSize = Enum.AutomaticSize.Y
	};

	Create'UIPadding'
	{
		PaddingLeft = UDim.new(0, 12),
		PaddingRight = UDim.new(0, 11),
		Parent = this.Page,
	}

	this.PageListLayout = Create'UIListLayout'
	{
		Name = "RowListLayout",
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Padding = UDim.new(0, 8),
		SortOrder = Enum.SortOrder.LayoutOrder,
		Parent = this.Page
	};


	-- make sure each page has a unique selection group (for gamepad selection)
	GuiService:AddSelectionParent(HttpService:GenerateGUID(false), this.Page)

	----------------- Events ------------------------

	this.Displayed = Instance.new("BindableEvent")
	this.Displayed.Name = "Displayed"
	
	this.Displayed.Event:connect(function()
		if not this.HubRef.Shield.Visible then return end

		this:SelectARow()
	end)

	this.Hidden = Instance.new("BindableEvent")
	this.Hidden.Event:connect(function()
		if GuiService.SelectedCoreObject and GuiService.SelectedCoreObject:IsDescendantOf(this.Page) then
			GuiService.SelectedCoreObject = nil
		end
	end)
	this.Hidden.Name = "Hidden"

	----------------- FUNCTIONS ------------------------
	function this:getValueChangerFrame(ValueChanger)
		local valueChangerFrame = nil

		if type(ValueChanger) ~= "table" then
			valueChangerFrame = ValueChanger
		else
			valueChangerFrame = ValueChanger.SliderFrame and ValueChanger.SliderFrame or ValueChanger.SelectorFrame or (FFlagAddDropdownTypeToGetValueChanger and ValueChanger.DropDownFrame)
		end

		return valueChangerFrame
	end

	function this:SelectARow(forced) -- Selects the first row, the most recently selected row, or the GuiObject beneath the page
		if forced or not GuiService.SelectedCoreObject or not GuiService.SelectedCoreObject:IsDescendantOf(this.Page) then
			if this.LastSelectedObject then
				GuiService.SelectedCoreObject = this.LastSelectedObject
			else
				if rows and #rows > 0 then
					local valueChangerFrame = this:getValueChangerFrame(rows[1].ValueChanger)
					GuiService.SelectedCoreObject = valueChangerFrame
				elseif FFlagIEMFocusNavToButtons and this.PageNextSelectionDown then
					GuiService.SelectedCoreObject = this.PageNextSelectionDown
				end
			end
		end
	end

	function this:Display(pageParent, skipAnimation)
		this.OpenStateChangedCount = this.OpenStateChangedCount + 1

		if this.TabHeader then
			this.TabHeader.TabSelection.Visible = true
			if FFlagBuilderIcons then
				icon.TextTransparency = 0
			else
				icon.ImageTransparency = 0
			end
			title.TextTransparency = 0
		end

		this.Page.Parent = pageParent
		this.Page.Visible = true

		local endPos = UDim2.new(0,0,0,0)
		local animationComplete = function()
			if UserGameSettings.ReducedMotion then
				pageParent.InnerCanvasGroupShow.Visible = false
			end
			if FFlagFixIGMTabTransitions() then
				if UserGameSettings.ReducedMotion then
					pageParent.InnerCanvasGroupShow.GroupTransparency = 0
				end
				this.Page.Position = endPos
			end
			this.Page.Visible = true
			displayed = true
			this.Displayed:Fire()
		end
		if skipAnimation then
			this.Page.Position = endPos
			animationComplete()
		elseif UserGameSettings.ReducedMotion then
			this.Page.Position = endPos
			pageParent.InnerCanvasGroupShow.GroupTransparency = 1
			pageParent.InnerCanvasGroupShow.Visible = true
			this.Page.Parent = pageParent.InnerCanvasGroupShow
			this.Page.Visible = true
			
			local tweenInfo = TweenInfo.new(0.25)
			local tweenProps = {
				GroupTransparency = 0
			}
			local tween = TweenService:Create(pageParent.InnerCanvasGroupShow, tweenInfo, tweenProps)
			tween:Play()

			tween.Completed:Connect(function()
				this.Page.Parent = pageParent
				animationComplete();
			end)
		else
			this.Page:TweenPosition(endPos, Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.1, true, animationComplete)
		end
	end
	function this:Hide(direction, newPagePos, skipAnimation, delayBeforeHiding, pageParent, isPrevPage)
		this.OpenStateChangedCount = this.OpenStateChangedCount + 1

		if this.TabHeader then
			this.TabHeader.TabSelection.Visible = false
			if FFlagBuilderIcons then
				icon.TextTransparency = 0.5
			else
				icon.ImageTransparency = 0.5
			end
			title.TextTransparency = 0.5
		end

		if this.Page.Parent then
			local endPos = UDim2.new(1 * direction,0,0,0)
			local animationComplete = function()
				if UserGameSettings.ReducedMotion and isPrevPage then
					pageParent.InnerCanvasGroupHide.Visible = false
				end
				this.Page.Visible = false
				this.Page.Position = UDim2.new(this.TabPosition - newPagePos,0,0,0)
				displayed = false
				this.Hidden:Fire()
			end

			local remove = function()
				if skipAnimation then
					this.Page.Position = endPos
					animationComplete()
				elseif UserGameSettings.ReducedMotion and isPrevPage then
					pageParent.InnerCanvasGroupHide.GroupTransparency = 0
					pageParent.InnerCanvasGroupHide.Visible = true
					this.Page.Parent = pageParent.InnerCanvasGroupHide
					
					local tweenInfo = TweenInfo.new(0.25)
					local tweenProps = {
						GroupTransparency = 1
					}
					local tween = TweenService:Create(pageParent.InnerCanvasGroupHide, tweenInfo, tweenProps)
					tween:Play()
		
					tween.Completed:Connect(function()
						this.Page.Parent = pageParent
						this.Page.Position = endPos
						animationComplete();
					end)
				else
					this.Page:TweenPosition(endPos, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true, animationComplete)
				end
			end

			if delayBeforeHiding then
				local myOpenStateChangedCount = this.OpenStateChangedCount
				delay(delayBeforeHiding, function()
					if myOpenStateChangedCount == this.OpenStateChangedCount then
						remove()
					end
				end)
			else
				remove()
			end
		end
	end

	function this:GetDisplayed()
		return displayed
	end

	function this:GetVisibility()
		return this.Page.Parent
	end

	function this:GetTabHeader()
		return this.TabHeader
	end

	function this:GetRows()
		if not FFlagIEMFocusNavToButtons then
			return
		end

		return rows
	end

	function this:SetHub(hubRef)
		this.HubRef = hubRef

		for i, row in next, rows do
			if type(row.ValueChanger) == 'table' then
				row.ValueChanger.HubRef = this.HubRef
			end
		end
	end

	function this:GetSize()
		return this.Page.AbsoluteSize
	end

	function this:AddRow(RowFrame, RowLabel, ValueChangerInstance, ExtraRowSpacing)
		rows[#rows + 1] = {SelectionFrame = RowFrame, Label = RowLabel, ValueChanger = ValueChangerInstance}

		local rowFrameYSize = 0
		if RowFrame then 
			rowFrameYSize = RowFrame.Size.Y.Offset
		end

		if ExtraRowSpacing then
			this.Page.Size = UDim2.new(1, 0, 0, this.Page.Size.Y.Offset + rowFrameYSize + ExtraRowSpacing)
		else
			this.Page.Size = UDim2.new(1, 0, 0, this.Page.Size.Y.Offset + rowFrameYSize)
		end

		if this.HubRef and type(ValueChangerInstance) == 'table' then
			ValueChangerInstance.HubRef = this.HubRef
		end
	end

	return this
end


-------- public facing API ----------------
local moduleApiTable = {}

function moduleApiTable:CreateNewPage()
	return Initialize()
end

return moduleApiTable
