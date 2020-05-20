local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local Framework = Plugin.Framework

local Header = require(Plugin.Src.Components.Header)
local GameIconWidget = require(Plugin.Src.Components.GameIcon.GameIconWidget)
local PaidAccess = require(Plugin.Src.Components.PaidAccess)
local VIPServers = require(Plugin.Src.Components.VIPServers)

local FrameworkUI = require(Framework.UI)
local HoverArea = FrameworkUI.HoverArea
local Separator = FrameworkUI.Separator

local FrameworkUtil = require(Framework.Util)
local LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator
local FitFrameOnAxis = FrameworkUtil.FitFrame.FitFrameOnAxis

local UILibrary = require(Plugin.UILibrary)
local TitledFrame = UILibrary.Component.TitledFrame
local RoundTextBox = UILibrary.Component.RoundTextBox
local RoundFrame = UILibrary.Component.RoundFrame
local TextEntry = UILibrary.Component.TextEntry

local layoutIndex = LayoutOrderIterator.new()

local AddChange = require(Plugin.Src.Actions.AddChange)

local PageName = "Monetization"

local MAX_NAME_LENGTH = 50
local MAX_DESCRIPTION_LENGTH = 1000

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.DEPRECATED_createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
    local loadedProps = {
        PaidAccess = {
            enabled = getValue("isForSale"),
            price = getValue("price"),
        },
        VIPServers = {
            isEnabled = getValue("vipServersIsEnabled"),
			price = getValue("vipServersPrice"),
			activeServersCount = getValue("vipServersActiveServersCount"),
			activeSubscriptionsCount = getValue("vipServersActiveSubscriptionsCount"),
        }
    }

    return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
    local dispatchFuncs = {
        PaidAccessToggled = function(button)
            dispatch(AddChange("isForSale", button.Id))
        end,

        PaidAccessPriceChanged = function(text)
            local numberValue = tonumber(text)

            if numberValue and numberValue >= 25 and numberValue <= 1000 then
                dispatch(AddChange("price", text))
            end
        end,

        VIPServersToggled = function(button)
            dispatch(AddChange("vipServersIsEnabled", button.Id))
        end,

        VIPServersPriceChanged = function(text)
            local numberValue = tonumber(text)

            if numberValue and numberValue >= 10 then
                dispatch(AddChange("vipServersPrice", text))
            end
        end,
    }
    return dispatchFuncs
end

--Uses props to display current settings values
local function displayMonetizationPage(props, localization)
    local props = page.props

    local paidAccessEnabled = props.PaidAccess.enabled
    local paidAccessPrice = props.PaidAccess.price

    local vipServers = props.VIPServers

    local paidAccessToggled = props.PaidAccessToggled
    local paidAccessPriceChanged = props.PaidAccessPriceChanged

    local vipServersToggled = props.VIPServersToggled
    local vipServersPriceChanged = props.VIPServersPriceChanged
 
    return {
        Header = Roact.createElement(Header, {
            Title = localization:getText("General", "Category"..PageName),
			LayoutOrder = layoutIndex:getNextOrder(),
        }),

        PaidAccess = Roact.createElement(PaidAccess, {
            Price = paidAccessPrice,

            LayoutOrder = layoutIndex:getNextOrder(),
            Enabled = not vipServers.isEnabled,
            Selected = paidAccessEnabled,

            OnPaidAccessToggle = paidAccessToggled,
            OnPaidAccessPriceChanged = paidAccessPriceChanged,
        }),

        VIPServers = Roact.createElement(VIPServers, {
            VIPServersData = vipServers,

            LayoutOrder = layoutIndex:getNextOrder(),
            Enabled = not paidAccessEnabled,

            OnVipServersToggled = vipServersToggled,
            OnVipServersPriceChanged = vipServersPriceChanged,
        }),
    }
end

