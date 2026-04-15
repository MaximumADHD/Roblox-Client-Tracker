local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Dash = require(Framework.Parent.Dash)
local copy = Dash.copy

local Form = require(script.Parent)
local Button = require(script.Parent.Parent.DEPRECATED_Button)

local function CustomPropertyRenderer(props)
	local schema = props.Schema

	return Roact.createElement(Button, {
		OnClick = schema.OnClick,
		Size = UDim2.new(1, 0, 0, 32),
		Style = "RoundPrimary",
		Text = props.Value,
	})
end

local basicSettings = {
	{
		Id = "Checkbox",
		Label = "Checkbox",
		Schema = {
			Type = "Checkbox",
		},
		Value = true,
	},
	{
		Id = "Text",
		Label = "Text",
		Schema = {
			Type = "Text",
			PlaceholderText = "Text",
		},
		Value = "Text",
	},
	{
		Id = "Number",
		Label = "Number",
		Schema = {
			Type = "Number",
			PlaceholderText = 0,
		},
		Value = 1,
	},
	{
		Id = "Slider",
		Label = "Slider",
		Schema = {
			Type = "Slider",
			Min = 0,
			Max = 1,
			ShowInput = true,
			SnapIncrement = 0.05,
		},
		Value = 0.5,
	},
}

local advancedSettings = {
	{
		Id = "Select",
		Label = "Select",
		Schema = {
			Type = "Select",
			Items = {
				{
					Id = "Option1",
					Label = "Option 1",
				},
				{
					Id = "Option2",
					Label = "Option 2",
				},
				{
					Id = "Option3",
					Label = "Option 3",
				},
			},
		},
		Validate = function(value)
			if value == "Option3" then
				return Enum.PropertyStatus.Error, "Option 3 is currently disabled"
			end

			return Enum.PropertyStatus.Ok
		end,
		Value = "Option1",
	},
	{
		Id = "Vector",
		Label = "Vector",
		Schema = {
			Type = "Vector",
			Components = { "X", "Y", "Z" },
			GetValue = function(components: { number }): Vector3
				return Vector3.new(components[1], components[2], components[3])
			end,
			GetComponents = function(value: Vector3): { number }
				return { value.X, value.Y, value.Z }
			end,
		},
		Validate = function(value)
			if value.X * value.Y * value.Z > 1024 then
				return Enum.PropertyStatus.Error, "Exceded maximum volume"
			end
			return Enum.PropertyStatus.Ok, ""
		end,
		Value = Vector3.new(0, 0, 0),
	},
	{
		Id = "Custom",
		Label = "Custom",
		Schema = {
			Type = "Custom",
			OnClick = function()
				print("Clicked")
			end,
		},
		Value = "Click me!",
	},
	{
		Id = "Hidden",
		Label = "Hidden",
		Schema = {
			Type = "Custom",
		},
		Value = "Hide me!",
	},
	{
		Id = "Validate",
		Label = "Validation",
		Schema = {
			Type = "Text",
			PlaceholderText = "Text",
		},
		Validate = function(value)
			if #value > 10 then
				return Enum.PropertyStatus.Error, "Username is too long"
			elseif #value > 9 then
				return Enum.PropertyStatus.Warning, "Username approaching limit"
			end

			return Enum.PropertyStatus.Ok, ""
		end,
		Value = "Username",
	},
}

table.insert(advancedSettings, {
	Children = {
		{
			Id = "Slider",
			Label = "Child 1",
			Schema = {
				Type = "Slider",
				Min = 0,
				Max = 1,
				ShowInput = true,
				SnapIncrement = 0.05,
			},
			Value = 0.5,
		},
		{
			Children = {
				{
					Id = "Number",
					Label = "Number",
					Schema = {
						Type = "Number",
						PlaceholderText = 0,
					},
					Value = 1,
				},
			},
			Id = "Multi",
			Label = "Child 2",
			Schema = {
				Type = "Slider",
				Min = 0,
				Max = 1,
				ShowInput = true,
				SnapIncrement = 0.05,
			},
			Value = 0.5,
		},
	},
	Id = "Children",
	Label = "Children",
	Schema = {
		Type = "Number",
	},
	Value = 1,
})

local Settings = Roact.PureComponent:extend("Settings")

function Settings:init()
	self.OnExpansionChange = function(expansion)
		self:setState({
			Expansion = expansion,
		})
	end

	self.OnChange = function(items)
		self:setState({
			Items = items,
		})
	end

	self.HideButton = function()
		self:setState(function(state)
			local items = copy(state.Items)
			items[2].Children[4].Hidden = true

			return {
				Items = items,
			}
		end)
	end

	-- Set behavior for hide button
	advancedSettings[4].Schema.OnClick = self.HideButton

	self.state = {
		Expansion = {},
		Items = {
			{
				Id = "Basic",
				Label = "Basic Settings",
				Children = basicSettings,
				Separator = true,
			},
			{
				Expandable = false,
				Id = "Advanced",
				Label = "Advanced Settings",
				Children = advancedSettings,
			},
		},
	}
end

function Settings:didUpdate(prevProps)
	local props = self.props

	if prevProps.Disabled ~= props.Disabled then
		local items = copy(self.state.Items)

		for sectionIndex, section in items do
			for propertyIndex, _ in section.Children do
				items[sectionIndex].Children[propertyIndex].Disabled = props.Disabled
			end
		end

		self:setState({
			Items = items,
		})
	end
end

function Settings:render()
	return Roact.createElement(Form, {
		Expansion = self.state.Expansion,
		ExpandByDefault = true,
		Items = self.state.Items,
		LabelWidth = UDim.new(0, 150),
		LabelHeight = 32,
		OnExpansionChange = self.OnExpansionChange,
		OnChange = self.OnChange,
		Renderers = {
			Custom = CustomPropertyRenderer,
		},
		Size = UDim2.new(1, 0, 0, 500),
	})
end

return {
	controls = {
		Disabled = false,
	},
	stories = {
		{
			name = "Form",
			story = function(storyProps)
				return Roact.createElement(Settings, {
					Disabled = storyProps.controls.Disabled,
				})
			end,
		},
	},
}
