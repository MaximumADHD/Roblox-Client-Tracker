local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local Foundation = require(CorePackages.Packages.Foundation)
local FFlagCoreUiMigrateUIBloxToFoundation = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCoreUiMigrateUIBloxToFoundation

local withSelectionCursorProvider = if FFlagCoreUiMigrateUIBloxToFoundation
	then Foundation.UNSTABLE.withCursorMigration
	else UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = if FFlagCoreUiMigrateUIBloxToFoundation
	then Foundation.Enums.CursorType
	else UIBlox.App.SelectionImage.CursorKind

local InGameMenu = script.Parent.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)
local GlobalConfig = require(InGameMenu.GlobalConfig)

local ImageSetButton = UIBlox.Core.ImageSet.ImageSetButton

local Image = Foundation.Image
local ControlState = Foundation.Enums.ControlState

local validateProps = t.strictInterface({
	AnchorPoint = t.optional(t.Vector2),
	Position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),

	onActivated = t.callback,
	onSelectionGained = t.optional(t.callback),
	onSelectionLost = t.optional(t.callback),
	forwardRef = t.optional(t.table),
})

local function isSelectedState(state)
	return state == ControlState.Selected or state == ControlState.SelectedPressed
end

local CloseMenuButton

if FFlagCoreUiMigrateUIBloxToFoundation then
	CloseMenuButton = Roact.Component:extend("CloseMenuButton")

	function CloseMenuButton:init()
		self.wasSelected = false
	end

	function CloseMenuButton:render()
		local props = self.props
		return withSelectionCursorProvider(function(getSelectionCursor)
			if GlobalConfig.propValidation then
				assert(validateProps(props))
			end

			return Roact.createElement(Image, {
				AnchorPoint = props.AnchorPoint,
				Position = props.Position,
				Size = UDim2.new(0, 32, 0, 32),
				backgroundStyle = { Transparency = 1 },
				LayoutOrder = props.layoutOrder,
				Image = Assets.Images.CloseButton,
				selection = { SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect) },
				onActivated = props.onActivated,
				onStateChanged = function(newState)
					local isNowSelected = isSelectedState(newState)
					if isNowSelected and not self.wasSelected then
						if props.onSelectionGained then
							props.onSelectionGained()
						end
					elseif not isNowSelected and self.wasSelected then
						if props.onSelectionLost then
							props.onSelectionLost()
						end
					end
					self.wasSelected = isNowSelected
				end,
				ref = props.forwardRef,
			})
		end)
	end
else
	CloseMenuButton = function(props)
		return withSelectionCursorProvider(function(getSelectionCursor)
			if GlobalConfig.propValidation then
				assert(validateProps(props))
			end

			return Roact.createElement(ImageSetButton, {
				AnchorPoint = props.AnchorPoint,
				BackgroundTransparency = 1,
				Image = Assets.Images.CloseButton,
				Position = props.Position,
				Size = UDim2.new(0, 32, 0, 32),
				LayoutOrder = props.layoutOrder,
				SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect),

				[Roact.Event.Activated] = props.onActivated,
				[Roact.Event.SelectionGained] = props.onSelectionGained,
				[Roact.Event.SelectionLost] = props.onSelectionLost,
				[Roact.Ref] = props.forwardRef,
			})
		end)
	end
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		CloseMenuButton,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)
