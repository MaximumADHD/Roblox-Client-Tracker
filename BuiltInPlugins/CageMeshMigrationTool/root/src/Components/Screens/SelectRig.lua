local root = script:FindFirstAncestor("root")

local Workspace = game:GetService("Workspace")
local Selection = game:GetService("Selection")

local Roact = require(root.Packages.Roact)
local RoactRodux = require(root.Packages.RoactRodux)

local Framework = require(root.Packages.Framework)

local ContextServices: any = Framework.ContextServices

local UI = Framework.UI
local Button = UI.Button
local TextLabel = UI.TextLabel
local InstanceTreeView = UI.InstanceTreeView

local StyleKey = Framework.Style.StyleKey

local SetEnabled = require(root.src.Actions.SetEnabled)
local SetRig = require(root.src.Actions.SetRig)

local Process = require(root.src.Thunks.Process)

local getImportedRig = require(root.src.Util.getImportedRig)

local constants = require(root.src.constants)

local PADDING = 15

local SelectRig = Roact.PureComponent:extend("SelectRig")

function SelectRig:init()
	self.state = {
		Expansion = { [Workspace] = true },
		Selection = {},
		Instances = { Workspace },
	}
end

function SelectRig:didMount()
	local preselected = {}

	for _, instance in ipairs(Selection:Get()) do
		if instance:IsDescendantOf(Workspace) then
			preselected[instance] = true
		end
	end

	if next(preselected) == nil then
		local importedRig = getImportedRig()
		if importedRig then
			preselected[importedRig] = true
		end
	end

	if next(preselected) ~= nil then
		self:setState({ Selection = preselected })
	end
end

function SelectRig:render()
	local props = self.props
	local state = self.state

	local plugin = props.Plugin:get()

	local selection = {}
	for instance in pairs(state.Selection) do
		if typeof(instance) == "Instance" then
			table.insert(selection, instance)
		end
	end

	local rig = #selection == 1 and selection[1]:IsA("Model") and selection[1] or nil

	return Roact.createElement("Frame", {
		BackgroundColor3 = props.Stylizer[StyleKey.MainBackground],
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, PADDING),
			PaddingLeft = UDim.new(0, PADDING),
			PaddingRight = UDim.new(0, PADDING),
			PaddingTop = UDim.new(0, PADDING),
		}),
		Content = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, -(30 + PADDING)),
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, PADDING),
			}),
			TextLabel = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Text = "2. Select Imported Rig",
				Font = constants.FONT,
				FontSize = constants.FONT_SIZE,
				Size = UDim2.new(1, 0, 0, 20),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Center,
			}),
			MeshPartSelector = Roact.createElement(InstanceTreeView, {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 200),
				Expansion = state.Expansion,
				Selection = state.Selection,
				Instances = state.Instances,
				OnSelectionChange = function(items)
					self:setState({ Selection = items })
				end,
				OnExpansionChange = function(items)
					self:setState({ Expansion = items })
				end,
			}),
		}),
		Button = Roact.createElement(Button, {
			Text = "Next",
			-- TODO: better disabled state?
			Style = rig and "RoundPrimary" or "Round",
			TextSize = 24,
			Size = UDim2.new(1, 0, 0, 30),
			Position = UDim2.new(0, 0, 1, -30),
			OnClick = function()
				if rig then
					props.setRig(rig)
					props.process(plugin)
					props.close()
				end
			end,
		}),
	})
end

SelectRig = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Plugin = ContextServices.Plugin,
})(SelectRig)

local function mapDispatchToProps(dispatch)
	return {
		close = function()
			dispatch(SetEnabled(false))
		end,
		setRig = function(meshPart)
			dispatch(SetRig(meshPart))
		end,
		process = function(plugin)
			dispatch(Process(plugin))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(SelectRig)
