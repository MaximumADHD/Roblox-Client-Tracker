-- ROBLOX deviation: no upstream tests
--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]

return function()
	describe("Language - init", function()
		it("should contain Source table", function()
			local Source = require(script.Parent.Parent).Source
			expect(Source).to.be.a("table")
		end)

		it("should contain getLocation function", function()
			local getLocation = require(script.Parent.Parent).getLocation
			expect(getLocation).to.be.a("function")
		end)

		it("should contain printLocation function", function()
			local printLocation = require(script.Parent.Parent).printLocation
			expect(printLocation).to.be.a("function")
		end)

		it("should contain printSourceLocation function", function()
			local printSourceLocation = require(script.Parent.Parent).printSourceLocation
			expect(printSourceLocation).to.be.a("function")
		end)

		it("should contain Kind table", function()
			local Kind = require(script.Parent.Parent).Kind
			expect(Kind).to.be.a("table")
		end)

		it("should contain TokenKind table", function()
			local TokenKind = require(script.Parent.Parent).TokenKind
			expect(TokenKind).to.be.a("table")
		end)

		it("should contain Lexer table", function()
			local Lexer = require(script.Parent.Parent).Lexer
			expect(Lexer).to.be.a("table")
		end)

		it("should contain parse function", function()
			local parse = require(script.Parent.Parent).parse
			expect(parse).to.be.a("function")
		end)

		it("should contain parseValue function", function()
			local parseValue = require(script.Parent.Parent).parseValue
			expect(parseValue).to.be.a("function")
		end)

		it("should contain parseType function", function()
			local parseType = require(script.Parent.Parent).parseType
			expect(parseType).to.be.a("function")
		end)

		it("should contain print function", function()
			local print_ = require(script.Parent.Parent).print
			expect(print_).to.be.a("function")
		end)

		it("should contain visit function", function()
			local visit = require(script.Parent.Parent).visit
			expect(visit).to.be.a("function")
		end)

		it("should contain visitInParallel function", function()
			local visitInParallel = require(script.Parent.Parent).visitInParallel
			expect(visitInParallel).to.be.a("function")
		end)

		it("should contain getVisitFn function", function()
			local getVisitFn = require(script.Parent.Parent).getVisitFn
			expect(getVisitFn).to.be.a("function")
		end)

		it("should contain BREAK table", function()
			local BREAK = require(script.Parent.Parent).BREAK
			expect(BREAK).to.be.a("table")
		end)

		it("should contain REMOVE table", function()
			local REMOVE = require(script.Parent.Parent).REMOVE
			expect(REMOVE).to.be.a("table")
		end)

		it("should contain Location table", function()
			local Location = require(script.Parent.Parent).Location
			expect(Location).to.be.a("table")
		end)

		it("should contain Token table", function()
			local Token = require(script.Parent.Parent).Token
			expect(Token).to.be.a("table")
		end)

		it("should contain isDefinitionNode function", function()
			local isDefinitionNode = require(script.Parent.Parent).isDefinitionNode
			expect(isDefinitionNode).to.be.a("function")
		end)

		it("should contain isExecutableDefinitionNode function", function()
			local isExecutableDefinitionNode =
				require(script.Parent.Parent).isExecutableDefinitionNode
			expect(isExecutableDefinitionNode).to.be.a("function")
		end)

		it("should contain isSelectionNode function", function()
			local isSelectionNode = require(script.Parent.Parent).isSelectionNode
			expect(isSelectionNode).to.be.a("function")
		end)

		it("should contain isValueNode function", function()
			local isValueNode = require(script.Parent.Parent).isValueNode
			expect(isValueNode).to.be.a("function")
		end)

		it("should contain isTypeNode function", function()
			local isTypeNode = require(script.Parent.Parent).isTypeNode
			expect(isTypeNode).to.be.a("function")
		end)

		it("should contain isTypeSystemDefinitionNode function", function()
			local isTypeSystemDefinitionNode =
				require(script.Parent.Parent).isTypeSystemDefinitionNode
			expect(isTypeSystemDefinitionNode).to.be.a("function")
		end)

		it("should contain isTypeDefinitionNode function", function()
			local isTypeDefinitionNode = require(script.Parent.Parent).isTypeDefinitionNode
			expect(isTypeDefinitionNode).to.be.a("function")
		end)

		it("should contain isTypeSystemExtensionNode function", function()
			local isTypeSystemExtensionNode =
				require(script.Parent.Parent).isTypeSystemExtensionNode
			expect(isTypeSystemExtensionNode).to.be.a("function")
		end)

		it("should contain isTypeExtensionNode function", function()
			local isTypeExtensionNode = require(script.Parent.Parent).isTypeExtensionNode
			expect(isTypeExtensionNode).to.be.a("function")
		end)

		it("should contain DirectiveLocation table", function()
			local DirectiveLocation = require(script.Parent.Parent).DirectiveLocation
			expect(DirectiveLocation).to.be.a("table")
		end)
	end)
end
