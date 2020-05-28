local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local Framework = Plugin.Framework

local Header = require(Plugin.Src.Components.Header)
local GameIconWidget = require(Plugin.Src.Components.GameIcon.GameIconWidget)
local PaidAccess = require(Plugin.Src.Components.PaidAccess)
local VIPServers = require(Plugin.Src.Components.VIPServers)
local DevProducts = require(Plugin.Src.Components.DevProducts)

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
local GetTextSize = UILibrary.Util.GetTextSize

local layoutIndex = LayoutOrderIterator.new()

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local DiscardError = require(Plugin.Src.Actions.DiscardError)
local SetEditDevProductId = require(Plugin.Src.Actions.SetEditDevProductId)

local FileUtils = require(Plugin.Src.Util.FileUtils)

local PageName = "Monetization"

local MAX_NAME_LENGTH = 50
local MAX_DESCRIPTION_LENGTH = 1000
local PAID_ACCESS_MIN_PRICE = 25
local PAID_ACCESS_MAX_PRICE = 1000
local VIP_SERVERS_MIN_PRICE = 10
local DEV_PRODUCTS_MIN_PRICE = 1

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.DEPRECATED_createSettingsPage)

local priceErrors = {
    BelowMin = "ErrorPriceBelowMin",
    AboveMax = "ErrorPriceAboveMax",
    Invalid = "ErrorPriceInvalid",
}

local nameErrors = {
    Empty = "ErrorNameEmpty",
}

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
    local errors = state.Settings.Errors
    local loadedProps = {
        GameName = getValue("name"),

        TaxRate = getValue("taxRate"),
        MinimumFee = getValue("minimumFee"),

        PaidAccess = {
            enabled = getValue("isForSale"),
            price = getValue("price"),
            initialPrice = state.Settings.Current.price,
        },
        VIPServers = {
            isEnabled = getValue("vipServersIsEnabled"),
            price = getValue("vipServersPrice"),
            initialPrice = state.Settings.Current.vipServersPrice,
			activeServersCount = getValue("vipServersActiveServersCount"),
			activeSubscriptionsCount = getValue("vipServersActiveSubscriptionsCount"),
        },

        UnsavedDevProducts = getValue("unsavedDevProducts"),
        DevProducts = getValue("developerProducts"),

        EditDevProductId = state.EditAsset.editDevProductId,

        AccessPriceError = errors.monetizationPrice,
        DevProductPriceError = errors.devProductPrice,
        DevProductNameError = errors.devProductName,

    }

    return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
    local dispatchFuncs = {
        PaidAccessToggled = function(button, initialPrice)
            -- on toggle, reset the price to what it was before or PAID_ACCESS_MIN_PRICE, whichever is larger.
            -- on toggle off, this will reset any changes to price that have been made,
            -- on toggle on for the first time, this will set the price to 25 (lowest valid price) as default.
            dispatch(AddChange("price", initialPrice))
            dispatch(DiscardError("monetizationPrice"))

            dispatch(AddChange("isForSale", button.Id))
        end,

        PaidAccessPriceChanged = function(text)
            local numberValue = tonumber(text)
            if not numberValue then
                dispatch(AddErrors({monetizationPrice = "Invalid"}))
            elseif numberValue < PAID_ACCESS_MIN_PRICE then
                dispatch(AddErrors({monetizationPrice = "BelowMin"}))
            elseif numberValue > PAID_ACCESS_MAX_PRICE then
                dispatch(AddErrors({monetizationPrice = "AboveMax"}))
            else
                dispatch(AddChange("price", text))
                dispatch(DiscardError("monetizationPrice"))
            end
        end,

        VIPServersToggled = function(button, initialPrice)
            -- on toggle, reset the price to what it was before or VIP_SERVERS_MIN_PRICE, whichever is larger.
            -- on toggle off, this will reset any changes to price that have been made,
            -- on toggle on for the first time, this will set the price to 10 (lowest valid price) as default.
            dispatch(AddChange("vipServersPrice", initialPrice))
            dispatch(DiscardError("monetizationPrice"))
            dispatch(AddChange("vipServersIsEnabled", button.Id))
        end,

        VIPServersPriceChanged = function(text)
            local numberValue = tonumber(text)
            if not numberValue then
                dispatch(AddErrors({monetizationPrice = "Invalid"}))
            elseif numberValue < VIP_SERVERS_MIN_PRICE then
                dispatch(AddErrors({monetizationPrice = "BelowMin"}))
            else
                dispatch(AddChange("vipServersPrice", text))
                dispatch(DiscardError("monetizationPrice"))
            end
        end,

        SetEditDevProductId = function(devProductId)
            dispatch(SetEditDevProductId(devProductId))
        end,

        SetUnsavedDevProducts = function(unsavedDevProducts, errorKey, errorValue)
            if errorValue then
                dispatch(AddErrors({ errorKey = errorValue }))
            elseif errorKey then
                dispatch(DiscardError(errorKey))
            end

            dispatch(AddChange("unsavedDevProducts", unsavedDevProducts))
        end,

        SetDevProducts = function(devProducts, errorKey, errorValue)
            if errorValue then
                dispatch(AddErrors({ errorKey = errorValue }))
            elseif errorKey then
                dispatch(DiscardError(errorKey))
            end

            dispatch(AddChange("developerProducts", devProducts))
        end,
    }
    return dispatchFuncs
