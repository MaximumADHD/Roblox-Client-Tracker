MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = "roblox", ["User"] = "user"}]
        2 DUPTABLE                         R1 K11 [{["DocsSearch"] = "docs_search", ["ConvertToStreaming"] = "convert_to_streaming", ["OpenCloudUsage"] = "open_cloud_usage"}]
        3 DUPTABLE                         R2 K14 [{"SkillNames", "Sources"}]
        4 SETTABLEKS                       R1 R2 K12 ["SkillNames"]
        6 SETTABLEKS                       R0 R2 K13 ["Sources"]
        8 RETURN                           R2 1
