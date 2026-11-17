MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K26 [{["CAMERA_DISTANCE_SCALE"] = 0.8, ["INITIAL_FOCUS_DIRECTION"] = {0, 0, -1}, ["MAX_GENERATIONS_MESSAGE"] = "You have reached the maximum concurrent jobs, please try again later.", ["INVENTORY_URL"] = "https://create.roblox.com/dashboard/creations?activeTab=Image", ["STATUS"], ["DROPDOWN_ACTIONS"], ["GENERATION_ACTIONS"], ["GENERATION_ANGLE_ACTIONS"], ["COMPLETED_GENERATIONS_INDEX"] = 3, ["MAX_SEED_VALUE"] = 2147483647, ["GENERATION_SELECTION_THRESHOLD"] = 30, ["TEXTURE_GENERATOR_LEGAL_ACCEPT"] = "TextureGeneratorLegalAccept", ["TERMS_OF_SERVICE_URL"] = "https://en.help.roblox.com/hc/en-us/articles/20121392440212-AI-Based-Tools-Supplemental-Terms-and-Disclaimer"}]
        8 DUPTABLE                         R2 K35 [{["CANCELED"] = "Canceled", ["PENDING"] = "Pending", ["COMPLETED"] = "Completed", ["FAILED"] = "Failed"}]
        9 SETTABLEKS                       R2 R1 K12 ["STATUS"]
       11 DUPTABLE                         R2 K44 [{["INSERT"] = "Insert", ["INVENTORY"] = "Inventory", ["EXPORT"] = "Export", ["REMOVE"] = "Remove"}]
       12 SETTABLEKS                       R2 R1 K13 ["DROPDOWN_ACTIONS"]
       14 DUPTABLE                         R2 K47 [{["ADD"] = "ADD", ["UPDATE"] = "UPDATE", ["REMOVE"] = "REMOVE"}]
       15 SETTABLEKS                       R2 R1 K14 ["GENERATION_ACTIONS"]
       17 DUPTABLE                         R2 K49 [{["SET"] = "SET", ["REMOVE"] = "REMOVE"}]
       18 SETTABLEKS                       R2 R1 K15 ["GENERATION_ANGLE_ACTIONS"]
       20 RETURN                           R1 1
