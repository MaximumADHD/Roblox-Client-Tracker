local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ConstantLayout = require(Plugin.Src.Util.ConstantLayout)
local StateInterfaceTheme = require(Plugin.Src.Util.StateInterfaceTheme)
local UtilityClassLayoutOrder = require(Plugin.Src.Util.UtilityClassLayoutOrder)

local PublishingHint = require(Plugin.Src.Components.PublishingHint)
local PresetsPanel = require(Plugin.Src.Components.Avatar.PresetsPanel)
local AvatarTypePanel = require(Plugin.Src.Components.Avatar.AvatarTypePanel)
local AnimationPanel = require(Plugin.Src.Components.Avatar.AnimationPanel)
local CollisionPanel = require(Plugin.Src.Components.Avatar.CollisionPanel)
local ScalePanel = require(Plugin.Src.Components.Avatar.ScalePanel)
local AssetsPanel = require(Plugin.Src.Components.Avatar.AssetsPanel)

local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders")

local MorpherTemplate = Roact.Component:extend("ComponentMorpherTemplate")

if FFlagAvatarSizeFixForReorganizeHeaders then
	function MorpherTemplate:init()
		self.frameRef = Roact.createRef()
	end
end

function MorpherTemplate:render()
	local layoutOrder = UtilityClassLayoutOrder.new()

	local function getPropsForSubComponents()
		return {
			ThemeData = self.props.ThemeData,
			LayoutOrder = layoutOrder:getNextOrder(),
			template = self.props.template,
			StateTemplates = self.props.StateTemplates,
			IsEnabled = self.props.IsEnabled,

			IsGameShutdownRequired = self.props.IsGameShutdownRequired,
			AssetOverrideErrors = self.props.AssetOverrideErrors,
			Mouse = self.props.Mouse,

			clobberTemplate = self.props.clobberTemplate,
		}
	end

	local function getPropsForPublishingHint()
		local subProps = getPropsForSubComponents()
		subProps.IsEnabled = self.props.IsPlacePublished
		return subProps
	end

	return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = StateInterfaceTheme.getBackgroundColor(self.props),

			[Roact.Ref] = FFlagAvatarSizeFixForReorganizeHeaders and self.frameRef or nil,
		}, {
			UIListLayoutVertical = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = ConstantLayout.VirticalPadding,

				[Roact.Change.AbsoluteContentSize] = function(rbx)
					if FFlagAvatarSizeFixForReorganizeHeaders then
						self.frameRef.current.Size = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.y)
					else
						self.props.ContentHeightChanged(rbx.AbsoluteContentSize.y)
					end
				end,
			}),

			PublishingHint = Roact.createElement(PublishingHint, getPropsForPublishingHint()),
			PresetsPanel = Roact.createElement(PresetsPanel, getPropsForSubComponents()),
			AvatarTypePanel = Roact.createElement(AvatarTypePanel, getPropsForSubComponents()),
			AnimationPanel = Roact.createElement(AnimationPanel, getPropsForSubComponents()),
			CollisionPanel = Roact.createElement(CollisionPanel, getPropsForSubComponents()),
			ScalePanel = Roact.createElement(ScalePanel, getPropsForSubComponents()),
			AssetsPanel = Roact.createElement(AssetsPanel, getPropsForSubComponents())
		}
	)
end

return MorpherTemplate