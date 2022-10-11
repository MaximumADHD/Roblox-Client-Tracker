--!strict
local exports = {}
local ObservableModule = require(script.Observable)
local Observable = ObservableModule.Observable
exports.Observable = Observable

export type SubscriptionObserver<T> = ObservableModule.SubscriptionObserver<T>
export type Observer<T> = ObservableModule.Observer<T>
export type Subscriber<T> = ObservableModule.Subscriber<T>
export type Subscription<T> = ObservableModule.Subscription<T>
export type Observable<T> = ObservableModule.Observable<T>

return exports
