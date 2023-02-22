local CorePackages = game:GetService("CorePackages")
local Package = require(CorePackages.Packages.DataLoader)

export type BatchLoadFn<K, V> = Package.BatchLoadFn<K, V>
export type Options<K, V, C> = Package.Options<K, V, C>
export type CacheMap<K, V> = Package.CacheMap<K, V>
export type DataLoader<K, V, C> = Package.DataLoader<K, V, C>

return Package
