--!strict
--[[
    See CanvasUtil.lua for the implementation of CanvasContext
]]

local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local CanvasUtil = require(Graphing.Util.CanvasUtil)

local CanvasContext = React.createContext(CanvasUtil.createDefaultFunctions())
return CanvasContext
