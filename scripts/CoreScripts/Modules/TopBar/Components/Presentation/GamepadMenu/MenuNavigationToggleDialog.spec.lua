--!strict
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local LocalizationService = game:GetService("LocalizationService")

local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local UiModeStyleProvider = require(CorePackages.Workspace.Packages.Style).UiModeStyleProvider
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local UIBlox = require(CorePackages.UIBlox)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)

local MenuNavigationToggleDialog = require(script.Parent.MenuNavigationToggleDialog)

local defaultStyle = {
	themeName = "dark",
	fontName = "gotham",
	deviceType = RobloxAppEnums.DeviceType.Console,
}

return function()
  it("should render the MenuNavigationToggleDialog", function()
    local localization = Localization.new("en-us")

    local function App()
      return React.createElement(RoactRodux.StoreProvider, {
        store = Rodux.Store.new(function(state)
          return state
        end, {}, {}),
      }, {
        StyleProvider = React.createElement(UIBlox.App.Style.AppStyleProvider, {
          style = defaultStyle,
        }, {
          DesignTokenProvider = React.createElement(DesignTokenProvider, {
            tokenMappers = {}
          }, {
            LocalizationProvider = React.createElement(LocalizationProvider, {
              localization = localization,
            }, {
              MenuNavigationToggleDialog = React.createElement(MenuNavigationToggleDialog, {
                Position = UDim2.fromScale(0.5, 0.5)
              })
            })
          })
        })
      })
    end

    local container = Instance.new("Frame")
    container.Size = UDim2.fromOffset(800, 600)

    local root = ReactRoblox.createRoot(container)

    ReactRoblox.act(function()
      root:render(React.createElement(App))
    end)

    local toggleDialog = container:FindFirstChild("MenuNavigationToggleDialog", true)

    expect(toggleDialog).toBeDefined()

    local LeftText = toggleDialog:FindFirstChild("LeftText", true)
    expect(LeftText).toBeDefined()

    local RightText = toggleDialog:FindFirstChild("RightText", true)
    expect(RightText).toBeDefined()

    local Icon = toggleDialog:FindFirstChild("Icon", true)
    expect(Icon).toBeDefined()

    ReactRoblox.act(function()
      root:render(nil)
    end)
  end)
end
