--[[
	The main screen of the Developer storybook.
	Displays the story for the currently selected component.
]]
local Main = script.Parent.Parent.Parent
local Types = require(Main.Src.Types)
local React = require(Main.Packages.React)
local ReactIs = require(Main.Packages.ReactIs)
local RoactRodux = require(Main.Packages.RoactRodux)
local Dash = require(Main.Packages.Dash)

local Framework = require(Main.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local assign = Dash.assign
local forEach = Dash.forEach
local keys = Dash.keys
local join = Dash.join
local joinDeep = Dash.joinDeep
local map = Dash.map
local mapOne = Dash.mapOne

local sort = table.sort

local UI = Framework.UI
local ScrollingFrame = UI.ScrollingFrame
local StyledDialog = UI.StyledDialog

local Foundation = require(Main.Packages.Foundation)
local View = Foundation.View
local Text = Foundation.Text

local SetLive = require(Main.Src.Actions.SetLive)

local PanelEntry = require(Main.Src.Components.PanelEntry)
local PropsList = require(Main.Src.Components.PropsList)
local Footer = require(Main.Src.Components.Footer)
local StylesList = require(Main.Src.Components.StylesList)
local Controls = require(Main.Src.Components.Controls)
local makeInstanceHost = require(Main.Src.Components.InstanceHost)
local StoryHost = require(Main.Src.Components.StoryHost)
local ThemeSwitcher = Framework.Style.ThemeSwitcher

local TestLoader = require(Main.Packages.TestLoader)
local ModuleLoader = TestLoader.ModuleLoader

local STYLE_DESCRIPTION = "These values make up the component's Style table, which can be extended:"

type Props = {
	SelectedStory: Types.StoryItem?,
	Plugin: any,
	Stylizer: any,
}
type State = {
	storyError: string?,
	storyProps: Types.StoryProps?,
}

local FFlagEnableLoadModule = game:GetFastFlag("EnableLoadModule")

local InfoPanel = React.PureComponent:extend("InfoPanel")

function InfoPanel:init()
	self.state = {} :: State
	self.storyRef = React.createRef()
	self.onScriptChange = function()
		if self.props.Live then
			self:updateStory(self.props.SelectedStory)
		end
	end
end

function InfoPanel:didMount()
	ModuleLoader:connect(self.onScriptChange)
	if self.props.SelectedStory then
		-- Avoid a breakpoint or yield in the scripts we are requiring from propagating a NoYield error up through React
		spawn(function()
			self:updateStory(self.props.SelectedStory)
		end)
	end
end

function InfoPanel:willUnmount()
	ModuleLoader:disconnect(self.onScriptChange)
end

function InfoPanel:didUpdate(prevProps: Props)
	local props = self.props
	local story = props.SelectedStory
	-- Don't make a change if the story selection hasn't changed
	if prevProps.SelectedStory ~= story then
		self:setState({
			storyError = React.None,
		})
		local storyProps = self.state.storyProps
		if storyProps and storyProps.definition.destroy then
			-- Clean up the old story if a destructor is provided
			storyProps.definition.destroy(storyProps)
		end
		-- Avoid a breakpoint or yield in the scripts we are requiring from propagating a NoYield error up through React
		spawn(function()
			self:updateStory(story)
		end)
	end
end

function InfoPanel:setControls(changes: Types.StoryControls)
	self:setState({
		storyProps = joinDeep(self.state.storyProps, {
			controls = changes,
		}),
	})
end

-- Asynchronously load the next story and update our state with the result
function InfoPanel:updateStory(storyItem: Types.StoryItem)
	if not storyItem then
		self:setState({
			storyError = React.None,
			storyProps = React.None,
		})
		return
	end

	if storyItem.StorybookLoadError then
		warn("Storybook load failed", storyItem.StorybookLoadError)
		self:setState({
			storyError = storyItem.StorybookLoadError,
			storyProps = React.None,
		})
		return
	end

	if not storyItem.Script then
		self:setState({
			storyError = React.None,
			storyProps = React.None,
		})
		return
	end
	-- Try loading the story with the module loader
	local ok, err = xpcall(function()
		local storybook = storyItem.Storybook
		if storybook.before then
			storybook:before(storyItem.Script :: ModuleScript)
		end
		local construct = ModuleLoader:load(storyItem.Script :: ModuleScript)
		-- Construct the story definition
		local storyDefinition = self:getStoryDefinition(storyItem, construct, storybook)
		local controls = {}
		-- Add the controls to the storyProps state
		if storyDefinition.controls then
			controls = map(storyDefinition.controls, function(value: any)
				-- Assign the first value of a multi-select control by default
				if typeof(value) == "table" then
					return value[1]
				else
					return value
				end
			end)
		end
		local storyProps = {
			controls = controls,
			setControls = function(changes)
				self:setControls(changes)
			end,
			storybook = storybook,
			script = storyItem.Script,
			definition = storyDefinition,
			story = storyDefinition.story,
		}
		if storyDefinition.create then
			storyDefinition.create(storyProps)
		end
		-- Update our state after an async update
		self:setState({
			storyError = React.None,
			storyProps = storyProps,
		})
	end, function(error)
		return error .. "\n" .. debug.traceback()
	end)
	if not ok then
		warn("Story render failed", err)
		-- Display the error with loading the story
		self:setState({
			storyError = err,
			storyProps = React.None,
		})
	end
end

--[[
	Allow stories to be provided in a range of different formats.
	@param storyItem - the item in the tree row that represents the story
	@param construct - the return value from the ModuleScript
	@param storybook - a table implementing Storybook from the spec
]]
function InfoPanel:getStoryDefinition(
	storyItem: Types.StoryItem,
	construct: Types.Story,
	storybook: Types.Storybook
): Types.StoryDefinition
	local definition = {
		name = storyItem.Name,
		summary = "",
		roact = storybook.roact or ModuleLoader:load(Main.Packages.React),
		reactRoblox = storybook.reactRoblox or ModuleLoader:load(Main.Packages.ReactRoblox),
		source = storyItem.Script,
		story = nil,
		stories = nil,
		props = {},
	}
	local isFnStory = typeof(construct) == "function"
	if isFnStory then
		-- TODO CLI-42229: Luau typeof "function" type guard
		local constructFn = construct :: Types.DeprecatedLifecycleFunction
		local host = Instance.new("Frame")
		host.Size = UDim2.fromScale(1, 1)
		host.BackgroundTransparency = 1
		local ok, result = pcall(function()
			return constructFn(host)
		end)
		local isDeprecatedLifecycleFunction = ok and typeof(result) == "function"
		if isDeprecatedLifecycleFunction then
			definition.story = self:getRoactComponent(host, definition.roact)
			definition.destroy = result
		else
			definition.story = constructFn
		end
	elseif typeof(construct) == "table" then
		local component = self:getRoactComponent(construct, definition.roact)
		if component then
			definition.story = component
		else
			-- The construct is a StoryDefinition
			assign(definition, construct)
			if definition.story then
				definition.story = self:getRoactComponent(definition.story, definition.roact)
			end
			if definition.stories then
				definition.stories = map(definition.stories, function(subStory, key)
					local subComponent = self:getRoactComponent(subStory, definition.roact)
					if subComponent then
						return {
							name = key,
							summary = "",
							story = subComponent,
						}
					else
						return join(subStory, {
							story = self:getRoactComponent(subStory.story, definition.roact),
						})
					end
				end)
			end
		end
	end
	if storybook.definition then
		assign(definition, storybook.definition)
	end
	if storybook.mapDefinition then
		-- TODO CLI-42230: Narrow type of property to truthy
		local mapDefinition = storybook.mapDefinition :: Types.MapStoryDefinition
		definition = mapDefinition(definition)
		assert(typeof(definition) == "table", "Storybook mapDefinition should return the definition")
	end
	if storybook.mapStory then
		-- TODO CLI-42230: Narrow type of property to truthy
		local mapStory = storybook.mapStory :: Types.MapStory
		if definition.story then
			definition.story = mapStory(definition.story)
		end
		if definition.stories then
			for _, subDefinition in pairs(definition.stories) do
				if subDefinition.story then
					subDefinition.story = mapStory(subDefinition.story)
				end
			end
		end
	end
	return definition
end

function InfoPanel:getRoactComponent(input: Types.Story, roact: Types.Roact): Types.RoactComponent?
	local isInstance = typeof(input) == "Instance"
	local isRoactElement = ReactIs.isElement(input) or ReactIs.isFragment(input)
	local isRoactComponent = not isRoactElement and ReactIs.isValidElementType(input)
	local isRoactFn = typeof(input) == "function"
	if isInstance then
		return function()
			return roact.createElement(makeInstanceHost(roact), {
				Instance = input,
			})
		end
	elseif isRoactElement then
		return function()
			return input
		end
	elseif isRoactComponent or isRoactFn then
		return input
	else
		return nil
	end
end

function InfoPanel:render()
	local props = self.props
	local state = self.state
	local order = 0
	local function nextOrder()
		order = order + 1
		return order
	end

	if self.state.storyError then
		return React.createElement(ScrollingFrame, {
			CanvasSize = UDim2.fromScale(1, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
		}, {
			Content = React.createElement(View, {
				tag = "size-full-0 auto-y padding-medium",
			}, {
				Prompt = React.createElement(Text, {
					Text = "An error occurred when loading the story:\n\n" .. self.state.storyError,
					tag = "Error text-wrap auto-xy text-align-x-left",
				}),
			}),
		})
	end

	local storyProps: Types.StoryProps? = state.storyProps

	if not storyProps then
		return React.createElement(View, {
			tag = "size-full-full col gap-medium align-y-center align-x-center",
		}, {
			Banner = React.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Image = "rbxasset://textures/DeveloperStorybook/Banner.png",
				Size = UDim2.fromOffset(95, 95),
				LayoutOrder = 1,
			}),
			Prompt = React.createElement(Text, {
				LayoutOrder = 2,
				Text = "Select a story from the tree",
				tag = "auto-xy",
			}),
		})
	end

	-- TODO CLI-42235: Luau If you return from inside a narrowing statement, the code below it should exclude narrowed type
	local definitelyStoryProps = storyProps :: Types.StoryProps

	local definition = definitelyStoryProps.definition
	local docs = definition.docs

	local isRunningAsPlugin = typeof(props.Plugin:get().OpenScript) == "function"

	local children = {
		Header = React.createElement(PanelEntry, {
			IsTitle = true,
			Header = definition.name,
			Description = definition.summary,
			LayoutOrder = nextOrder(),
		}),
	}

	if mapOne(definitelyStoryProps.controls) ~= nil then
		children.Controls = React.createElement(Controls, {
			Controls = definitelyStoryProps.definition.controls or {},
			ControlState = definitelyStoryProps.controls,
			LayoutOrder = nextOrder(),
			SetControls = function(changes)
				self:setControls(changes)
			end,
		})
	end

	if definition.story then
		children.Story = React.createElement(StoryHost, {
			StoryRef = self.storyRef,
			LayoutOrder = nextOrder(),
			StoryProps = definitelyStoryProps,
			ThemeName = ThemeSwitcher.getThemeName(),
			Platform = props.Platform,
			Settings = props.Settings,
			FixedSize = definitelyStoryProps.storybook.fixedSize,
		})
	end

	if definition.stories then
		-- Sub-stories are sorted
		local subStoryKeys = keys(definition.stories)
		sort(subStoryKeys)
		forEach(subStoryKeys, function(key: string | number)
			local subDefinition = definition.stories[key]
			if not subDefinition.story then
				print("Skipping story that is currently false:", key)
				return
			end
			-- Load one host per sub-story
			local subStory = React.createElement(StoryHost, {
				StoryRef = self.storyRef,
				FixedSize = definitelyStoryProps.storybook.fixedSize,
				Name = subDefinition.name,
				Summary = subDefinition.summary,
				LayoutOrder = nextOrder(),
				StoryProps = join(definitelyStoryProps, {
					story = self:getRoactComponent(subDefinition.story),
					key = key,
				}),
				ThemeName = ThemeSwitcher.getThemeName(),
				Platform = props.Platform,
				Settings = props.Settings,
			})
			children["Story " .. key] = subStory
		end)
	end

	assign(children, {
		Props = docs and docs.Props and React.createElement(PropsList, {
			Header = "Props",
			LayoutOrder = nextOrder(),
			Props = docs.Props,
		}),
		Styles = docs and docs.Style and React.createElement(StylesList, {
			Header = "Styles",
			LayoutOrder = nextOrder(),
			ComponentName = definition.name,
		}),
		StyleValues = docs and docs.Style and React.createElement(PropsList, {
			Header = "Style Values",
			Description = STYLE_DESCRIPTION,
			LayoutOrder = nextOrder(),
			Props = docs.Style,
		}),
	})

	local main

	if definitelyStoryProps.storybook.fixedSize then
		main = React.createElement(View, {
			LayoutOrder = 1,
			tag = "col gap-medium size-full-0 auto-y fill",
			ref = self.storyRef,
		}, children)
	else
		main = React.createElement(ScrollingFrame, {
			LayoutOrder = 1,
			CanvasSize = UDim2.fromScale(1, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
		}, {
			Content = React.createElement(View, {
				tag = "size-full-0 auto-y col gap-medium",
				ref = self.storyRef,
			}, children),
		})
	end

	return React.createElement(View, {
		tag = "clip col flex-fill size-full-full",
	}, {
		Main = main,
		Footer = isRunningAsPlugin and React.createElement(Footer, {
			StoryRef = self.storyRef,
			LayoutOrder = 2,
		}),
		Dialog = React.createElement(StyledDialog, {
			Style = "Alert",
			Enabled = props.Live and not FFlagEnableLoadModule,
			Title = "Live Not Available",
			MinContentSize = Vector2.new(400, 120),
			Buttons = {
				{ Key = "ok", Text = "OK" },
			},
			OnButtonPressed = self.props.disableLive,
			OnClose = self.props.disableLive,
		}, {
			Contents = React.createElement(Text, {
				Text = "To use Live mode, please set FFlagEnableLoadModule to True in your local build.\n\nWhen Live mode is enabled, any changes you make to scripts in Studio are immediately reflected in Storybook without having to reload.",
				tag = "size-full-0 text-wrap auto-y text-align-x-left content-action-alert",
			}),
		}),
	})
end

InfoPanel = withContext({
	Plugin = ContextServices.Plugin,
})(InfoPanel)

InfoPanel = RoactRodux.connect(function(state)
	return {
		Platform = state.Stories.platform,
		CurrentTheme = state.Stories.theme,
		SelectedStory = state.Stories.selectedStory,
		Live = state.Stories.live,
		Settings = state.Stories.settings,
	}
end, function(dispatch)
	return {
		disableLive = function()
			dispatch(SetLive(false))
		end,
	}
end)(InfoPanel)

return InfoPanel
