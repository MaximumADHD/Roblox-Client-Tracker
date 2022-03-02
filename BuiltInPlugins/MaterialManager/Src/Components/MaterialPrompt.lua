local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local MaterialVariantCreator = require(Plugin.Src.Components.MaterialVariantCreator)

export type Props = {
	PromptClosed : () -> (),
}

type _Props = Props & {
	Analytics : any,
	Localization : any,
	Stylizer : any,
}

type _Style = {
	DialogWidth : number,
	DialogHeight : number,
}

local MaterialPrompt = Roact.PureComponent:extend("MaterialPrompt")

function MaterialPrompt:init()
	-- TODO: Save -> upload texture maps if needed
	self.onSave = function()
	end

	self.onButtonPressed = function(key)
		local props : _Props = self.props
		if key == "Cancel" then
			props.PromptClosed()
		elseif key == "Save" then
			self.onSave()
			props.PromptClosed()
		end
	end
end

function MaterialPrompt:render()
	local props : _Props = self.props
	local localization = props.Localization
	local style : _Style = props.Stylizer.MaterialPrompt

	local buttons = {
		{ 
			Key = "Cancel", 
			Text = localization:getText("CreateDialog", "CancelVariant"),
			Style = "RoundPrimary",
		},
		{
			Key = "Save", 
			Text = localization:getText("CreateDialog", "SaveVariant"), 
			Style = "RoundPrimary",
		}
	}

	return Roact.createElement(StyledDialog, {
		Title = localization:getText("CreateDialog", "CreateVariant"),
		MinContentSize = Vector2.new(style.DialogWidth, style.DialogHeight),
		Resizable = true,
		Modal = true,
		Buttons = buttons,
		OnClose = props.PromptClosed,
		OnButtonPressed = self.onButtonPressed,
	}, {
		MaterialVariantCreator = Roact.createElement(MaterialVariantCreator)
	})
end


MaterialPrompt = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialPrompt)

return MaterialPrompt
