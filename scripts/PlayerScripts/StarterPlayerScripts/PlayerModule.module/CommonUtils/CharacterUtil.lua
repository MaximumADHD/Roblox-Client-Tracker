--!strict
--[[
    Utility for handing LocalPlayer, Character and instances under Character (including Humanoid)
    This is a static class.
--]]

local Players = game:GetService("Players")

local CommonUtils = script.Parent
local ConnectionUtil = require(CommonUtils:WaitForChild("ConnectionUtil"))

local CONNECTIONS = {
    LOCAL_PLAYER = "LOCAL_PLAYER",
    ON_LOCAL_PLAYER = "ON_LOCAL_PLAYER",
    CHARACTER_ADDED = "CHARACTER_ADDED",
    ON_CHARACTER = "ON_CHARACTER",
    CHARACTER_CHILD_ADDED = "CHARACTER_CHILD_ADDED",
}
export type CharacterUtilClass = {
    -- Returns the LocalPlayer if it exists
    getLocalPlayer: () -> Player?,

    -- Runs the function with the LocalPlayer when it is available (which may be immediately)
    onLocalPlayer: (func: (Player) -> ()) -> RBXScriptConnection,

    -- Returns the Character if it exists
    getCharacter: () -> Model?,

    -- Runs the function with the Character when it is available
    -- and anytime it changes
    onCharacter: (func: (Model) -> ()) -> RBXScriptConnection, 

    -- Returns the Instance under the Character with the given name if it exists
    getChild: (name: string, className: string) -> Instance?,

    -- Runs the function with the Instance under the Character with the given name when it is available
    -- and anytime it changes
    onChild: (name: string, className: string, func: (Instance) -> ()) -> RBXScriptConnection, 

    -- stores connections to engine APIs which may change LocalPlayer, Character or instances under Character
    _connectionUtil: ConnectionUtil.ConnectionUtil,
    -- stores BindableEvents to tell interested parties when LocalPlayer, Character or instances under Character become valid
    _boundEvents: {[string]: BindableEvent},
    -- gets the BindableEvent for the given name, creating it if it doesn't exist
    _getOrCreateBoundEvent: (name: string) -> BindableEvent,
}

local CharacterUtil: CharacterUtilClass = {} :: CharacterUtilClass

CharacterUtil._connectionUtil = ConnectionUtil.new()
CharacterUtil._boundEvents = {}

function CharacterUtil.getLocalPlayer()
    return Players.LocalPlayer
end

function CharacterUtil.onLocalPlayer(func)
    local localPlayer = CharacterUtil.getLocalPlayer()
    if localPlayer then
        func(localPlayer)
    end

	-- connect to potential local player changes
	CharacterUtil._connectionUtil:trackConnection(
		CONNECTIONS.LOCAL_PLAYER,
		Players:GetPropertyChangedSignal("LocalPlayer"):Connect(function()
			local localPlayer = CharacterUtil.getLocalPlayer()
			assert(localPlayer)
			CharacterUtil._getOrCreateBoundEvent(CONNECTIONS.LOCAL_PLAYER):Fire(localPlayer) -- reuse connnection key for boundEvents
		end)
	)

    local boundEvent = CharacterUtil._getOrCreateBoundEvent(CONNECTIONS.LOCAL_PLAYER)
    return boundEvent.Event:Connect(func)
end

function CharacterUtil.getCharacter()
    local localPlayer = CharacterUtil.getLocalPlayer()
    if not localPlayer then
        return nil
    end
    return localPlayer.Character
end

function CharacterUtil.onCharacter(func)
	CharacterUtil._connectionUtil:trackConnection(
		CONNECTIONS.ON_LOCAL_PLAYER,
        -- check the character every time the local player changes
		CharacterUtil.onLocalPlayer(function(localPlayer)
			local character = CharacterUtil.getCharacter()
			if character then
				func(character)
			end

			CharacterUtil._connectionUtil:trackConnection(
				CONNECTIONS.CHARACTER_ADDED,
                -- alert character connections on CharacterAdded
				localPlayer.CharacterAdded:Connect(function(newCharacter)
					assert(newCharacter)
					CharacterUtil._getOrCreateBoundEvent(CONNECTIONS.CHARACTER_ADDED):Fire(newCharacter) -- reuse connnection key for boundEvents
				end)
			)
		end)
	)
    
    local boundEvent = CharacterUtil._getOrCreateBoundEvent(CONNECTIONS.CHARACTER_ADDED)
    return boundEvent.Event:Connect(func)
end

function CharacterUtil.getChild(name: string, className: string)
    local character = CharacterUtil.getCharacter()
    if not character then
        return nil
    end
    local child = character:FindFirstChild(name)
    if child and child:IsA(className) then
        return child
    end
    return nil
end

function CharacterUtil.onChild(name: string, className: string, func)
	CharacterUtil._connectionUtil:trackConnection(
		CONNECTIONS.ON_CHARACTER,
		-- check character children on character changes
		CharacterUtil.onCharacter(function(character)
			local child = CharacterUtil.getChild(name, className)
			if child then
				func(child)
			end

			-- alert connected functions if the new child matches
			CharacterUtil._connectionUtil:trackConnection(
				CONNECTIONS.CHARACTER_CHILD_ADDED,
				character.ChildAdded:Connect(function(newChild)
					if newChild.Name == name and newChild:IsA(className) then
						CharacterUtil._getOrCreateBoundEvent(CONNECTIONS.CHARACTER_CHILD_ADDED .. name .. className)
							:Fire(newChild)
					end
				end)
			)
		end)
	)

    local boundEvent = CharacterUtil._getOrCreateBoundEvent(CONNECTIONS.CHARACTER_CHILD_ADDED .. name .. className)
    return boundEvent.Event:Connect(func)
end

function CharacterUtil._getOrCreateBoundEvent(name: string)
    if not CharacterUtil._boundEvents[name] then
        CharacterUtil._boundEvents[name] = Instance.new("BindableEvent")
    end
    return CharacterUtil._boundEvents[name]
end

return CharacterUtil