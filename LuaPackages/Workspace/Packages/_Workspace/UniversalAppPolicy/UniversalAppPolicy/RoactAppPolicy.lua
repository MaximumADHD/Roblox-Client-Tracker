local Root = script.Parent
local Packages = Root.Parent
local PolicyProvider = require(Packages.PolicyProvider)
local Logger = require(Packages.Loggers).Logger

local UniversalAppPolicy = require(script.Parent.UniversalAppPolicy)

-- FIXME APPFDN-1851: The parent logger should really be set on an instance-by-instance basis rather than as a library global
PolicyProvider.Logger:setParent(Logger)

return UniversalAppPolicy
