PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K2 [Enum.AccessoryType]
        4 NAMECALL                         R1 R1 K3 ["GetEnumItems"]
        6 CALL                             R1 1 3
        7 FORGPREP                         R1
        8 DUPTABLE                         R8 K6 [{"Id", "Label"}]
        9 GETTABLEKS                       R9 R5 K7 ["Name"]
       11 SETTABLEKS                       R9 R8 K4 ["Id"]
       13 GETTABLEKS                       R9 R5 K7 ["Name"]
       15 SETTABLEKS                       R9 R8 K5 ["Label"]
       17 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       19 MOVE                             R7 R0
       20 GETIMPORT                        R6 K10 [table.insert]
       22 CALL                             R6 2 0
       23 FORGLOOP                         R1 2 ; [-16]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 SETTABLEKS                       R0 R3 K0 ["Expansion"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Items"}]
        2 SETTABLEKS                       R0 R3 K0 ["Items"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onExpansionChange"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onChange"]
        8 DUPTABLE                         R1 K4 [{"Expansion", "Items"}]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["Expansion"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["Items"]
       17 SETTABLEKS                       R1 R0 K5 ["state"]
       19 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 DUPTABLE                         R4 K3 [{"Items"}]
        5 NEWTABLE                         R5 0 1
        7 DUPTABLE                         R6 K7 [{"Id", "Label", "Children"}]
        8 LOADK                            R7 K8 ["AccessoryType"]
        9 SETTABLEKS                       R7 R6 K4 ["Id"]
       11 LOADK                            R9 K9 ["Plugin"]
       12 LOADK                            R10 K10 ["InputAccesoryType"]
       13 NAMECALL                         R7 R1 K11 ["getText"]
       15 CALL                             R7 3 1
       16 SETTABLEKS                       R7 R6 K5 ["Label"]
       18 NEWTABLE                         R7 0 1
       20 DUPTABLE                         R8 K14 [{"Id", "Label", "Schema", "Value"}]
       21 LOADK                            R9 K8 ["AccessoryType"]
       22 SETTABLEKS                       R9 R8 K4 ["Id"]
       24 LOADK                            R11 K9 ["Plugin"]
       25 LOADK                            R12 K15 ["AccesoryType"]
       26 NAMECALL                         R9 R1 K11 ["getText"]
       28 CALL                             R9 3 1
       29 SETTABLEKS                       R9 R8 K5 ["Label"]
       31 DUPTABLE                         R9 K17 [{"Type", "Items"}]
       32 LOADK                            R10 K18 ["Select"]
       33 SETTABLEKS                       R10 R9 K16 ["Type"]
       35 GETUPVAL                         R10 0
       36 CALL                             R10 0 1
       37 SETTABLEKS                       R10 R9 K2 ["Items"]
       39 SETTABLEKS                       R9 R8 K12 ["Schema"]
       41 NAMECALL                         R10 R0 K19 ["inferAccessoryType"]
       43 CALL                             R10 1 1
       44 GETTABLEKS                       R9 R10 K20 ["Name"]
       46 SETTABLEKS                       R9 R8 K13 ["Value"]
       48 SETLIST                          R7 R8 1 [1]
       50 SETTABLEKS                       R7 R6 K6 ["Children"]
       52 SETLIST                          R5 R6 1 [1]
       54 SETTABLEKS                       R5 R4 K2 ["Items"]
       56 NAMECALL                         R2 R0 K21 ["setState"]
       58 CALL                             R2 2 0
       59 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["MeshPart"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+6]
        9 LOADK                            R8 K3 ["WrapLayer"]
       10 NAMECALL                         R6 R5 K4 ["FindFirstChildOfClass"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+1]
       14 RETURN                           R5 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 LOADNIL                          R1
       18 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["rig"]
        4 JUMPIFNOT                        R1 ; [+30]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+26]
        9 GETIMPORT                        R3 K4 [string.find]
       11 GETIMPORT                        R4 K6 [string.lower]
       13 GETTABLEKS                       R5 R2 K7 ["Name"]
       15 CALL                             R4 1 1
       16 LOADK                            R5 K8 ["eyebrow"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+3]
       19 GETIMPORT                        R3 K12 [Enum.AccessoryType.Eyebrow]
       21 RETURN                           R3 1
       22 GETIMPORT                        R3 K4 [string.find]
       24 GETIMPORT                        R4 K6 [string.lower]
       26 GETTABLEKS                       R5 R2 K7 ["Name"]
       28 CALL                             R4 1 1
       29 LOADK                            R5 K13 ["eyelash"]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R3 ; [+3]
       32 GETIMPORT                        R3 K15 [Enum.AccessoryType.Eyelash]
       34 RETURN                           R3 1
       35 GETIMPORT                        R2 K17 [Enum.AccessoryType.Unknown]
       37 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K0 ["state"]
        5 GETTABLEKS                       R5 R6 K1 ["Items"]
        7 GETTABLEN                        R4 R5 1
        8 GETTABLEKS                       R1 R4 K2 ["Children"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETTABLEKS                       R6 R5 K3 ["Id"]
       15 GETTABLEKS                       R7 R5 K4 ["Value"]
       17 SETTABLE                         R7 R0 R6
       18 FORGLOOP                         R1 2 ; [-6]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K5 ["props"]
       23 GETTABLEKS                       R1 R2 K6 ["setAccessoryType"]
       25 GETIMPORT                        R3 K9 [Enum.AccessoryType]
       27 GETTABLEKS                       R4 R0 K8 ["AccessoryType"]
       29 GETTABLE                         R2 R3 R4
       30 CALL                             R1 1 0
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K5 ["props"]
       34 GETTABLEKS                       R1 R2 K10 ["close"]
       36 CALL                             R1 0 0
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R2 R3 K5 ["props"]
       40 GETTABLEKS                       R1 R2 K11 ["processAccessory"]
       42 CALL                             R1 0 0
       43 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"Expansion", "Items", "onExpansionChange", "onChange", "onSubmit"}]
        5 GETTABLEKS                       R5 R0 K7 ["state"]
        7 GETTABLEKS                       R4 R5 K1 ["Expansion"]
        9 SETTABLEKS                       R4 R3 K1 ["Expansion"]
       11 GETTABLEKS                       R5 R0 K7 ["state"]
       13 GETTABLEKS                       R4 R5 K2 ["Items"]
       15 SETTABLEKS                       R4 R3 K2 ["Items"]
       17 GETTABLEKS                       R4 R0 K3 ["onExpansionChange"]
       19 SETTABLEKS                       R4 R3 K3 ["onExpansionChange"]
       21 GETTABLEKS                       R4 R0 K4 ["onChange"]
       23 SETTABLEKS                       R4 R3 K4 ["onChange"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R4 R3 K5 ["onSubmit"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_9:
        0 DUPTABLE                         R2 K1 [{"rig"}]
        1 GETTABLEKS                       R4 R0 K2 ["PluginReducer"]
        3 GETTABLEKS                       R3 R4 K0 ["rig"]
        5 SETTABLEKS                       R3 R2 K0 ["rig"]
        7 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K3 [{"close", "setAccessoryType", "processAccessory"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["close"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["setAccessoryType"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["processAccessory"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R8 R0 K11 ["Src"]
       34 GETTABLEKS                       R7 R8 K12 ["Components"]
       36 GETTABLEKS                       R6 R7 K13 ["FormScreen"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R9 R0 K11 ["Src"]
       43 GETTABLEKS                       R8 R9 K14 ["Actions"]
       45 GETTABLEKS                       R7 R8 K15 ["SetEnabled"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K11 ["Src"]
       52 GETTABLEKS                       R9 R10 K14 ["Actions"]
       54 GETTABLEKS                       R8 R9 K16 ["SetAccessoryType"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R11 R0 K11 ["Src"]
       61 GETTABLEKS                       R10 R11 K17 ["Thunks"]
       63 GETTABLEKS                       R9 R10 K18 ["ProcessAccessory"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R1 K19 ["PureComponent"]
       68 LOADK                            R11 K20 ["InputAccessoryTypeScreen"]
       69 NAMECALL                         R9 R9 K21 ["extend"]
       71 CALL                             R9 2 1
       72 DUPCLOSURE                       R10 K22 [PROTO_0]
       73 DUPCLOSURE                       R11 K23 [PROTO_3]
       74 SETTABLEKS                       R11 R9 K24 ["init"]
       76 DUPCLOSURE                       R11 K25 [PROTO_4]
       77 CAPTURE                          VAL R10
       78 SETTABLEKS                       R11 R9 K26 ["didMount"]
       80 DUPCLOSURE                       R11 K27 [PROTO_5]
       81 DUPCLOSURE                       R12 K28 [PROTO_6]
       82 CAPTURE                          VAL R11
       83 SETTABLEKS                       R12 R9 K29 ["inferAccessoryType"]
       85 DUPCLOSURE                       R12 K30 [PROTO_8]
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R12 R9 K31 ["render"]
       90 GETTABLEKS                       R12 R4 K32 ["withContext"]
       92 DUPTABLE                         R13 K36 [{"Localization", "Stylizer", "Plugin"}]
       93 GETTABLEKS                       R14 R4 K33 ["Localization"]
       95 SETTABLEKS                       R14 R13 K33 ["Localization"]
       97 GETTABLEKS                       R14 R4 K34 ["Stylizer"]
       99 SETTABLEKS                       R14 R13 K34 ["Stylizer"]
      101 GETTABLEKS                       R14 R4 K35 ["Plugin"]
      103 SETTABLEKS                       R14 R13 K35 ["Plugin"]
      105 CALL                             R12 1 1
      106 MOVE                             R13 R9
      107 CALL                             R12 1 1
      108 MOVE                             R9 R12
      109 DUPCLOSURE                       R12 K37 [PROTO_9]
      110 DUPCLOSURE                       R13 K38 [PROTO_13]
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R8
      114 GETTABLEKS                       R14 R2 K39 ["connect"]
      116 MOVE                             R15 R12
      117 MOVE                             R16 R13
      118 CALL                             R14 2 1
      119 MOVE                             R15 R9
      120 CALL                             R14 1 -1
      121 RETURN                           R14 -1
