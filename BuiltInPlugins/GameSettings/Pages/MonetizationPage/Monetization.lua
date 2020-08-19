local Page = script.Parent
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Cryo = require(Plugin.Cryo)
local Framework = Plugin.Framework
local ContextServices = require(Framework.ContextServices)

local Header = require(Plugin.Src.Components.Header)
local PaidAccess = require(Page.Components.PaidAccess)
local VIPServers = require(Page.Components.VIPServers)
local DevProducts = require(Page.Components.DevProducts)
local SettingsPage = require(Plugin.Src.Components.SettingsPages.SettingsPage)

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

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local DiscardError = require(Plugin.Src.Actions.DiscardError)
local SetEditDevProductId = require(Plugin.Src.Actions.SetEditDevProductId)

local LoadDeveloperProducts = require(Page.Thunks.LoadDeveloperProducts)

local Monetization = Roact.PureComponent:extend(script.name)

local LOCALIZATION_ID = "Monetization"

--[[
    TODO 7/16/2020 Fetch these values from the BE so we don't need to keep syncing with BE whenever they change
]]
local MAX_NAME_LENGTH = 50
local PAID_ACCESS_MIN_PRICE = 25
local PAID_ACCESS_MAX_PRICE = 1000
local VIP_SERVERS_MIN_PRICE = 10
local DEV_PRODUCTS_MIN_PRICE = 1

local FFlagSupportFreePrivateServers = game:GetFastFlag("SupportFreePrivateServers")
local FFlagEnableDevProductsInGameSettings = game:GetFastFlag("EnableDevProductsInGameSettings")
local FFlagFixVIPServerShutdownWarningText = game:GetFastFlag("FixVIPServerShutdownWarningText")
local FFlagStudioFixGameManagementIndexNil = game:getFastFlag("StudioFixGameManagementIndexNil")

local priceErrors = {
    BelowMin = "ErrorPriceBelowMin",
    AboveMax = "ErrorPriceAboveMax",
    Invalid = "ErrorPriceInvalid",
}

local nameErrors = {
    Empty = "ErrorNameEmpty",
}

local nextDevProductName = ""

local function loadSettings(store, contextItems)
    local state = store:getState()
    local gameId = state.Metadata.gameId
    local monetizationController = contextItems.monetizationController

    return {
        function(loadedSettings)
            local taxRate = monetizationController:getTaxRate()

            loadedSettings["taxRate"] = taxRate
        end,

        function(loadedSettings)
            local minimumFee = monetizationController:getMinimumFee()
            loadedSettings["minimumFee"] = minimumFee
        end,

        function(loadedSettings)
            local isForSale = monetizationController:getPaidAccessEnabled(gameId)
            loadedSettings["isForSale"] = isForSale
        end,

        function(loadedSettings)
            local price = monetizationController:getPaidAccessPrice(gameId)
            loadedSettings["price"] = price
        end,

        function(loadedSettings)
            local vipServersIsEnabled = monetizationController:getVIPServersEnabled(gameId)
            loadedSettings["vipServersIsEnabled"] = vipServersIsEnabled
        end,

        function(loadedSettings)
            local vipServersPrice = monetizationController:getVIPServersPrice(gameId)
            loadedSettings["vipServersPrice"] = vipServersPrice and vipServersPrice or 0
        end,

        function(loadedSettings)
            local vipServersActiveServersCount = monetizationController:getVIPServersActiveServersCount(gameId)
            loadedSettings["vipServersActiveServersCount"] = vipServersActiveServersCount
        end,

        function(loadedSettings)
            local vipServersActiveSubscriptionsCount = monetizationController:getVIPServersActiveSubscriptionsCount(gameId)
            loadedSettings["vipServersActiveSubscriptionsCount"] = vipServersActiveSubscriptionsCount
        end,

        function(loadedSettings)
            local developerProducts, cursor = monetizationController:getDeveloperProducts(gameId)

            loadedSettings["developerProducts"] = developerProducts
            loadedSettings["devProductsCursor"] = cursor
        end
    }
end

