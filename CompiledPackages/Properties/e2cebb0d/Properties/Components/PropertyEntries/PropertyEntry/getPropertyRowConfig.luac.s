PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+4]
        3 DUPTABLE                         R2 K3 [{[1] = "MultiRow", ["rows"]}]
        4 SETTABLEKS                       R1 R2 K2 ["rows"]
        6 RETURN                           R2 1
        7 DUPTABLE                         R2 K5 [{[1] = "SingleRow"}]
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["PropertyEntries"]
       13 GETTABLEKS                       R2 R2 K8 ["PropertyEntry"]
       15 GETTABLEKS                       R2 R2 K9 ["PropertyMultiRow"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["PropertyTypes"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K12 [{"CFrame"}]
       24 NEWTABLE                         R4 0 2
       26 DUPTABLE                         R5 K18 [{["label"] = "Position", ["type"] = "Vector3", ["partNameMap"]}]
       27 DUPTABLE                         R6 K23 [{"value", "x", "y", "z"}]
       28 DUPTABLE                         R7 K26 [{["propertyPartName"] = "position"}]
       29 SETTABLEKS                       R7 R6 K19 ["value"]
       31 DUPTABLE                         R7 K28 [{["propertyPartName"] = "posX"}]
       32 SETTABLEKS                       R7 R6 K20 ["x"]
       34 DUPTABLE                         R7 K30 [{["propertyPartName"] = "posY"}]
       35 SETTABLEKS                       R7 R6 K21 ["y"]
       37 DUPTABLE                         R7 K32 [{["propertyPartName"] = "posZ"}]
       38 SETTABLEKS                       R7 R6 K22 ["z"]
       40 SETTABLEKS                       R6 R5 K17 ["partNameMap"]
       42 DUPTABLE                         R6 K34 [{["label"] = "Orientation", ["type"] = "Vector3", ["partNameMap"]}]
       43 DUPTABLE                         R7 K23 [{"value", "x", "y", "z"}]
       44 DUPTABLE                         R8 K36 [{["propertyPartName"] = "orientation"}]
       45 SETTABLEKS                       R8 R7 K19 ["value"]
       47 DUPTABLE                         R8 K38 [{["propertyPartName"] = "oriX"}]
       48 SETTABLEKS                       R8 R7 K20 ["x"]
       50 DUPTABLE                         R8 K40 [{["propertyPartName"] = "oriY"}]
       51 SETTABLEKS                       R8 R7 K21 ["y"]
       53 DUPTABLE                         R8 K42 [{["propertyPartName"] = "oriZ"}]
       54 SETTABLEKS                       R8 R7 K22 ["z"]
       56 SETTABLEKS                       R7 R6 K17 ["partNameMap"]
       58 SETLIST                          R4 R5 2 [1]
       60 SETTABLEKS                       R4 R3 K11 ["CFrame"]
       62 DUPCLOSURE                       R4 K43 [PROTO_0]
       63 CAPTURE                          VAL R3
       64 RETURN                           R4 1
