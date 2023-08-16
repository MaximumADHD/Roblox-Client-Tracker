local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local DetailsPageDefaultTemplate = require(DetailsPage.DetailsPageTemplate)
local DetailsPageTenfootTemplate = require(DetailsPage.DetailsPageTenfootTemplate)

local Constants = require(App.Style.Constants)
type DeviceType = Constants.DeviceType
local DeviceType = Constants.DeviceType

local React = require(Packages.React)

export type Props = {
	-- Device FormFactor from the DeviceType Enum
	deviceType: DeviceType,
	-- Pass-through props for the DetailsPageTemplate
	detailsPageProps: DetailsPageTenfootTemplate.Props,
}

type DeviceTypeMap = {
	[DeviceType]: any,
}

local DeviceTypeMap: DeviceTypeMap = {
	[DeviceType.Console] = DetailsPageTenfootTemplate,
	[DeviceType.Phone] = DetailsPageDefaultTemplate,
	[DeviceType.Desktop] = DetailsPageDefaultTemplate,
	[DeviceType.Unknown] = DetailsPageDefaultTemplate,
	[DeviceType.Tablet] = DetailsPageDefaultTemplate,
	[DeviceType.VR] = DetailsPageDefaultTemplate,
}

local function DetailsPageTemplateSelector(props: Props)
	local DetailsPageTemplate = DeviceTypeMap[props.deviceType] or DetailsPageDefaultTemplate
	return React.createElement(DetailsPageTemplate, props.detailsPageProps)
end

return DetailsPageTemplateSelector
