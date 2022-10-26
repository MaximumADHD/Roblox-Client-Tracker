--!nonstrict
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox

local FocusHandler = require(script.Parent.Parent.Connection.FocusHandler)
local InGameMenu = script.Parent.Parent.Parent

local Page = require(InGameMenu.Components.Page)
local PageUtils = require(InGameMenu.Components.Pages.PageUtils)

local CategoryHeader = require(script.Parent.Parent.GameSettingsPage.CategoryHeader)
local Constants = require(InGameMenu.Resources.Constants)
local VerticalScrollViewWithIndicator = UIBlox.App.Container.VerticalScrollViewWithIndicator

local LanguageSelectionEntry = require(script.Parent.LanguageSelectionEntry)

local BasicPage = Roact.PureComponent:extend("BasicPage")
BasicPage.validateProps = t.strictInterface({
    pageTitle = t.string,
    isMenuOpen = t.boolean,
    currentPage = t.optional(t.string),
    canCaptureFocus = t.optional(t.boolean),
    canGamepadCaptureFocus = t.optional(t.boolean),
    currentZone = t.optional(t.number),
})

function BasicPage:init()
    self.scrollingFrameRef = Roact.createRef()

    self.pageHeaderActivated = function()
        local scrollingFrame = self.scrollingFrameRef:getValue()
        if scrollingFrame then
            scrollingFrame:scrollToTop()
        end
    end

end

function BasicPage:didUpdate(prevProps)
    if self.props.isMenuOpen and not prevProps.isMenuOpen then
        local scrollingFrame = self.scrollingFrameRef:getValue()
        if scrollingFrame and scrollingFrame.CanvasPosition.Y > 0 then
            scrollingFrame.CanvasPosition = Vector2.new(0, 0)
        end
    end
end

function BasicPage:render()
    return PageUtils.withScrollDownState(function(onScroll, scrollingDown)
        return Roact.createElement(Page, {
            useLeaveButton = true,
            scrollingDown = scrollingDown,
            pageTitle = self.props.pageTitle,
            position = self.props.position,
            onHeaderActivated = self.pageHeaderActivated,
        }, {
            FocusHandler = Roact.createElement(FocusHandler, {
                isFocused = self.props.canCaptureFocus and self.props.canGamepadCaptureFocus,
                shouldForgetPreviousSelection = self.props.currentPage == Constants.MainPagePageKey
                    or self.props.currentZone == 0,
                didFocus = function(previousSelection)
                    if previousSelection then
                        GuiService.SelectedCoreObject = previousSelection
                    end
                end,
            }),
            PageContents = Roact.createElement(VerticalScrollViewWithIndicator, {
                position = self.props.position,
                size = UDim2.new(1, 0, 1, 0),
                useAutomaticCanvasSize = true,
                canvasSizeY = UDim.new(0, 0), -- no minmum size
                scrollingFrameRef = self.scrollingFrameRef,
                [Roact.Change.CanvasPosition] = onScroll,
            }, {
                Layout = Roact.createElement("UIListLayout", {
                    HorizontalAlignment = Enum.HorizontalAlignment.Right,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    VerticalAlignment = Enum.VerticalAlignment.Top,
                }),

                LanguageSettingsHeader = Roact.createElement(CategoryHeader, {
                    LayoutOrder = 1,
                    localizationKey = "CoreScripts.InGameMenu.LanguageSelection.SettingsHeader",
                }),
                LanguageSelector = Roact.createElement(LanguageSelectionEntry, {
                    LayoutOrder = 2,
                    canOpen = self.props.canCaptureFocus,
                    canCaptureFocus = self.props.canGamepadCaptureFocus,
                    screenSize = self.props.screenSize,
                }),
            }),
        })
    end)
end

function BasicPage:didMount()
end

return RoactRodux.connect(function(state)
    local canCaptureFocus = state.menuPage == "GameSettings" and state.isMenuOpen and not state.respawn.dialogOpen
    local canGamepadCaptureFocus = state.displayOptions.inputType == Constants.InputType.Gamepad
        and state.currentZone == 1
    return {
        isMenuOpen = state.isMenuOpen,
        currentPage = state.menuPage,
        currentZone = state.currentZone,
        canCaptureFocus = canCaptureFocus,
        canGamepadCaptureFocus = canGamepadCaptureFocus,
        screenSize = state.screenSize,
    }
end, function(dispatch)
    return {
    }
end)(BasicPage)
