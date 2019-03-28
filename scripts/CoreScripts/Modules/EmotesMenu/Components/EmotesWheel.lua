local ContextActionService = game:GetService("ContextActionService")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local MouseIconOverrideService = require(CorePackages.InGameServices.MouseIconOverrideService)

local Components = script.Parent
local EmotesMenu = Components.Parent

local Actions = EmotesMenu.Actions
local Thunks = EmotesMenu.Thunks

local Constants = require(EmotesMenu.Constants)

local EmotesButtons = require(Components.EmotesButtons)
local SlotNumbers = require(Components.SlotNumbers)
local WheelBackground = require(Components.WheelBackground)

local FocusSegment = require(Actions.FocusSegment)
local HideMenu = require(Actions.HideMenu)
local PlayEmote = require(Thunks.PlayEmote)

local EmotesWheel = Roact.PureComponent:extend("EmotesWheel")

function EmotesWheel:bindActions()
    local function selectEmote(actionName, inputState, inputObj)
        local inputVector = Vector2.new(inputObj.Position.x, inputObj.Position.y)

        if inputVector.Magnitude < Constants.ThumbstickThreshold then
            return
        end

        local angle =  math.deg(math.atan2(inputVector.X, inputVector.Y))
        if angle < 0 then
            angle = angle + 360
        end

        local segmentAngle = 360/Constants.EmotesPerPage
        angle = angle + segmentAngle/2
        angle = math.fmod(angle, 360)

        local segmentIndex = math.ceil(angle / segmentAngle)
        local segmentOffset = Constants.SegmentsStartRotation + 90

        segmentIndex = segmentIndex + segmentOffset/segmentAngle
        if segmentIndex > Constants.EmotesPerPage then
            segmentIndex = segmentIndex - Constants.EmotesPerPage
        elseif segmentIndex < 1 then
            segmentIndex = segmentIndex + Constants.EmotesPerPage
        end

        if segmentIndex == self.props.emotesWheel.focusedSegmentIndex then
            return
        end

        if self.props.emotesPage.emotesList[segmentIndex] then
            self.props.focusSegment(segmentIndex)
        else
            self.props.focusSegment(0)
        end
    end

    ContextActionService:BindAction(Constants.EmoteSelectionAction, selectEmote, --[[createTouchButton = ]] false,
                                    Constants.SelectionThumbstick)


    local function playSelected(actionName, inputState, inputObj)
        if inputState == Enum.UserInputState.Begin then
            local focusedSegment = self.props.emotesWheel.focusedSegmentIndex
            local emoteInfo = self.props.emotesPage.emotesList[focusedSegment]

            if emoteInfo then
                self.props.playEmote(emoteInfo.name)
            end
        end
    end

    ContextActionService:BindAction(Constants.PlaySelectedAction, playSelected, --[[createTouchButton = ]] false,
                                    Constants.PlayEmoteButton)


    local function closeMenu(actionName, inputState, inputObj)
        if inputState == Enum.UserInputState.Begin then
            self.props.hideMenu()
        end
    end

    ContextActionService:BindAction(Constants.CloseMenuAction, closeMenu, --[[createTouchButton = ]] false,
                                    Constants.EmoteMenuCloseKey, Constants.EmoteMenuCloseButton,
                                    Constants.EmoteMenuCloseButtonSecondary)
end

function EmotesWheel:unbindActions()
    ContextActionService:UnbindAction(Constants.CloseMenuAction)
    ContextActionService:UnbindAction(Constants.EmoteSelectionAction)
    ContextActionService:UnbindAction(Constants.PlaySelectedAction)
end

function EmotesWheel:addCursorOverride()
    if self.isUsingGamepad and not self.isCursorHidden then
        MouseIconOverrideService.push(Constants.CursorOverrideName, Enum.OverrideMouseIconBehavior.ForceHide)

        self.isCursorHidden = true
    end
end

function EmotesWheel:removeCursorOverride()
    if self.isCursorHidden then
        MouseIconOverrideService.pop(Constants.CursorOverrideName)

        self.isCursorHidden = false
    end
end

function EmotesWheel:connectListeners()
    self.inputTypeChangedListener = UserInputService.LastInputTypeChanged:Connect(function(lastInputType)
        if Constants.GamepadInputTypes[lastInputType] then
            self.isUsingGamepad = true

            if self.props.displayOptions.menuVisible then
                self:addCursorOverride()
            end
        else
            self.isUsingGamepad = false

            self:removeCursorOverride()
        end
    end)
end

function EmotesWheel:disconnectListeners()
    self.inputTypeChangedListener:Disconnect()
end

function EmotesWheel:didUpdate()
    if self.props.displayOptions.menuVisible then
        self:bindActions()

        self:addCursorOverride()
    else
        self:unbindActions()

        self:removeCursorOverride()
    end
end

function EmotesWheel:didMount()
    if self.props.displayOptions.menuVisible then
        self:bindActions()
    end

    self:connectListeners()
end

function EmotesWheel:willUnmount()
    self:unbindActions()

    self:disconnectListeners()
end

function EmotesWheel:render()
    return Roact.createElement("Frame", {
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Visible = self.props.displayOptions.menuVisible,
    }, {
        Background = Roact.createElement(WheelBackground),

        EmotesButtons = Roact.createElement(EmotesButtons),
        SlotNumbers = Roact.createElement(SlotNumbers),
    })
end

local function mapStateToProps(state)
    return {
        displayOptions = state.displayOptions,
        emotesWheel = state.emotesWheel,
        emotesPage = state.emotesPage,
    }
end

local function mapDispatchToProps(dispatch)
    return {
        playEmote = function(emoteId)
            return dispatch(PlayEmote(emoteId))
        end,

        focusSegment = function(segmentIndex)
            return dispatch(FocusSegment(segmentIndex))
        end,

        hideMenu = function()
            return dispatch(HideMenu())
        end
    }
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(EmotesWheel)