local function saveSettings(store, contextItems)
    local state = store:getState()
    local gameId = state.Metadata.gameId
    local monetizationController = contextItems.monetizationController
    local unsavedDevProducts = state.Settings.Changed.unsavedDevProducts
    local editedDevProducts = state.Settings.Changed.editedDeveloperProducts

    local saveFunctions = {
        function()
            local changed = state.Settings.Changed.isForSale

            if changed ~= nil then
                monetizationController:setPaidAccessEnabled(gameId, changed)
            end
        end,

        function()
            local changed = state.Settings.Changed.price

            if changed ~= nil then
                monetizationController:setPaidAccessPrice(gameId, changed)
            end
        end,

        function()
            local changed = state.Settings.Changed.vipServersIsEnabled

            if changed ~= nil then
                monetizationController:setVIPServersEnabled(gameId, changed)
            end
        end,

        function()
            local changed = state.Settings.Changed.vipServersPrice

            if changed ~= nil then
                monetizationController:setVIPServersPrice(gameId, changed)
            end
        end,
    }

    if unsavedDevProducts ~= nil then
        for _, product in pairs(unsavedDevProducts) do
            table.insert(saveFunctions, function()
                monetizationController:createDevProduct(gameId, product)
            end)
        end
    end


    if editedDevProducts ~= nil then
        for _,product in pairs(editedDevProducts) do
            table.insert(saveFunctions, function()
                monetizationController:updateDevProduct(gameId, product)
            end)
        end
    end

    return saveFunctions
