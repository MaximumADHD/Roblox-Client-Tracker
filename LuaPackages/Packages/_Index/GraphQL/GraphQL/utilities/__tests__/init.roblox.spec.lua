-- ROBLOX deviation: no upstream tests

return function()
	describe("Utilities - init", function()
		it("should contain getIntrospectionQuery function", function()
			local getIntrospectionQuery = require(script.Parent.Parent).getIntrospectionQuery
			expect(getIntrospectionQuery).to.be.a("function")
		end)

		it("should contain getOperationAST function", function()
			local getOperationAST = require(script.Parent.Parent).getOperationAST
			expect(getOperationAST).to.be.a("function")
		end)

		it("should contain getOperationRootType function", function()
			local getOperationRootType = require(script.Parent.Parent).getOperationRootType
			expect(getOperationRootType).to.be.a("function")
		end)

		it("should contain introspectionFromSchema function", function()
			local introspectionFromSchema = require(script.Parent.Parent).introspectionFromSchema
			expect(introspectionFromSchema).to.be.a("function")
		end)

		it("should contain buildClientSchema function", function()
			local buildClientSchema = require(script.Parent.Parent).buildClientSchema
			expect(buildClientSchema).to.be.a("function")
		end)

		it("should contain buildASTSchema function", function()
			local buildASTSchema = require(script.Parent.Parent).buildASTSchema
			expect(buildASTSchema).to.be.a("function")
		end)

		it("should contain buildSchema function", function()
			local buildSchema = require(script.Parent.Parent).buildSchema
			expect(buildSchema).to.be.a("function")
		end)

		it("should contain extendSchema function", function()
			local extendSchema = require(script.Parent.Parent).extendSchema
			expect(extendSchema).to.be.a("function")
		end)

		it("should contain lexicographicSortSchema function", function()
			local lexicographicSortSchema = require(script.Parent.Parent).lexicographicSortSchema
			expect(lexicographicSortSchema).to.be.a("function")
		end)

		it("should contain printSchema function", function()
			local printSchema = require(script.Parent.Parent).printSchema
			expect(printSchema).to.be.a("function")
		end)

		it("should contain printType function", function()
			local printType = require(script.Parent.Parent).printType
			expect(printType).to.be.a("function")
		end)

		it("should contain printIntrospectionSchema function", function()
			local printIntrospectionSchema = require(script.Parent.Parent).printIntrospectionSchema
			expect(printIntrospectionSchema).to.be.a("function")
		end)

		it("should contain typeFromAST function", function()
			local typeFromAST = require(script.Parent.Parent).typeFromAST
			expect(typeFromAST).to.be.a("function")
		end)

		it("should contain valueFromAST function", function()
			local valueFromAST = require(script.Parent.Parent).valueFromAST
			expect(valueFromAST).to.be.a("function")
		end)

		it("should contain valueFromASTUntyped function", function()
			local valueFromASTUntyped = require(script.Parent.Parent).valueFromASTUntyped
			expect(valueFromASTUntyped).to.be.a("function")
		end)

		it("should contain astFromValue function", function()
			local astFromValue = require(script.Parent.Parent).astFromValue
			expect(astFromValue).to.be.a("function")
		end)

		it("should contain TypeInfo table", function()
			local TypeInfo = require(script.Parent.Parent).TypeInfo
			expect(TypeInfo).to.be.a("table")
		end)

		it("should contain visitWithTypeInfo function", function()
			local visitWithTypeInfo = require(script.Parent.Parent).visitWithTypeInfo
			expect(visitWithTypeInfo).to.be.a("function")
		end)

		it("should contain coerceInputValue function", function()
			local coerceInputValue = require(script.Parent.Parent).coerceInputValue
			expect(coerceInputValue).to.be.a("function")
		end)

		it("should contain concatAST function", function()
			local concatAST = require(script.Parent.Parent).concatAST
			expect(concatAST).to.be.a("function")
		end)

		it("should contain separateOperations function", function()
			local separateOperations = require(script.Parent.Parent).separateOperations
			expect(separateOperations).to.be.a("function")
		end)

		it("should contain stripIgnoredCharacters function", function()
			local stripIgnoredCharacters = require(script.Parent.Parent).stripIgnoredCharacters
			expect(stripIgnoredCharacters).to.be.a("function")
		end)

		it("should contain isEqualType function", function()
			local isEqualType = require(script.Parent.Parent).isEqualType
			expect(isEqualType).to.be.a("function")
		end)

		it("should contain isTypeSubTypeOf function", function()
			local isTypeSubTypeOf = require(script.Parent.Parent).isTypeSubTypeOf
			expect(isTypeSubTypeOf).to.be.a("function")
		end)

		it("should contain doTypesOverlap function", function()
			local doTypesOverlap = require(script.Parent.Parent).doTypesOverlap
			expect(doTypesOverlap).to.be.a("function")
		end)

		it("should contain assertValidName function", function()
			local assertValidName = require(script.Parent.Parent).assertValidName
			expect(assertValidName).to.be.a("function")
		end)

		it("should contain isValidNameError function", function()
			local isValidNameError = require(script.Parent.Parent).isValidNameError
			expect(isValidNameError).to.be.a("function")
		end)

		it("should contain BreakingChangeType table", function()
			local BreakingChangeType = require(script.Parent.Parent).BreakingChangeType
			expect(BreakingChangeType).to.be.a("table")
		end)

		it("should contain DangerousChangeType table", function()
			local DangerousChangeType = require(script.Parent.Parent).DangerousChangeType
			expect(DangerousChangeType).to.be.a("table")
		end)

		it("should contain findBreakingChanges function", function()
			local findBreakingChanges = require(script.Parent.Parent).findBreakingChanges
			expect(findBreakingChanges).to.be.a("function")
		end)

		it("should contain findDangerousChanges function", function()
			local findDangerousChanges = require(script.Parent.Parent).findDangerousChanges
			expect(findDangerousChanges).to.be.a("function")
		end)
	end)
end
