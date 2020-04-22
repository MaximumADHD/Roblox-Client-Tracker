--[[
	Displays a list of runnable DeveloperFramework examples.
	Click on an example to run it, then click "Back to Examples"
	to return to the example selection screen.

	Props:
		Plugin Plugin: A Studio Plugin instance. Usually the 'plugin' global
			defined in the main script of a Studio plugin.
		callback OnClose: A function called when the examples window is closed.

	Usage:
		local Examples = require(Framework.Examples)
		local component = Roact.createElement(Examples, {
			Plugin = plugin,
		})

		local handle = Roact.mount(component)
		plugin.Unloading:Connect(function()
			Roact.unmount(handle)
		end)
]]

local Framework = script.Parent
local Roact = require(Framework.Parent.Roact)
local StudioUI = require(Framework.StudioUI)
local Dialog = StudioUI.Dialog
local ContextServices = require(Framework.ContextServices)
local Plugin = ContextServices.Plugin
local UIFolderData = require(Framework.UI.UIFolderData)
local StudioUIFolderData = require(Framework.StudioUI.StudioUIFolderData)

local exampleData = {
	{
		name = "theme",
		label = "Theme",
		folderPrefix = "examples",
	},
	{
		name = "localization",
		label = "Localization",
		folderPrefix = "examples",
	},
	{
		name = "stylevalue",
		label = "StyleValue",
		folderPrefix = "examples",
	},
}

local overrideUiExampleName = {
	["Container"] = "Container and Decoration",
	["PluginToolbar"] = "PluginToolbar and PluginButton",
}

for _, example in ipairs(exampleData) do
	example.source = script:WaitForChild(example.name)
	example.start = require(example.source)
end

-- Automatically add examples from StudioUI and UI folders
local function addUIFolderExamples(folderData, folderPrefix)
	for name, content in pairs(folderData) do
		if content.example then
			local example = {
				name = name,
				label = overrideUiExampleName[name] or name,
				source = content.example,
				start = require(content.example),
				folderPrefix = folderPrefix,
			}
			table.insert(exampleData, example)
		end
	end
end
addUIFolderExamples(UIFolderData, "UI")
addUIFolderExamples(StudioUIFolderData, "StudioUI")


local Examples = Roact.PureComponent:extend("Examples")

function Examples:init()
	local plugin = self.props.Plugin
	self.plugin = Plugin.new(plugin)

	self.state = {
		showingExample = false,
		enabled = true,
	}

	self.onStop = nil

	self.openExample = function(example)
		self:setState({
			showingExample = true,
		})

		self.onStop = example.start(plugin)
	end

	self.closeExample = function()
		self.onStop()
		self.onStop = nil

		self:setState({
			showingExample = false,
		})
	end

	self.close = function()
		self.props.OnClose()
		self:setState({
			enabled = false,
		})
	end
end

function Examples:render()
	local state = self.state
	local showingExample = state.showingExample
	local enabled = state.enabled
	if not enabled then
		return
	end

	local entries
	if not showingExample then
		entries = {
			_ListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
		}

		for index, example in ipairs(exampleData) do
			local label = ("%s\n%s/%s"):format(example.label, example.folderPrefix, example.name)
			local card = Roact.createElement("TextButton", {
				Name = "Example: " .. example.name,
				BackgroundColor3 = Color3.new(0.9, 0.9, 0.9),
				BorderSizePixel = 0,
				Text = label,
				Font = Enum.Font.SourceSans,
				TextSize = 20,
				Size = UDim2.new(1, 0, 0, 80),
				LayoutOrder = index,

				[Roact.Event.Activated] = function()
					self.openExample(example)
				end,
			}, {
				BottomBorder = Roact.createElement("Frame", {
					Name = "Bottom Border",
					Position = UDim2.new(0, 0, 1, -1),
					Size = UDim2.new(0, 400, 0, 1),
					BorderSizePixel = 0,
					BackgroundColor3 = Color3.new(0, 0, 0),
					ZIndex = 2,
				}),
			})

			entries[example.label] = card
		end
	end

	return ContextServices.provide({self.plugin}, {
		Roact.createElement(Dialog, {
			Enabled = enabled,
			Title = "Framework Examples",
			Size = Vector2.new(400, 600),
			Resizable = false,
			OnClose = self.close,
		}, {
			ExampleList = entries and Roact.createElement("ScrollingFrame", {
				Size = UDim2.new(0, 400, 0, 600),
				CanvasSize = UDim2.new(0, 400, 0, 80 * #exampleData),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BorderSizePixel = 2,
				BackgroundColor3 = Color3.new(1, 1, 1),
				TopImage = "rbxassetid://29050676",
				MidImage = "rbxassetid://29050676",
				BottomImage = "rbxassetid://29050676",
			}, entries),

			Running = showingExample and Roact.createElement("TextLabel", {
				Font = Enum.Font.SourceSans,
				TextSize = 20,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, -60),
				Text = "Example Running...",
				BackgroundTransparency = 1,
			}),

			BackButton = showingExample and Roact.createElement("TextButton", {
				Font = Enum.Font.SourceSans,
				TextSize = 20,
				Size = UDim2.new(1, -40, 0, 80),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Text = "Back to Examples",
				BackgroundColor3 = Color3.new(0.9, 0.9, 0.9),
				BorderColor3 = Color3.new(0, 0, 0),

				[Roact.Event.Activated] = self.closeExample,
			}),
		})
	})
end

return Examples
