local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll

local Constants = require(ContactImporter.Common.Constants)

local formatContacts = require(script.Parent.formatContacts)

local getFFlagContactImporterTweakDesignsForInvites =
	require(ContactImporter.Flags.getFFlagContactImporterTweakDesignsForInvites)
local getFFlagTrimContactsEarlierOnContactImporter =
	require(ContactImporter.Flags.getFFlagTrimContactsEarlierOnContactImporter)

local RoduxContacts = dependencies.RoduxContacts
local DeviceContact = RoduxContacts.Models.DeviceContact

describe("formatContacts", function()
	local minFlag, maxFlag
	beforeAll(function(c)
		minFlag = game:SetFastIntForTesting("ContactImporterUploadContactsMin", 2)
		maxFlag = game:SetFastIntForTesting("ContactImporterUploadContactsMax", 3)
	end)

	afterAll(function(c)
		game:SetFastIntForTesting("ContactImporterUploadContactsMin", minFlag)
		game:SetFastIntForTesting("ContactImporterUploadContactsMax", maxFlag)
	end)

	describe("no contacts case", function()
		it("SHOULD return empty array for no contacts", function()
			jestExpect(formatContacts({ countryCode = "US", contacts = {} })).toEqual({
				countryCode = "US",
				contacts = {},
				contactsCount = 0,
			})
		end)
	end)

	describe("should respect minimum and maximum contact thresholds", function()
		it("SHOULD return empty contacts with country code if lower than minimum number of contacts", function()
			jestExpect(formatContacts({
				countryCode = "US",
				contacts = {
					{ phonenumber = { "6263551111" }, lastname = "Person 2", firstname = "Test 2" },
				},
			})).toEqual({
				countryCode = "US",
				contacts = {},
				contactsCount = 1,
			})
		end)

		it("SHOULD return max number of contacts if over limit", function()
			local person1 = { phonenumber = { "6263551111" }, lastname = "Person 1", firstname = "Test 1" }
			local person2 = { phonenumber = { "6263551112" }, lastname = "Person 2", firstname = "Test 2" }
			local person3 = { phonenumber = { "6263551113" }, lastname = "Person 3", firstname = "Test 3" }
			local person4 = { phonenumber = { "6263551114" }, lastname = "Person 4", firstname = "Test 4" }

			local rawContacts = {
				countryCode = "US",
				contacts = {
					person1,
					person2,
					person3,
					person4,
				},
			}

			local expectedContacts = {
				countryCode = "US",
				contactsCount = if getFFlagTrimContactsEarlierOnContactImporter() then 3 else 4, -- SACQ-275
				contacts = {
					{
						idAssignedByFE = if getFFlagContactImporterTweakDesignsForInvites()
							then DeviceContact.generateId(person1)
							else nil,
						fields = {
							{
								name = Constants.LAST_NAME,
								value = "Person 1",
							},
							{
								name = Constants.FIRST_NAME,
								value = "Test 1",
							},
							{
								name = Constants.PHONE_NUMBER,
								value = "6263551111",
							},
						},
					},
					{
						idAssignedByFE = if getFFlagContactImporterTweakDesignsForInvites()
							then DeviceContact.generateId(person2)
							else nil,
						fields = {
							{
								name = Constants.LAST_NAME,
								value = "Person 2",
							},
							{
								name = Constants.FIRST_NAME,
								value = "Test 2",
							},
							{
								name = Constants.PHONE_NUMBER,
								value = "6263551112",
							},
						},
					},
					{
						idAssignedByFE = if getFFlagContactImporterTweakDesignsForInvites()
							then DeviceContact.generateId(person3)
							else nil,
						fields = {
							{
								name = Constants.LAST_NAME,
								value = "Person 3",
							},
							{
								name = Constants.FIRST_NAME,
								value = "Test 3",
							},
							{
								name = Constants.PHONE_NUMBER,
								value = "6263551113",
							},
						},
					},
				},
			}

			jestExpect(formatContacts(rawContacts)).toEqual(expectedContacts)
		end)
	end)

	describe("formatting contacts", function()
		it("SHOULD format contacts who have multiple phone numbers properly", function()
			local minFlag = game:SetFastIntForTesting("ContactImporterUploadContactsMin", 0)
			local person1 = {
				phonenumber = { "6263553555 ", "3223555555" },
				lastname = "Person 1",
				firstname = "Test 1",
			}
			local rawContacts = {
				countryCode = "US",
				contacts = {
					person1,
				},
			}
			local expectedContacts = {
				countryCode = "US",
				contactsCount = 2,
				contacts = {
					{
						idAssignedByFE = if getFFlagContactImporterTweakDesignsForInvites()
							then DeviceContact.generateId(person1)
							else nil,
						fields = {
							{
								name = Constants.LAST_NAME,
								value = "Person 1",
							},
							{
								name = Constants.FIRST_NAME,
								value = "Test 1",
							},
							{
								name = Constants.PHONE_NUMBER,
								value = "6263553555",
							},
						},
					},
					{
						idAssignedByFE = if getFFlagContactImporterTweakDesignsForInvites()
							then DeviceContact.generateId(person1)
							else nil,
						fields = {
							{
								name = Constants.LAST_NAME,
								value = "Person 1",
							},
							{
								name = Constants.FIRST_NAME,
								value = "Test 1",
							},
							{
								name = Constants.PHONE_NUMBER,
								value = "3223555555",
							},
						},
					},
				},
			}
			jestExpect(formatContacts(rawContacts)).toEqual(expectedContacts)
			game:SetFastIntForTesting("ContactImporterUploadContactsMin", minFlag)
		end)

		it("SHOULD format contacts who have characters in phone numbers properly", function()
			local person1 = { phonenumber = { "(322) 355-5555" }, lastname = "Person 1", firstname = "Test 1" }
			local person2 = { phonenumber = { "+1 626-355- 1111" }, lastname = "Person 2", firstname = "Test 2" }
			local person3 = { phonenumber = { "(626)-355-1112" }, lastname = "Person 3", firstname = "Test 3" }
			local rawContacts = {
				countryCode = "US",
				contacts = {
					person1,
					person2,
					person3,
				},
			}
			local expectedContacts = {
				countryCode = "US",
				contactsCount = 3,
				contacts = {
					{
						idAssignedByFE = if getFFlagContactImporterTweakDesignsForInvites()
							then DeviceContact.generateId(person1)
							else nil,
						fields = {
							{
								name = Constants.LAST_NAME,
								value = "Person 1",
							},
							{
								name = Constants.FIRST_NAME,
								value = "Test 1",
							},
							{
								name = Constants.PHONE_NUMBER,
								value = "(322)355-5555",
							},
						},
					},
					{
						idAssignedByFE = if getFFlagContactImporterTweakDesignsForInvites()
							then DeviceContact.generateId(person2)
							else nil,
						fields = {
							{
								name = Constants.LAST_NAME,
								value = "Person 2",
							},
							{
								name = Constants.FIRST_NAME,
								value = "Test 2",
							},
							{
								name = Constants.PHONE_NUMBER,
								value = "+1626-355-1111",
							},
						},
					},
					{
						idAssignedByFE = if getFFlagContactImporterTweakDesignsForInvites()
							then DeviceContact.generateId(person3)
							else nil,
						fields = {
							{
								name = Constants.LAST_NAME,
								value = "Person 3",
							},
							{
								name = Constants.FIRST_NAME,
								value = "Test 3",
							},
							{
								name = Constants.PHONE_NUMBER,
								value = "(626)-355-1112",
							},
						},
					},
				},
			}
			jestExpect(formatContacts(rawContacts)).toEqual(expectedContacts)
		end)
	end)
end)
