-- todo(rtanna): Move DevProducts and Places tables to use this

local FFlagStudioEnableBadgesInMonetizationPage = game:GetFastFlag("StudioEnableBadgesInMonetizationPage")

local KeyProvider = {}

local Plugin = script.Parent.Parent.Parent

function KeyProvider.getCopyIdKeyName()
    assert(FFlagStudioEnableBadgesInMonetizationPage)
    
    return "CopyIDToClipboard"
end

function KeyProvider.getConfigureKeyName()
    assert(FFlagStudioEnableBadgesInMonetizationPage)
    
    return "Configure"
end

return KeyProvider
