local paths = require(script.Parent.Parent.Paths)
local FFlagWorldAvatarLocalization = game:GetFastFlag("WorldAvatarLocalization")
local FFlagAvatarSizeFixForReorganizeHeaders =
	game:GetFastFlag("AvatarSizeFixForReorganizeHeaders") and
	settings():GetFFlag("GameSettingsReorganizeHeaders")

local MorpherTemplate = paths.Roact.Component:extend("ComponentMorpherTemplate")

if FFlagAvatarSizeFixForReorganizeHeaders then
	function MorpherTemplate:init()
		self.frameRef = paths.Roact.createRef()
	end
end

function MorpherTemplate:render()
	local layoutOrder = paths.UtilityClassLayoutOrder.new()

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
			LocalizedContent = FFlagWorldAvatarLocalization and self.props.LocalizedContent or nil
		}
	end

	local function getPropsForPublishingHint()
		local subProps = getPropsForSubComponents()
		subProps.IsEnabled = self.props.IsPlacePublished
		return subProps
	end

	local function getPropsForDividers()
		return {
			ThemeData = self.props.ThemeData,
			LayoutOrder = layoutOrder:getNextOrder(),
		}
	end

	return paths.Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = paths.StateInterfaceTheme.getBackgroundColor(self.props),

			[paths.Roact.Ref] = FFlagAvatarSizeFixForReorganizeHeaders and self.frameRef or nil,
		}, {
			UIListLayoutVertical = paths.Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = paths.ConstantLayout.VirticalPadding,

				[paths.Roact.Change.AbsoluteContentSize] = function(rbx)
					if FFlagAvatarSizeFixForReorganizeHeaders then
						self.frameRef.current.Size = UDim2.new(1, 0, 0, rbx.AbsoluteContentSize.y)
					else
						self.props.ContentHeightChanged(rbx.AbsoluteContentSize.y)
					end
				end,
			}),

			ComponentPublishHint = paths.Roact.createElement(paths.ComponentPublishingHint, getPropsForPublishingHint()),
			ComponentPresetsPanel = paths.Roact.createElement(paths.ComponentPresetsPanel, getPropsForSubComponents()),
			ComponentAvatarTypePanel = paths.Roact.createElement(paths.ComponentAvatarTypePanel, getPropsForSubComponents()),
			ComponentAnimationPanel = paths.Roact.createElement(paths.ComponentAnimationPanel, getPropsForSubComponents()),
			ComponentCollisionPanel = paths.Roact.createElement(paths.ComponentCollisionPanel, getPropsForSubComponents()),
			ComponentScalePanel = paths.Roact.createElement(paths.ComponentScalePanel, getPropsForSubComponents()),
			ComponentAssetsPanel = paths.Roact.createElement(paths.ComponentAssetsPanel, getPropsForSubComponents())
		}
	)
end

return MorpherTemplate