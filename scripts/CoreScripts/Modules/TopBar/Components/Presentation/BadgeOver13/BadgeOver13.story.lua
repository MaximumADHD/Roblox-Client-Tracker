local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local BadgeOver13 = require(script.Parent.BadgeOver13)
local AnalyticsContext = require(script.Parent.AnalyticsContext)

return function(props)
    return React.createElement(AnalyticsContext.Provider, {
        value = {
            fireEvent = props.fireEvent or function(eventName, additionalArgs)
                print("Event:", eventName, "Args:", additionalArgs)
            end,
        }
    }, {
        story = React.createElement("Frame", {
            Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 1,
        }, {
            padding = React.createElement("UIPadding", {
                PaddingTop = UDim.new(0, 4),
                PaddingLeft = UDim.new(0, 4),
            }),
            subject = React.createElement(BadgeOver13, {
                bodyText = props.bodyText or {
                    "Badge.Popup.TextFilterOnlyInfo",
                    "Badge.Popup.VoiceInfo",
                    "Badge.Popup.CommunityStandards",
                },
                linkText = "Badge.Popup.LearnMoreLink",
                layoutOrder = 1,
                openWebview = props.openWebview or function()
                    print("props.openWebview")
                end,
                visible = props.visible or true,
                analyticsCopyType = "TextFilter+Voice",
            })
        })
    })
end
