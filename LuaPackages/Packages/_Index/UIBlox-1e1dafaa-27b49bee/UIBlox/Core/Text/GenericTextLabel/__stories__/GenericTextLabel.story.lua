local ReplicatedStorage = game:GetService("ReplicatedStorage")

local StoryView = require(ReplicatedStorage.Packages.StoryComponents.StoryView)
local StoryItem = require(ReplicatedStorage.Packages.StoryComponents.StoryItem)

local GenericTextLabelRoot = script.Parent.Parent
local Text = GenericTextLabelRoot.Parent
local Core = Text.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local UIBloxStyle = require(Packages.UIBloxResources.UIBloxStyle)
local GothamFont = UIBloxStyle.Font
local DarkTheme = UIBloxStyle.Theme

local GenericTextLabel = require(GenericTextLabelRoot.GenericTextLabel)

local GenericTextLabelStory = Roact.PureComponent:extend("GenericTextLabelStory")

function GenericTextLabelStory:render()
	return Roact.createElement(StoryItem, {
		size = UDim2.new(0, 300, 0, 128),
		layoutOrder = 1,
		title = "Generic Text Label",
		subTitle = "Text.GenericTextLabel",
		showDivider = true,
	}, {
		GenericTextLabel = Roact.createElement(GenericTextLabel, {
			Text = "Phantom Forces [Sniper Update!]",
			Size = UDim2.new(0, 150, 0, 45),
			colorStyle = DarkTheme.SystemPrimaryDefault,
			fontStyle = GothamFont.Header1,
			fluidSizing = true,
		}),
	})
end

return function(target)
	local styleProvider = Roact.createElement(StoryView, {}, {
		Story = Roact.createElement(GenericTextLabelStory),
	})

	local handle = Roact.mount(styleProvider, target, "GenericTextLabel")
	return function()
		Roact.unmount(handle)
	end
end