end

local function convertDeveloperProductsForTable(devProducts, localization)
    local result = {}
    local numberOfDevProducts = 1

    for index, product in pairs(devProducts) do
        -- Newly created Dev Products will not have an id field, but saved ones will.
        local saved = product.id ~= nil
        local displayId = saved and product.id or localization:getText("Monetization", "UnsavedDevProduct")
        local mapId = saved and product.id or numberOfDevProducts

        result[mapId] = {
            index = index,
            row = {
                displayId,
                product.name,
                product.price,
            },
        }
        numberOfDevProducts = numberOfDevProducts + 1
    end

    return result, numberOfDevProducts
end

local function combineUnsavedAndSavedDevProducts(unsaved, saved)
    local keys = {}
    for k, _ in pairs(saved) do table.insert(keys, k) end
    table.sort(keys)

    local result = {}

    local appendIndex = 2
    for _,product in pairs(unsaved) do
        table.insert(result, appendIndex, product)
        appendIndex = appendIndex + 1
    end

    for _, key in ipairs(keys) do
        table.insert(result, appendIndex, saved[key])
        appendIndex = appendIndex + 1
    end

    return result
end

local function getPriceErrorText(error, vipServersEnabled, paidAccessEnabled, localization)
    if not error then return nil end

    local priceError
    if priceErrors[error] then
        local errorValue
        if error == "BelowMin" then
            if vipServersEnabled then
                errorValue = string.format("%.f", VIP_SERVERS_MIN_PRICE)
            elseif paidAccessEnabled then
                errorValue = string.format("%.f", PAID_ACCESS_MIN_PRICE)
            else
                errorValue = string.format("%.f", DEV_PRODUCTS_MIN_PRICE)
            end
        elseif error == "AboveMax" and paidAccessEnabled then
            errorValue = string.format("%.f", PAID_ACCESS_MAX_PRICE)
        end
        priceError = localization:getText("Errors", priceErrors[error], {errorValue})
    end

    return priceError
end

local function getNameErrorText(error, localization)
    if not error then return nil end

    local nameError
    if nameErrors[error] then
        if error == "Empty" then
            nameError = localization:getText("General", nameErrors[error])
        end
    end

    return nameError
end

