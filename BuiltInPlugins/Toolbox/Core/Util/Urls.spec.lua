--!strict
local FFlagToolboxAssetCategorization2 = game:GetFastFlag("ToolboxAssetCategorization2")

local Plugin = script:FindFirstAncestor("Toolbox")
local Packages = Plugin.Packages

local JestGlobals = require(Packages.Dev.JestGlobals)
local jest = JestGlobals.jest
local expect = JestGlobals.expect

return function()
	local Category = require(Plugin.Core.Types.Category)
	local Urls = require(script.Parent.Urls)

	describe("Toolbox Endpoint Migration Rollout generates correct URLs", function()
		local OWNER_ID = 3
		local EXPECTED_BASE_URL = "https://apis.roblox.com/toolbox-service/v1"

		local function urlForCategory(category)
			return if FFlagToolboxAssetCategorization2
				then Urls.constructGetToolboxItemsUrl({ categoryName = category, ownerId = OWNER_ID })
				else Urls.constructGetToolboxItemsUrl(category, nil, nil, nil, nil, nil, nil, OWNER_ID, nil, nil, nil, nil)
		end

		local EXPECTED = {
			{ Category.FREE_AUDIO, "/Audio" },
			{ Category.WHITELISTED_PLUGINS, "/Plugins" },
			{ Category.FREE_MESHES, "/Meshes" },
			{ Category.FREE_DECALS, "/Decals" },
			{ Category.MARKETPLACE_VIDEOS, "/Videos" },
			{ Category.FREE_MODELS, "/Models" },

			{ Category.MY_AUDIO, ("/inventory/user/%d/audio"):format(OWNER_ID) },
			{ Category.MY_PLUGINS, ("/inventory/user/%d/plugin"):format(OWNER_ID) },
			{ Category.MY_MODELS, ("/inventory/user/%d/model"):format(OWNER_ID) },
			{ Category.MY_MESHES, ("/inventory/user/%d/meshpart"):format(OWNER_ID) },
			{ Category.MY_DECALS, ("/inventory/user/%d/decal"):format(OWNER_ID) },
			{ Category.MY_VIDEOS, ("/inventory/user/%d/video"):format(OWNER_ID) },
			{ Category.MY_PACKAGES, ("/inventory/user/%d/package"):format(OWNER_ID) },
			{ Category.MY_ANIMATIONS, ("/inventory/user/%d/animation"):format(OWNER_ID) },

			{ Category.RECENT_AUDIO, ("/recent/user/%d/audio"):format(OWNER_ID) },
			{ Category.RECENT_MODELS, ("/recent/user/%d/model"):format(OWNER_ID) },
			{ Category.RECENT_MESHES, ("/recent/user/%d/meshpart"):format(OWNER_ID) },
			{ Category.RECENT_DECALS, ("/recent/user/%d/decal"):format(OWNER_ID) },
			{ Category.RECENT_VIDEO, ("/recent/user/%d/video"):format(OWNER_ID) },
			{ Category.RECENT_ANIMATIONS, ("/recent/user/%d/animation"):format(OWNER_ID) },
		}

		for _, item in ipairs(EXPECTED) do
			local category = item[1]
			local expectedPath = item[2]

			it(string.format("for getting %s", category.name), function()
				local expectedUrl = string.format("%s%s", EXPECTED_BASE_URL, expectedPath)
				expect(urlForCategory(category.name)).toBe(expectedUrl)
			end)
		end

		it("for inserts", function()
			expect(Urls.constructInsertAssetUrl(123)).toBe(string.format("%s/insert/asset/123", EXPECTED_BASE_URL))
		end)

		if FFlagToolboxAssetCategorization2 then
			it("should generate section asset urls", function()
				expect(Urls.constructGetToolboxItemsUrl({
					categoryName = Category.FREE_MODELS.name,
					sectionName = "trending",
				})).toBe(
					string.format("%s/home/%d/section/trending/assets", EXPECTED_BASE_URL, Enum.AssetType.Model.Value)
				)
			end)

			it("should generate section asset urls with params", function()
				expect(Urls.constructGetToolboxItemsUrl({
					categoryName = Category.FREE_MODELS.name,
					sectionName = "trending",
					limit = 10,
				})).toBe(
					string.format(
						"%s/home/%d/section/trending/assets?limit=10",
						EXPECTED_BASE_URL,
						Enum.AssetType.Model.Value
					)
				)
			end)
		end
	end)
end
