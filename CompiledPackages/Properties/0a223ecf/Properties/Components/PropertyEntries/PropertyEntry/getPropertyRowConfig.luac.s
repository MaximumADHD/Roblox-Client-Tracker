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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["Vector3Utils"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K14 [{"CFrame"}]
       31 NEWTABLE                         R5 0 2
       33 DUPTABLE                         R6 K20 [{["label"] = "Position", ["type"] = "Vector3", ["partNameMap"]}]
       34 DUPTABLE                         R7 K25 [{"value", "x", "y", "z"}]
       35 DUPTABLE                         R8 K28 [{["propertyPartName"] = "position"}]
       36 SETTABLEKS                       R8 R7 K21 ["value"]
       38 DUPTABLE                         R8 K30 [{["propertyPartName"] = "posX"}]
       39 SETTABLEKS                       R8 R7 K22 ["x"]
       41 DUPTABLE                         R8 K32 [{["propertyPartName"] = "posY"}]
       42 SETTABLEKS                       R8 R7 K23 ["y"]
       44 DUPTABLE                         R8 K34 [{["propertyPartName"] = "posZ"}]
       45 SETTABLEKS                       R8 R7 K24 ["z"]
       47 SETTABLEKS                       R7 R6 K19 ["partNameMap"]
       49 DUPTABLE                         R7 K36 [{["label"] = "Orientation", ["type"] = "Vector3", ["partNameMap"]}]
       50 DUPTABLE                         R8 K25 [{"value", "x", "y", "z"}]
       51 DUPTABLE                         R9 K40 [{["propertyPartName"] = "orientation", ["propertyToRow"], ["rowToProperty"]}]
       52 GETTABLEKS                       R10 R3 K41 ["apply"]
       54 GETIMPORT                        R11 K44 [math.deg]
       56 CALL                             R10 1 1
       57 SETTABLEKS                       R10 R9 K38 ["propertyToRow"]
       59 GETTABLEKS                       R10 R3 K41 ["apply"]
       61 GETIMPORT                        R11 K46 [math.rad]
       63 CALL                             R10 1 1
       64 SETTABLEKS                       R10 R9 K39 ["rowToProperty"]
       66 SETTABLEKS                       R9 R8 K21 ["value"]
       68 DUPTABLE                         R9 K48 [{["propertyPartName"] = "oriX", ["propertyToRow"], ["rowToProperty"]}]
       69 GETIMPORT                        R10 K44 [math.deg]
       71 SETTABLEKS                       R10 R9 K38 ["propertyToRow"]
       73 GETIMPORT                        R10 K46 [math.rad]
       75 SETTABLEKS                       R10 R9 K39 ["rowToProperty"]
       77 SETTABLEKS                       R9 R8 K22 ["x"]
       79 DUPTABLE                         R9 K50 [{["propertyPartName"] = "oriY", ["propertyToRow"], ["rowToProperty"]}]
       80 GETIMPORT                        R10 K44 [math.deg]
       82 SETTABLEKS                       R10 R9 K38 ["propertyToRow"]
       84 GETIMPORT                        R10 K46 [math.rad]
       86 SETTABLEKS                       R10 R9 K39 ["rowToProperty"]
       88 SETTABLEKS                       R9 R8 K23 ["y"]
       90 DUPTABLE                         R9 K52 [{["propertyPartName"] = "oriZ", ["propertyToRow"], ["rowToProperty"]}]
       91 GETIMPORT                        R10 K44 [math.deg]
       93 SETTABLEKS                       R10 R9 K38 ["propertyToRow"]
       95 GETIMPORT                        R10 K46 [math.rad]
       97 SETTABLEKS                       R10 R9 K39 ["rowToProperty"]
       99 SETTABLEKS                       R9 R8 K24 ["z"]
      101 SETTABLEKS                       R8 R7 K19 ["partNameMap"]
      103 SETLIST                          R5 R6 2 [1]
      105 SETTABLEKS                       R5 R4 K13 ["CFrame"]
      107 DUPCLOSURE                       R5 K53 [PROTO_0]
      108 CAPTURE                          VAL R4
      109 RETURN                           R5 1
