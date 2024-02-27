
export type FunctionId = number
export type NodeId = number

export type Category = {
    Name: string,
    NodeId: NodeId,
}

export type Function = {
    Source: string?,
    Name: string?,
    Line: number?,
    TotalDuration: number,
    IsNative: boolean?,
    IsPlugin: boolean?,
}

export type Node = {
    TotalDuration: number,
    Duration: number,
    Children: {[FunctionId]: NodeId}?,
}

export type RootDataFormat = {
    Categories: {Category},
    Nodes: {Node},
    Functions: {Function},
    Version: number,
    SessionStartTime: number?, -- Unix timestamp in milliseconds
    SessionEndTime: number?,   -- Unit timestamp in milliseconds
    GCFuncId: FunctionId,
}

return nil