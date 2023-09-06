--!nonstrict
return function()
	local BacktraceReport = require(script.Parent.BacktraceReport)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	describe(".new", function()
		it("should return a valid report", function()
			local report = BacktraceReport.new()
			local isValid = report:validate()

			expect(isValid).toBe(true)
		end)
	end)

	describe(":validate", function()
		it("should return false if the report has registers but no arch information, true otherwise", function()
			local report = BacktraceReport.new()

			report.threads = {
				default = {
					stack = {
						[1] = {
							registers = {
								rax = "16045690984833335023",
							},
						}
					},
				},
			}

			local isValid = report:validate()
			expect(isValid).toBe(false)

			-- invalid arch
			report.arch = {
				name = "x64",
				regsiters = nil,
			}

			isValid = report:validate()
			expect(isValid).toBe(false)

			-- correct arch
			report.arch = {
				name = "x64",
				registers = {
					rax = "u64",
				},
			}

			isValid = report:validate()
			expect(isValid).toBe(true)
		end)
	end)

	describe("IAnnotations", function()
		local IAnnotations = BacktraceReport.IAnnotations

		it("should return false if not a table", function()
			local result = IAnnotations("string")
			expect(result).toBe(false)
		end)

		it("should return false if a non-table value is not string, number, or boolean", function()
			local result = IAnnotations({
				Value = function() end,
			})
			expect(result).toBe(false)

			result = IAnnotations({
				Value = "ha",
				Value2 = 1,
				Value3 = false,
				Recursive = {
					Value11 = "haha",
					MoreRecursive = {
						Value12 = "hahaha",
						Value22 = function() end,
					},
				},
			})
			expect(result).toBe(false)
		end)

		it("should return true for an empty table", function()
			expect(IAnnotations({})).toBe(true)
		end)

		it("should return true if a non-table value is either string, number, or boolean", function()
			local result = IAnnotations({
				Value = "ha",
				Value2 = 1,
				Value3 = false,
				Recursive = {
					Value11 = "haha",
					Value21 = 2,
					Array = {
						[1] = "hahaha",
						[2] = 3,
						[3] = true,
					},
				},
			})
			expect(result).toBe(true)
		end)
	end)

	describe(":addAttributes", function()
		it("should correctly add attributes", function()
			local report = BacktraceReport.new()
			report:addAttributes({
				att1 = 1,
			})
			expect(report.attributes).toEqual({
				att1 = 1
			})
			report:addAttributes({
				att1 = 2,
				att2 = false,
				att3 = "test",
			})
			expect(report.attributes).toEqual({
				att1 = 2,
				att2 = false,
				att3 = "test",
			})
		end)
	end)

	describe(":addAnnotations", function()
		it("should correctly add annotations", function()
			local environmentVariables = {
				ENV_VAR_EXAMPLE = "example",
			}
			local dependencies = {
				Roact = {
					version = "0.2.0",
				},
				Otter = {
					version = "0.1.0",
				},
			}

			local report = BacktraceReport.new()

			report:addAnnotations({
				EnvironmentVariables = environmentVariables,
			})
			expect(report.annotations).toEqual({
				EnvironmentVariables = environmentVariables
			})

			report:addAnnotations({
				SomeProperty = true,
				Dependencies = dependencies,
			})
			expect(report.annotations).toEqual({
				EnvironmentVariables = environmentVariables,
				SomeProperty = true,
				Dependencies = dependencies,
			})
		end)
	end)

	describe(":addStackToThread", function()
		it("should correctly add stack to the thread with the name provided", function()
			local stack1 = {
				[1] = {
					line = "100",
					funcName = "field testError",
					sourceCode = "1",
				}
			}
			local stack2 = {
				[1] = {
					line = "110",
					funcName = "field ?",
					sourceCode = "2",
				}
			}

			local report = BacktraceReport.new()

			report:addStackToThread(stack1, "main")
			expect(report.threads).toMatchObject({
				main = {
					stack = stack1
				}
			})

			report:addStackToThread(stack2, "1")
			expect(report.threads).toMatchObject({
				main = {
					stack = stack1
				},
				["1"] = {
					stack = stack2
				},
			})
		end)
	end)

	describe(".fromMessageAndStack", function()
		it("should return a valid report", function()
			local report = BacktraceReport.fromMessageAndStack("index nil", "Script 'Workspace.Script', Line 3")
			local isValid = report:validate()

			expect(isValid).toBe(true)
		end)
	end)

	describe(".fromDetails", function()
		it("should return a valid report", function()
			local report = BacktraceReport.fromDetails({
				message = "index nil",
				stacks = {
					"Script 'Workspace.Script', Line 3",
					"Script 'Workspace.Script', Line 3",
				},
				annotations = {
					SomeProperty = true,
					SomeOtherProperty = "false",
				},
			})
			local isValid = report:validate()

			expect(isValid).toBe(true)
		end)
	end)
end
