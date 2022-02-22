--[[
	Hosts a story component, mounting a separate Roact tree to display the story provided.

	Storybook allows stories to be reloaded using ModuleLoader, meaning that the copy of
	Roact that the story uses may also get reloaded. Roact can't render elements created
	from a separate load, so this provides a boundary which eliminates this issue.

	This also provides the benefit of letting stories use different versions or implementations
	of Roact to the Storybook itself, which is currently inherent as plugins do not share
	libraries with the Lua App.

	StoryHost also activates a Roact Inspector session for the story's Roact tree.
]]

local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local Roact = require(Main.Packages.Roact)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel
local Pane = UI.Pane

local Dash = Framework.Dash
local join = Dash.join
local reverse = Dash.reverse

local insert = table.insert

local PanelEntry = require(Main.Src.Components.PanelEntry)

local FFlagRefactorDevFrameworkContextItems2 = game:GetFastFlag("RefactorDevFrameworkContextItems2")

local StoryHost = Roact.PureComponent:extend("StoryHost")

type Props = {
	Name: string?,
	StoryRef: any,
	StoryProps: Types.StoryProps,
	ThemeName: string,
	Focus: any,
	Stylizer: any,
	Plugin: any,
}

type State = {
	storyError: string?
}

function StoryHost:init()
	self.paneRef = Roact.createRef()
	self.handle = nil
	self.state = {
		storyError = nil
	} :: State
	self.mounted = false
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
			storyError = result
		})
	end
end

function StoryHost:_mountStory()
	local props = self.props :: Props
	local storyProps = self:getStoryProps()
	local storyComponent = storyProps.story
	local myRoact = storyProps.definition.roact
	local element = myRoact.createElement(storyComponent, storyProps)
	self.handle = myRoact.mount(element, self.paneRef.current)
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
	local reversePrefix = {frameName}
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
			pickerParent = currentHost:FindFirstAncestor("InfoPanel")
		})
		self.inspector:addRoactTree(name, self.handle, Roact)
	end)
end

function StoryHost:_unmountStory()
	local storyProps = self:getStoryProps()
	local myRoact = storyProps.definition.roact
	if self.handle then
		myRoact.unmount(self.handle)
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
	if props.StoryProps == prevProps.StoryProps and props.ThemeName == prevProps.ThemeName then
		return
	end
	local storyProps = self:getStoryProps()
	local storyComponent = storyProps.story
	local myRoact = storyProps.definition.roact
	local element = myRoact.createElement(storyComponent, storyProps)
	-- Catch and display any error from trying to mount or update the story
	local ok, result = xpcall(function()
		if self.handle then
			myRoact.update(self.handle, element)
		else
			-- If the previous mounts have failed, try again now
			self:_mountStory()
		end
	end, function(err)
		return err .. "\n" .. debug.traceback()
	end)
	if ok then
		self:setState({
			storyError = Roact.None
		})
	else
		if self.handle ~= nil then
			-- Try to clean up the failed story
			local ok2, err = pcall(function()
				self:_unmountStory()
			end)
			if not ok2 then
				warn(err)
			end
			self.handle = nil
		end
		self:setState({
			storyError = result
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
		focus = FFlagRefactorDevFrameworkContextItems2 and props.Focus:get() or props.Focus:getTarget(),
		theme = props.ThemeName,
	})
end

function StoryHost:render()
	local props = self.props
	local state = self.state
	local style = props.Stylizer

	local name = props.Name
	local layoutOrder = props.LayoutOrder

	local children = {}
	if state.storyError then
		children.Error = Roact.createElement(TextLabel, {
			Size = UDim2.fromScale(1, 0),
			Text = "An error occurred when loading the story:\n\n" .. state.storyError,
			TextColor = style.ErrorColor,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
		})
	end

	return Roact.createElement(PanelEntry, {
		Header = name or "Story",
		Description = props.Summary or "",
		LayoutOrder = layoutOrder,
		Size = props.FixedSize and UDim2.new(1, 0, 1, -100) or nil,
	}, {
		Pane = Roact.createElement(Pane, {
			-- Prevent outside borders of elements from getting clipped
			Padding = 1,
			LayoutOrder = 2,
			ClipsDescendants = true,
			Layout = Enum.FillDirection.Vertical,
			AutomaticSize = not props.FixedSize and Enum.AutomaticSize.Y or nil,
			[Roact.Ref] = self.paneRef,
		}, children)
	})
end


StoryHost = withContext({
	Focus = ContextServices.Focus or nil,
	Plugin = ContextServices.Plugin or nil,
	Stylizer = ContextServices.Stylizer or nil,
})(StoryHost)



return StoryHost
