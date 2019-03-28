-- given a table of colors and constants, make a new table that colorizes and styles your elements
local Constants = require(script.Parent.Constants)
local isValidPalette = require(script.Parent.isValidPalette)

return function(palette)
    -- TO DO : make a helper function to validate that the palette has the right contents
    assert(isValidPalette(palette), "Provided palette table could not be validated.")

    local checkBox = {
        font = Constants.font,

        backgroundImage = "rbxasset://textures/GameSettings/UncheckedBox.png",
        selectedImage = "rbxasset://textures/GameSettings/CheckedBoxLight.png",

        backgroundColor = palette.backgroundColor,
        titleColor = palette.textColor,
    }

    local roundFrame = {
        backgroundImage = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
        borderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
    }

    return {
         checkBox = checkBox,
         roundFrame = roundFrame,
    }
end