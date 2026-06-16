MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["RobloxAPI"]
       16 GETTABLEKS                       R3 R2 K9 ["new"]
       18 CALL                             R3 0 1
       19 DUPTABLE                         R4 K13 [{"SearchCreatorInventory", "GetItemDetails", "GetGroups"}]
       20 GETTABLEKS                       R5 R3 K14 ["API"]
       22 GETTABLEKS                       R5 R5 K15 ["CreatorInventory"]
       24 GETTABLEKS                       R5 R5 K16 ["search"]
       26 SETTABLEKS                       R5 R4 K10 ["SearchCreatorInventory"]
       28 GETTABLEKS                       R5 R3 K17 ["APIS"]
       30 GETTABLEKS                       R5 R5 K18 ["ToolboxService"]
       32 GETTABLEKS                       R5 R5 K19 ["V1"]
       34 GETTABLEKS                       R5 R5 K20 ["Items"]
       36 GETTABLEKS                       R5 R5 K21 ["details"]
       38 SETTABLEKS                       R5 R4 K11 ["GetItemDetails"]
       40 GETTABLEKS                       R5 R3 K17 ["APIS"]
       42 GETTABLEKS                       R5 R5 K22 ["CreatorHomeApi"]
       44 GETTABLEKS                       R5 R5 K19 ["V1"]
       46 GETTABLEKS                       R5 R5 K23 ["groups"]
       48 SETTABLEKS                       R5 R4 K12 ["GetGroups"]
       50 RETURN                           R4 1
