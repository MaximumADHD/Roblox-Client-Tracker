local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Packages.Rodux).makeActionCreator
local Root = script.Parent.Parent
local RobuxUpsell =  require(Root.Models.RobuxUpsell)
type RobuxUpsellProduct = RobuxUpsell.Product

-- Create the action creator
local actionCreator = Action(script.Name, function(
	products: {[number]: RobuxUpsellProduct}, 
	selection: number, 
	virtualItemBadgeType: string)
	return {
		products = products,
		selection = selection,
		virtualItemBadgeType = virtualItemBadgeType,
	}
end)

-- Create a typed wrapper function - this needs to be a table with a __call method
-- in order to maintain backwards compatibility with the old action creator and provide a name alongside the function
local PromptNativeUpsellSuggestions = {
    name = actionCreator.name,
    __call = function(
        self,
        products: {[number]: RobuxUpsellProduct}, 
        selection: number, 
        virtualItemBadgeType: string
    )
        return actionCreator(products, selection, virtualItemBadgeType)
    end
}

-- Needed to allow you to call the table directly like a function.
setmetatable(PromptNativeUpsellSuggestions, PromptNativeUpsellSuggestions)

return PromptNativeUpsellSuggestions
