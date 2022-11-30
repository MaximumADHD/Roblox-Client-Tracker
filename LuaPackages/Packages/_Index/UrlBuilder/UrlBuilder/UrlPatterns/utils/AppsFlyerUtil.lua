--[[
    AppsFlyerUtil.lua

    This class provides utility methods to sanitize inputs going into
    AppsFlyer. For example, it strips newlines from the description
    of a link and will truncate the text down to a particular length
]]

local AppsFlyerUtil = {}

local DEFAULT_NEWLINE_REPLACEMENT = " "
local DEFAULT_TRUNCATE_LENGTH = 140
local ELLIPSIS = "..."

--[[
    Replace any newlines with a different string
]]
function AppsFlyerUtil.replaceNewlines(str, replacement)
    replacement = replacement or DEFAULT_NEWLINE_REPLACEMENT

    return str
        :gsub("\r\n", replacement)
        :gsub("\r", replacement)
        :gsub("\n", replacement)
end

--[[
    Truncates strings to a certain length by adding an ellipsis at the end

    This method will not break on unicode boundary and also attempts to stop
    on a whitespace.
]]
function AppsFlyerUtil.truncateLength(str, len)
    len = len or DEFAULT_TRUNCATE_LENGTH

    -- No need to truncate if the string is an acceptable length alrady
    if str:len() <= len then
        return str
    end

    local newString = ""
    local ellipsisLength = ELLIPSIS:len()

    -- Iterate over all utf8 graphemes in the string
    for first, last in utf8.graphemes(str) do
        local grapheme = str:sub(first, last) 

        -- check to see if we can fit the grapheme and "..."
        if newString:len() + grapheme:len() + ellipsisLength > len then
            break
        else
            newString = newString .. grapheme
        end
    end

    -- break on a word boundary, and add "..." to the end
    local result, count = newString:gsub("%s+%S-$", ELLIPSIS, 1)

    -- if a word boundary was detected, we already added the "..."
    if count > 0 then
        newString = result
    -- otherwise add it
    else
        newString = newString .. ELLIPSIS
    end

    return newString
end

--[[
    Replace new lines AND truncate the string
]]
function AppsFlyerUtil.sanitizeDescription(description)
    description = AppsFlyerUtil.replaceNewlines(description)
    description = AppsFlyerUtil.truncateLength(description)

    return description
end

return AppsFlyerUtil
