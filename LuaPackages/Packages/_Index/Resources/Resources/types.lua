export type own = <T...>(dispose, T...) -> T...

export type dispose = () -> ()

export type resource<A..., R...> = (A...) -> (dispose, R...)

return nil
