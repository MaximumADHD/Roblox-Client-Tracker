local VirtualizerModule = require(script.Virtualizer)

export type Assignment<T> = VirtualizerModule.Assignment<T>
export type ViewState<T> = VirtualizerModule.ViewState<T>
export type Measurement<ItemView, T> = VirtualizerModule.Measurement<ItemView, T>
export type ScrollAlignment = VirtualizerModule.ScrollAlignment
export type ScrollStateBeforeChange = VirtualizerModule.ScrollStateBeforeChange
export type ItemPlacement = VirtualizerModule.ItemPlacement
export type RecyclingScope<ItemView, ItemViewType> = VirtualizerModule.RecyclingScope<ItemView, ItemViewType>
export type Options<ItemView, T, ItemViewType> = VirtualizerModule.Options<ItemView, T, ItemViewType>
export type Virtualizer<ItemView, T, ItemViewType> = VirtualizerModule.Virtualizer<ItemView, T, ItemViewType>

return VirtualizerModule
