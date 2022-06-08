local FFlagDevFrameworkRemoveFitFrame = game:GetFastFlag("DevFrameworkRemoveFitFrame")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local GetLocalizedString = require(Plugin.Src.Utility.GetLocalizedString)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame

local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel

local FailureWidget = Roact.PureComponent:extend("FailureWidget")

local function generateErrorSections(errorMap, uploadStyle, absoluteContentSize, instanceMap, localization)
    local sections = {}
    for nodeId, errorCode in pairs(errorMap) do
        local errorMsg, sectionText
        -- TODO: not all errored nodes may have an analog in instance. Retrieve the actual node name by receiving a list of error pairs instead.
        if (instanceMap[nodeId]) then
            errorMsg = GetLocalizedString(localization, "HttpError", errorCode)
            if not errorMsg then
                errorMsg = string.format("%s %s", localization:getText("HttpError", "UnknownStatusCode"), errorCode)
            end
            sectionText = string.format("%s: %s", instanceMap[nodeId].Name, errorMsg)
        else
            sectionText = errorCode
        end

        local section = Roact.createElement(TextLabel, {
            LayoutOrder = #sections + 1,
            Text = sectionText,
            TextSize = uploadStyle.SubtextSize,
            TextXAlignment = Enum.TextXAlignment.Center,
            FitWidth = if FFlagDevFrameworkRemoveFitFrame then nil else true,
            FitMaxWidth = if FFlagDevFrameworkRemoveFitFrame then nil else absoluteContentSize,
            AutomaticSize = if FFlagDevFrameworkRemoveFitFrame then Enum.AutomaticSize.Y else nil,
            Size = if FFlagDevFrameworkRemoveFitFrame then UDim2.fromScale(1, 0) else nil,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
        })
        table.insert(sections, section)
    end

    return sections
end

if not FFlagDevFrameworkRemoveFitFrame then
    function FailureWidget:init()
        self:setState({
            absoluteContentSize = 0,
        })
        self.onContentResize = function(absoluteContentSize)
            self:setState({
                absoluteContentSize = absoluteContentSize.x
            })
        end
    end
end

function FailureWidget:render()
	local props = self.props
    local state = self.state
    local localization = self.props.Localization

    local style = props.Stylizer
	local uploadStyle = style.UploadWidget

    local errorMap = props.ErrorMap
    local descriptionText = Cryo.isEmpty(errorMap)
        and localization:getText("Upload", "FailureDescriptionNoError")
        or localization:getText("Upload", "FailureDescription")

    -- TODO FFlagDevFrameworkRemoveFitFrame remove state.absoluteContentSize argument when flag is retired
    local sections = generateErrorSections(errorMap, uploadStyle, if FFlagDevFrameworkRemoveFitFrame then nil else state.absoluteContentSize, props.InstanceMap, localization)

    local titleSize = uploadStyle.TextSize + uploadStyle.SubtextSize + 10

    return Roact.createElement(Pane, {
        LayoutOrder = 1,
        Layout = Enum.FillDirection.Vertical,
        VerticalAlignment = Enum.VerticalAlignment.Top,
    }, {
        Title = Roact.createElement(Pane, {
            Layout = Enum.FillDirection.Vertical,
            VerticalAlignment = Enum.VerticalAlignment.Top,
            Size = UDim2.new(1, 0, 0, titleSize),
            LayoutOrder = 1,
        }, {
            Text = Roact.createElement(TextLabel, {
                LayoutOrder = 1,
                Size = uploadStyle.TextLabelSize,
                Text = localization:getText("Upload", "Failure"),
                TextSize = uploadStyle.TextSize,
                TextXAlignment = uploadStyle.TextAlignment,
                TextColor = uploadStyle.FailureColor,
            }),
            Description = Roact.createElement(TextLabel, {
                LayoutOrder = 2,
                Size = uploadStyle.TextLabelSize,
                Text = descriptionText,
                TextSize = uploadStyle.SubtextSize,
                TextXAlignment = uploadStyle.TextAlignment,
            }),
        }),
        ErrorMap = Roact.createElement(Pane, {
            Layout = Enum.FillDirection.Vertical,
            LayoutOrder = 2,
            Size = UDim2.new(1, -40, 1, -titleSize),
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
        }, {
            ScrollingFrame = Roact.createElement(ScrollingFrame, {
                LayoutOrder = 1,
                Size = UDim2.new(1, 0, 1, 0),
                CanvasSize = UDim2.fromScale(1, 0),
                OnCanvasResize = self.onContentResize,
                ScrollingDirection = Enum.ScrollingDirection.Y,
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                Layout = Enum.FillDirection.Vertical,
            }, {
                Pane = Roact.createElement(Pane, {
                    Size = uploadStyle.TextLabelSize,
                    Layout = Enum.FillDirection.Vertical,
                    VerticalAlignment = Enum.VerticalAlignment.Top,
                    LayoutOrder = 1,
                    HorizontalAlignment = Enum.HorizontalAlignment.Center,
                }, sections)
            }),
        }),
    })
end

FailureWidget = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(FailureWidget)

local function mapDispatchToProps(dispatch)
	return {}
end

local function mapStateToProps(state)
	return {
		InstanceMap = state.instanceMap,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(FailureWidget)
