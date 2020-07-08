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
local Utility = EmotesMenu.Utility

local Constants = require(EmotesMenu.Constants)

local GetSegmentFromPosition = require(Utility.GetSegmentFromPosition)

local EmotesButtons = require(Components.EmotesButtons)
local SlotNumbers = require(Components.SlotNumbers)
local WheelBackground = require(Components.WheelBackground)

local FocusSegment = require(Actions.FocusSegment)
local HideMenu = require(Actions.HideMenu)
local PlayEmote = require(Thunks.PlayEmote)

local KEYBINDS_PRIORITY = Enum.ContextActionPriority.High.Value

local EmotesWheel = Roact.PureComponent:extend("EmotesWheel")

local function getRandomAssetId(emotesAssetIds)
    if #emotesAssetIds == 0 then
        return
    end

    local rand = math.random(1, #emotesAssetIds)
    return emotesAssetIds[rand]
end

function EmotesWheel:bindActions()
    if self.actionsBound then
        return
    end

    local function selectEmote(actionName, inputState, inputObj)
        local inputVector = Vector2.new(inputObj.Position.X, inputObj.Position.Y)

        if inputVector.Magnitude < Constants.ThumbstickThreshold then
            return
        end

        local segmentIndex = GetSegmentFromPosition(inputVector)
        if segmentIndex == self.props.emotesWheel.focusedSegmentIndex then
            return
        end

        if self.props.emotesPage.currentEmotes[segmentIndex] then
            self.props.focusSegment(segmentIndex)
        else
            self.props.focusSegment(0)
        end
    end

    ContextActionService:BindActionAtPriority(Constants.EmoteSelectionAction, selectEmote,
        --[[createTouchButton = ]] false, KEYBINDS_PRIORITY, Constants.SelectionThumbstick)


    local function playSelected(actionName, inputState, inputObj)
        if inputState == Enum.UserInputState.Begin then
            local focusedSegment = self.props.emotesWheel.focusedSegmentIndex
            local emoteName = self.props.emotesPage.currentEmotes[focusedSegment]

            if not emoteName then
                return
            end

            local emoteAssetIds = self.props.emotesPage.emotesInfo[emoteName]
            if not emoteAssetIds then
                return
            end

            local assetId = getRandomAssetId(emoteAssetIds)
            self.props.playEmote(emoteName, focusedSegment, assetId)
        end
    end

    ContextActionService:BindActionAtPriority(Constants.PlaySelectedAction, playSelected,
        --[[createTouchButton = ]] false, KEYBINDS_PRIORITY, Constants.PlayEmoteButton)


    local function closeMenu(actionName, inputState, inputObj)
        if inputState == Enum.UserInputState.Begin then
            self.props.hideMenu()
        end
    end

    local closeButtons = {
        Constants.EmoteMenuCloseKey,
        Constants.EmoteMenuCloseButton,
        Constants.EmoteMenuCloseButtonSecondary
    }

    ContextActionService:BindActionAtPriority(Constants.CloseMenuAction, closeMenu, --[[createTouchButton = ]] false,
        KEYBINDS_PRIORITY, unpack(closeButtons))


    local function closeMenuNoSink(actionName, inputState, inputObj)
        closeMenu(actionName, inputState, inputObj)

        return Enum.ContextActionResult.Pass
    end

    ContextActionService:BindActionAtPriority(Constants.LeaveMenuDontSinkInputAction, closeMenuNoSink,
        --[[createTouchButton = ]] false, KEYBINDS_PRIORITY, unpack(Constants.LeaveMenuNoSinkInputs))


    local function activateEmoteByNumber(actionName, inputState, inputObj)
        if inputState ~= Enum.UserInputState.Begin then
            return
        end

        local pressedSlot

        for slot, key in ipairs(Constants.EmoteSlotKeys) do
            if key == inputObj.KeyCode then
                pressedSlot = slot
                break
            end
        end

        if not pressedSlot then
            return
        end

        local emoteName = self.props.emotesPage.currentEmotes[pressedSlot]
        if not emoteName then
            return
        end

        local emoteAssetIds = self.props.emotesPage.emotesInfo[emoteName]
        if not emoteAssetIds then
            return
        end

        local assetId = getRandomAssetId(emoteAssetIds)
        self.props.playEmote(emoteName, pressedSlot, assetId)
    end

    ContextActionService:BindActionAtPriority(Constants.ActivateEmoteSlotAction, activateEmoteByNumber,
        --[[ createTouchButton = ]] false, KEYBINDS_PRIORITY, unpack(Constants.EmoteSlotKeys))

    self.actionsBound = true
end

function EmotesWheel:unbindActions()
    if self.actionsBound then
        ContextActionService:UnbindAction(Constants.CloseMenuAction)
        ContextActionService:UnbindAction(Constants.EmoteSelectionAction)
        ContextActionService:UnbindAction(Constants.PlaySelectedAction)
        ContextActionService:UnbindAction(Constants.LeaveMenuDontSinkInputAction)
        ContextActionService:UnbindAction(Constants.ActivateEmoteSlotAction)

        self.actionsBound = false
    end
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
        Active = true,
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Visible = self.props.displayOptions.menuVisible,
    }, {
        MouseUnlock = Roact.createElement("TextButton", {
            Modal = true,
            Size = UDim2.new(0, 0, 0, 0),
            Text = "",
            Transparency = 1,
        }),

        Back = Roact.createElement("Frame", {
            Size = UDim2.new(1, 0, 1, 0),
            BackgroundTransparency = 1,
            ZIndex = 1,
        }, {
            Background = Roact.createElement(WheelBackground),
        }),

        Front = Roact.createElement("Frame", {
            Size = UDim2.new(1, 0, 1, 0),
            BackgroundTransparency = 1,
            ZIndex = 2,
        }, {
            EmotesButtons = Roact.createElement(EmotesButtons),
            SlotNumbers = Roact.createElement(SlotNumbers),
        }),
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
        playEmote = function(emoteName, slotNumber, assetId)
            return dispatch(PlayEmote(emoteName, slotNumber, assetId))
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