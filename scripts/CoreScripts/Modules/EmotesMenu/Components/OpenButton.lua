local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent
local EmotesMenu = Components.Parent

local Actions = EmotesMenu.Actions
local Thunks = EmotesMenu.Thunks

local Constants = require(EmotesMenu.Constants)
local OpenMenu = require(Thunks.OpenMenu)
local HideMenu = require(Actions.HideMenu)

local OpenButton = Roact.PureComponent:extend("OpenButton")

function OpenButton:render()
    local LayoutConstants = Constants.Layouts[self.props.layout]

    local imageAsset = LayoutConstants.EmotesButtonOff
    if self.props.displayOptions.menuVisible then
        imageAsset = LayoutConstants.EmotesButtonOn
    end

    return Roact.createElement("ImageButton", {
        AnchorPoint = Vector2.new(0, 1),
        BackgroundTransparency = 1,
        Image = imageAsset,
        Size = UDim2.new(0, LayoutConstants.EmotesButtonSize.X, 0, LayoutConstants.EmotesButtonSize.Y),
        Position = UDim2.new(0, 0, 1, 0),
        Visible = not self.props.displayOptions.isTenFootInterface,

        [Roact.Event.Activated] = function()
            if self.props.displayOptions.menuVisible then
                self.props.hideMenu()
            else
                self.props.openMenu()
            end
        end
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
        openMenu = function()
            return dispatch(OpenMenu())
        end,

        hideMenu = function()
            return dispatch(HideMenu())
        end,
    }
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(OpenButton)