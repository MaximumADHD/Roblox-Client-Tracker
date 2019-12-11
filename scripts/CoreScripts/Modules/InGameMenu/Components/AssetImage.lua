--[[
	Displays an image from the asset dictionary, slicing it if the asset
	requires that.
]]

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Cryo = InGameMenuDependencies.Cryo
local UIBlox = InGameMenuDependencies.UIBlox

local InGameMenu = script.Parent.Parent

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local ImageSetButton = UIBlox.Core.ImageSet.Button

local Assets = require(InGameMenu.Resources.Assets)

local function makeAssetImageComponent(component)
	return function(props)
		local imageKey = props.imageKey
		local imageData = Assets.Images[imageKey]

		local imageProps
		if typeof(imageData) == "string" then
			imageProps = {
				Image = imageData,
			}
		else
			imageProps = imageData
		end

		local mergedProps = Cryo.Dictionary.join(props, {
			imageKey = Cryo.None,
		}, imageProps, {
			BackgroundTransparency = 1,
		})

		return Roact.createElement(component, mergedProps)
	end
end

return {
	Label = makeAssetImageComponent(ImageSetLabel),
	Button = makeAssetImageComponent(ImageSetButton),
}