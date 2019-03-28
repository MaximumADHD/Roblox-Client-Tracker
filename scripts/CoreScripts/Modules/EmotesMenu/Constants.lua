local EmotesMenu = script.Parent
local Layouts = EmotesMenu.Layouts

local SmallLayout = require(Layouts.Small)
local LargeLayout = require(Layouts.Large)

local Constants = {
    EmotesPerPage = 8,
    ErrorDisplayTimeSeconds = 5,

    -- TODO CLIAVATAR-2471: Add text localization
    MainTextDefault = "Select an Emote",
    MainTextNoEmotesEquipped = "No emotes equipped",

    ErrorMessages = {
        NotSupported = "You can't use Emotes here.",
        R15Only = "Only R15 characters can use Emotes.",
        NoMatchingEmote = "You can't use that Emote.",
        TemporarilyUnavailable = "You can't use Emotes right now.",
    },

    TextPadding = 10,

    SegmentsStartRotation = -90,

    -- Ratio of diameter of inner circle to SegmentedCircle image width
    SegmentedCircleDiameter = 0.55,

    -- Size of slot numbers relative to emote wheel size
    SlotNumberSize = 0.1,

    CursorOverrideName = "EmotesMenuCursorOverride",

    GamepadInputTypes = {
        [Enum.UserInputType.Gamepad1] = true,
        [Enum.UserInputType.Gamepad2] = true,
        [Enum.UserInputType.Gamepad3] = true,
        [Enum.UserInputType.Gamepad4] = true,
        [Enum.UserInputType.Gamepad5] = true,
        [Enum.UserInputType.Gamepad6] = true,
        [Enum.UserInputType.Gamepad7] = true,
        [Enum.UserInputType.Gamepad8] = true,
    },

    EmoteMenuOpenKey = Enum.KeyCode.B,
    EmoteMenuOpenButton = Enum.KeyCode.DPadDown,

    EmoteMenuCloseKey = Enum.KeyCode.Escape,
    EmoteMenuCloseButton = Enum.KeyCode.ButtonB,
    EmoteMenuCloseButtonSecondary = Enum.KeyCode.ButtonStart,

    SelectionThumbstick = Enum.KeyCode.Thumbstick1,
    ThumbstickThreshold = 0.8,

    PlayEmoteButton = Enum.KeyCode.ButtonA,

    ToggleMenuAction = "EmotesMenuToggleAction",
    CloseMenuAction = "EmotesMenuCloseAction",
    EmoteSelectionAction = "EmotesMenuSelectionAction",
    PlaySelectedAction = "EmotesMenuPlaySelectedAction",

    -- Emotes Menu can use up to 90% of the screen horizontally and 75% vertically
    ScreenAvailable = UDim2.new(0.9, 0, 0.75, 0),

    -- Use the Large layout if the screen is larger than this size
    -- Values taken from isSmallTouchScreen in Utility module
    SmallScreenMaxSize = Vector2.new(700, 500),

    Layout = {
        Small = 0,
        Large = 1,
    },

    Colors = {
        White = Color3.new(1, 1, 1),
        Black = Color3.new(0, 0, 0),
    }
}

Constants.Layouts = {
    [Constants.Layout.Small] = SmallLayout,

    [Constants.Layout.Large] = LargeLayout,
}

local function makeTableConstant(name, tbl)
    setmetatable(tbl, {
        __newindex = function()
        end,

        __index = function(t, index)
            error(name.. " table has no index: " ..tostring(index), 2)
        end
    })
end

local constantTables = {
    ["Constants"] = Constants,

    ["Constants.Colors"] = Constants.Colors,
    ["Constants.ErrorMessages"] = Constants.ErrorMessages,
    ["Constants.Layout"] = Constants.Layout,

    ["Constants.Layouts"] = Constants.Layouts,
    ["Constants.Layouts.Small"] = Constants.Layouts[Constants.Layout.Small],
    ["Constants.Layouts.Large"] = Constants.Layouts[Constants.Layout.Large],
}

for name, tbl in pairs(constantTables) do
    makeTableConstant(name, tbl)
end

return Constants