--Uses props to display current settings values
local function displayMonetizationPage(props, localization)
    local gameName = props.GameName

    local taxRate = props.TaxRate
    local minimumFee = props.MinimumFee

    local paidAccessEnabled = props.PaidAccess.enabled
    local paidAccessPrice = props.PaidAccess.price

    local vipServers = props.VIPServers

    local unsavedDevProducts = props.UnsavedDevProducts and props.UnsavedDevProducts or {}
    local devProducts = props.DevProducts and props.DevProducts or {}

    local allDevProducts = combineUnsavedAndSavedDevProducts(unsavedDevProducts, devProducts)

    local devProductsForTable, numberOfDevProducts = convertDeveloperProductsForTable(allDevProducts, localization)

    local paidAccessToggled = props.PaidAccessToggled
    local paidAccessPriceChanged = props.PaidAccessPriceChanged

    local vipServersToggled = props.VIPServersToggled
    local vipServersPriceChanged = props.VIPServersPriceChanged

    local setUnsavedDevProducts = props.SetUnsavedDevProducts
    local setEditDevProductId = props.SetEditDevProductId

    local priceError = getPriceErrorText(props.AccessPriceError, vipServers.isEnabled, paidAccessEnabled, localization)

    if not taxRate then
        paidAccessEnabled = nil
        vipServers.isEnabled = nil
    end

    return {
        Header = Roact.createElement(Header, {
            Title = localization:getText("General", "Category"..PageName),
			LayoutOrder = layoutIndex:getNextOrder(),
        }),

        PaidAccess = Roact.createElement(PaidAccess, {
            Price = paidAccessPrice,
            TaxRate = taxRate,
            MinimumFee = minimumFee,

            PriceError = paidAccessEnabled and priceError or nil,

            LayoutOrder = layoutIndex:getNextOrder(),
            Enabled = vipServers.isEnabled == false,
            Selected = paidAccessEnabled,

            OnPaidAccessToggle = function(button)
                local initialPrice = math.max(props.PaidAccess.initialPrice, PAID_ACCESS_MIN_PRICE)
                return paidAccessToggled(button, initialPrice)
            end,
            OnPaidAccessPriceChanged = paidAccessPriceChanged,
        }),

        VIPServers = Roact.createElement(VIPServers, {
            VIPServersData = vipServers,
            TaxRate = taxRate,
            MinimumFee = minimumFee,

            PriceError = vipServers.isEnabled and priceError or nil,

            LayoutOrder = layoutIndex:getNextOrder(),
            Enabled = paidAccessEnabled == false,

            OnVipServersToggled = function(button)
                local initialPrice = math.max(props.VIPServers.initialPrice, VIP_SERVERS_MIN_PRICE)
                return vipServersToggled(button, initialPrice)
            end,
            OnVipServersPriceChanged = vipServersPriceChanged,
        }),

		DevProducts = Roact.createElement(DevProducts, {
            ProductList = devProductsForTable,
            ShowTable = numberOfDevProducts ~= 0,

            LayoutOrder = layoutIndex:getNextOrder(),

            CreateNewDevProduct = function()
                local nextNumber = string.format("%d", numberOfDevProducts)
                table.insert(unsavedDevProducts, 1, {
                    name = localization:getText("Monetization", "UnsavedDevProductName", {gameName, nextNumber}),
                    price = 1,
                    description = "",
                    iconImageAssetId = "",
                })
                setUnsavedDevProducts(unsavedDevProducts, nil, nil)
            end,
            OnEditDevProductClicked = setEditDevProductId
		})
    }
end

