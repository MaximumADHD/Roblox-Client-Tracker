
type FunctionId = number
type NodeId = number

export type Category = {
    Name: string,
    NodeId: NodeId,
}

export type Function = {
    Source: string,
    Name: string,
    Line: number,
    TotalDuration: number,
    IsNative: boolean?,
}

export type Node = {
    TotalDuration: number,
    Duration: number,
    Children: {[FunctionId]: NodeId},
}

export type RootDataFormat = {
    Categories: {Category},
    Nodes: {Node},
    Functions: {Function},
    Version: number,
}

return nil