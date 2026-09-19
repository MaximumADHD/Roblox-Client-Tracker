PROTO_0:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Fields"]
       18 GETTABLEKS                       R3 R3 K8 ["createPropertiesWatcher"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K17 [{["key"] = "folderIconTint", ["icon"] = "", ["watch"], ["validateArgs"], ["permanent"] = True}]
       22 MOVE                             R4 R2
       23 LOADK                            R5 K18 ["Folder"]
       24 NEWTABLE                         R6 0 1
       26 LOADK                            R7 K19 ["IconTint"]
       27 SETLIST                          R6 R7 1 [1]
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K13 ["watch"]
       32 DUPCLOSURE                       R4 K20 [PROTO_0]
       33 SETTABLEKS                       R4 R3 K14 ["validateArgs"]
       35 RETURN                           R3 1
