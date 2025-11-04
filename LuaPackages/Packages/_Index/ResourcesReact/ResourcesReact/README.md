# resources-react

React hooks for integrating the Resources pattern with React component lifecycles.

## Overview

`resources-react` provides React hooks that tie resource lifecycles to component lifecycles. This ensures that resources are automatically disposed when components unmount, preventing memory leaks and simplifying cleanup logic.

## Table of Contents

- [Installation](#installation)
- [API Reference](#api-reference)
  - [useResource](#useresource)
- [Examples](#examples)
- [Best Practices](#best-practices)

## Installation

```luau
local ResourcesReact = require(Packages.ResourcesReact)
```

## API Reference

### useResource

Ties a resource's lifecycle to a React component's lifecycle.

```luau
function useResource<A...>(
    resource: resource<A..., ()>,
    ...: A...
): ()
```

#### Parameters

- **resource**: A resource function that returns a dispose callback (and no other values)
- **...**: Arguments to pass to the resource function

#### Returns

- Nothing (cleanup is handled automatically)

#### Behavior

- Creates the resource when the component mounts
- Recreates the resource if dependencies change
- Disposes the resource when the component unmounts
- The resource function must return only a dispose callback (no additional values)

#### Type Constraint

The resource must have the signature `(...A) -> dispose` where `dispose` is `() -> ()`. Resources that return additional values are not supported.

#### Examples

**Basic usage:**
```luau
local React = require(Packages.React)
local Resources = require(Packages.Resources)
local ResourcesReact = require(Packages.ResourcesReact)

local createResource = Resources.createResource

-- Define a resource
local connectionResource = createResource(function(defer, signal, handler)
    local connection = signal:Connect(handler)
    
    return function()
        connection:Disconnect()
    end
end)

-- Use in component
local function MyComponent(props)
    -- Resource lifecycle tied to component
    ResourcesReact.useResource(
        connectionResource,
        props.signal,
        function()
            print("Signal fired!")
        end
    )
    
    return React.createElement("Frame")
end
-- Resource automatically disposed when component unmounts
```

## Examples

### Event Connection Management

```luau
local React = require(Packages.React)
local Resources = require(Packages.Resources)
local ResourcesReact = require(Packages.ResourcesReact)

local createResource = Resources.createResource

-- Resource for connecting to events
local function connectResource(signal, handler)
    local connection = signal:Connect(handler)
    return function()
        connection:Disconnect()
    end
end

-- Component that uses the resource
local function Button(props)
    local clickCount, setClickCount = React.useState(0)
    
    -- Automatically manages connection lifecycle
    ResourcesReact.useResource(
        connectResource,
        props.button.Activated,
        function()
            setClickCount(function(prev) return prev + 1 end)
        end
    )
    
    return React.createElement("TextLabel", {
        Text = `Clicked {clickCount} times`,
        Size = UDim2.fromOffset(200, 50),
    })
end
```

### Multiple Event Handlers

```luau
local React = require(Packages.React)
local Resources = require(Packages.Resources)
local ResourcesReact = require(Packages.ResourcesReact)

local createResource = Resources.createResource

-- Composite resource for button interactions
local buttonResource = createResource(function(defer, button, handlers)
    defer(function()
        local conn = button.Activated:Connect(handlers.onClick)
        return function() conn:Disconnect() end
    end)
    
    defer(function()
        local conn = button.MouseEnter:Connect(handlers.onHover)
        return function() conn:Disconnect() end
    end)
    
    defer(function()
        local conn = button.MouseLeave:Connect(handlers.onLeave)
        return function() conn:Disconnect() end
    end)
    
    return function()
        print("All button handlers cleaned up")
    end
end)

local function InteractiveButton(props)
    ResourcesReact.useResource(buttonResource, props.button, {
        onClick = function()
            print("Clicked!")
        end,
        onHover = function()
            props.button.BackgroundTransparency = 0.1
        end,
        onLeave = function()
            props.button.BackgroundTransparency = 0
        end,
    })
    
    return React.createElement("TextButton", {
        Text = "Hover and Click Me",
        Size = UDim2.fromOffset(200, 50),
    })
end
```

### Dynamic Dependencies

```luau
local React = require(Packages.React)
local Resources = require(Packages.Resources)
local ResourcesReact = require(Packages.ResourcesReact)

local createResource = Resources.createResource

local function connectResource(signal, handler)
    local connection = signal:Connect(handler)
    return function()
        connection:Disconnect()
    end
end

local function DynamicListener(props)
    local enabled, setEnabled = React.useState(true)
    
    -- Resource recreates when props.signal or enabled changes
    if enabled then
        ResourcesReact.useResource(
            connectResource,
            props.signal,
            function(...)
                print("Event fired:", ...)
            end
        )
    end
    
    return React.createElement("Frame", {
        Size = UDim2.fromOffset(200, 100),
    }, {
        ToggleButton = React.createElement("TextButton", {
            Text = enabled and "Disable" or "Enable",
            Size = UDim2.new(1, 0, 0.5, 0),
            [React.Event.Activated] = function()
                setEnabled(not enabled)
            end,
        }),
    })
end
```

### Timer Resource

```luau
local React = require(Packages.React)
local Resources = require(Packages.Resources)
local ResourcesReact = require(Packages.ResourcesReact)

local createResource = Resources.createResource

-- Timer resource
local timerResource = createResource(function(defer, duration, callback)
    local thread = task.delay(duration, callback)
    
    return function()
        task.cancel(thread)
    end
end)

local function TimedComponent(props)
    local visible, setVisible = React.useState(true)
    
    ResourcesReact.useResource(
        timerResource,
        5, -- 5 seconds
        function()
            setVisible(false)
            print("Timer expired!")
        end
    )
    
    if not visible then
        return nil
    end
    
    return React.createElement("TextLabel", {
        Text = "This will disappear in 5 seconds",
        Size = UDim2.fromOffset(300, 50),
    })
end
```

### Player Character Tracking

```luau
local React = require(Packages.React)
local Resources = require(Packages.Resources)
local ResourcesReact = require(Packages.ResourcesReact)

local createResource = Resources.createResource

-- Resource that tracks character health
local healthTrackerResource = createResource(function(defer, character, onHealthChange)
    local humanoid = character:WaitForChild("Humanoid")
    
    -- Initial health
    onHealthChange(humanoid.Health)
    
    -- Track changes
    defer(function()
        local conn = humanoid:GetPropertyChangedSignal("Health"):Connect(function()
            onHealthChange(humanoid.Health)
        end)
        return function()
            conn:Disconnect()
        end
    end)
    
    return function()
        print("Stopped tracking health")
    end
end)

local function HealthDisplay(props)
    local health, setHealth = React.useState(100)
    
    ResourcesReact.useResource(
        healthTrackerResource,
        props.character,
        setHealth
    )
    
    return React.createElement("TextLabel", {
        Text = `Health: {math.floor(health)}`,
        Size = UDim2.fromOffset(200, 50),
        BackgroundColor3 = health > 50 
            and Color3.new(0, 1, 0) 
            or Color3.new(1, 0, 0),
    })
end
```

### Cached Resource

```luau
local React = require(Packages.React)
local Resources = require(Packages.Resources)
local ResourcesReact = require(Packages.ResourcesReact)

local createResource = Resources.createResource
local createCachedResource = Resources.createCachedResource

-- Expensive shared resource
local databaseResource = createResource(function(defer)
    print("Connecting to database...")
    local db = { connected = true }
    
    return function()
        print("Disconnecting from database")
        db.connected = false
    end, db
end)

-- Cache it for sharing across components
local cachedDB = createCachedResource(databaseResource)

local function DatabaseConsumer(props)
    -- All instances share the same database
    ResourcesReact.useResource(cachedDB)
    
    return React.createElement("TextLabel", {
        Text = props.label,
        Size = UDim2.fromOffset(200, 50),
    })
end

-- Multiple components share one database connection
local function App()
    return React.createElement("Frame", {
        Size = UDim2.fromScale(1, 1),
    }, {
        Consumer1 = React.createElement(DatabaseConsumer, { label = "Consumer 1" }),
        Consumer2 = React.createElement(DatabaseConsumer, { label = "Consumer 2" }),
        Consumer3 = React.createElement(DatabaseConsumer, { label = "Consumer 3" }),
    })
end
-- Only prints "Connecting to database..." once
-- Prints "Disconnecting from database" when all unmount
```

### Service Integration

```luau
local React = require(Packages.React)
local Resources = require(Packages.Resources)
local ResourcesReact = require(Packages.ResourcesReact)

local createResource = Resources.createResource

-- Resource for RunService connection
local renderStepResource = createResource(function(defer, name, priority, callback)
    local RunService = game:GetService("RunService")
    
    RunService:BindToRenderStep(name, priority, callback)
    
    return function()
        RunService:UnbindFromRenderStep(name)
    end
end)

local function AnimatedComponent(props)
    local rotation, setRotation = React.useState(0)
    
    ResourcesReact.useResource(
        renderStepResource,
        "Rotation",
        Enum.RenderPriority.Camera.Value,
        function(deltaTime)
            setRotation(function(prev) return (prev + deltaTime * 60) % 360 end)
        end
    )
    
    return React.createElement("Frame", {
        Size = UDim2.fromOffset(100, 100),
        Rotation = rotation,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.fromScale(0.5, 0.5),
    })
end
```

## Best Practices

### 1. Create Resources Outside Components

Define resource functions outside component bodies:

```luau
-- ✅ Good: Defined once
local timerResource = createResource(function(defer, duration, callback)
    -- ...
end)

local function MyComponent(props)
    ResourcesReact.useResource(timerResource, 5, props.onComplete)
end

-- ❌ Bad: Recreated every render
local function MyComponent(props)
    local timerResource = createResource(function(defer, duration, callback)
        -- This creates a new resource every render!
    end)
    ResourcesReact.useResource(timerResource, 5, props.onComplete)
end
```

### 2. Return Only Dispose Function

`useResource` requires resources that return only a dispose callback:

```luau
-- ✅ Good: Only returns dispose
local resource = createResource(function(defer, arg)
    -- setup...
    return function()
        -- cleanup
    end
end)

-- ❌ Bad: Returns additional values
local resource = createResource(function(defer, arg)
    return function()
        -- cleanup
    end, someValue -- useResource doesn't support this
end)
```

### 3. Use for Cleanup, Not State

Use resources for cleanup logic, not state management:

```luau
-- ✅ Good: Cleanup with resource, state with useState
local function Component(props)
    local count, setCount = React.useState(0)
    
    ResourcesReact.useResource(connectionResource, props.signal, function()
        setCount(function(prev) return prev + 1 end)
    end)
    
    return React.createElement("TextLabel", { Text = count })
end

-- ❌ Bad: Trying to manage state with resource
local resource = createResource(function(defer)
    local count = 0 -- This won't trigger re-renders!
    return function() end, count
end)
```

### 4. Dependencies Change Recreation

Resources recreate when arguments change:

```luau
local function Component(props)
    -- Resource recreates when props.url changes
    ResourcesReact.useResource(fetchResource, props.url)
    
    -- Be careful with object literals (always different reference):
    ResourcesReact.useResource(
        resource,
        { option = props.value } -- New table every render!
    )
end
```

### 5. Combine with Other Hooks

Resources work well with other React hooks:

```luau
local function Component(props)
    local visible, setVisible = React.useState(true)
    
    -- Only create resource when visible
    if visible then
        ResourcesReact.useResource(expensiveResource, props.data)
    end
    
    return React.createElement("Frame", {
        Visible = visible,
    })
end
```

### 6. Clean Separation of Concerns

Keep resource logic separate from component logic:

```luau
-- resources.lua
local buttonInteractionResource = createResource(function(defer, button, handlers)
    -- All interaction setup here
end)

return {
    buttonInteraction = buttonInteractionResource,
}

-- Button.lua
local resources = require(script.Parent.resources)

local function Button(props)
    ResourcesReact.useResource(
        resources.buttonInteraction,
        props.button,
        props.handlers
    )
    
    return React.createElement("TextButton", props.ui)
end
```

### 7. Avoid Inline Functions as Arguments

Inline functions create new references every render, causing resource recreation:

```luau
-- ❌ Bad: Handler recreated every render
local function Component(props)
    ResourcesReact.useResource(
        connectionResource,
        props.signal,
        function() -- New function every render, resource recreates!
            print("Fired")
        end
    )
end

-- ✅ Better: Use useCallback
local function Component(props)
    local handler = React.useCallback(function()
        print("Fired")
    end, {})
    
    ResourcesReact.useResource(connectionResource, props.signal, handler)
end
```
