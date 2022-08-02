local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)
local withLocalization = UILibrary.Localizing.withLocalization

local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateTextLabels = SharedFlags.getFFlagDevFrameworkMigrateTextLabels()

local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel

local Padding = require(script.Parent.DEPRECATED_Padding)

return function(props)
	if not props.Active then
		return nil
	end

	local zIndex = 10

	return withLocalization(function(localized)
		local message = props.Message
		if props.messageKey then
			message = localized:getText("Modal", props.messageKey, unpack(props.messageArgs or {}))
		end

		return Roact.createElement("TextButton", {
			BackgroundTransparency = 0.99,
			Text = "",
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = zIndex,
			Modal = true,

			[Roact.Event.Activated] = function()
				props.CleanUpFunction()
			end,
		}, {
			ModalFrame = Roact.createElement("Frame", {
				Size = UDim2.new(0, 256, 0, 128),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground),
				BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border),
				ZIndex = zIndex,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				MessageFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0.75, 0),
					LayoutOrder = 1,
					ZIndex = zIndex,
				}, {
					Padding = Roact.createElement(Padding, {Padding = UDim.new(0, 16)}),

					Message = if FFlagDevFrameworkMigrateTextLabels then (
						Roact.createElement(TextLabel, {
							Text = message,
							TextWrapped = true,
							ZIndex = zIndex,
						})
					) else (
						Roact.createElement("TextLabel", {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 1, 0),
							Text = message,
							TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText),
							TextWrapped = true,
							ZIndex = zIndex,
						})
					)
				}),

				ButtonsFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0.25, 0),
					LayoutOrder = 2,
					ZIndex = zIndex,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Horizontal,
					}),

					YesFrame = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(0.5, 0, 1, 0),
						LayoutOrder = 1,
						ZIndex = zIndex,
					}, {
						Padding = Roact.createElement(Padding, {Padding = UDim.new(0, 4)}),

						Button = Roact.createElement("TextButton", {
							Size = UDim2.new(1, 0, 1, 0),
							Text = localized:getText("Common", "Yes"),
							TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText),
							BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground),
							BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border),

							[Roact.Event.Activated] = function()
								props.Function()
								props.CleanUpFunction()
							end,
							ZIndex = zIndex,
						})
					}),

					NoFrame = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(0.5, 0, 1, 0),
						LayoutOrder = 2,
						ZIndex = zIndex,
					}, {
						Padding = Roact.createElement(Padding, {Padding = UDim.new(0, 4)}),

						Button = Roact.createElement("TextButton", {
							Size = UDim2.new(1, 0, 1, 0),
							Text = localized:getText("Common", "No"),
							TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText),
							BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground),
							BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border),

							[Roact.Event.Activated] = function()
								props.CleanUpFunction()
							end,
							ZIndex = zIndex,
						})
					}),
				}),
			}),
		})
	end)
end