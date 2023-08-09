-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/index.ts
local Packages = script.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local exports = {}
-- ROBLOX deviation START: fix import paths
-- Object.assign(exports, require(script["loaders.js"]))
-- Object.assign(exports, require(script["helpers.js"]))
-- Object.assign(exports, require(script["get-directives.js"]))
local loadersModule = require(script.loaders)
Object.assign(exports, loadersModule)
local helpersModule = require(script.helpers)
Object.assign(exports, helpersModule)
local getDirectivesModule = require(script["get-directives"])
Object.assign(exports, getDirectivesModule)
-- ROBLOX deviation END
-- ROBLOX deviation START: duplicated export
-- Object.assign(exports, require(script["get-fields-with-directives.js"]))
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths
-- Object.assign(exports, require(script["get-arguments-with-directives.js"]))
-- Object.assign(exports, require(script["get-implementing-types.js"]))
-- Object.assign(exports, require(script["print-schema-with-directives.js"]))
local getArgumentsWithDirectivesModule = require(script["get-arguments-with-directives"])
Object.assign(exports, getArgumentsWithDirectivesModule)
local getImplementingTypesModule = require(script["get-implementing-types"])
Object.assign(exports, getImplementingTypesModule)
local printSchemaWithDirectivesModule = require(script["print-schema-with-directives"])
Object.assign(exports, printSchemaWithDirectivesModule)
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths and export type
-- Object.assign(exports, require(script["get-fields-with-directives.js"]))
local getFieldsWithDirectivesModule = require(script["get-fields-with-directives"])
Object.assign(exports, getFieldsWithDirectivesModule)
export type TypeAndFieldToDirectives = getFieldsWithDirectivesModule.TypeAndFieldToDirectives
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths
-- Object.assign(exports, require(script["validate-documents.js"]))
-- Object.assign(exports, require(script["parse-graphql-json.js"]))
-- Object.assign(exports, require(script["parse-graphql-sdl.js"]))
-- Object.assign(exports, require(script["build-operation-for-field.js"]))
local validateDocumentsModule = require(script["validate-documents"])
Object.assign(exports, validateDocumentsModule)
local parseGraphqlJsonModule = require(script["parse-graphql-json"])
Object.assign(exports, parseGraphqlJsonModule)
local parseGraphqlSdlModule = require(script["parse-graphql-sdl"])
Object.assign(exports, parseGraphqlSdlModule)
local buildOperationForFieldModule = require(script["build-operation-for-field"])
Object.assign(exports, buildOperationForFieldModule)
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths and export types
-- Object.assign(exports, require(script["types.js"]))
local typesModule = require(script.types)
Object.assign(exports, typesModule)
export type SchemaPrintOptions = typesModule.SchemaPrintOptions
export type GetDocumentNodeFromSchemaOptions = typesModule.GetDocumentNodeFromSchemaOptions
export type PrintSchemaWithDirectivesOptions = typesModule.PrintSchemaWithDirectivesOptions
export type Maybe<T> = typesModule.Maybe<T>
export type Constructor<T> = typesModule.Constructor<T>
export type PruneSchemaFilter = typesModule.PruneSchemaFilter
export type InputLeafValueTransformer = typesModule.InputLeafValueTransformer
export type InputObjectValueTransformer = typesModule.InputObjectValueTransformer
export type ASTVisitorKeyMap = typesModule.ASTVisitorKeyMap
export type DirectiveLocationEnum = typesModule.DirectiveLocationEnum
export type DirectiveLocation = typesModule.DirectiveLocation
export type ExtensionsObject = typesModule.ExtensionsObject
export type ObjectTypeExtensions = typesModule.ObjectTypeExtensions
export type InputTypeExtensions = typesModule.InputTypeExtensions
export type InterfaceTypeExtensions = typesModule.InterfaceTypeExtensions
export type UnionTypeExtensions = typesModule.UnionTypeExtensions
export type ScalarTypeExtensions = typesModule.ScalarTypeExtensions
export type EnumTypeExtensions = typesModule.EnumTypeExtensions
export type PossibleTypeExtensions = typesModule.PossibleTypeExtensions
export type SchemaExtensions = typesModule.SchemaExtensions
export type DirectiveArgs = typesModule.DirectiveArgs
export type DirectiveUsage = typesModule.DirectiveUsage
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths
-- Object.assign(exports, require(script["filterSchema.js"]))
-- Object.assign(exports, require(script["heal.js"]))
-- Object.assign(exports, require(script["getResolversFromSchema.js"]))
-- Object.assign(exports, require(script["forEachField.js"]))
-- Object.assign(exports, require(script["forEachDefaultValue.js"]))
-- Object.assign(exports, require(script["mapSchema.js"]))
-- Object.assign(exports, require(script["addTypes.js"]))
-- Object.assign(exports, require(script["rewire.js"]))
-- Object.assign(exports, require(script["prune.js"]))
-- Object.assign(exports, require(script["mergeDeep.js"]))
local filterSchemaModule = require(script.filterSchema)
Object.assign(exports, filterSchemaModule)
local healModule = require(script.heal)
Object.assign(exports, healModule)
local getResolversFromSchemaModule = require(script.getResolversFromSchema)
Object.assign(exports, getResolversFromSchemaModule)
local forEachFieldModule = require(script.forEachField)
Object.assign(exports, forEachFieldModule)
local forEachDefaultValueModule = require(script.forEachDefaultValue)
Object.assign(exports, forEachDefaultValueModule)
local mapSchemaModule = require(script.mapSchema)
Object.assign(exports, mapSchemaModule)
local addTypesModule = require(script.addTypes)
Object.assign(exports, addTypesModule)
local rewireModule = require(script.rewire)
Object.assign(exports, rewireModule)
local pruneModule = require(script.prune)
Object.assign(exports, pruneModule)
local mergeDeepModule = require(script.mergeDeep)
Object.assign(exports, mergeDeepModule)
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths and export types
-- Object.assign(exports, require(script["Interfaces.js"]))
local interfacesModule = require(script.Interfaces)
Object.assign(exports, interfacesModule)
export type ExecutionResult<TData = { [string]: any }> = interfacesModule.ExecutionResult<TData>
export type ExecutionRequest<
	TArgs = { [string]: any },
	TContext = any,
	TRootValue = any,
	TExtensions = { [string]: any }
