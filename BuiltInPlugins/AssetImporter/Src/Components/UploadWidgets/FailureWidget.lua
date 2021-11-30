local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)

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

local function generateErrorSections(errorMap, uploadStyle, absoluteContentSize, instanceMap)
    local sections = {}
    for nodeId, errorMsg in pairs(errorMap) do
        local sectionText = errorMsg
        if (instanceMap[nodeId]) then
             sectionText = string.format("%s: %s", instanceMap[nodeId].Name, errorMsg)
        end

        local section = Roact.createElement(TextLabel, {
            LayoutOrder = #sections + 1,
            Text = sectionText,
            TextSize = uploadStyle.SubtextSize,
            TextXAlignment = Enum.TextXAlignment.Center,
            FitWidth = true,
            FitMaxWidth = absoluteContentSize,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
        })
        table.insert(sections, section)
    end

    return sections
end

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

    local sections = generateErrorSections(errorMap, uploadStyle, state.absoluteContentSize, props.InstanceMap)

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
                    Size = UDim2.new(1, 0, 0, 22),
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
