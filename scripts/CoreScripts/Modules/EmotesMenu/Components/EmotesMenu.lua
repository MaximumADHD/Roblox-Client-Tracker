local ContextActionService = game:GetService("ContextActionService")
local CorePackages = game:GetService("CorePackages")
local Workspace = game:GetService("Workspace")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent
local EmotesModules = Components.Parent
local Actions = EmotesModules.Actions

local HideMenu = require(Actions.HideMenu)
local ShowMenu = require(Actions.ShowMenu)
local SetLayout = require(Actions.SetLayout)

local OpenButton = require(Components.OpenButton)
local EmotesWheel = require(Components.EmotesWheel)
local ErrorMessage = require(Components.ErrorMessage)

local Constants = require(EmotesModules.Constants)

local EmotesMenu = Roact.PureComponent:extend("EmotesMenu")

function EmotesMenu:bindActions()
    local function toggleMenuFunc(actionName, inputState, inputObj)
        if inputState == Enum.UserInputState.Begin then
            if self.props.displayOptions.menuVisible then
                self.props.hideMenu()
            else
                self.props.showMenu()
            end
        end
    end

    ContextActionService:BindAction(Constants.ToggleMenuAction, toggleMenuFunc, --[[createTouchButton = ]] false,
                                        Constants.EmoteMenuOpenKey, Constants.EmoteMenuOpenButton)
end

function EmotesMenu:unbindActions()
    ContextActionService:UnbindAction(Constants.ToggleMenuAction)
end

function EmotesMenu:viewPortSizeChanged()
    local viewportSize = Workspace.CurrentCamera.ViewportSize

    local layout = Constants.Layout.Large

    local smallScreenX = viewportSize.X < Constants.SmallScreenMaxSize.X
    local smallScreenY = viewportSize.Y < Constants.SmallScreenMaxSize.Y

	if smallScreenX or smallScreenY then
        layout = Constants.Layout.Small
    end

    self.props.setLayout(layout)
end

function EmotesMenu:currentCameraChanged()
    if self.viewportSizeChangedConn then
        self.viewportSizeChangedConn:Disconnect()
    end

    local camera = Workspace.CurrentCamera
    if camera then
        self.viewportSizeChangedConn = camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
            self:viewPortSizeChanged()
        end)
    end
end

function EmotesMenu:didMount()
    self.currentCameraChangedConn = Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
        self:currentCameraChanged()
    end)
    self:currentCameraChanged()

    self:bindActions()
end

function EmotesMenu:willUnmount()
    self.currentCameraChangedConn:Disconnect()
    self.viewportSizeChangedConn:Disconnect()

    self.currentCameraChangedConn = nil
    self.viewportSizeChangedConn = nil

    self:unbindActions()
end

function EmotesMenu:render()
    local LayoutConstants = Constants.Layouts[self.props.layout]

    return Roact.createElement("Frame", {
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 1, 0),
    }, {
        Main = Roact.createElement("Frame", {
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            Size = Constants.ScreenAvailable,
            BackgroundTransparency = 1,
        }, {
            AsspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
                AspectRatio = 1,
            }),

            SizeConstraint = Roact.createElement("UISizeConstraint", {
                MinSize = LayoutConstants.EmotesWheelMinSize,
                MaxSize = LayoutConstants.EmotesWheelMaxSize,
            }),

            EmotesWheel = Roact.createElement(EmotesWheel),
        }),

        OpenButton = Roact.createElement(OpenButton),

        ErrorMessage = Roact.createElement(ErrorMessage),
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
        showMenu = function()
            return dispatch(ShowMenu())
        end,

        hideMenu = function()
            return dispatch(HideMenu())
        end,

        setLayout = function(layout)
            return dispatch(SetLayout(layout))
        end,
    }
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(EmotesMenu)