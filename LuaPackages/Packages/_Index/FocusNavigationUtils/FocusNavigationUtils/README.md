# Utils

Some small generic utilities used by the FocusNavigationService workspace, set aside so that they can be more easily extracted later if desired

## createSignal
```lua
type Subscription = {
    unsubscribe: () -> (),
}

type Signal<T> = {
    subscribe: (self: Signal<T>, (T) -> ()) -> Subscription
    getValue: (self: Signal<T>) -> T
}
type FireSignal<T> = (T) -> ()

function createSignal<T>(initialValue: T): (Signal<T>, FireSignal<T>)
```

Creates a subscribable signal object and returns it along with a function that can be used to fire the signal with new values.

Consumers of the signal can subscribe to it with the `subscribe` method or retrieve its current value with the `getValue` method.

Subscribing to a signal returns a Subscription object, which contains an `unsubscribe` method that disconnects the subscription, preventing it from being triggered by subsequent updates.

## shallowEqual
```lua
type Table = { [any]: any }

function shallowEqual(a: Table, b: Table): boolean
```
Shallowly compares two tables, returning true if they have the same members with the same values or false if they have differing keys or differing values for the same key.
