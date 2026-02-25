PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 SETTABLEKS                       R0 R3 K0 ["Expansion"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Items"}]
        2 SETTABLEKS                       R0 R3 K0 ["Items"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 DUPTABLE                         R4 K3 [{"Items"}]
        5 NEWTABLE                         R5 0 1
        7 DUPTABLE                         R6 K7 [{"Id", "Label", "Children"}]
        8 LOADK                            R7 K8 ["AnimationId"]
        9 SETTABLEKS                       R7 R6 K4 ["Id"]
       11 LOADK                            R9 K9 ["Plugin"]
       12 LOADK                            R10 K10 ["AnimationAssetId"]
       13 NAMECALL                         R7 R1 K11 ["getText"]
       15 CALL                             R7 3 1
       16 SETTABLEKS                       R7 R6 K5 ["Label"]
       18 NEWTABLE                         R7 0 1
       20 DUPTABLE                         R8 K14 [{"Id", "Label", "Schema", "Value"}]
       21 LOADK                            R9 K15 ["Animation"]
       22 SETTABLEKS                       R9 R8 K4 ["Id"]
       24 LOADK                            R11 K9 ["Plugin"]
       25 LOADK                            R12 K15 ["Animation"]
       26 NAMECALL                         R9 R1 K11 ["getText"]
       28 CALL                             R9 3 1
       29 SETTABLEKS                       R9 R8 K5 ["Label"]
       31 DUPTABLE                         R9 K17 [{"Type"}]
       32 LOADK                            R10 K18 ["Text"]
       33 SETTABLEKS                       R10 R9 K16 ["Type"]
       35 SETTABLEKS                       R9 R8 K12 ["Schema"]
       37 LOADK                            R9 K19 [""]
       38 SETTABLEKS                       R9 R8 K13 ["Value"]
       40 SETLIST                          R7 R8 1 [1]
       42 SETTABLEKS                       R7 R6 K6 ["Children"]
       44 SETLIST                          R5 R6 1 [1]
       46 SETTABLEKS                       R5 R4 K2 ["Items"]
       48 NAMECALL                         R2 R0 K20 ["setState"]
       50 CALL                             R2 2 0
       51 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["close"]
        5 CALL                             R0 0 0
        6 NEWTABLE                         R0 0 0
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K2 ["state"]
       11 GETTABLEKS                       R5 R6 K3 ["Items"]
       13 GETTABLEN                        R4 R5 1
       14 GETTABLEKS                       R1 R4 K4 ["Children"]
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETTABLEKS                       R6 R5 K5 ["Id"]
       21 GETTABLEKS                       R7 R5 K6 ["Value"]
       23 SETTABLE                         R7 R0 R6
       24 FORGLOOP                         R1 2 ; [-6]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K0 ["props"]
       29 GETTABLEKS                       R1 R2 K7 ["setAnimationId"]
       31 GETTABLEKS                       R2 R0 K8 ["Animation"]
       33 CALL                             R1 1 0
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R2 R3 K0 ["props"]
       37 GETTABLEKS                       R1 R2 K9 ["processMood"]
       39 CALL                             R1 0 0
       40 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 DUPTABLE                         R2 K1 [{"mode"}]
        1 GETTABLEKS                       R4 R0 K2 ["PluginReducer"]
        3 GETTABLEKS                       R3 R4 K0 ["mode"]
        5 SETTABLEKS                       R3 R2 K0 ["mode"]
        7 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K3 [{"close", "setAnimationId", "processMood"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["close"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["setAnimationId"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["processMood"]
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
       54 GETTABLEKS                       R8 R9 K16 ["SetAnimationId"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R11 R0 K11 ["Src"]
       61 GETTABLEKS                       R10 R11 K17 ["Thunks"]
       63 GETTABLEKS                       R9 R10 K18 ["ProcessMood"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R1 K19 ["PureComponent"]
       68 LOADK                            R11 K20 ["InputAnimationIdScreen"]
       69 NAMECALL                         R9 R9 K21 ["extend"]
       71 CALL                             R9 2 1
       72 DUPCLOSURE                       R10 K22 [PROTO_2]
       73 SETTABLEKS                       R10 R9 K23 ["init"]
       75 DUPCLOSURE                       R10 K24 [PROTO_3]
       76 SETTABLEKS                       R10 R9 K25 ["didMount"]
       78 DUPCLOSURE                       R10 K26 [PROTO_5]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R5
       81 SETTABLEKS                       R10 R9 K27 ["render"]
       83 GETTABLEKS                       R10 R4 K28 ["withContext"]
       85 DUPTABLE                         R11 K32 [{"Localization", "Stylizer", "Plugin"}]
       86 GETTABLEKS                       R12 R4 K29 ["Localization"]
       88 SETTABLEKS                       R12 R11 K29 ["Localization"]
       90 GETTABLEKS                       R12 R4 K30 ["Stylizer"]
       92 SETTABLEKS                       R12 R11 K30 ["Stylizer"]
       94 GETTABLEKS                       R12 R4 K31 ["Plugin"]
       96 SETTABLEKS                       R12 R11 K31 ["Plugin"]
       98 CALL                             R10 1 1
       99 MOVE                             R11 R9
      100 CALL                             R10 1 1
      101 MOVE                             R9 R10
      102 DUPCLOSURE                       R10 K33 [PROTO_6]
      103 DUPCLOSURE                       R11 K34 [PROTO_10]
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R8
      107 GETTABLEKS                       R12 R2 K35 ["connect"]
      109 MOVE                             R13 R10
      110 MOVE                             R14 R11
      111 CALL                             R12 2 1
      112 MOVE                             R13 R9
      113 CALL                             R12 1 -1
      114 RETURN                           R12 -1