> = interfacesModule.ExecutionRequest<TArgs, TContext, TRootValue, TExtensions>
export type GraphQLParseOptions = interfacesModule.GraphQLParseOptions
export type ValidatorBehavior = interfacesModule.ValidatorBehavior
export type IResolverValidationOptions = interfacesModule.IResolverValidationOptions
export type IAddResolversToSchemaOptions = interfacesModule.IAddResolversToSchemaOptions
export type IScalarTypeResolver = interfacesModule.IScalarTypeResolver
export type IEnumTypeResolver = interfacesModule.IEnumTypeResolver
export type IFieldResolverOptions<TSource = any, TContext = any, TArgs = any> = interfacesModule.IFieldResolverOptions<
	TSource,
	TContext,
	TArgs
>
export type FieldNodeMapper = interfacesModule.FieldNodeMapper
export type FieldNodeMappers = interfacesModule.FieldNodeMappers
export type InputFieldFilter = interfacesModule.InputFieldFilter
export type FieldFilter = interfacesModule.FieldFilter
export type ObjectFieldFilter = interfacesModule.ObjectFieldFilter
export type RootFieldFilter = interfacesModule.RootFieldFilter
export type TypeFilter = interfacesModule.TypeFilter
export type ArgumentFilter = interfacesModule.ArgumentFilter
export type RenameTypesOptions = interfacesModule.RenameTypesOptions
export type IFieldResolver<TSource, TContext, TArgs = { [string]: any }, TReturn = any> = interfacesModule.IFieldResolver<
	TSource,
	TContext,
	TArgs,
	TReturn
>
export type TypeSource = interfacesModule.TypeSource
export type IObjectTypeResolver<TSource = any, TContext = any, TArgs = any> = interfacesModule.IObjectTypeResolver<
	TSource,
	TContext,
	TArgs
>
export type IInterfaceTypeResolver<TSource = any, TContext = any, TArgs = any> = interfacesModule.IInterfaceTypeResolver<
	TSource,
	TContext,
	TArgs
>
export type IUnionTypeResolver = interfacesModule.IUnionTypeResolver
export type IInputObjectTypeResolver = interfacesModule.IInputObjectTypeResolver
export type ISchemaLevelResolver<TSource, TContext, TArgs = { [string]: any }, TReturn = any> =
	interfacesModule.ISchemaLevelResolver<TSource, TContext, TArgs, TReturn>
export type IResolvers<TSource = any, TContext = any, TArgs = { [string]: any }, TReturn = any> =
	interfacesModule.IResolvers<TSource, TContext, TArgs, TReturn>