end

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
    local errors = state.Settings.Errors

    local changed = false
    local vipServersShutdown = state.Settings.Changed.vipServersIsEnabled == false
    -- Changed for the sake of warning about canceling subscriptions should only be 
    if state.Settings.Current.vipServersIsEnabled then
        if FFlagFixVIPServerShutdownWarningText then
            if state.Settings.Changed.vipServersPrice ~= nil then
                changed = true
            end
        else
            if state.Settings.Changed.vipServersPrice ~= nil or state.Settings.Changed.vipServersIsEnabled == false then
                changed = true
            end
        end
    end

    local loadedProps = {
        TaxRate = getValue("taxRate"),
        MinimumFee = getValue("minimumFee"),

        PaidAccess = {
            enabled = getValue("isForSale"),
            price = getValue("price"),
            initialPrice = state.Settings.Current.price and state.Settings.Current.price or 0,
        },
        VIPServers = {
            isEnabled = getValue("vipServersIsEnabled"),
            price = getValue("vipServersPrice"),
            initialPrice = state.Settings.Current.vipServersPrice and state.Settings.Current.vipServersPrice or 0,
			activeServersCount = getValue("vipServersActiveServersCount"),
            activeSubscriptionsCount = getValue("vipServersActiveSubscriptionsCount"),
            changed = changed,
            willShutdown = FFlagFixVIPServerShutdownWarningText and vipServersShutdown or nil,
        },

        UnsavedDevProducts = getValue("unsavedDevProducts"),
        DevProducts = state.Settings.Current.developerProducts,
        EditedDevProducts = state.Settings.Changed.editedDeveloperProducts,

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
        PaidAccessToggled = function(value, initialPrice)
            -- on toggle, reset the price to what it was before or PAID_ACCESS_MIN_PRICE, whichever is larger.
            -- on toggle off, this will reset any changes to price that have been made,
            -- on toggle on for the first time, this will set the price to 25 (lowest valid price) as default.
            dispatch(AddChange("price", initialPrice))
            dispatch(DiscardError("monetizationPrice"))
            dispatch(AddChange("isForSale", value))
        end,

        PaidAccessPriceChanged = function(text)
            local numberValue = tonumber(text)

            dispatch(AddChange("price", numberValue))
            dispatch(DiscardError("monetizationPrice"))

            if not numberValue then
                dispatch(AddErrors({monetizationPrice = "Invalid"}))
            elseif numberValue < PAID_ACCESS_MIN_PRICE then
                dispatch(AddErrors({monetizationPrice = "BelowMin"}))
            elseif numberValue > PAID_ACCESS_MAX_PRICE then
                dispatch(AddErrors({monetizationPrice = "AboveMax"}))
            end
        end,

        VIPServersToggled = function(value, initialPrice)
            -- on toggle, reset the price to what it was before or VIP_SERVERS_MIN_PRICE, whichever is larger.
            -- on toggle off, this will reset any changes to price that have been made,
            -- on toggle on for the first time, this will set the price to 10 (lowest valid price) as default.
            dispatch(AddChange("vipServersPrice", initialPrice))
            dispatch(DiscardError("monetizationPrice"))
            dispatch(AddChange("vipServersIsEnabled", value))
        end,

        VIPServersPriceChanged = function(text)
            local numberValue = tonumber(text)

            dispatch(AddChange("vipServersPrice", numberValue))
            dispatch(DiscardError("monetizationPrice"))

            if FFlagSupportFreePrivateServers then
                if not numberValue then
                    dispatch(AddErrors({monetizationPrice = "Invalid"}))
                elseif numberValue ~= 0 and numberValue < VIP_SERVERS_MIN_PRICE then
                    dispatch(AddErrors({monetizationPrice = "BelowMin"}))
                end
            else
                if not numberValue then
                    dispatch(AddErrors({monetizationPrice = "Invalid"}))
                elseif numberValue < VIP_SERVERS_MIN_PRICE then
                    dispatch(AddErrors({monetizationPrice = "BelowMin"}))
                end
            end
        end,

        SetEditDevProductId = function(devProductId)
            dispatch(SetEditDevProductId(devProductId))
        end,

        SetUnsavedDevProducts = function(unsavedDevProducts, errorKey, errorValue)
            if errorValue then
                dispatch(AddErrors({ [errorKey] = errorValue }))
            elseif errorKey then
                if type(errorKey) == "table" then
                    for _, key in ipairs(errorKey) do
                        dispatch(DiscardError(key))
                    end
                else
                    dispatch(DiscardError(errorKey))
                end
            end

            dispatch(AddChange("unsavedDevProducts", unsavedDevProducts))
        end,

        SetDevProducts = function(devProducts, errorKey, errorValue)
            if errorValue then
                dispatch(AddErrors({ [errorKey] = errorValue }))
            elseif errorKey then
                if type(errorKey) == "table" then
                    for _, key in ipairs(errorKey) do
                        dispatch(DiscardError(key))
                    end
                else
                    dispatch(DiscardError(errorKey))
                end
            end
            dispatch(AddChange("editedDeveloperProducts", devProducts))
        end,

        LoadMoreDevProducts = function()
            dispatch(LoadDeveloperProducts())
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

    -- Subtract 1 because of indicies start at 1 and this is later used to show/hide the table based on if the table is empty.
    return result, numberOfDevProducts - 1
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

local function sanitizeCurrentDevProduct(devProduct, initialName)
    local errorKeys = {}
    local name = devProduct.name
    local nameLength = utf8.len(name)
    local price = tonumber(devProduct.price)

    if nameLength < 1 or nameLength > MAX_NAME_LENGTH then
        devProduct = Cryo.Dictionary.join(devProduct, {
            name = initialName
        })
        table.insert(errorKeys, "devProductName")
    end

    if type(price) ~= "number" or price < 1 then
        devProduct = Cryo.Dictionary.join(devProduct, {
            price = 1,
        })
        table.insert(errorKeys, "devProductPrice")
    end

    return devProduct, errorKeys
end

--Uses props to display current settings values
local function displayMonetizationPage(props)
    local localization = props.Localization
    local taxRate = props.TaxRate
    local minimumFee = props.MinimumFee

    local paidAccessEnabled = props.PaidAccess.enabled
    local paidAccessPrice = props.PaidAccess.price

    local vipServers = props.VIPServers

    local unsavedDevProducts = props.UnsavedDevProducts and props.UnsavedDevProducts or {}
    local devProducts = props.DevProducts and props.DevProducts or {}
    local editedDevProducts = props.EditedDevProducts and props.EditedDevProducts or {}

    devProducts = Cryo.Dictionary.join(devProducts, editedDevProducts)

    local allDevProducts = combineUnsavedAndSavedDevProducts(unsavedDevProducts, devProducts)

    local devProductsForTable, numberOfDevProducts = convertDeveloperProductsForTable(allDevProducts, localization)

    local paidAccessToggled = props.PaidAccessToggled
    local paidAccessPriceChanged = props.PaidAccessPriceChanged

    local vipServersToggled = props.VIPServersToggled
    local vipServersPriceChanged = props.VIPServersPriceChanged

    local setUnsavedDevProducts = props.SetUnsavedDevProducts
    local setEditDevProductId = props.SetEditDevProductId
    local loadMoreDevProducts = props.LoadMoreDevProducts

    local priceError = getPriceErrorText(props.AccessPriceError, vipServers.isEnabled, paidAccessEnabled, localization)

    local layoutIndex = LayoutOrderIterator.new()

    if not taxRate then
        paidAccessEnabled = nil
        vipServers.isEnabled = nil
    end

    return {
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

		DevProducts = FFlagEnableDevProductsInGameSettings and Roact.createElement(DevProducts, {
            ProductList = devProductsForTable,
            ShowTable = numberOfDevProducts ~= 0,

            LayoutOrder = layoutIndex:getNextOrder(),

            CreateNewDevProduct = function()
                local nextNumber = string.format("%d", numberOfDevProducts + 1)
                nextDevProductName = localization:getText("Monetization", "UnsavedDevProductName1", {nextNumber})
                table.insert(unsavedDevProducts, 1, {
                    name = nextDevProductName,
                    price = 1,
                    description = "",
                    iconImageAssetId = "None",
                })
                setUnsavedDevProducts(unsavedDevProducts, nil, nil)
            end,
            OnLoadMoreDevProducts = loadMoreDevProducts,
            OnEditDevProductClicked = setEditDevProductId
		})
    }
end

local function displayEditDevProductsPage(props)
    local theme = props.Theme:get("Plugin")
    local localization = props.Localization

	local layoutIndex = LayoutOrderIterator.new()

    local productId = props.EditDevProductId

    local unsavedDevProducts = props.UnsavedDevProducts and props.UnsavedDevProducts or {}
    local devProducts = props.DevProducts and props.DevProducts or {}

    local initialName
    if devProducts[productId] then
        initialName = devProducts[productId].name
    elseif unsavedDevProducts[productId] then
        initialName = nextDevProductName
    end

    local editedDevProducts = props.EditedDevProducts and props.EditedDevProducts or {}
    devProducts = Cryo.Dictionary.join(devProducts, editedDevProducts)

    local allDevProducts = Cryo.Dictionary.join(unsavedDevProducts, devProducts)
    local currentDevProduct
    if FFlagStudioFixGameManagementIndexNil then
        currentDevProduct = allDevProducts[productId] or {}
    else
        currentDevProduct = allDevProducts[productId]
    end

    if not initialName then initialName = currentDevProduct.name end

    local productTitle = currentDevProduct.name
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
                    local cleanDevProduct, errorKeys = sanitizeCurrentDevProduct(currentDevProduct, initialName)

                    if cleanDevProduct.id then
                        editedDevProducts = Cryo.Dictionary.join(editedDevProducts, {
                            [productId] = cleanDevProduct
                        })
                        setDevProducts(editedDevProducts, errorKeys)
                    else
                        unsavedDevProducts = Cryo.Dictionary.join(unsavedDevProducts, {
                            [productId] = cleanDevProduct
                        })
                        setUnsavedDevProducts(unsavedDevProducts, errorKeys)
                    end

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
                        editedDevProducts = Cryo.Dictionary.join(editedDevProducts, {
                            [productId] = currentDevProduct
                        })
                        setDevProducts(editedDevProducts, errorKey, errorValue)
                    else
                        unsavedDevProducts = Cryo.Dictionary.join(unsavedDevProducts, {
                            [productId] = currentDevProduct
                        })
                        setUnsavedDevProducts(unsavedDevProducts, errorKey, errorValue)
                    end
                end
			}),
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

                BorderColor3 = theme.textBox.borderDefault,
                BorderSizePixel = 1,
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

                    ImageColor3 = theme.robuxFeeBase.icon.imageColor,
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
                            editedDevProducts = Cryo.Dictionary.join(editedDevProducts, {
                                [productId] = currentDevProduct
                            })
                            setDevProducts(editedDevProducts, errorKey, errorValue)
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

