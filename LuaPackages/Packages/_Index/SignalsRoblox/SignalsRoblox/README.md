# signals-roblox

Roblox-specific utilities for integrating Signals with Roblox events and APIs.

## Overview

`signals-roblox` provides utilities for bridging Roblox's event system with Signals' reactive primitives. It enables reactive programming patterns with Roblox events and provides specialized effect management for instance lifecycles.

## Table of Contents

- [API Reference](#api-reference)
  - [createRBXEventSignal](#createrbxeventsignal)
  - [createDetachedEffect](#createdetachedeffect)
- [Examples](#examples)
- [Best Practices](#best-practices)

## API Reference

### createRBXEventSignal

Creates a signal that updates based on a Roblox event.

```luau
function createRBXEventSignal<T>(
    event: RBXScriptSignal,
    initialValue: (() -> T) | T,
    filter: ((...any) -> T)?
): (getter<T>, RBXScriptConnection)
```

#### Parameters

- **event**: The Roblox event to listen to (e.g., `Instance.Changed`, `UserInputService.InputBegan`)
- **initialValue**: Initial value for the signal, or a function that returns the initial value
- **filter** *(optional)*: Function to transform event arguments into the signal value. Defaults to returning the first argument

#### Returns

A tuple of:
- **getter**: `(scope | false | nil) -> T` - Signal getter that can be used with effects and computeds
- **connection**: `RBXScriptConnection` - The event connection that can be disconnected

#### Behavior

- Creates a signal initialized with `initialValue`
- Connects to the Roblox event
- Updates the signal whenever the event fires
- Filter function transforms event arguments into the signal value
- Connection must be manually disconnected when no longer needed

#### Examples

**Basic event handling:**
```luau
local Signals = require(Packages.Signals)
local SignalsRoblox = require(Packages.SignalsRoblox)

local button = script.Parent

-- Track button activation state
local getActivated, connection = SignalsRoblox.createRBXEventSignal(
    button.Activated,
    false, -- Initial value
    function() 
        return true  -- Set to true when clicked
    end
)

local dispose = Signals.createEffect(function(scope)
    if getActivated(scope) then
        print("Button was clicked!")
    end
end)

-- Cleanup
dispose()
connection:Disconnect()
```

**Input detection:**
```luau
local UserInputService = game:GetService("UserInputService")

local getWasMouseButtonInput, connection = SignalsRoblox.createRBXEventSignal(
    UserInputService.InputBegan,
    false, -- Initial: no mouse input
    function(input, gameProcessed)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            return true
        end
        return false
    end
)

local dispose = Signals.createEffect(function(scope)
    local wasMouseInput = getWasMouseButtonInput(scope)
    if wasMouseInput then
        print("Mouse button 1 detected")
    else
        print("No mouse button 1 input")
    end
end)

-- Cleanup
dispose()
connection:Disconnect()
```

**Property change tracking:**
```luau
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local getHealth, connection = SignalsRoblox.createRBXEventSignal(
    humanoid:GetPropertyChangedSignal("Health"),
    humanoid.Health, -- Initial health
    function()
        return humanoid.Health -- Return current health on change
    end
)

local dispose = Signals.createEffect(function(scope)
    local health = getHealth(scope)
    print(`Health changed to: {health}`)
end)

-- Cleanup
dispose()
connection:Disconnect()
```

**Complex event filtering:**
```luau
local workspace = game:GetService("Workspace")

-- Track only BasePart children
local getLastPartAdded, connection = SignalsRoblox.createRBXEventSignal(
    workspace.ChildAdded,
    nil, -- Initially no part
    function(child)
        if child:IsA("BasePart") then
            return child
        end
        return nil -- Ignore non-parts
    end
)

local dispose = Signals.createEffect(function(scope)
    local part = getLastPartAdded(scope)
    if part then
        print(`Part added: {part.Name}`)
    end
end)

-- Cleanup
dispose()
connection:Disconnect()
```

---

### createDetachedEffect

Creates an effect that can be disposed through an external mechanism, allowing the effect to outlive its creating scope.

```luau
function createDetachedEffect(
    effect: (scope, dispose) -> ()
): ()
```

#### Parameters

- **effect**: A function that receives:
  - **scope**: For tracking reactive dependencies
  - **dispose**: A function to call to dispose the effect

#### Returns

- Nothing (the disposal mechanism is provided inside the effect)

#### Behavior

- Creates an effect that runs immediately
- Provides a `dispose` callback to the effect function
- Effect can be disposed by calling the provided `dispose` function
- Uses a `BindableEvent` internally to manage lifecycle
- Automatically cleans up when disposed
- Useful for effects tied to instance lifecycles

#### Examples

**Effect tied to instance lifecycle:**
```luau
local Signals = require(Packages.Signals)
local SignalsRoblox = require(Packages.SignalsRoblox)

local getName, setName = Signals.createSignal("Player")

local function setupNameDisplay(instance)
    SignalsRoblox.createDetachedEffect(function(scope, dispose)
        -- Effect updates when name changes
        Signals.createEffect(function(innerScope)
            instance.Text = getName(innerScope)
        end)
        
        -- Dispose when instance is destroyed
        instance.Destroying:Once(dispose)
    end)
end

local label = Instance.new("TextLabel")
setupNameDisplay(label)

setName("NewName") -- label.Text updates
label:Destroy() -- Effect automatically disposed
```

**Managing player connections:**
```luau
local Signals = require(Packages.Signals)
local SignalsRoblox = require(Packages.SignalsRoblox)
local Players = game:GetService("Players")

local getPlayerCount, setPlayerCount = Signals.createSignal(#Players:GetPlayers())

local function trackPlayerCount()
    SignalsRoblox.createDetachedEffect(function(scope, dispose)
        local function updateCount()
            setPlayerCount(#Players:GetPlayers())
        end
        
        local conn1 = Players.PlayerAdded:Connect(updateCount)
        local conn2 = Players.PlayerRemoving:Connect(updateCount)
        
        -- Create nested effect
        local effectDispose = Signals.createEffect(function(innerScope)
            print(`Player count: {getPlayerCount(innerScope)}`)
        end)
        
        -- Cleanup callback
        local function cleanup()
            conn1:Disconnect()
            conn2:Disconnect()
            effectDispose()
            dispose()
        end
        
        return cleanup
    end)
end
```

**Character-scoped effects:**
```luau
local Signals = require(Packages.Signals)
local SignalsRoblox = require(Packages.SignalsRoblox)

local function onCharacterAdded(character)
    SignalsRoblox.createDetachedEffect(function(scope, dispose)
        local humanoid = character:WaitForChild("Humanoid")
        
        -- Track health reactively
        local getHealth, connection = SignalsRoblox.createRBXEventSignal(
            humanoid:GetPropertyChangedSignal("Health"),
            humanoid.Health,
            function() return humanoid.Health end
        )
        
        local effectDispose = Signals.createEffect(function(innerScope)
            local health = getHealth(innerScope)
            print(`Health: {health}`)
            
            if health <= 0 then
                print("Character died!")
            end
        end)
        
        -- Cleanup when character removed
        character.Destroying:Once(function()
            connection:Disconnect()
            effectDispose()
            dispose()
        end)
    end)
end

local Players = game:GetService("Players")
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(onCharacterAdded)
end)
```

## Examples

### Complete User Input System

```luau
local Signals = require(Packages.Signals)
local SignalsRoblox = require(Packages.SignalsRoblox)
local UserInputService = game:GetService("UserInputService")

-- Track multiple input types
local getIsJumping, jumpConnection = SignalsRoblox.createRBXEventSignal(
    UserInputService.JumpRequest,
    false,
    function() return true end
)

local getLastKeyPressed, keyConnection = SignalsRoblox.createRBXEventSignal(
    UserInputService.InputBegan,
    Enum.KeyCode.Unknown,
    function(input, gameProcessed)
        if not gameProcessed and input.KeyCode then
            return input.KeyCode
        end
        return Enum.KeyCode.Unknown
    end
)

-- React to inputs
local dispose = Signals.createEffect(function(scope)
    if getIsJumping(scope) then
        print("Player jumped!")
    end
    
    local key = getLastKeyPressed(scope)
    if key ~= Enum.KeyCode.Unknown then
        print(`Key pressed: {key.Name}`)
    end
end)

-- Cleanup
dispose()
jumpConnection:Disconnect()
keyConnection:Disconnect()
```

### Dynamic UI Element

```luau
local Signals = require(Packages.Signals)
local SignalsRoblox = require(Packages.SignalsRoblox)

local screenGui = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
local statusLabel = screenGui:WaitForChild("StatusLabel")

-- Create reactive state
local getStatus, setStatus = Signals.createSignal("Idle")
local getColor, setColor = Signals.createSignal(Color3.new(1, 1, 1))

-- Bind UI to signals using detached effect
SignalsRoblox.createDetachedEffect(function(scope, dispose)
    local effectDispose = Signals.createEffect(function(innerScope)
        statusLabel.Text = getStatus(innerScope)
        statusLabel.TextColor3 = getColor(innerScope)
    end)
    
    statusLabel.Destroying:Once(function()
        effectDispose()
        dispose()
    end)
end)

-- Update state from elsewhere
setStatus("Loading...")
setColor(Color3.new(1, 1, 0))

task.wait(2)

setStatus("Ready!")
setColor(Color3.new(0, 1, 0))
```

### Workspace Monitoring

```luau
local Signals = require(Packages.Signals)
local SignalsRoblox = require(Packages.SignalsRoblox)
local workspace = game:GetService("Workspace")

-- Track parts added to workspace
local getPartCount, setPartCount = Signals.createSignal(0)

local added, addedConnection = SignalsRoblox.createRBXEventSignal(
    workspace.DescendantAdded,
    nil,
    function(descendant)
        if descendant:IsA("BasePart") then
            return true
        end
        return false
    end
)

local removed, removedConnection = SignalsRoblox.createRBXEventSignal(
    workspace.DescendantRemoving,
    nil,
    function(descendant)
        if descendant:IsA("BasePart") then
            return true
        end
        return false
    end
)

-- Update count reactively
local dispose = Signals.createEffect(function(scope)
    if added(scope) then
        setPartCount(function(prev) return prev + 1 end)
    end
    
    if removed(scope) then
        setPartCount(function(prev) return math.max(0, prev - 1) end)
    end
end)

-- Cleanup
dispose()
addedConnection:Disconnect()
removedConnection:Disconnect()
```

## Best Practices

### 1. Always Disconnect Connections

`createRBXEventSignal` returns a connection that must be manually disconnected:

```luau
-- ✅ Good: Connection stored and disconnected
local getter, connection = SignalsRoblox.createRBXEventSignal(event, initialValue)
-- ... use getter ...
connection:Disconnect()

-- ❌ Bad: Connection lost, potential memory leak
local getter = SignalsRoblox.createRBXEventSignal(event, initialValue)
```

### 2. Use Filters to Transform Events

Filter functions make event data more useful:

```luau
-- ✅ Good: Extract relevant data
local getPlayerName, connection = SignalsRoblox.createRBXEventSignal(
    Players.PlayerAdded,
    "",
    function(player)
        return player.Name
    end
)

-- ❌ Less useful: Stores entire player object
local getPlayer, connection = SignalsRoblox.createRBXEventSignal(
    Players.PlayerAdded,
    nil
)
```

### 3. Tie Detached Effects to Instance Lifecycles

Use `createDetachedEffect` with instance destruction events:

```luau
-- ✅ Good: Automatic cleanup on destruction
SignalsRoblox.createDetachedEffect(function(scope, dispose)
    -- Setup effects...
    instance.Destroying:Once(dispose)
end)

-- ❌ Bad: Manual tracking required
local dispose = Signals.createEffect(function(scope)
    -- Effect logic...
end)
-- Easy to forget to call dispose()
```

### 4. Combine with Regular Signals

Mix Roblox events with regular signals for complex state:

```luau
local getHealth, healthConnection = SignalsRoblox.createRBXEventSignal(
    humanoid:GetPropertyChangedSignal("Health"),
    humanoid.Health,
    function() return humanoid.Health end
)

local getMaxHealth, maxHealthConnection = SignalsRoblox.createRBXEventSignal(
    humanoid:GetPropertyChangedSignal("MaxHealth"),
    humanoid.MaxHealth,
    function() return humanoid.MaxHealth end
)

-- Derived state
local getHealthPercent = Signals.createComputed(function(scope)
    local health = getHealth(scope)
    local maxHealth = getMaxHealth(scope)
    return (health / maxHealth) * 100
end)
```

### 5. Use Initial Values Wisely

Set appropriate initial values to avoid nil checks:

```luau
-- ✅ Good: Sensible default
local getHealth, connection = SignalsRoblox.createRBXEventSignal(
    humanoid:GetPropertyChangedSignal("Health"),
    humanoid.Health, -- Use current value as initial
    function() return humanoid.Health end
)

-- ❌ Less ideal: Forces nil handling
local getHealth, connection = SignalsRoblox.createRBXEventSignal(
    humanoid:GetPropertyChangedSignal("Health"),
    nil, -- Forces checks everywhere
    function() return humanoid.Health end
)
```