local function displayEditDevProductsPage(props, localization)
	local theme = props.Theme:get("Plugin")

	local layoutIndex = LayoutOrderIterator.new()

	return {
		HeaderFrame = Roact.createElement(FitFrameOnAxis, {
			LayoutOrder = layoutIndex:getNextOrder(),
			BackgroundTransparency = 1,
			axis = FitFrameOnAxis.Axis.Vertical,
			minimumSize = UDim2.new(1, 0, 0, 0),
			contentPadding = UDim.new(0, theme.settingsPage.headerPadding),
		}, {
			BackButton = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, theme.backButton.size, 0, theme.backButton.size),
				LayoutOrder = 0,

				Image = theme.backButton.image,

				BackgroundTransparency = 1,

				[Roact.Event.Activated] = function()
					--TODO: back functionality
				end,
			}, {
				Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
			}),

			Roact.createElement(Separator, {
				LayoutOrder = 1
			}),

			Header = Roact.createElement(Header, {
				Title = localization:getText("Monetization", "EditDeveloperProduct"),
				LayoutOrder = 2,
			}),
		}),

		Name = Roact.createElement(TitledFrame, {
			Title = localization:getText("General", "TitleName"),
			MaxHeight = 60,
			LayoutOrder = layoutIndex:getNextOrder(),
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Active = true,
				MaxLength = MAX_NAME_LENGTH,
				Text = "",
				TextSize = theme.fontStyle.Normal.TextSize,
			}),
		}),

        Description = Roact.createElement(TitledFrame, {
			Title = localization:getText("General", "TitleDescription"),
			MaxHeight = 150,
			LayoutOrder = layoutIndex:getNextOrder(),
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Height = 130,
				Multiline = true,

				Active = true,
				MaxLength = MAX_DESCRIPTION_LENGTH,
				Text = "",
				TextSize = theme.fontStyle.Normal.TextSize
			}),
        }),

        -- TODO: Rename GameIconWidget to IconWidget
        Icon = Roact.createElement(GameIconWidget, {
			Title = localization:getText("Monetization", "ProductIcon"),
			LayoutOrder = layoutIndex:getNextOrder(),
			TutorialEnabled = true,
        }),

        Price = Roact.createElement(TitledFrame, {
			Title = localization:getText("Monetization", "PriceTitle"),
			MaxHeight = 150,
			LayoutOrder = layoutIndex:getNextOrder(),
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
            --TODO: Change price entry in RobuxFeeBase and this to be a shared component
            PriceFrame = Roact.createElement(RoundFrame, {
                Size = UDim2.new(0, theme.robuxFeeBase.priceField.width, 0, theme.rowHeight),

                BorderSizePixel = 0,
                BackgroundColor3 = theme.textBox.background,

                LayoutOrder = 1,
            },{
                HorizontalLayout = Roact.createElement("UIListLayout",{
                    FillDirection = Enum.FillDirection.Horizontal,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    VerticalAlignment = Enum.VerticalAlignment.Center,
                }),

                RobuxIcon = Roact.createElement("ImageLabel", {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Size = UDim2.new(0, theme.robuxFeeBase.icon.size, 0, theme.robuxFeeBase.icon.size),

                    Image = theme.robuxFeeBase.icon.image,

                    BackgroundTransparency = 1,
                }),

                PriceTextBox = Roact.createElement(TextEntry, Cryo.Dictionary.join(theme.fontStyle.Normal, {
                    Size = UDim2.new(1, -theme.robuxFeeBase.icon.size, 1, 0),
                    Visible = true,

                    Text = 1000,
                    PlaceholderText = "",
                    Enabled = true,

                    SetText = function()
                    end,

                    FocusChanged = function()
                    end,

                    HoverChanged = function()
                    end,
                }))
            }),
        }),
    }
end

--Uses props to display current settings values
local function displayContents(page, localization, theme)
    local props = page.props
    return displayEditDevProductsPage(props, localization)
end

local SettingsPage = createSettingsPage(PageName, loadValuesToProps, dispatchChanges)

local function Monetization(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return Monetization