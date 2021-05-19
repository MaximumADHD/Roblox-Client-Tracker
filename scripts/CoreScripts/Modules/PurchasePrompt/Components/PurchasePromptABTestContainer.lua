local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local RequestType = require(Root.Enums.RequestType)
local PromptState = require(Root.Enums.PromptState)
local connectToStore = require(Root.connectToStore)

local Constants = require(Root.Misc.Constants)

local ProductPurchaseContainer = require(script.Parent.ProductPurchase.ProductPurchaseContainer)
local PurchasePrompt = require(script.Parent.PurchasePrompt.PurchasePrompt)

local GetFFlagProductPurchaseUpsell = require(Root.Flags.GetFFlagProductPurchaseUpsell)
local GetFFlagProductPurchaseUpsellABTest = require(Root.Flags.GetFFlagProductPurchaseUpsellABTest)
local GetFFlagProductPurchase = require(Root.Flags.GetFFlagProductPurchase)
local GetFFlagProductPurchaseABTest = require(Root.Flags.GetFFlagProductPurchaseABTest)

local PurchasePromptABTestContainer = Roact.Component:extend(script.Name)

local function isRelevantRequestType(requestType)
    return requestType == RequestType.Asset
        or requestType == RequestType.Bundle
        or requestType == RequestType.GamePass
        or requestType == RequestType.Product
        or requestType == RequestType.Subscription
end

function PurchasePromptABTestContainer:init()
    self.state = {
        isNewUI = false,
    }
end

function PurchasePromptABTestContainer:didUpdate(prevProps, prevState)
    if prevProps.promptState ~= self.props.promptState then
        if self.props.promptState == PromptState.None then
            self:setState({
                isNewUI = false,
            })
        end

        if not isRelevantRequestType(self.props.requestType) then
            return
        end

        if prevProps.promptState == PromptState.None then
            if self.props.promptState == PromptState.RobuxUpsell then
                if GetFFlagProductPurchaseUpsell() then
                    self:setState({
                        isNewUI = true,
                    })
                elseif GetFFlagProductPurchaseUpsellABTest() then
                    if self.props.abVars[Constants.ABTests.PRODUCT_PURCHASE_UPSELL] == "Variation1"
                            or self.props.abVars[Constants.ABTests.PRODUCT_PURCHASE_UPSELL_UWP] == "Variation1"
                            or self.props.abVars[Constants.ABTests.PRODUCT_PURCHASE_UPSELL_AMAZON] == "Variation1"
                            or self.props.abVars[Constants.ABTests.PRODUCT_PURCHASE_UPSELL_XBOX] == "Variation1" then
                        self:setState({
                            isNewUI = true,
                        })
                    end
                end
            elseif self.props.promptState == PromptState.PromptPurchase then
                if GetFFlagProductPurchase() then
                    self:setState({
                        isNewUI = true,
                    })
                elseif GetFFlagProductPurchaseABTest() then
                    if self.props.abVars[Constants.ABTests.PRODUCT_PURCHASE] == "Variation1" then
                        self:setState({
                            isNewUI = true,
                        })
                    end
                end
            end
        end
    end
end

function PurchasePromptABTestContainer:render()
    if self.state.isNewUI then
        return Roact.createElement(ProductPurchaseContainer)
    else
        return Roact.createElement(PurchasePrompt)
    end
end

local function mapStateToProps(state)
    return {
        promptState = state.promptState,
        requestType = state.promptRequest.requestType,
        abVars = state.abVariations,
    }
end

local function mapDispatchToProps(dispatch)
    return {}
end

PurchasePromptABTestContainer = connectToStore(
    mapStateToProps,
    mapDispatchToProps
)(PurchasePromptABTestContainer)

return PurchasePromptABTestContainer
