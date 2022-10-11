local Signal = require(script.Signal)
local Immutable = require(script.Immutable)

export type SignalHandle = Signal.SignalHandle
export type SignalCallback = Signal.SignalCallback
export type Signal = Signal.Signal
export type SignalClass = Signal.SignalClass

return {
    Signal = Signal,
    Immutable = Immutable,
}
