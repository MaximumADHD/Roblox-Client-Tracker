PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"enabled"}]
        7 GETTABLEKS                       R5 R1 K2 ["enabled"]
        9 SETTABLEKS                       R5 R4 K2 ["enabled"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"errorText"}]
        7 GETTABLEKS                       R5 R1 K2 ["errorText"]
        9 SETTABLEKS                       R5 R4 K2 ["errorText"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"mode"}]
        7 GETTABLEKS                       R5 R1 K2 ["mode"]
        9 SETTABLEKS                       R5 R4 K2 ["mode"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"screen"}]
        7 GETTABLEKS                       R5 R1 K2 ["screen"]
        9 SETTABLEKS                       R5 R4 K2 ["screen"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"rig"}]
        7 GETTABLEKS                       R5 R1 K2 ["rig"]
        9 SETTABLEKS                       R5 R4 K2 ["rig"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K6 [{"colorMap", "metalnessMap", "normalMap", "roughnessMap"}]
        7 GETTABLEKS                       R5 R1 K2 ["colorMap"]
        9 SETTABLEKS                       R5 R4 K2 ["colorMap"]
       11 GETTABLEKS                       R5 R1 K3 ["metalnessMap"]
       13 SETTABLEKS                       R5 R4 K3 ["metalnessMap"]
       15 GETTABLEKS                       R5 R1 K4 ["normalMap"]
       17 SETTABLEKS                       R5 R4 K4 ["normalMap"]
       19 GETTABLEKS                       R5 R1 K5 ["roughnessMap"]
       21 SETTABLEKS                       R5 R4 K5 ["roughnessMap"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"accessoryType"}]
        7 GETTABLEKS                       R5 R1 K2 ["accessoryType"]
        9 SETTABLEKS                       R5 R4 K2 ["accessoryType"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"animationId"}]
        7 GETTABLEKS                       R5 R1 K2 ["animationId"]
        9 SETTABLEKS                       R5 R4 K2 ["animationId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"ownershipTransferText"}]
        7 GETTABLEKS                       R5 R1 K2 ["ownershipTransferText"]
        9 SETTABLEKS                       R5 R4 K2 ["ownershipTransferText"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Actions"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["SetEnabled"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R3 K12 ["SetErrorText"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R3 K13 ["SetMode"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R3 K14 ["SetScreen"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R3 K15 ["SetRig"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R3 K16 ["SetAccessoryType"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R3 K17 ["SetAnimationId"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R3 K18 ["SetSurfaceAppearanceIds"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K5 [require]
       67 GETTABLEKS                       R13 R3 K19 ["SetOwnershipTransferText"]
       69 CALL                             R12 1 1
       70 GETTABLEKS                       R13 R1 K20 ["createReducer"]
       72 DUPTABLE                         R14 K36 [{["enabled"] = False, ["mode"] = , ["screen"] = , ["rig"] = , ["errorText"] = , ["accessoryType"], ["animationId"] = , ["colorMap"] = , ["metalnessMap"] = , ["normalMap"] = , ["roughnessMap"] = , ["ownershipTransferText"] = ""}]
       73 GETIMPORT                        R15 K40 [Enum.AccessoryType.Unknown]
       75 SETTABLEKS                       R15 R14 K28 ["accessoryType"]
       77 NEWTABLE                         R15 16 0
       79 GETTABLEKS                       R16 R4 K41 ["name"]
       81 DUPCLOSURE                       R17 K42 [PROTO_0]
       82 CAPTURE                          VAL R2
       83 SETTABLE                         R17 R15 R16
       84 GETTABLEKS                       R16 R5 K41 ["name"]
       86 DUPCLOSURE                       R17 K43 [PROTO_1]
       87 CAPTURE                          VAL R2
       88 SETTABLE                         R17 R15 R16
       89 GETTABLEKS                       R16 R6 K41 ["name"]
       91 DUPCLOSURE                       R17 K44 [PROTO_2]
       92 CAPTURE                          VAL R2
       93 SETTABLE                         R17 R15 R16
       94 GETTABLEKS                       R16 R7 K41 ["name"]
       96 DUPCLOSURE                       R17 K45 [PROTO_3]
       97 CAPTURE                          VAL R2
       98 SETTABLE                         R17 R15 R16
       99 GETTABLEKS                       R16 R8 K41 ["name"]
      101 DUPCLOSURE                       R17 K46 [PROTO_4]
      102 CAPTURE                          VAL R2
      103 SETTABLE                         R17 R15 R16
      104 GETTABLEKS                       R16 R11 K41 ["name"]
      106 DUPCLOSURE                       R17 K47 [PROTO_5]
      107 CAPTURE                          VAL R2
      108 SETTABLE                         R17 R15 R16
      109 GETTABLEKS                       R16 R9 K41 ["name"]
      111 DUPCLOSURE                       R17 K48 [PROTO_6]
      112 CAPTURE                          VAL R2
      113 SETTABLE                         R17 R15 R16
      114 GETTABLEKS                       R16 R10 K41 ["name"]
      116 DUPCLOSURE                       R17 K49 [PROTO_7]
      117 CAPTURE                          VAL R2
      118 SETTABLE                         R17 R15 R16
      119 GETTABLEKS                       R16 R12 K41 ["name"]
      121 DUPCLOSURE                       R17 K50 [PROTO_8]
      122 CAPTURE                          VAL R2
      123 SETTABLE                         R17 R15 R16
      124 CALL                             R13 2 1
      125 RETURN                           R13 1
