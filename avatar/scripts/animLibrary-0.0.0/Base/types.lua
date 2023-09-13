export type Dictionary<K, V> = { [K]: V }
export type Map = Dictionary<string, any>

export type Context = ContextT<any>
export type ContextT<T> = {
    params: Map,
    exposeEvent: (self: T, eventName: string) -> (),
    fireEvent: (self: T, eventName: string, payload: Map?) -> (),
}

export type PropsTable = {
    [string]: any,
    setParams: (PropsTable, { [string]: any }) -> (),
    override: (PropsTable, Map?) -> (),
    getAllValues: (PropsTable) -> Map,
}

export type Layer = LayerInternal<{}, Layer>
export type FiniteLayer = FiniteLayerInternal<{}, FiniteLayer>
export type ExtendLayer<T> = LayerInternal<T, Layer>
export type ExtendFiniteLayer<T> = FiniteLayerInternal<T, FiniteLayer>

export type DebugData = {
    id: string,
    name: string?,
    className: string,
    state: Map,
    props: Map?,
    watches: Map?,
    children: Map?,
}

type LayerInternal<T, C> = T & {
    __layerName: string,
    name: string,
    context: Context,
    props: PropsTable,
    state: {},
    linkData: Map?,
    defaultProps: Map,
    defaultLinkData: Map?,
    children: { C },
    init: (self: LayerInternal<T, C>) -> (),
    update: (self: LayerInternal<T, C>, deltaTime: number) -> (),
    evaluate: (self: LayerInternal<T, C>, mask: AnimationMask) -> AnimationPose,
    reset: (self: LayerInternal<T, C>) -> (),
    __resetInternal: (self: LayerInternal<T, C>) -> (),
    getId: (self: LayerInternal<T, C>) -> string,
    overrideProperties: (self: LayerInternal<T, C>, propOverrides: Map) -> (),
    getChildDebugData: (self: LayerInternal<T, C>, index: number, child: C) -> Map?,
    getDebugData: (self: LayerInternal<T, C>) -> DebugData,
    getLayerWatches: (self: LayerInternal<T, C>) -> Map?,
}

type FiniteLayerInternal<T, C> = LayerInternal<T & {
    getDuration: (self: FiniteLayerInternal<T, C>) -> number,
    updateToPhase: (self: FiniteLayerInternal<T, C>, phasePosition: number) -> (),
}, C>

return {}
