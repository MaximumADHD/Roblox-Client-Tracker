--[[
    MotionConfigContext.lua
    
    Provides global configuration context for the motion system.
    Allows for top-level configuration of animation behavior.
    
    Potential configurations:
    - Transform coordinate systems
    - Reduced motion preferences
    - Global animation settings
    - Security settings (when relevant)
    
    Note: This is a minimal implementation focused on Roblox needs,
    removing web-specific features from the original Framer Motion.
]]

local Motion = script.Parent.Parent
local Packages = Motion.Parent
local React = require(Packages.React)

-- Default configuration with Roblox-specific options
local defaultConfig = {
	-- Configuration options can be added here as needed
}

local MotionConfigContext = React.createContext(defaultConfig)

return MotionConfigContext
