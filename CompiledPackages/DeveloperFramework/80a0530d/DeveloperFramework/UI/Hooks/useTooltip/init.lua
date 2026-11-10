--!strict
--[[
	useTooltip is a hook that creates a tooltip an attaches it to a specific widget URI.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)
local ReactRoblox = require(Framework.Util.ReactRoblox)

local Types = require(Framework.Types)
type StudioUri = Types.StudioUri

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local useCallback = React.useCallback
local useEffect = React.useEffect
local useRef = React.useRef

local ContextServices = require(Framework.ContextServices)
local Design = ContextServices.Design
local Plugin = ContextServices.Plugin

local Util = require(Framework.Util)
local counter = Util.counter
local TooltipSettings = require(script.TooltipSettings)

type FIXME = any

local BORDER = 6
local TOTAL_HORIZONTAL_PADDING = 12
local ICON_SIZE = 24

export type UseTooltipProps = {
	Uri: StudioUri?,
	Icon: string?,
	Title: string?,
	Text: string?,
	Shortcuts: { string }?,
	Location: AttachmentLocation?,
	AttachmentInfo: AttachmentInfo?,
}

export type AttachmentLocation = "Above" | "Below" | "Left" | "Right"

export type AttachmentInfo = {
	TargetAnchorPoint: Vector2?,
	SubjectAnchorPoint: Vector2?,
	Offset: Vector2?,
}

export type Props = UseTooltipProps & {
	Design: StyleSheet?,
	OnResize: (size: Vector2) -> (),
}

local function stringifyShortcuts(shortcuts: { string })
	local result = ""
	for i, shortcut in ipairs(shortcuts) do
		if i > 1 then
			result = result .. ", "
		end
		result = result .. shortcut
	end
	return result
end

local function getFrameSize(size: Vector2, textRef, titleRef, hasIcon: boolean): Vector2
	local largestSize = 0
	if textRef.current then
		largestSize = textRef.current.AbsoluteSize.X
	end
	if titleRef.current then
		largestSize = math.max(largestSize, titleRef.current.AbsoluteSize.X)
	end
	if hasIcon then
		largestSize += ICON_SIZE
	end
	return Vector2.new(math.min(size.X, largestSize) + TOTAL_HORIZONTAL_PADDING + BORDER, size.Y + BORDER)
end

local function Tooltip(props: Props)
	local frameRef = useRef(nil :: Frame?)
	local textRef = useRef(nil :: TextLabel?)
	local titleRef = useRef(nil :: Frame?)
	local count = counter()
	useEffect(function()
		if frameRef.current then
			local size = getFrameSize(frameRef.current.AbsoluteSize, textRef, titleRef, props.Icon ~= nil)
			props.OnResize(size)
		end
	end, { props.Title, props.Text, props.Icon })

	local wrapper = React.createElement("Frame", {
		ref = frameRef,
		[React.Change.AbsoluteSize] = function(frame: Frame)
			local size = getFrameSize(frame.AbsoluteSize, textRef, titleRef, props.Icon ~= nil)
			props.OnResize(size)
		end,
		[React.Tag] = "Role-Surface X-PadTooltip X-RowSpace50 X-FitY X-Middle" :: any,
		Size = UDim2.new(0, 1000, 0, 0), -- Set to very large size so text is able to wrap correctly.
	}, {
		Icon = if props.Icon
			then React.createElement("ImageLabel", {
				Image = props.Icon,
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
				LayoutOrder = count(),
			})
			else nil,
		Content = React.createElement("Frame", {
			LayoutOrder = count(),
			[React.Tag] = "Role-Surface X-Fit X-ColumnSpace25",
		}, {
			TitleFrame = React.createElement("Frame", {
				ref = titleRef,
				LayoutOrder = count(),
				[React.Tag] = "Role-Surface X-Fit X-RowSpace50",
			}, {
				Title = if props.Title
					then React.createElement("TextLabel", {
						LayoutOrder = count(),
						Text = props.Title,
						[React.Tag] = "X-Fit Text-Title",
					})
					else nil,
				Shortcuts = if props.Shortcuts
					then React.createElement("TextLabel", {
						LayoutOrder = count(),
						Text = stringifyShortcuts(props.Shortcuts),
						[React.Tag] = "X-Fit Text-Label",
					})
					else nil,
			}),
			Text = if props.Text
				then React.createElement("TextLabel", {
					ref = textRef,
					LayoutOrder = count(),
					Text = props.Text,
					RichText = true,
					[React.Tag] = "Text-Label X-Fit TooltipTextBounds",
				})
				else nil,
		}),
	})

	return React.createElement("Frame", {
		[React.Tag] = "Component-useTooltip Role-Tooltip X-Fill",
	}, {
		Wrapper = wrapper,
		StyleLink = React.createElement("StyleLink", {
			StyleSheet = props.Design,
		}),
	})
end

local panelGlobal = nil
local root = nil
local creationInProgress = false
local function loadTooltipPanelAsync(plugin: Plugin)
	while creationInProgress do
		task.wait()
	end
	if panelGlobal then
		return panelGlobal
	end
	creationInProgress = true
	panelGlobal = plugin:CreateQWidgetPluginGui("Tooltip", {
		Id = "Tooltip",
		InitialEnabled = false,
		MinSize = Vector2.new(50, 50),
		Modal = false,
		Tooltip = true,
		Resizable = true,
		Size = Vector2.new(220, 224),
		Title = "Tooltip",
	})
	panelGlobal.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	root = ReactRoblox.createRoot(panelGlobal)
	creationInProgress = false
	return panelGlobal
end

local function showTooltip(plugin: Plugin, props: UseTooltipProps, design: StyleSheet?)
	loadTooltipPanelAsync(plugin)
	local pluginUri = plugin:GetUri()
	local panelUri = join(pluginUri, {
		Category = "Panels",
		ItemId = "Tooltip",
	})
	local Panels = plugin:GetPluginComponent("Panels") -- :: Panels: this type does not exist in DF, but does in GE
	-- Draw the React UI for the Tooltip
	root:render(React.createElement(
		Tooltip,
		join(
			props,
			{
				Design = design,
				OnResize = function(size: Vector2)
					Panels:SetSizeAsync(panelUri, size)
				end,
			} :: Props
		)
	))

	local targetAnchorPoint = Vector2.new(0, 1)
	local subjectAnchorPoint = Vector2.new(0, 0)
	local offset = Vector2.new(0, 0)

	if props.Location then
		if props.Location == "Above" then
			targetAnchorPoint = Vector2.new(0, 0) -- target's top left
			subjectAnchorPoint = Vector2.new(0, 1) -- our bottom left
		elseif props.Location == "Below" then
			targetAnchorPoint = Vector2.new(0, 1) -- target's bottom left
			subjectAnchorPoint = Vector2.new(0, 0) -- our top left
		elseif props.Location == "Left" then
			targetAnchorPoint = Vector2.new(0, 0) -- target's top left
			subjectAnchorPoint = Vector2.new(1, 0) -- our top right
		elseif props.Location == "Right" then
			targetAnchorPoint = Vector2.new(1, 0) -- target's top right
			subjectAnchorPoint = Vector2.new(0, 0) -- our top left
		end
	end

	if props.AttachmentInfo ~= nil then
		targetAnchorPoint = props.AttachmentInfo.TargetAnchorPoint or targetAnchorPoint
		subjectAnchorPoint = props.AttachmentInfo.SubjectAnchorPoint or subjectAnchorPoint
		offset = props.AttachmentInfo.Offset or offset
	end

	Panels:SetAttachmentAsync(panelUri, {
		TargetWidgetUri = props.Uri,
		TargetAnchorPoint = targetAnchorPoint,
		SubjectAnchorPoint = subjectAnchorPoint,
		Offset = offset,
	})

	TooltipSettings.showCount += 1
	local currentIndex = TooltipSettings.showCount
	delay(TooltipSettings.showDelay, function()
		-- A hide request was already made for this tooltip, so don't show it
		if currentIndex <= TooltipSettings.hideCount then
			return
		end

		Panels:ShowIfAttachedAsync(panelUri)
	end)
end

local function hideTooltip(plugin: Plugin)
	TooltipSettings.hideCount += 1
	local currentIndex = TooltipSettings.hideCount
	delay(TooltipSettings.hideDelay, function()
		-- Don't hide this tooltip if we've already moved on to showing a different tooltip,
		-- since the showing of that tooltip would've already hidden this one
		if currentIndex < TooltipSettings.showCount then
			return
		end

		local panel = loadTooltipPanelAsync(plugin)
		panel.Enabled = false
		root:render(nil)
	end)
end

local function useTooltip(props: UseTooltipProps)
	local pluginContext = Plugin.use()
	local designContext = Design.use()
	local active = useRef(false)
	local memo = { props.Uri, props.Title, props.Icon, props.Text } :: { any }

	local show = useCallback(function(overrideProps: UseTooltipProps?)
		-- Ensure tooltip isn't already showing for this use
		if active.current then
			return
		end
		-- Ensure tooltips are enabled
		if TooltipSettings.disableAllTooltips then
			return
		end

		local showTooltipProps = if typeof(overrideProps) == "table" then join(props, overrideProps) else props

		-- Ensure there actually is a tooltip to display and location to attach it to
		if showTooltipProps.Uri == nil or showTooltipProps.Text == nil then
			return
		end

		active.current = true
		local plugin = pluginContext:get()
		local design = designContext:get()
		showTooltip(plugin, showTooltipProps, design)
	end, memo)

	local hide = useCallback(function()
		-- Ensure tooltip is showing for this use
		if not active.current then
			return
		end
		active.current = false
		local plugin = pluginContext:get()
		hideTooltip(plugin)
	end, memo)
	return show, hide
end

return useTooltip
