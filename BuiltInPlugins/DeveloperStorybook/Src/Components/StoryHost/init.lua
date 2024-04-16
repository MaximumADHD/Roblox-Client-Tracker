--[[
	Hosts a story component, mounting a separate React tree to display the story provided.

	Storybook allows stories to be reloaded using ModuleLoader, meaning that the copy of
	React that the story uses may also get reloaded. React can't render elements created
	from a separate load, so this provides a boundary which eliminates this issue.

	This also provides the benefit of letting stories use different versions or implementations
	of React to the Storybook itself, which is currently inherent as plugins do not share
	libraries with the Lua App.

	StoryHost also activates a React Inspector session for the story's React tree.
]]

local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local React = require(Main.Packages.React)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local UI = Framework.UI
local TextLabel = UI.TextLabel
local Pane = UI.Pane
local joinTags = Framework.Styling.joinTags

local Dash = Framework.Dash
local join = Dash.join
local reverse = Dash.reverse

local insert = table.insert

local PanelEntry = require(Main.Src.Components.PanelEntry)

local StoryHost = React.PureComponent:extend("StoryHost")

type Props = {
	Name: string?,
	StoryRef: any,
	StoryProps: Types.StoryProps,
	ThemeName: string,
	Platform: string,
	Settings: Types.Settings,
	Focus: any,
	Plugin: any,
}

type State = {
	storyError: string?,
}

function StoryHost:init()
	self.paneRef = React.createRef()
	self.handle = nil
	self.state = {
		storyError = nil,
	} :: State
	self.mounted = false
	self.root = nil
end

function StoryHost:didMount()
	self.mounted = true
	local ok, result = xpcall(function()
		self:_mountStory()
	end, function(err)
		local fullErr = err .. "\n" .. debug.traceback()
		warn(fullErr)
		return fullErr
	end)
	if not ok then
		self:setState({
			storyError = result,
		})
	end
end

function StoryHost:_mountStory()
	local props = self.props :: Props
	local storyProps = self:getStoryProps()
	local storyComponent = storyProps.story
	local myReact = storyProps.definition.roact
	local myReactRoblox = storyProps.definition.reactRoblox
	local element = myReact.createElement(storyComponent, storyProps)
	if myReact.mount then
		-- Still using Roact or RoactCompat
		self.handle = myReact.mount(element, self.paneRef.current)
	else
		self.root = myReactRoblox.createRoot(self.paneRef.current)
		self.root:render(element)
	end
	spawn(function()
		-- Wait until the story has been loaded and Frame ref has become available
		while self.mounted do
			local currentHost = props.StoryRef.current
			if currentHost then
				self:_mountInspector(currentHost)
				return
			else
				wait()
			end
		end
	end)
end

function StoryHost:_mountInspector(currentHost: Instance)
	local props = self.props :: Props
	local name = props.Name or "Story"
	local pluginGui = currentHost:FindFirstAncestorWhichIsA("PluginGui")
	local frameName = props.Name and "Story " .. name or "Story"
	local reversePrefix = { frameName }
	local parent = currentHost
	while parent ~= pluginGui do
		insert(reversePrefix, parent.Name)
		parent = parent.Parent
	end
	-- The inspector can fail to attach in certain weak security contexts
	pcall(function()
		self.inspector = Framework.DeveloperTools.forLibrary("DeveloperStorybook", {
			rootInstance = pluginGui,
			rootPrefix = reverse(reversePrefix),
			pickerParent = currentHost:FindFirstAncestor("InfoPanel"),
		})
		self.inspector:addRoactTree(name, self.handle, React)
	end)
end

function StoryHost:_unmountStory()
	local storyProps = self:getStoryProps()
	local myReact = storyProps.definition.roact
	if self.root then
		self.root:unmount()
		self.root = nil
	elseif self.handle then
		myReact.unmount(self.handle)
		self.handle = nil
	end
	if self.inspector then
		self.inspector:destroy()
		self.inspector = nil
	end
end

function StoryHost:didUpdate(prevProps: Props)
	local props = self.props :: Props
	-- Don't update when our own state changes
	if
		props.StoryProps == prevProps.StoryProps
		and props.ThemeName == prevProps.ThemeName
		and props.Platform == prevProps.Platform
		and props.Settings == prevProps.Settings
	then
		return
	end
	local storyProps = self:getStoryProps()
	local storyComponent = storyProps.story
	local myReact = storyProps.definition.roact
	local element = myReact.createElement(storyComponent, storyProps)
	-- Catch and display any error from trying to mount or update the story
	local ok, result = xpcall(function()
		if self.root then
			self.root:render(element)
		elseif self.handle then
			myReact.update(self.handle, element)
		else
			-- If the previous mounts have failed, try again now
			self:_mountStory()
		end
	end, function(err)
		return err .. "\n" .. debug.traceback()
	end)
	if ok then
		self:setState({
			storyError = React.None,
		})
	else
		if self.root ~= nil or self.handle ~= nil then
			-- Try to clean up the failed story
			local ok2, err = pcall(function()
				self:_unmountStory()
			end)
			if not ok2 then
				warn(err)
			end
			self.root = nil
			self.handle = nil
		end
		self:setState({
			storyError = result,
		})
	end
end

function StoryHost:willUnmount()
	self.mounted = false
	self:_unmountStory()
end

function StoryHost:getStoryProps(): Types.StoryProps
	local props = self.props :: Props
	local storyProps = props.StoryProps
	return join(storyProps, {
		plugin = props.Plugin:get(),
		host = self.paneRef.current,
		focus = props.Focus:get(),
		theme = props.ThemeName,
		platform = props.Platform,
		settings = props.Settings,
		design = props.Design:get(),
	})
end

function StoryHost:render()
	local props = self.props
	local state = self.state

	local name = props.Name
	local layoutOrder = props.LayoutOrder

	local children = {}
	if state.storyError then
		children.Error = React.createElement(TextLabel, {
			Text = "An error occurred when loading the story:\n\n" .. state.storyError,
			[React.Tag] = "Error Wrap",
		})
	end

	return React.createElement(PanelEntry, {
		Header = name or "Story",
		Description = props.Summary or "",
		LayoutOrder = layoutOrder,
		Size = props.FixedSize and UDim2.new(1, 0, 1, -100) or nil,
	}, {
		Pane = React.createElement(Pane, {
			ForwardRef = self.paneRef,
			LayoutOrder = 2,
			[React.Tag] = joinTags("X-PadS X-Clip X-ColumnM", if props.FixedSize then nil else "X-FitY"),
		}, children),
	})
end

StoryHost = withContext({
	Design = ContextServices.Design or nil,
	Focus = ContextServices.Focus or nil,
	Plugin = ContextServices.Plugin or nil,
})(StoryHost)

return StoryHost
