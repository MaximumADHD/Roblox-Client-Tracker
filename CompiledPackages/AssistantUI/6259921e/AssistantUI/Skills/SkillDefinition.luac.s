MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Roblox", "User"}]
        2 LOADK                            R1 K3 ["roblox"]
        3 SETTABLEKS                       R1 R0 K0 ["Roblox"]
        5 LOADK                            R1 K4 ["user"]
        6 SETTABLEKS                       R1 R0 K1 ["User"]
        8 DUPTABLE                         R1 K7 [{"DocsQA", "ConvertToStreaming"}]
        9 LOADK                            R2 K8 ["docs_qa"]
       10 SETTABLEKS                       R2 R1 K5 ["DocsQA"]
       12 LOADK                            R2 K9 ["convert_to_streaming"]
       13 SETTABLEKS                       R2 R1 K6 ["ConvertToStreaming"]
       15 DUPTABLE                         R2 K12 [{"SkillNames", "Sources"}]
       16 SETTABLEKS                       R1 R2 K10 ["SkillNames"]
       18 SETTABLEKS                       R0 R2 K11 ["Sources"]
       20 RETURN                           R2 1
