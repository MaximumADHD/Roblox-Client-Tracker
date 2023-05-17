local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local React = require(CorePackages.Packages.React)

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType

export type Props = {
    onNextPage: () -> ()
}
local function ScreenshotLoadingDialog(props: Props)
    return React.createElement("Frame", {
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 0,
    }, {
        Buttons = React.createElement(ButtonStack, {
            buttons = {{
                buttonType = ButtonType.PrimarySystem,
                props = {
                    onActivated = function() props.onNextPage() end,
                    text = "This is page 1. Click to go next",
                },
            }}
        });
    })
end

return ScreenshotLoadingDialog