export type Dictionary<K, V> = { [K]: V }
export type Map = Dictionary<string, any>

export type BlendHandler = BlendHandlerT<any>
export type BlendHandlerT<T> = {
    requestBlend: (self: T, durationSeconds: number) -> (),
}

export type Context = ContextT<any, Layer>
export type ContextT<T, LayerType> = {
    params: Map,
    lod: number,
    rootLayer: LayerType,
    character: Model,
    fireEvent: (self: T, eventName: string?, payload: any) -> (),
    pollEvent: (self: T, eventName: string) -> boolean,
    notifyTreeChanged: (self: T) -> (),
    referenceLayers: { [string]: LayerType },
    blendHandler: BlendHandler?,
}

export type PropsManager = PropsManagerT<PropsManager>
export type PropsManagerT<T> = {
    NIL_DEFAULT_VALUE: any,
    NIL_DEFAULT_CALLBACK: any,

    evaluate: (self: T, params: Map) -> Map,
    override: (self: T, Map?) -> (),
    clone: (self: T) -> PropsManagerT<T>,
}

export type Layer = LayerInternal<{}, Layer>
export type FiniteLayer = FiniteLayerInternal<{}, FiniteLayer>
export type ExtendLayer<T> = LayerInternal<T & LayerProtected<ExtendLayer<T>>, Layer>
export type ExtendFiniteLayer<T> = FiniteLayerInternal<
    T & LayerProtected<ExtendFiniteLayer<T>>,
    FiniteLayer
>

export type DebugData = {
    id: string,
    name: string?,
    className: string,
    state: Map,
    props: Map?,
    watches: Map?,
    children: Map?,
    animationPose: AnimationPose?,
    animationMask: AnimationMask?,
}

--[[
    A single phase for phase matching. Phases are markers with time position that mark different
    sections of an animation.
]]
export type PhaseEvent = { name: string, position: number }

--[[
    A named group of phases. A group can belong to either a looping or non-looping animations.
]]
export type PhaseSignal = {
    -- The name of this PhaseSignal.
    name: string,
    -- Whether the phases in this group belong to a looping animation.
    isLooping: boolean,
    -- The list of PhaseEvents of this PhaseSignal.
    events: { PhaseEvent },
}

--[[
    The PhaseState type stores all of the information needed for phase matching.  When a layer
    recieves a PhaseState, it can synchronize its own phasePosition to the one passed in.
]]
export type PhaseState = {
    phaseSignal: PhaseSignal?, -- a list of all labeled "phases" in an animation
    normalizedTimePosition: number, -- the current normalized time position in this animation
}

export type LayerEventCallback = (thisLayer: any, eventData: any) -> ()

export type LayerDef = {
    layerName: string?,
    layerReferenceName: string?,
    layer: Layer,
    props: Map,
    linkData: Map,
    children: { LayerDef },
    new: (layerType: Layer) -> LayerDef,
    name: (self: LayerDef, name: string) -> LayerDef,
    referenceName: (self: LayerDef, name: string) -> LayerDef,
    addChild: (self: LayerDef, linkData: Map, def: LayerDef) -> LayerDef,
    inherit: (LayerDef) -> LayerDef,
    instantiate: (LayerDef, Context) -> Layer,

    [string]: (self: LayerDef, val: any) -> LayerDef,
}

type LayerProtected<T> = {
    -- Lifecycle methods. Subclasses of LayerInternal should implement these methods, but not call
    -- them directly.
    onInit: (self: T) -> (),
    onUpdate: (self: T, deltaTime: number, phaseState: PhaseState?) -> PhaseState?,
    onEvaluate: (self: T, mask: AnimationMask) -> AnimationPose,
    onReset: (self: T) -> (),
    onChildChanged: (self: T, childIndex: number) -> (),
}

type LayerInternal<T, C> = T & {
    __layerName: string,
    __debugPose: AnimationPose?,
    __debugMask: AnimationMask?,
    __debuggerConnected: boolean,
    __propsManager: PropsManager,
    name: string,
    context: ContextT<{}, C>,
    props: Map,
    state: {},
    tempState: Map,
    linkData: Map?,
    defaultProps: Map,
    defaultLinkData: Map?,
    parent: C?,
    children: { C },

    init: (self: LayerInternal<T, C>) -> (),
    update: (self: LayerInternal<T, C>, deltaTime: number, phaseState: PhaseState?) -> PhaseState?,
    evaluate: (self: LayerInternal<T, C>, mask: AnimationMask) -> AnimationPose,
    reset: (self: LayerInternal<T, C>) -> (),
    clone: (self: LayerInternal<T, C>) -> LayerInternal<T, C>,
    addChild: (self: LayerInternal<T, C>, layer: C, linkData: Map?) -> (),
    insertLayerAbove: (self: LayerInternal<T, C>, layer: C, childLinkData: Map?) -> (),

    -- Debugger methods.
    getId: (self: LayerInternal<T, C>) -> string,
    overrideProperties: (self: LayerInternal<T, C>, propOverrides: Map) -> (),
    getChildDebugData: (self: LayerInternal<T, C>, index: number, child: C) -> Map?,
    getDebugData: (self: LayerInternal<T, C>) -> DebugData,
    getLayerWatches: (self: LayerInternal<T, C>) -> Map?,

    __registerEventListener: (
        self: LayerInternal<T, C>,
        eventName: string,
        callback: LayerEventCallback
    ) -> (),
}

type FiniteLayerInternal<T, C> = LayerInternal<T & {
    getDuration: (self: FiniteLayerInternal<T, C>) -> number,
    getTimePositionNormalized: (self: FiniteLayerInternal<T, C>) -> number,
}, C>

export type LayerCache = {
    layer: Layer,
    evaluate: (self: Layer, mask: AnimationMask) -> AnimationPose,
    adornFolder: Instance?,
}

return {}
