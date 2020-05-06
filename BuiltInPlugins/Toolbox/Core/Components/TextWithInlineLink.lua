--[[
    Split a line of text with zero or more {link} placeholders into a Frame containing TextLabels and LinkButtons.
]]

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)
local t = require(Libs.Framework.Util.Typecheck.t)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)

-- TODO DEVTOOLS-4290: Refactor LinkButton into shared components in DeveloperFramework.
local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local LinkButton = require(AssetConfiguration.LinkButton)

local withTheme = ContextHelper.withTheme

local function TextWithInlineLink(props)
	assert(t.interface({
		text = t.string,
        onLinkActivated = t.callback,
        linkText = t.string,
        linkPlaceholder = t.string,
        textProps = t.interface({
            TextSize = t.integer,
            Font = t.enum(Enum.Font)
        })
	})(props))

	return withTheme(function(theme)
		local position = props.Position or UDim2.new(0, 0, 0, 0)
        local textProps = props.textProps
        local text = props.text
        local linkText = props.linkText

        local splits = {
            Roact.createElement("UIListLayout", {
                SortOrder = Enum.SortOrder.LayoutOrder,
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalAlignment = Enum.HorizontalAlignment.Center
            })
        }

        local function measure(text)
            return TextService:GetTextSize(text, textProps.TextSize, textProps.Font, Vector2.new(math.huge, math.huge))
        end

        local function createTextLabel(text, xOffset)
            if #text == 0 then
                return nil
            end

            local size = measure(text)

            return Roact.createElement("TextLabel", Cryo.Dictionary.join({
                Text = text,
                Size = UDim2.new(0, size.X, 0, size.Y),
                LayoutOrder = #splits
            }, textProps))
        end

        local function createLink()
            local size = measure(linkText)

            return Roact.createElement(LinkButton, {
                Size = UDim2.new(0, size.X, 0, size.Y),
                LayoutOrder = #splits,
                Text = linkText,
                TextSize = textProps.TextSize,
                Font = textProps.Font,
                onActivated = props.onLinkActivated,
            })
        end

        local function appendIfNotNil(val)
            if val then
                table.insert(splits, val)
            end
        end

        local i = 1
        while true do
            local startPos
            local endPos

            startPos, endPos = string.find(text, props.linkPlaceholder, i, true)

            -- No (more) link placeholders found
            if startPos == nil then
                break
            end

            -- Add any unconsumed text up to this link
            appendIfNotNil(createTextLabel(string.sub(text, i, startPos - 1)))

            appendIfNotNil(createLink())

            -- Continue searching for more link placeholders after this one
            i = endPos + 1
        end

        -- Append any remaining text
        appendIfNotNil(createTextLabel(string.sub(text, i, #text)))

        return Roact.createElement("Frame", {
            Position = position,
            Size = UDim2.new(1, 0, 0, textProps.TextSize),
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
        }, splits)
	end)
end

return TextWithInlineLink
