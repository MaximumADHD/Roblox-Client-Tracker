local mergeResolvers = require(script.mergeResolvers)
export type IResolvers<TSource, TContext> = mergeResolvers.IResolvers<TSource, TContext>

return {
	mergeResolvers = mergeResolvers,
}
