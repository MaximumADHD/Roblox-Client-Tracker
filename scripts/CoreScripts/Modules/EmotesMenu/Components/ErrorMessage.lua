local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent
local EmotesMenu = Components.Parent

local Actions = EmotesMenu.Actions
local HideError = require(Actions.HideError)

local Constants = require(EmotesMenu.Constants)

local ErrorMessage = Roact.PureComponent:extend("ErrorMessage")

function ErrorMessage:render()
    local LayoutConstants = Constants.Layouts[self.props.layout]

	return Roact.createElement("Frame", {
		Size = LayoutConstants.ErrorFrameSize,
        Position = LayoutConstants.ErrorFramePosition,
        BackgroundColor3 = Constants.Colors.Black,
        BackgroundTransparency = Constants.ErrorFrameBackgroundTransparency,
        BorderSizePixel = Constants.ErrorFrameBorderSize,
        Selectable = false,
        Visible = self.props.displayOptions.errorVisible,

		[Roact.Event.TouchTap] = function()
			self.props.close()
        end,

        [Roact.Event.InputBegan] = function(_, input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                self.props.close()
            end
        end,
	}, {
        AsspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
            AspectRatio = LayoutConstants.ErrorFrameAspectRatio,
        }),

        SizeConstraint = Roact.createElement("UISizeConstraint", {
            MinSize = LayoutConstants.ErrorFrameMinSize,
            MaxSize = LayoutConstants.ErrorFrameMaxSize,
        }),

        ErrorIcon = Roact.createElement("ImageLabel", {
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, LayoutConstants.ErrorIconOffset, 0.5, 0),
            Size = UDim2.new(0.2, -LayoutConstants.ErrorIconOffset * 2, 1, -LayoutConstants.ErrorIconOffset * 2),
            Image = LayoutConstants.ErrorIcon,
            BackgroundTransparency = 1,
        }, {
            AsspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
                AspectRatio = 1,
            }),
        }),

        ErrorText = Roact.createElement("TextLabel", {
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0.2, -LayoutConstants.ErrorIconOffset, 0.5, 0),
            Size = UDim2.new(0.8, 0, 1, 0),
            Text = self.props.displayOptions.errorText,
            TextScaled = true,
            TextSize = LayoutConstants.ErrorTextSize,
            TextColor3 = Constants.Colors.White,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = LayoutConstants.ErrorTextFont,
            BackgroundTransparency = 1,
        }, {
            SizeConstraint = Roact.createElement("UISizeConstraint", {
                MaxSize = Vector2.new(LayoutConstants.ErrorFrameMaxSize.X,
                                      LayoutConstants.ErrorTextSize + Constants.TextPadding),
            }),

            TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
                MaxTextSize = LayoutConstants.ErrorTextSize,
            }),
        }),
    })
end

local function mapStateToProps(state)
    return {
        displayOptions = state.displayOptions,
        layout = state.layout,
    }
end

local function mapDispatchToProps(dispatch)
	return {
		close = function()
			return dispatch(HideError())
		end
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(ErrorMessage)