function Monetization:render()
    local props = self.props
    local localization = props.Localization

    local editDevProductId = props.EditDevProductId

    local createChildren
    if editDevProductId == nil then
        createChildren = function()
            return displayMonetizationPage(props)
        end
    elseif type(editDevProductId) == "number" then
        createChildren = function()
            return displayEditDevProductsPage(props)
        end
    end

    return Roact.createElement(SettingsPage, {
		SettingsLoadJobs = loadSettings,
		SettingsSaveJobs = saveSettings,
		Title = localization:getText("General", "Category"..LOCALIZATION_ID),
		PageId = script.Name,
        CreateChildren = createChildren,
        ShowHeader = editDevProductId == 0,
	})
end

ContextServices.mapToProps(Monetization, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local settingFromState = require(Plugin.Src.Networking.settingFromState)
Monetization = RoactRodux.connect(
	function(state, props)
		if not state then return end

		local getValue = function(propName)
			return settingFromState(state.Settings, propName)
		end

		return loadValuesToProps(getValue, state)
	end,

	function(dispatch)
		local setValue = function(propName)
			return function(value)
				dispatch(AddChange(propName, value))
			end
		end

		return dispatchChanges(setValue, dispatch)
	end
)(Monetization)

Monetization.LocalizationId = LOCALIZATION_ID

return Monetization