export type IFieldIteratorFn = interfacesModule.IFieldIteratorFn
export type IDefaultValueIteratorFn = interfacesModule.IDefaultValueIteratorFn
export type NextResolverFn = interfacesModule.NextResolverFn
export type VisitableSchemaType = interfacesModule.VisitableSchemaType
export type MapperKind = interfacesModule.MapperKind
export type SchemaMapper = interfacesModule.SchemaMapper
export type SchemaFieldMapperTypes = interfacesModule.SchemaFieldMapperTypes
export type NamedTypeMapper = interfacesModule.NamedTypeMapper
export type ScalarTypeMapper = interfacesModule.ScalarTypeMapper
export type EnumTypeMapper = interfacesModule.EnumTypeMapper
export type EnumValueMapper = interfacesModule.EnumValueMapper
export type CompositeTypeMapper = interfacesModule.CompositeTypeMapper
export type ObjectTypeMapper = interfacesModule.ObjectTypeMapper
export type InputObjectTypeMapper = interfacesModule.InputObjectTypeMapper
export type AbstractTypeMapper = interfacesModule.AbstractTypeMapper
export type UnionTypeMapper = interfacesModule.UnionTypeMapper
export type InterfaceTypeMapper = interfacesModule.InterfaceTypeMapper
export type DirectiveMapper = interfacesModule.DirectiveMapper
export type GenericFieldMapper<F> = interfacesModule.GenericFieldMapper<F>
export type FieldMapper = interfacesModule.FieldMapper
export type ArgumentMapper = interfacesModule.ArgumentMapper
export type InputFieldMapper = interfacesModule.InputFieldMapper
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths
-- Object.assign(exports, require(script["stub.js"]))
-- Object.assign(exports, require(script["selectionSets.js"]))
-- Object.assign(exports, require(script["getResponseKeyFromInfo.js"]))
-- Object.assign(exports, require(script["fields.js"]))
-- Object.assign(exports, require(script["renameType.js"]))
-- Object.assign(exports, require(script["transformInputValue.js"]))
-- Object.assign(exports, require(script["mapAsyncIterator.js"]))
-- Object.assign(exports, require(script["updateArgument.js"]))
-- Object.assign(exports, require(script["implementsAbstractType.js"]))
-- Object.assign(exports, require(script["errors.js"]))
local stubModule = require(script.stub)
Object.assign(exports, stubModule)
local selectionSetsModule = require(script.selectionSets)
Object.assign(exports, selectionSetsModule)
local getResponseKeyFromInfoModule = require(script.getResponseKeyFromInfo)
Object.assign(exports, getResponseKeyFromInfoModule)
local fieldsModule = require(script.fields)
Object.assign(exports, fieldsModule)
local renameTypeModule = require(script.renameType)
Object.assign(exports, renameTypeModule)
local transformInputValueModule = require(script.transformInputValue)
Object.assign(exports, transformInputValueModule)
local mapAsyncIteratorModule = require(script.mapAsyncIterator)
Object.assign(exports, mapAsyncIteratorModule)
local updateArgumentModule = require(script.updateArgument)
Object.assign(exports, updateArgumentModule)
local implementsAbstractTypeModule = require(script.implementsAbstractType)
Object.assign(exports, implementsAbstractTypeModule)
local errorsModule = require(script.errors)
Object.assign(exports, errorsModule)
-- ROBLOX deviation END
-- ROBLOX deviation START: not ported
-- Object.assign(exports, require(script["observableToAsyncIterable.js"]))
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths and export types
-- Object.assign(exports, require(script["visitResult.js"]))
local visitResultModule = require(script.visitResult)
Object.assign(exports, visitResultModule)
export type ValueVisitor = visitResultModule.ValueVisitor
export type ObjectValueVisitor = visitResultModule.ObjectValueVisitor
export type ResultVisitorMap = visitResultModule.ResultVisitorMap
export type ErrorVisitor = visitResultModule.ErrorVisitor
export type ErrorVisitorMap = visitResultModule.ErrorVisitorMap
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths
-- Object.assign(exports, require(script["getArgumentValues.js"]))
-- Object.assign(exports, require(script["valueMatchesCriteria.js"]))
-- Object.assign(exports, require(script["isAsyncIterable.js"]))
-- Object.assign(exports, require(script["isDocumentNode.js"]))
-- Object.assign(exports, require(script["astFromValueUntyped.js"]))
local getArgumentValuesModule = require(script.getArgumentValues)
Object.assign(exports, getArgumentValuesModule)
local valueMatchesCriteriaModule = require(script.valueMatchesCriteria)
Object.assign(exports, valueMatchesCriteriaModule)
local isAsyncIterableModule = require(script.isAsyncIterable)
Object.assign(exports, isAsyncIterableModule)
local isDocumentNodeModule = require(script.isDocumentNode)
Object.assign(exports, isDocumentNodeModule)
local astFromValueUntypedModule = require(script.astFromValueUntyped)
Object.assign(exports, astFromValueUntypedModule)
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths and export types
-- Object.assign(exports, require(script["executor.js"]))
local executorModule = require(script.executor)
Object.assign(exports, executorModule)
export type AsyncExecutor<TBaseContext = { [string]: any }, TBaseExtensions = { [string]: any }> =
	executorModule.AsyncExecutor<TBaseContext, TBaseExtensions>
