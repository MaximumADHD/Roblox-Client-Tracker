local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    LocalPlayer = Players.LocalPlayer
end

local CanPlayEmotes = {
    Value = false,
    ChangedEvent = Instance.new("BindableEvent")
}

local function getAnimateScript(character)
    if not character then
        return nil
    end

    local animate = character:FindFirstChild("Animate")
    if animate and animate:IsA("LocalScript") then
        return animate
    end

    return nil
end

local function getPlayEmoteBindable(character)
    local animate = getAnimateScript(character)
    if not animate then
        return nil
    end

    local playEmoteBindable = animate:FindFirstChild("PlayEmote")
    if playEmoteBindable and playEmoteBindable:IsA("BindableFunction") then
        return playEmoteBindable
    end

    return nil
end

local function getCanPlayEmotes(character)
    local playEmoteBindable = getPlayEmoteBindable(character)
    return playEmoteBindable ~= nil
end

local animateAddedListener, playEmoteAddedListener, playEmoteRemovedListener

local function disconnectListeners()
    if animateAddedListener then
        animateAddedListener:Disconnect()
        animateAddedListener = nil
    end

    if playEmoteAddedListener then
        playEmoteAddedListener:Disconnect()
        playEmoteAddedListener = nil
    end

    if playEmoteRemovedListener then
        playEmoteRemovedListener:Disconnect()
        playEmoteRemovedListener = nil
    end
end

local checkConnect

local function checkUpdate(character)
    local newCanPlayEmotes = getCanPlayEmotes(character)

    if CanPlayEmotes.Value ~= newCanPlayEmotes then
        CanPlayEmotes.Value = newCanPlayEmotes
        CanPlayEmotes.ChangedEvent:Fire(newCanPlayEmotes)
    end

    checkConnect(newCanPlayEmotes, character)
end

local function connectAnimateAddedListener(character)
    local animate = getAnimateScript(character)
    if animate then
        checkUpdate(character)
        return
    end

    animateAddedListener = character.ChildAdded:Connect(function(child)
        if child:IsA("LocalScript") and child.Name == "Animate" then
            checkUpdate(character)
        end
    end)
end

local function connectPlayEmoteAddedListener(character, animateScript)
    local playEmoteBindable = getPlayEmoteBindable(character)
    if playEmoteBindable then
        checkUpdate(character)
        return
    end

    playEmoteAddedListener = animateScript.ChildAdded:Connect(function(child)
        if child:IsA("BindableFunction") and child.Name == "PlayEmote" then
            checkUpdate(character)
        end
    end)
end

local function connectPlayEmoteRemovedListener(character)
    local playEmoteBindable = getPlayEmoteBindable(character)
    if not playEmoteBindable then
        checkUpdate(character)
        return
    end

    playEmoteRemovedListener = playEmoteBindable.AncestryChanged:Connect(function(_, parent)
        if not parent or not playEmoteBindable:IsDescendantOf(character) then
            checkUpdate(character)
        end
    end)
end

checkConnect = function(canPlay, character)
    disconnectListeners()

    if not character then
        return
    end

    if canPlay then
        connectPlayEmoteRemovedListener(character)
    else
        local animateScript = getAnimateScript(character)

        if animateScript then
            connectPlayEmoteAddedListener(character, animateScript)
        else
            connectAnimateAddedListener(character)
        end
    end
end

local function onCharacterChanged(character)
    disconnectListeners()
    checkUpdate(character)
end

LocalPlayer:GetPropertyChangedSignal("Character"):Connect(function()
    onCharacterChanged(LocalPlayer.Character)
end)
onCharacterChanged(LocalPlayer.Character)

return CanPlayEmotes