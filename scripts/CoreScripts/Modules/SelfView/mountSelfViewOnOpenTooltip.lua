local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local CoreGui = game:GetService("CoreGui")
local UIBlox = require(CorePackages.UIBlox)
local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
local DarkTheme = UIBlox.App.Style.Constants.ThemeName.Dark

local Promise = require(CorePackages.Packages.Promise)

local SelfViewTooltipFTUX = require(script.Parent.SelfViewTooltipFTUX)
local PADDING_TIME = 5

return function (props)
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "SelfViewTooltipOnOpenGui"
	screenGui.DisplayOrder = -1
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.Parent = CoreGui

	local root = Roact.createElement(AppStyleProvider, {
		style = {
			themeName = DarkTheme,
		},
	}, {
		frame = Roact.createElement("Frame", {
			Position = props.position,
			Size =  props.size,
			BackgroundTransparency = 0,
			AnchorPoint = props.anchorPoint,
			Visible = false,
		}, {
			aspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = props.aspectRatio,
				AspectType = "ScaleWithParentSize",
				DominantAxis = "Width"
			}),
			sizeConstraint = Roact.createElement("UISizeConstraint", {
				MaxSize = props.maxSize,
				MinSize = props.minSize,
			}),
			bottomButtonsMock = Roact.createElement("Frame", {
				Position = props.bottomButtonsFramePosition,
				Size = props.bottomButtonsFrameSize,
				Visible = false,
				BackgroundTransparency = 0,
			}, {
				tooltip = Roact.createElement(SelfViewTooltipFTUX, {
					fallbackText = props.fallbackText,
					translationKey = props.translationKey,
					tooltipLifetime = props.tooltipLifetime,
				})
			}),
		})
	})
	local instance = Roact.mount(root, screenGui, "SelfViewTooltipOnOpenGui")

	local cleanup = function()
		pcall(function()
			Roact.unmount(instance)
		end)
	end
	Promise.delay(props.tooltipLifetime + PADDING_TIME):andThen(function()
		-- Some time after the tooltip's lifetime, we want to unmount the instance
		cleanup()
	end)

	return {
		instance = instance,
		unmount = cleanup,
	}
end