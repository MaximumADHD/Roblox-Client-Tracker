# GoodSignal
A Roblox Lua Signal implementation that has full API and behavioral parity with Roblox' `RBXScriptSignal` type.

# Full API

```lua
-- Create
local sig = Signal.new()

-- Connect and Fire
local connection = sig:Connect(function(arg1, arg2) ... end)
sig:Fire(param1, param2)

-- Wait on Fire
local param1, param2 = sig:Wait()

-- Disconnect
connection:Disconnect()
sig:DisconnectAll()
```
# No Memory Leaks!
`GoodSignal` is implemented in pure Lua (using the task library, rather than internally using a BindableEvent), so it does not suffer from memory leaks. Even if you don't `Disconnect` all of the connections on a GoodSignal, everything will still be GCed normally.
