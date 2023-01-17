local RoactServiceTags = script:FindFirstAncestor("RoactServiceTags")
local Packages = RoactServiceTags.Parent

local RoactServices = require(Packages.RoactServices).RoactServices
local service = RoactServices.createService(script.Name)
return service
