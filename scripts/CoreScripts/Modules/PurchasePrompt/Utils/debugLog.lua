local FFlagPPDebugLogging = game:DefineFastFlag("PPDebugLogging", false)

return function(messageFunc)
    if not FFlagPPDebugLogging or not messageFunc then
        return
    end
    print("[PurchasePrompt]"..messageFunc())
end
