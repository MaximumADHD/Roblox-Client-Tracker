# signals-react

React hooks for integrating Signals with React components.

## Overview

`signals-react` provides React hooks that bridge Signals' reactive system with React's component model. These hooks enable React components to automatically re-render when signal values change.

## Table of Contents

- [API Reference](#api-reference)
  - [useSignalState](#usesignalstate)
  - [useSignalBinding](#usesignalbinding)
- [Examples](#examples)
- [Best Practices](#best-practices)

## API Reference

### useSignalState

Subscribe a React component to a signal, causing re-renders when the signal changes.

```luau
function useSignalState<T>(getter: getter<T>): T
```

#### Parameters

- **getter**: A signal getter from `createSignal` or `createComputed`

#### Returns

- The current value of the signal

#### Behavior

- Subscribes the component to the signal
- Causes component re-render when signal value changes
- Automatically cleans up subscription when component unmounts
- Uses `useMutableSource` for efficient updates (when feature flag enabled)

#### Example

```luau
local React = require(Packages.React)
local Signals = require(Packages.Signals)
local SignalsReact = require(Packages.SignalsReact)

local useSignalState = SignalsReact.useSignalState

-- Create signals outside component
local getCount, setCount = Signals.createSignal(0)

local function Counter()
    -- Component re-renders when count changes
    local count = useSignalState(getCount)
    
    return React.createElement("TextLabel", {
        Text = `Count: {count}`,
        Size = UDim2.fromOffset(200, 50),
    })
end

-- Somewhere else in your app
setCount(5) -- Counter component automatically re-renders
```

---

### useSignalBinding

Convert a signal into a React binding for use with Roblox instance properties.

```luau
function useSignalBinding<T>(getter: getter<T>): Binding<T>
```

#### Parameters

- **getter**: A signal getter from `createSignal` or `createComputed`

#### Returns

- A React `Binding<T>` that updates when the signal changes

#### Behavior

- Creates a React binding that tracks the signal
- Updates the binding when signal value changes
- Automatically cleans up subscription when component unmounts
- Ideal for properties that accept bindings

#### Example

```luau
local React = require(Packages.React)
local Signals = require(Packages.Signals)
local SignalsReact = require(Packages.SignalsReact)

local useSignalBinding = SignalsReact.useSignalBinding

-- Create signal outside component
local getOpacity, setOpacity = Signals.createSignal(1)

local function FadingFrame()
    -- Convert signal to binding
    local opacityBinding = useSignalBinding(getOpacity)
    
    return React.createElement("Frame", {
        Size = UDim2.fromOffset(100, 100),
        BackgroundTransparency = opacityBinding, -- Use binding directly
    })
end

-- Animate opacity elsewhere
task.spawn(function()
    for i = 1, 0, -0.1 do
        setOpacity(i)
        task.wait(0.1)
    end
end)
```

## Examples

### Basic Counter

```luau
local React = require(Packages.React)
local Signals = require(Packages.Signals)
local SignalsReact = require(Packages.SignalsReact)

local useSignalState = SignalsReact.useSignalState

-- Global state
local getCount, setCount = Signals.createSignal(0)

local function increment()
    setCount(function(prev) return prev + 1 end)
end

local function Counter()
    local count = useSignalState(getCount)
    
    return React.createElement("Frame", {
        Size = UDim2.fromOffset(200, 100),
    }, {
        Label = React.createElement("TextLabel", {
            Text = `Count: {count}`,
            Size = UDim2.new(1, 0, 0.5, 0),
        }),
        
        Button = React.createElement("TextButton", {
            Text = "Increment",
            Size = UDim2.new(1, 0, 0.5, 0),
            Position = UDim2.new(0, 0, 0.5, 0),
            [React.Event.Activated] = increment,
        }),
    })
end
```

### Computed Values

```luau
local React = require(Packages.React)
local Signals = require(Packages.Signals)
local SignalsReact = require(Packages.SignalsReact)

local useSignalState = SignalsReact.useSignalState

-- State
local getFirstName, setFirstName = Signals.createSignal("John")
local getLastName, setLastName = Signals.createSignal("Doe")

-- Derived state
local getFullName = Signals.createComputed(function(scope)
    return `{getFirstName(scope)} {getLastName(scope)}`
end)

local function NameDisplay()
    local fullName = useSignalState(getFullName)
    
    return React.createElement("TextLabel", {
        Text = fullName,
        Size = UDim2.fromOffset(200, 50),
    })
end
```

### Animated UI with Bindings

```luau
local React = require(Packages.React)
local Signals = require(Packages.Signals)
local SignalsReact = require(Packages.SignalsReact)

local useSignalBinding = SignalsReact.useSignalBinding

local getRotation, setRotation = Signals.createSignal(0)

-- Animate in background
task.spawn(function()
    while true do
        setRotation(function(prev) return (prev + 1) % 360 end)
        task.wait(0.016) -- ~60 FPS
    end
end)

local function SpinningSquare()
    local rotation = useSignalBinding(getRotation)
    
    return React.createElement("Frame", {
        Size = UDim2.fromOffset(100, 100),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.fromScale(0.5, 0.5),
        Rotation = rotation, -- Binding updates automatically
    })
end
```

### Multiple Signals

```luau
local React = require(Packages.React)
local Signals = require(Packages.Signals)
local SignalsReact = require(Packages.SignalsReact)

local useSignalState = SignalsReact.useSignalState

local getHealth, setHealth = Signals.createSignal(100)
local getMana, setMana = Signals.createSignal(50)

local function PlayerStats()
    local health = useSignalState(getHealth)
    local mana = useSignalState(getMana)
    
    return React.createElement("Frame", {
        Size = UDim2.fromOffset(200, 100),
    }, {
        HealthLabel = React.createElement("TextLabel", {
            Text = `Health: {health}`,
            Size = UDim2.new(1, 0, 0.5, 0),
        }),
        
        ManaLabel = React.createElement("TextLabel", {
            Text = `Mana: {mana}`,
            Size = UDim2.new(1, 0, 0.5, 0),
            Position = UDim2.new(0, 0, 0.5, 0),
        }),
    })
end
```

### Conditional Rendering

```luau
local React = require(Packages.React)
local Signals = require(Packages.Signals)
local SignalsReact = require(Packages.SignalsReact)

local useSignalState = SignalsReact.useSignalState

local getIsLoggedIn, setIsLoggedIn = Signals.createSignal(false)
local getUsername, setUsername = Signals.createSignal("Guest")

local function UserPanel()
    local isLoggedIn = useSignalState(getIsLoggedIn)
    local username = useSignalState(getUsername)
    
    if isLoggedIn then
        return React.createElement("TextLabel", {
            Text = `Welcome, {username}!`,
            Size = UDim2.fromOffset(200, 50),
        })
    else
        return React.createElement("TextLabel", {
            Text = "Please log in",
            Size = UDim2.fromOffset(200, 50),
        })
    end
end
```

## Best Practices

### 1. Create Signals Outside Components

Signals should typically be created outside React components to persist across renders:

```luau
-- ✅ Good: Signal created outside component
local getCount, setCount = Signals.createSignal(0)

local function Counter()
    local count = useSignalState(getCount)
    return React.createElement("TextLabel", { Text = count })
end

-- ❌ Bad: Signal recreated on every render
local function Counter()
    local getCount, setCount = Signals.createSignal(0) -- DON'T DO THIS
    local count = useSignalState(getCount)
    return React.createElement("TextLabel", { Text = count })
end
```

### 2. Use Bindings for Properties

When a property accepts bindings, prefer `useSignalBinding` over `useSignalState`:

```luau
-- ✅ Good: Direct binding, no re-renders
local function AnimatedFrame()
    local opacity = useSignalBinding(getOpacity)
    return React.createElement("Frame", {
        BackgroundTransparency = opacity -- Updates without re-render
    })
end

-- ❌ Less efficient: Causes component re-render
local function AnimatedFrame()
    local opacity = useSignalState(getOpacity)
    return React.createElement("Frame", {
        BackgroundTransparency = opacity -- Component re-renders
    })
end
```

### 3. Combine Signals for Complex State

Use `createComputed` to derive complex state before passing to React:

```luau
-- ✅ Good: Derived in computed
local getColor = Signals.createComputed(function(scope)
    local health = getHealth(scope)
    if health > 75 then
        return Color3.new(0, 1, 0)
    elseif health > 25 then
        return Color3.new(1, 1, 0)
    else
        return Color3.new(1, 0, 0)
    end
end)

local function HealthBar()
    local color = useSignalBinding(getColor)
    return React.createElement("Frame", { BackgroundColor3 = color })
end
```

### 4. Separate State Management from UI

Keep state management logic separate from UI components:

```luau
-- state.lua
local Signals = require(Packages.Signals)

local getPlayers, setPlayers = Signals.createSignal({})
local getSelectedPlayer, setSelectedPlayer = Signals.createSignal(nil)

return {
    getPlayers = getPlayers,
    setPlayers = setPlayers,
    getSelectedPlayer = getSelectedPlayer,
    setSelectedPlayer = setSelectedPlayer,
}

-- PlayerList.lua
local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local state = require(script.Parent.state)

local function PlayerList()
    local players = SignalsReact.useSignalState(state.getPlayers)
    -- Render players...
end
```

### 5. Minimize Re-renders

Only subscribe to the signals you actually need:

```luau
-- ✅ Good: Only subscribes to what's displayed
local function PlayerName()
    local name = useSignalState(getName) -- Only re-renders on name change
    return React.createElement("TextLabel", { Text = name })
end

-- ❌ Bad: Subscribes to unnecessary data
local function PlayerName()
    local player = useSignalState(getPlayer) -- Re-renders on ANY player property change
    return React.createElement("TextLabel", { Text = player.name })
end
```
