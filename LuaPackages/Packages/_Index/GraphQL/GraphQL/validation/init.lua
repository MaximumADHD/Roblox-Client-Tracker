--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/index.js

local validation = script
local ValidationContextModule = require(validation.ValidationContext)

export type ValidationRule = ValidationContextModule.ValidationRule
export type ASTValidationContext = ValidationContextModule.ASTValidationContext
export type SDLValidationContext = ValidationContextModule.SDLValidationContext
export type ValidationContext = ValidationContextModule.ValidationContext

return {
	validate = require(validation.validate).validate,

	ValidationContext = ValidationContextModule.ValidationContext,

	-- // All validation rules in the GraphQL Specification.
	specifiedRules = require(validation.specifiedRules).specifiedRules,

	-- // Spec Section: "Executable Definitions"
	ExecutableDefinitionsRule = require(validation.rules.ExecutableDefinitionsRule).ExecutableDefinitionsRule,

	-- // Spec Section: "Field Selections on Objects, Interfaces, and Unions Types"
	FieldsOnCorrectTypeRule = require(validation.rules.FieldsOnCorrectTypeRule).FieldsOnCorrectTypeRule,

	-- // Spec Section: "Fragments on Composite Types"
	FragmentsOnCompositeTypesRule = require(validation.rules.FragmentsOnCompositeTypesRule).FragmentsOnCompositeTypesRule,

	-- // Spec Section: "Argument Names"
	KnownArgumentNamesRule = require(validation.rules.KnownArgumentNamesRule).KnownArgumentNamesRule,

	-- // Spec Section: "Directives Are Defined"
	KnownDirectivesRule = require(validation.rules.KnownDirectivesRule).KnownDirectivesRule,

	-- // Spec Section: "Fragment spread target defined"
	KnownFragmentNamesRule = require(validation.rules.KnownFragmentNamesRule).KnownFragmentNamesRule,

	-- // Spec Section: "Fragment Spread Type Existence"
	KnownTypeNamesRule = require(validation.rules.KnownTypeNamesRule).KnownTypeNamesRule,

	-- // Spec Section: "Lone Anonymous Operation"
	LoneAnonymousOperationRule = require(validation.rules.LoneAnonymousOperationRule).LoneAnonymousOperationRule,

	-- // Spec Section: "Fragments must not form cycles"
	NoFragmentCyclesRule = require(validation.rules.NoFragmentCyclesRule).NoFragmentCyclesRule,

	-- // Spec Section: "All Variable Used Defined"
	NoUndefinedVariablesRule = require(validation.rules.NoUndefinedVariablesRule).NoUndefinedVariablesRule,

	-- // Spec Section: "Fragments must be used"
	NoUnusedFragmentsRule = require(validation.rules.NoUnusedFragmentsRule).NoUnusedFragmentsRule,

	-- // Spec Section: "All Variables Used"
	NoUnusedVariablesRule = require(validation.rules.NoUnusedVariablesRule).NoUnusedVariablesRule,

	-- // Spec Section: "Field Selection Merging"
	OverlappingFieldsCanBeMergedRule = require(validation.rules.OverlappingFieldsCanBeMergedRule).OverlappingFieldsCanBeMergedRule,

	-- // Spec Section: "Fragment spread is possible"
	PossibleFragmentSpreadsRule = require(validation.rules.PossibleFragmentSpreadsRule).PossibleFragmentSpreadsRule,

	-- // Spec Section: "Argument Optionality"
	ProvidedRequiredArgumentsRule = require(validation.rules.ProvidedRequiredArgumentsRule).ProvidedRequiredArgumentsRule,

	-- // Spec Section: "Leaf Field Selections"
	ScalarLeafsRule = require(validation.rules.ScalarLeafsRule).ScalarLeafsRule,

	-- // Spec Section: "Subscriptions with Single Root Field"
	SingleFieldSubscriptionsRule = require(validation.rules.SingleFieldSubscriptionsRule).SingleFieldSubscriptionsRule,

	-- // Spec Section: "Argument Uniqueness"
	UniqueArgumentNamesRule = require(validation.rules.UniqueArgumentNamesRule).UniqueArgumentNamesRule,

	-- // Spec Section: "Directives Are Unique Per Location"
	UniqueDirectivesPerLocationRule = require(validation.rules.UniqueDirectivesPerLocationRule).UniqueDirectivesPerLocationRule,

	-- // Spec Section: "Fragment Name Uniqueness"
	UniqueFragmentNamesRule = require(validation.rules.UniqueFragmentNamesRule).UniqueFragmentNamesRule,

	-- // Spec Section: "Input Object Field Uniqueness"
	UniqueInputFieldNamesRule = require(validation.rules.UniqueInputFieldNamesRule).UniqueInputFieldNamesRule,

	-- // Spec Section: "Operation Name Uniqueness"
	UniqueOperationNamesRule = require(validation.rules.UniqueOperationNamesRule).UniqueOperationNamesRule,

	-- // Spec Section: "Variable Uniqueness"
	UniqueVariableNamesRule = require(validation.rules.UniqueVariableNamesRule).UniqueVariableNamesRule,

	-- // Spec Section: "Values Type Correctness"
	ValuesOfCorrectTypeRule = require(validation.rules.ValuesOfCorrectTypeRule).ValuesOfCorrectTypeRule,

	-- // Spec Section: "Variables are Input Types"
	VariablesAreInputTypesRule = require(validation.rules.VariablesAreInputTypesRule).VariablesAreInputTypesRule,

	-- // Spec Section: "All Variable Usages Are Allowed"
	VariablesInAllowedPositionRule = require(validation.rules.VariablesInAllowedPositionRule).VariablesInAllowedPositionRule,

	-- // SDL-specific validation rules
	LoneSchemaDefinitionRule = require(validation.rules.LoneSchemaDefinitionRule).LoneSchemaDefinitionRule,
	UniqueOperationTypesRule = require(validation.rules.UniqueOperationTypesRule).UniqueOperationTypesRule,
	UniqueTypeNamesRule = require(validation.rules.UniqueTypeNamesRule).UniqueTypeNamesRule,
	UniqueEnumValueNamesRule = require(validation.rules.UniqueEnumValueNamesRule).UniqueEnumValueNamesRule,
	UniqueFieldDefinitionNamesRule = require(validation.rules.UniqueFieldDefinitionNamesRule).UniqueFieldDefinitionNamesRule,
	UniqueDirectiveNamesRule = require(validation.rules.UniqueDirectiveNamesRule).UniqueDirectiveNamesRule,
	PossibleTypeExtensionsRule = require(validation.rules.PossibleTypeExtensionsRule).PossibleTypeExtensionsRule,

	-- // Optional rules not defined by the GraphQL Specification
	NoDeprecatedCustomRule = require(validation.rules.custom.NoDeprecatedCustomRule).NoDeprecatedCustomRule,
	NoSchemaIntrospectionCustomRule = require(
		validation.rules.custom.NoSchemaIntrospectionCustomRule
	).NoSchemaIntrospectionCustomRule,
}