local function displayEditDevProductsPage(props, localization)
	local theme = props.Theme:get("Plugin")

	local layoutIndex = LayoutOrderIterator.new()

    local productId = props.EditDevProductId

    local unsavedDevProducts = props.UnsavedDevProducts and props.UnsavedDevProducts or {}
    local devProducts = props.DevProducts and props.DevProducts or {}
    local allDevProducts = Cryo.Dictionary.join(unsavedDevProducts, devProducts)

    local currentDevProduct = allDevProducts[productId]

    local productTitle = currentDevProduct.name
    local productDescripton = currentDevProduct.description and currentDevProduct.description or ""
    local productIcon = currentDevProduct.iconImageAssetId and currentDevProduct.iconImageAssetId or ""
    local productPrice = currentDevProduct.price

    local setEditDevProductId = props.SetEditDevProductId
    local setDevProducts = props.SetDevProducts

    local dpPriceError = getPriceErrorText(props.DevProductPriceError, nil, nil, localization)
    local dpPriceErrorSize
    if dpPriceError then
        dpPriceErrorSize = GetTextSize(dpPriceError, theme.fontStyle.SmallError.TextSize, theme.fontStyle.SmallError.Font)
    else
        dpPriceErrorSize = {}
    end

    local dpNameError = getNameErrorText(props.DevProductNameError, localization)

    local setUnsavedDevProducts = props.SetUnsavedDevProducts

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
                    setEditDevProductId(nil)
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
				Text = productTitle,
                TextSize = theme.fontStyle.Normal.TextSize,

                ErrorMessage = dpNameError,

                SetText = function(name)
                    local nameLength = utf8.len(name)

                    local errorKey = "devProductName"
                    local errorValue
                    if nameLength == 0 then
                        errorValue = "Empty"
                    end

                    currentDevProduct = Cryo.Dictionary.join(currentDevProduct, {
                        name = tostring(name),
                    })

                    if currentDevProduct.id then
                        devProducts = Cryo.Dictionary.join(devProducts, {
                            [productId] = currentDevProduct
                        })
                        setDevProducts(devProducts, errorKey, errorValue)
                    else
                        unsavedDevProducts = Cryo.Dictionary.join(unsavedDevProducts, {
                            [productId] = currentDevProduct
                        })
                        setUnsavedDevProducts(unsavedDevProducts, errorKey, errorValue)
                    end
                end
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
				Text = productDescripton,
                TextSize = theme.fontStyle.Normal.TextSize,

                SetText = function(description)
                    currentDevProduct = Cryo.Dictionary.join(currentDevProduct, {
                        description = tostring(description),
                    })

                    if currentDevProduct.id then
                        devProducts = Cryo.Dictionary.join(devProducts, {
                            [productId] = currentDevProduct
                        })
                        setDevProducts(devProducts)
                    else
                        unsavedDevProducts = Cryo.Dictionary.join(unsavedDevProducts, {
                            [productId] = currentDevProduct
                        })
                        setUnsavedDevProducts(unsavedDevProducts)
                    end
                end
			}),
        }),

        -- TODO: Rename GameIconWidget to IconWidget
        Icon = Roact.createElement(GameIconWidget, {
			Title = localization:getText("Monetization", "ProductIcon"),
			LayoutOrder = layoutIndex:getNextOrder(),
            TutorialEnabled = true,
            Icon = productIcon,
            AddIcon = function()
                local icon = FileUtils.PromptForGameIcon()
                if icon then
                    currentDevProduct = Cryo.Dictionary.join(currentDevProduct, {
                        iconImageAssetId = icon,
                    })

                    if currentDevProduct.id then
                        devProducts = Cryo.Dictionary.join(devProducts, {
                            [productId] = currentDevProduct
                        })
                        setDevProducts(devProducts)
                    else
                        unsavedDevProducts = Cryo.Dictionary.join(unsavedDevProducts, {
                            [productId] = currentDevProduct
                        })
                        setUnsavedDevProducts(unsavedDevProducts)
                    end
                end
            end,
        }),

        Price = Roact.createElement(TitledFrame, {
			Title = localization:getText("Monetization", "PriceTitle"),
			MaxHeight = 150,
			LayoutOrder = layoutIndex:getNextOrder(),
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
            VerticalLayout = Roact.createElement("UIListLayout",{
                SortOrder = Enum.SortOrder.LayoutOrder,
                FillDirection = Enum.FillDirection.Vertical,
            }),

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

                    Text = productPrice,
                    PlaceholderText = "",
                    Enabled = true,

                    SetText = function(price)
                        local numberValue = tonumber(price)

                        local errorKey = "devProductPrice"
                        local errorValue
                        if not numberValue then
                            errorValue = "Invalid"
                        elseif numberValue < DEV_PRODUCTS_MIN_PRICE then
                            errorValue = "BelowMin"
                        end

                        currentDevProduct = Cryo.Dictionary.join(currentDevProduct, {
                            price = tostring(price)
                        })

                        if currentDevProduct.id then
                            devProducts = Cryo.Dictionary.join(devProducts, {
                                [productId] = currentDevProduct
                            })
                            setDevProducts(devProducts, errorKey, errorValue)
                        else
                            unsavedDevProducts = Cryo.Dictionary.join(unsavedDevProducts, {
                                [productId] = currentDevProduct
                            })
                            setUnsavedDevProducts(unsavedDevProducts, errorKey, errorValue)
                        end
                    end,

                    FocusChanged = function()
                    end,

                    HoverChanged = function()
                    end,
                }))
            }),

            ErrorMessage = dpPriceError and Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.SmallError, {
                Size = UDim2.new(0, dpPriceErrorSize.X, 0, dpPriceErrorSize.Y),

                BackgroundTransparency = 1,

                Text = dpPriceError,

                TextYAlignment = Enum.TextYAlignment.Center,
                TextXAlignment = Enum.TextXAlignment.Left,

                TextWrapped = true,

                LayoutOrder = 2,
            }))
        }),
    }
end

--Uses props to display current settings values
local function displayContents(page, localization, theme)
    local props = page.props

    local editDevProductId = props.EditDevProductId

    if editDevProductId == nil then
	    return displayMonetizationPage(props, localization)
    elseif type(editDevProductId) == "number" then
        return displayEditDevProductsPage(props, localization)
    end
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