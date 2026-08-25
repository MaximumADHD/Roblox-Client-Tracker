-- This context exists to allow injecting TelemetryService mocks in tests
-- We can't use the mockDataModel setting in jest, since that breaks a lot of DataModel operations

local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)

-- Default to the real TelemetryService
return React.createContext(game:GetService("TelemetryService"))
