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
       19 DUPTABLE                         R4 K12 [{"SearchCreatorInventory", "GetItemDetails"}]
       20 GETTABLEKS                       R5 R3 K13 ["API"]
       22 GETTABLEKS                       R5 R5 K14 ["CreatorInventory"]
       24 GETTABLEKS                       R5 R5 K15 ["search"]
       26 SETTABLEKS                       R5 R4 K10 ["SearchCreatorInventory"]
       28 GETTABLEKS                       R5 R3 K16 ["APIS"]
       30 GETTABLEKS                       R5 R5 K17 ["ToolboxService"]
       32 GETTABLEKS                       R5 R5 K18 ["V1"]
       34 GETTABLEKS                       R5 R5 K19 ["Items"]
       36 GETTABLEKS                       R5 R5 K20 ["details"]
       38 SETTABLEKS                       R5 R4 K11 ["GetItemDetails"]
       40 RETURN                           R4 1
