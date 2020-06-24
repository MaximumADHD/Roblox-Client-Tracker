local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local FrameworkUtil = require(Plugin.Framework.Util)
local LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator

local ConstantLayout = require(Page.Util.ConstantLayout)
local StateInterfaceTheme = require(Page.Util.StateInterfaceTheme)

local PublishingHint = require(Page.Components.PublishingHint)
local PresetsPanel = require(Page.Components.PresetsPanel)
local AvatarTypePanel = require(Page.Components.AvatarTypePanel)
local AnimationPanel = require(Page.Components.AnimationPanel)
local CollisionPanel = require(Page.Components.CollisionPanel)
local ScalePanel = require(Page.Components.ScalePanel)
local AssetsPanel = require(Page.Components.AssetsPanel)

local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders")

local MorpherTemplate = Roact.Component:extend("ComponentMorpherTemplate")

if FFlagAvatarSizeFixForReorganizeHeaders then
	function MorpherTemplate:init()
		self.frameRef = Roact.createRef()
	end
end

function MorpherTemplate:render()
	local layoutOrder = LayoutOrderIterator.new()

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