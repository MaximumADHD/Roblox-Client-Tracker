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
        9 GETTABLEKS                       R3 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R3 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Fields"]
       18 GETTABLEKS                       R3 R4 K8 ["createPropertiesWatcher"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K14 [{"key", "icon", "watch", "validateArgs", "permanent"}]
       22 LOADK                            R4 K15 ["packageLinkStatus"]
       23 SETTABLEKS                       R4 R3 K9 ["key"]
       25 LOADK                            R4 K16 [""]
       26 SETTABLEKS                       R4 R3 K10 ["icon"]
       28 MOVE                             R4 R2
       29 LOADK                            R5 K17 ["PackageLink"]
       30 NEWTABLE                         R6 0 1
       32 LOADK                            R7 K18 ["AutoUpdate"]
       33 SETLIST                          R6 R7 1 [1]
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K11 ["watch"]
       38 DUPCLOSURE                       R4 K19 [PROTO_0]
       39 SETTABLEKS                       R4 R3 K12 ["validateArgs"]
       41 LOADB                            R4 1
       42 SETTABLEKS                       R4 R3 K13 ["permanent"]
       44 RETURN                           R3 1