export type SyncExecutor<TBaseContext = { [string]: any }, TBaseExtensions = { [string]: any }> =
	executorModule.SyncExecutor<TBaseContext, TBaseExtensions>
export type Executor<TBaseContext = { [string]: any }, TBaseExtensions = { [string]: any }> = executorModule.Executor<
	TBaseContext,
	TBaseExtensions
>
-- ROBLOX deviation END
-- ROBLOX deviation START: not ported
-- Object.assign(exports, require(script["withCancel.js"]))
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths
-- Object.assign(exports, require(script["AggregateError.js"]))
-- Object.assign(exports, require(script["rootTypes.js"]))
local aggregateErrorModule = require(script.AggregateError)
Object.assign(exports, aggregateErrorModule)
local rootTypesModule = require(script.rootTypes)
Object.assign(exports, rootTypesModule)
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import paths and export types
-- Object.assign(exports, require(script["comments.js"]))
local commentsModule = require(script.comments)
Object.assign(exports, commentsModule)
export type NamedDefinitionNode = commentsModule.NamedDefinitionNode
-- ROBLOX deviation END
-- ROBLOX deviation START:  fix import paths
-- Object.assign(exports, require(script["collectFields.js"]))
-- Object.assign(exports, require(script["inspect.js"]))
-- Object.assign(exports, require(script["memoize.js"]))
-- Object.assign(exports, require(script["fixSchemaAst.js"]))
-- Object.assign(exports, require(script["getOperationASTFromRequest.js"]))
-- Object.assign(exports, require(script["extractExtensionsFromSchema.js"]))
local collectFieldsModule = require(script.collectFields)
Object.assign(exports, collectFieldsModule)
local inspectModule = require(script.inspect)
Object.assign(exports, inspectModule)
local memoizeModule = require(script.memoize)
Object.assign(exports, memoizeModule)
local fixSchemaAstModule = require(script.fixSchemaAst)
Object.assign(exports, fixSchemaAstModule)
local getOperationASTFromRequestModule = require(script.getOperationASTFromRequest)
Object.assign(exports, getOperationASTFromRequestModule)
local extractExtensionsFromSchemaModule = require(script.extractExtensionsFromSchema)
Object.assign(exports, extractExtensionsFromSchemaModule)
-- ROBLOX deviation END
-- ROBLOX deviation START: fix exports type
-- return exports
type Exports =
	typeof(exports)
	& typeof(loadersModule)
	& typeof(helpersModule)
	& typeof(getDirectivesModule)
	& typeof(getArgumentsWithDirectivesModule)
	& typeof(getImplementingTypesModule)
	& typeof(printSchemaWithDirectivesModule)
	& typeof(getFieldsWithDirectivesModule)
	& typeof(validateDocumentsModule)
	& typeof(parseGraphqlJsonModule)
	& typeof(parseGraphqlSdlModule)
	& typeof(buildOperationForFieldModule)
	& typeof(typesModule)
	& typeof(filterSchemaModule)
	& typeof(healModule)
	& typeof(getResolversFromSchemaModule)
	& typeof(forEachFieldModule)
	& typeof(forEachDefaultValueModule)
	& typeof(mapSchemaModule)
	& typeof(addTypesModule)
	& typeof(rewireModule)
	& typeof(pruneModule)
	& typeof(mergeDeepModule)
	& typeof(interfacesModule)
	& typeof(stubModule)
	& typeof(selectionSetsModule)
	& typeof(getResponseKeyFromInfoModule)
	& typeof(fieldsModule)
	& typeof(renameTypeModule)
	& typeof(transformInputValueModule)
	& typeof(mapAsyncIteratorModule)
	& typeof(updateArgumentModule)
	& typeof(implementsAbstractTypeModule)
	& typeof(errorsModule)
	& typeof(visitResultModule)
	& typeof(getArgumentValuesModule)
	& typeof(valueMatchesCriteriaModule)
	& typeof(isAsyncIterableModule)
	& typeof(isDocumentNodeModule)
	& typeof(astFromValueUntypedModule)
	& typeof(executorModule)
	& typeof(aggregateErrorModule)
	& typeof(rootTypesModule)
	& typeof(commentsModule)
	& typeof(collectFieldsModule)
	& typeof(inspectModule)
	& typeof(memoizeModule)
	& typeof(fixSchemaAstModule)
	& typeof(getOperationASTFromRequestModule)
	& typeof(extractExtensionsFromSchemaModule)
return exports :: Exports
-- ROBLOX deviation END
