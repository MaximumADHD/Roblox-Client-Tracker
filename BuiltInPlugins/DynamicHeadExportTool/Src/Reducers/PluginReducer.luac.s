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
       72 DUPTABLE                         R14 K33 [{"enabled", "mode", "screen", "rig", "errorText", "accessoryType", "animationId", "colorMap", "metalnessMap", "normalMap", "roughnessMap", "ownershipTransferText"}]
       73 LOADB                            R15 0
       74 SETTABLEKS                       R15 R14 K21 ["enabled"]
       76 LOADNIL                          R15
       77 SETTABLEKS                       R15 R14 K22 ["mode"]
       79 LOADNIL                          R15
       80 SETTABLEKS                       R15 R14 K23 ["screen"]
       82 LOADNIL                          R15
       83 SETTABLEKS                       R15 R14 K24 ["rig"]
       85 LOADNIL                          R15
       86 SETTABLEKS                       R15 R14 K25 ["errorText"]
       88 GETIMPORT                        R15 K37 [Enum.AccessoryType.Unknown]
       90 SETTABLEKS                       R15 R14 K26 ["accessoryType"]
       92 LOADNIL                          R15
       93 SETTABLEKS                       R15 R14 K27 ["animationId"]
       95 LOADNIL                          R15
       96 SETTABLEKS                       R15 R14 K28 ["colorMap"]
       98 LOADNIL                          R15
       99 SETTABLEKS                       R15 R14 K29 ["metalnessMap"]
      101 LOADNIL                          R15
      102 SETTABLEKS                       R15 R14 K30 ["normalMap"]
      104 LOADNIL                          R15
      105 SETTABLEKS                       R15 R14 K31 ["roughnessMap"]
      107 LOADK                            R15 K38 [""]
      108 SETTABLEKS                       R15 R14 K32 ["ownershipTransferText"]
      110 NEWTABLE                         R15 16 0
      112 GETTABLEKS                       R16 R4 K39 ["name"]
      114 DUPCLOSURE                       R17 K40 [PROTO_0]
      115 CAPTURE                          VAL R2
      116 SETTABLE                         R17 R15 R16
      117 GETTABLEKS                       R16 R5 K39 ["name"]
      119 DUPCLOSURE                       R17 K41 [PROTO_1]
      120 CAPTURE                          VAL R2
      121 SETTABLE                         R17 R15 R16
      122 GETTABLEKS                       R16 R6 K39 ["name"]
      124 DUPCLOSURE                       R17 K42 [PROTO_2]
      125 CAPTURE                          VAL R2
      126 SETTABLE                         R17 R15 R16
      127 GETTABLEKS                       R16 R7 K39 ["name"]
      129 DUPCLOSURE                       R17 K43 [PROTO_3]
      130 CAPTURE                          VAL R2
      131 SETTABLE                         R17 R15 R16
      132 GETTABLEKS                       R16 R8 K39 ["name"]
      134 DUPCLOSURE                       R17 K44 [PROTO_4]
      135 CAPTURE                          VAL R2
      136 SETTABLE                         R17 R15 R16
      137 GETTABLEKS                       R16 R11 K39 ["name"]
      139 DUPCLOSURE                       R17 K45 [PROTO_5]
      140 CAPTURE                          VAL R2
      141 SETTABLE                         R17 R15 R16
      142 GETTABLEKS                       R16 R9 K39 ["name"]
      144 DUPCLOSURE                       R17 K46 [PROTO_6]
      145 CAPTURE                          VAL R2
      146 SETTABLE                         R17 R15 R16
      147 GETTABLEKS                       R16 R10 K39 ["name"]
      149 DUPCLOSURE                       R17 K47 [PROTO_7]
      150 CAPTURE                          VAL R2
      151 SETTABLE                         R17 R15 R16
      152 GETTABLEKS                       R16 R12 K39 ["name"]
      154 DUPCLOSURE                       R17 K48 [PROTO_8]
      155 CAPTURE                          VAL R2
      156 SETTABLE                         R17 R15 R16
      157 CALL                             R13 2 1
      158 RETURN                           R13 1
