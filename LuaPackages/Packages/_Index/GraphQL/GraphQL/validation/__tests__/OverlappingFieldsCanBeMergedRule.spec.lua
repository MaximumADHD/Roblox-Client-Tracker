--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/OverlappingFieldsCanBeMergedRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local OverlappingFieldsCanBeMergedRule = require(
		validationWorkspace.rules.OverlappingFieldsCanBeMergedRule
	).OverlappingFieldsCanBeMergedRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors
	local expectValidationErrorsWithSchema = harness.expectValidationErrorsWithSchema

	local function expectErrors(expect_, queryStr)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, OverlappingFieldsCanBeMergedRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr)
		expectErrors(expect_, queryStr).toEqual({})
	end

	local function expectErrorsWithSchema(expect_, schema, queryStr)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrorsWithSchema(
			expect_,
			schema,
			OverlappingFieldsCanBeMergedRule,
			"\n" .. queryStr
		)
	end

	local function expectValidWithSchema(expect_, schema, queryStr)
		expectErrorsWithSchema(expect_, schema, queryStr).toEqual({})
	end

	describe("Validate: Overlapping fields can be merged", function()
		it("unique fields", function()
			expectValid(
				expect,
				[[
				fragment uniqueFields on Dog {
					name
					nickname
				}
			]]
			)
		end)

		it("identical fields", function()
			expectValid(
				expect,
				[[
				fragment mergeIdenticalFields on Dog {
					name
					name
				}
			]]
			)
		end)

		it("identical fields with identical args", function()
			expectValid(
				expect,
				[[
				fragment mergeIdenticalFieldsWithIdenticalArgs on Dog {
					doesKnowCommand(dogCommand: SIT)
					doesKnowCommand(dogCommand: SIT)
				}
			]]
			)
		end)

		it("identical fields with identical directives", function()
			expectValid(
				expect,
				[[
				fragment mergeSameFieldsWithSameDirectives on Dog {
					name @include(if: true)
					name @include(if: true)
				}
			]]
			)
		end)

		it("different args with different aliases", function()
			expectValid(
				expect,
				[[
				fragment differentArgsWithDifferentAliases on Dog {
					knowsSit: doesKnowCommand(dogCommand: SIT)
					knowsDown: doesKnowCommand(dogCommand: DOWN)
				}
			]]
			)
		end)

		it("different directives with different aliases", function()
			expectValid(
				expect,
				[[
				fragment differentDirectivesWithDifferentAliases on Dog {
					nameIfTrue: name @include(if: true)
					nameIfFalse: name @include(if: false)
				}
			]]
			)
		end)

		it("different skip/include directives accepted", function()
			-- // Note: Differing skip/include directives don't create an ambiguous return
			-- // value and are acceptable in conditions where differing runtime values
			-- // may have the same desired effect of including or skipping a field.
			expectValid(
				expect,
				[[
				fragment differentDirectivesWithDifferentAliases on Dog {
					name @include(if: true)
					name @include(if: false)
				}
			]]
			)
		end)

		it("Same aliases with different field targets", function()
			expectErrors(
				expect,
				[[
      fragment sameAliasesWithDifferentFieldTargets on Dog {
        fido: name
        fido: nickname
      }
			]]
			).toEqual({
				{
					message = 'Fields "fido" conflict because "name" and "nickname" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 4, column = 9 },
					},
				},
			})
		end)

		it("Same aliases allowed on non-overlapping fields", function()
			-- // This is valid since no object can be both a "Dog" and a "Cat", thus
			-- // these fields can never overlap.
			expectValid(
				expect,
				[[
				fragment sameAliasesWithDifferentFieldTargets on Pet {
					... on Dog {
						name
					}
					... on Cat {
						name: nickname
					}
				}
			]]
			)
		end)

		it("Alias masking direct field access", function()
			expectErrors(
				expect,
				[[
      fragment aliasMaskingDirectFieldAccess on Dog {
        name: nickname
        name
      }
			]]
			).toEqual({
				{
					message = 'Fields "name" conflict because "nickname" and "name" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 4, column = 9 },
					},
				},
			})
		end)

		it("different args, second adds an argument", function()
			expectErrors(
				expect,
				[[
      fragment conflictingArgs on Dog {
        doesKnowCommand
        doesKnowCommand(dogCommand: HEEL)
      }
			]]
			).toEqual({
				{
					message = 'Fields "doesKnowCommand" conflict because they have differing arguments. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 4, column = 9 },
					},
				},
			})
		end)

		it("different args, second missing an argument", function()
			expectErrors(
				expect,
				[[
      fragment conflictingArgs on Dog {
        doesKnowCommand(dogCommand: SIT)
        doesKnowCommand
      }
			]]
			).toEqual({
				{
					message = 'Fields "doesKnowCommand" conflict because they have differing arguments. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 4, column = 9 },
					},
				},
			})
		end)

		it("conflicting arg values", function()
			expectErrors(
				expect,
				[[
      fragment conflictingArgs on Dog {
        doesKnowCommand(dogCommand: SIT)
        doesKnowCommand(dogCommand: HEEL)
      }
			]]
			).toEqual({
				{
					message = 'Fields "doesKnowCommand" conflict because they have differing arguments. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 4, column = 9 },
					},
				},
			})
		end)

		it("conflicting arg names", function()
			expectErrors(
				expect,
				[[
      fragment conflictingArgs on Dog {
        isAtLocation(x: 0)
        isAtLocation(y: 0)
      }
			]]
			).toEqual({
				{
					message = 'Fields "isAtLocation" conflict because they have differing arguments. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 4, column = 9 },
					},
				},
			})
		end)

		it("allows different args where no conflict is possible", function()
			-- // This is valid since no object can be both a "Dog" and a "Cat", thus
			-- // these fields can never overlap.
			expectValid(
				expect,
				[[
				fragment conflictingArgs on Pet {
					... on Dog {
						name(surname: true)
					}
					... on Cat {
						name
					}
				}
			]]
			)
		end)

		it("encounters conflict in fragments", function()
			expectErrors(
				expect,
				[[
      {
        ...A
        ...B
      }
      fragment A on Type {
        x: a
      }
      fragment B on Type {
        x: b
      }
			]]
			).toEqual({
				{
					message = 'Fields "x" conflict because "a" and "b" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 7, column = 9 },
						{ line = 10, column = 9 },
					},
				},
			})
		end)

		it("reports each conflict once", function()
			expectErrors(
				expect,
				[[
      {
        f1 {
          ...A
          ...B
        }
        f2 {
          ...B
          ...A
        }
        f3 {
          ...A
          ...B
          x: c
        }
      }
      fragment A on Type {
        x: a
      }
      fragment B on Type {
        x: b
      }
			]]
			).toEqual({
				{
					message = 'Fields "x" conflict because "a" and "b" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 18, column = 9 },
						{ line = 21, column = 9 },
					},
				},
				{
					message = 'Fields "x" conflict because "c" and "a" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 14, column = 11 },
						{ line = 18, column = 9 },
					},
				},
				{
					message = 'Fields "x" conflict because "c" and "b" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 14, column = 11 },
						{ line = 21, column = 9 },
					},
				},
			})
		end)

		it("deep conflict", function()
			expectErrors(
				expect,
				[[
      {
        field {
          x: a
        },
        field {
          x: b
        }
      }
			]]
			).toEqual({
				{
					message = 'Fields "field" conflict because subfields "x" conflict because "a" and "b" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 4, column = 11 },
						{ line = 6, column = 9 },
						{ line = 7, column = 11 },
					},
				},
			})
		end)

		it("deep conflict with multiple issues", function()
			expectErrors(
				expect,
				[[
      {
        field {
          x: a
          y: c
        },
        field {
          x: b
          y: d
        }
      }
			]]
			).toEqual({
				{
					message = 'Fields "field" conflict because subfields "x" conflict because "a" and "b" are different fields and subfields "y" conflict because "c" and "d" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 4, column = 11 },
						{ line = 5, column = 11 },
						{ line = 7, column = 9 },
						{ line = 8, column = 11 },
						{ line = 9, column = 11 },
					},
				},
			})
		end)

		it("very deep conflict", function()
			expectErrors(
				expect,
				[[
      {
        field {
          deepField {
            x: a
          }
        },
        field {
          deepField {
            x: b
          }
        }
      }
			]]
			).toEqual({
				{
					message = 'Fields "field" conflict because subfields "deepField" conflict because subfields "x" conflict because "a" and "b" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 4, column = 11 },
						{ line = 5, column = 13 },
						{ line = 8, column = 9 },
						{ line = 9, column = 11 },
						{ line = 10, column = 13 },
					},
				},
			})
		end)

		it("reports deep conflict to nearest common ancestor", function()
			expectErrors(
				expect,
				[[
      {
        field {
          deepField {
            x: a
          }
          deepField {
            x: b
          }
        },
        field {
          deepField {
            y
          }
        }
      }
			]]
			).toEqual({
				{
					message = 'Fields "deepField" conflict because subfields "x" conflict because "a" and "b" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 4, column = 11 },
						{ line = 5, column = 13 },
						{ line = 7, column = 11 },
						{ line = 8, column = 13 },
					},
				},
			})
		end)

		it("reports deep conflict to nearest common ancestor in fragments", function()
			expectErrors(
				expect,
				[[
      {
        field {
          ...F
        }
        field {
          ...F
        }
      }
      fragment F on T {
        deepField {
          deeperField {
            x: a
          }
          deeperField {
            x: b
          }
        },
        deepField {
          deeperField {
            y
          }
        }
      }
			]]
			).toEqual({
				{
					message = 'Fields "deeperField" conflict because subfields "x" conflict because "a" and "b" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 12, column = 11 },
						{ line = 13, column = 13 },
						{ line = 15, column = 11 },
						{ line = 16, column = 13 },
					},
				},
			})
		end)

		it("reports deep conflict in nested fragments", function()
			expectErrors(
				expect,
				[[
      {
        field {
          ...F
        }
        field {
          ...I
        }
      }
      fragment F on T {
        x: a
        ...G
      }
      fragment G on T {
        y: c
      }
      fragment I on T {
        y: d
        ...J
      }
      fragment J on T {
        x: b
      }
			]]
			).toEqual({
				{
					message = 'Fields "field" conflict because subfields "x" conflict because "a" and "b" are different fields and subfields "y" conflict because "c" and "d" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 3, column = 9 },
						{ line = 11, column = 9 },
						{ line = 15, column = 9 },
						{ line = 6, column = 9 },
						{ line = 22, column = 9 },
						{ line = 18, column = 9 },
					},
				},
			})
		end)

		it("ignores unknown fragments", function()
			expectValid(
				expect,
				[[
				{
					field
					...Unknown
					...Known
				}

				fragment Known on T {
					field
					...OtherUnknown
				}
			]]
			)
		end)

		describe("return types must be unambiguous", function()
			local schema = buildSchema([[
				interface SomeBox {
					deepBox: SomeBox
					unrelatedField: String
				}

				type StringBox implements SomeBox {
					scalar: String
					deepBox: StringBox
					unrelatedField: String
					listStringBox: [StringBox]
					stringBox: StringBox
					intBox: IntBox
				}

				type IntBox implements SomeBox {
					scalar: Int
					deepBox: IntBox
					unrelatedField: String
					listStringBox: [StringBox]
					stringBox: StringBox
					intBox: IntBox
				}

				interface NonNullStringBox1 {
					scalar: String!
				}

				type NonNullStringBox1Impl implements SomeBox & NonNullStringBox1 {
					scalar: String!
					unrelatedField: String
					deepBox: SomeBox
				}

				interface NonNullStringBox2 {
					scalar: String!
				}

				type NonNullStringBox2Impl implements SomeBox & NonNullStringBox2 {
					scalar: String!
					unrelatedField: String
					deepBox: SomeBox
				}

				type Connection {
					edges: [Edge]
				}

				type Edge {
					node: Node
				}

				type Node {
					id: ID
					name: String
				}

				type Query {
					someBox: SomeBox
					connection: Connection
				}
			]])

			it("conflicting return types which potentially overlap", function()
				expectErrorsWithSchema(
					expect,
					schema,
					[[
          {
            someBox {
              ...on IntBox {
                scalar
              }
              ...on NonNullStringBox1 {
                scalar
              }
            }
          }
				]]
				).toEqual({
					{
						message = 'Fields "scalar" conflict because they return conflicting types "Int" and "String!". Use different aliases on the fields to fetch both if this was intentional.',
						locations = {
							{ line = 5, column = 17 },
							{ line = 8, column = 17 },
						},
					},
				})
			end)

			it("compatible return shapes on different return types", function()
				-- // In this case `deepBox` returns `SomeBox` in the first usage, and
				-- // `StringBox` in the second usage. These return types are not the same!
				-- // however this is valid because the return *shapes* are compatible.
				expectValidWithSchema(
					expect,
					schema,
					[[
					{
						someBox {
							... on SomeBox {
								deepBox {
									unrelatedField
								}
							}
							... on StringBox {
								deepBox {
									unrelatedField
								}
							}
						}
					}
				]]
				)
			end)

			it("disallows differing return types despite no overlap", function()
				expectErrorsWithSchema(
					expect,
					schema,
					[[
          {
            someBox {
              ... on IntBox {
                scalar
              }
              ... on StringBox {
                scalar
              }
            }
          }
				]]
				).toEqual({
					{
						message = 'Fields "scalar" conflict because they return conflicting types "Int" and "String". Use different aliases on the fields to fetch both if this was intentional.',
						locations = {
							{ line = 5, column = 17 },
							{ line = 8, column = 17 },
						},
					},
				})
			end)

			it("reports correctly when a non-exclusive follows an exclusive", function()
				expectErrorsWithSchema(
					expect,
					schema,
					[[
          {
            someBox {
              ... on IntBox {
                deepBox {
                  ...X
                }
              }
            }
            someBox {
              ... on StringBox {
                deepBox {
                  ...Y
                }
              }
            }
            memoed: someBox {
              ... on IntBox {
                deepBox {
                  ...X
                }
              }
            }
            memoed: someBox {
              ... on StringBox {
                deepBox {
                  ...Y
                }
              }
            }
            other: someBox {
              ...X
            }
            other: someBox {
              ...Y
            }
          }
          fragment X on SomeBox {
            scalar
          }
          fragment Y on SomeBox {
            scalar: unrelatedField
          }
				]]
				).toEqual({
					{
						message = 'Fields "other" conflict because subfields "scalar" conflict because "scalar" and "unrelatedField" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
						locations = {
							{ line = 31, column = 13 },
							{ line = 39, column = 13 },
							{ line = 34, column = 13 },
							{ line = 42, column = 13 },
						},
					},
				})
			end)

			it("disallows differing return type nullability despite no overlap", function()
				expectErrorsWithSchema(
					expect,
					schema,
					[[
          {
            someBox {
              ... on NonNullStringBox1 {
                scalar
              }
              ... on StringBox {
                scalar
              }
            }
          }
				]]
				).toEqual({
					{
						message = 'Fields "scalar" conflict because they return conflicting types "String!" and "String". Use different aliases on the fields to fetch both if this was intentional.',
						locations = {
							{ line = 5, column = 17 },
							{ line = 8, column = 17 },
						},
					},
				})
			end)

			it("disallows differing return type list despite no overlap", function()
				expectErrorsWithSchema(
					expect,
					schema,
					[[
          {
            someBox {
              ... on IntBox {
                box: listStringBox {
                  scalar
                }
              }
              ... on StringBox {
                box: stringBox {
                  scalar
                }
              }
            }
          }
				]]
				).toEqual({
					{
						message = 'Fields "box" conflict because they return conflicting types "[StringBox]" and "StringBox". Use different aliases on the fields to fetch both if this was intentional.',
						locations = {
							{ line = 5, column = 17 },
							{ line = 10, column = 17 },
						},
					},
				})
				expectErrorsWithSchema(
					expect,
					schema,
					[[
          {
            someBox {
              ... on IntBox {
                box: stringBox {
                  scalar
                }
              }
              ... on StringBox {
                box: listStringBox {
                  scalar
                }
              }
            }
          }
				]]
				).toEqual({
					{
						message = 'Fields "box" conflict because they return conflicting types "StringBox" and "[StringBox]". Use different aliases on the fields to fetch both if this was intentional.',
						locations = {
							{ line = 5, column = 17 },
							{ line = 10, column = 17 },
						},
					},
				})
			end)

			it("disallows differing subfields", function()
				expectErrorsWithSchema(
					expect,
					schema,
					[[
          {
            someBox {
              ... on IntBox {
                box: stringBox {
                  val: scalar
                  val: unrelatedField
                }
              }
              ... on StringBox {
                box: stringBox {
                  val: scalar
                }
              }
            }
          }
				]]
				).toEqual({
					{
						message = 'Fields "val" conflict because "scalar" and "unrelatedField" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
						locations = {
							{ line = 6, column = 19 },
							{ line = 7, column = 19 },
						},
					},
				})
			end)

			it("disallows differing deep return types despite no overlap", function()
				expectErrorsWithSchema(
					expect,
					schema,
					[[
          {
            someBox {
              ... on IntBox {
                box: stringBox {
                  scalar
                }
              }
              ... on StringBox {
                box: intBox {
                  scalar
                }
              }
            }
          }
				]]
				).toEqual({
					{
						message = 'Fields "box" conflict because subfields "scalar" conflict because they return conflicting types "String" and "Int". Use different aliases on the fields to fetch both if this was intentional.',
						locations = {
							{ line = 5, column = 17 },
							{ line = 6, column = 19 },
							{ line = 10, column = 17 },
							{ line = 11, column = 19 },
						},
					},
				})
			end)

			it("allows non-conflicting overlapping types", function()
				expectValidWithSchema(
					expect,
					schema,
					[[
					{
						someBox {
							... on IntBox {
								scalar: unrelatedField
							}
							... on StringBox {
								scalar
							}
						}
					}
				]]
				)
			end)

			it("same wrapped scalar return types", function()
				expectValidWithSchema(
					expect,
					schema,
					[[
					{
						someBox {
							...on NonNullStringBox1 {
								scalar
							}
							...on NonNullStringBox2 {
								scalar
							}
						}
					}
				]]
				)
			end)

			it("allows inline fragments without type condition", function()
				expectValidWithSchema(
					expect,
					schema,
					[[
					{
						a
						... {
							a
						}
					}
				]]
				)
			end)

			it("compares deep types including list", function()
				expectErrorsWithSchema(
					expect,
					schema,
					[[
          {
            connection {
              ...edgeID
              edges {
                node {
                  id: name
                }
              }
            }
          }

          fragment edgeID on Connection {
            edges {
              node {
                id
              }
            }
          }
				]]
				).toEqual({
					{
						message = 'Fields "edges" conflict because subfields "node" conflict because subfields "id" conflict because "name" and "id" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
						locations = {
							{ line = 5, column = 15 },
							{ line = 6, column = 17 },
							{ line = 7, column = 19 },
							{ line = 14, column = 13 },
							{ line = 15, column = 15 },
							{ line = 16, column = 17 },
						},
					},
				})
			end)

			it("ignores unknown types", function()
				expectValidWithSchema(
					expect,
					schema,
					[[
					{
						someBox {
							...on UnknownType {
								scalar
							}
							...on NonNullStringBox2 {
								scalar
							}
						}
					}
				]]
				)
			end)

			it("works for field names that are JS keywords", function()
				local schemaWithKeywords = buildSchema([[
					type Foo {
						constructor: String
					}

					type Query {
						foo: Foo
					}
				]])

				expectValidWithSchema(
					expect,
					schemaWithKeywords,
					[[
					{
						foo {
							constructor
						}
					}
				]]
				)
			end)
		end)

		it("does not infinite loop on recursive fragment", function()
			expectValid(
				expect,
				[[
				fragment fragA on Human { name, relatives { name, ...fragA } }
			]]
			)
		end)

		it("does not infinite loop on immediately recursive fragment", function()
			expectValid(
				expect,
				[[
				fragment fragA on Human { name, ...fragA }
			]]
			)
		end)

		it("does not infinite loop on transitively recursive fragment", function()
			expectValid(
				expect,
				[[
				fragment fragA on Human { name, ...fragB }
				fragment fragB on Human { name, ...fragC }
				fragment fragC on Human { name, ...fragA }
			]]
			)
		end)

		it("finds invalid case even with immediately recursive fragment", function()
			expectErrors(
				expect,
				[[
      fragment sameAliasesWithDifferentFieldTargets on Dog {
        ...sameAliasesWithDifferentFieldTargets
        fido: name
        fido: nickname
      }
			]]
			).toEqual({
				{
					message = 'Fields "fido" conflict because "name" and "nickname" are different fields. Use different aliases on the fields to fetch both if this was intentional.',
					locations = {
						{ line = 4, column = 9 },
						{ line = 5, column = 9 },
					},
				},
			})
		end)
	end)
end
