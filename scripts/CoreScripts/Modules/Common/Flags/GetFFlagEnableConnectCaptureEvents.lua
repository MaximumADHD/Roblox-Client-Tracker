game:DefineFastFlag("EnableConnectCaptureEvents", false) 
-- This script is used to enable the Capture Service Feed APIs

return function()
    return game:GetFastFlag("EnableConnectCaptureEvents")
end