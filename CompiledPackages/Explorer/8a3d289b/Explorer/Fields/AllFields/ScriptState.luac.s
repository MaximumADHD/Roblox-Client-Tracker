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
       21 DUPTABLE                         R3 K17 [{["key"] = "scriptState", ["icon"] = "", ["watch"], ["validateArgs"], ["permanent"] = True}]
       22 MOVE                             R4 R2
       23 LOADK                            R5 K18 ["BaseScript"]
       24 NEWTABLE                         R6 0 2
       26 LOADK                            R7 K19 ["RunContext"]
       27 LOADK                            R8 K20 ["Disabled"]
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K13 ["watch"]
       33 DUPCLOSURE                       R4 K21 [PROTO_0]
       34 SETTABLEKS                       R4 R3 K14 ["validateArgs"]
       36 RETURN                           R3 1
