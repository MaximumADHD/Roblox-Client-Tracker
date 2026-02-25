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
        8 LOADK                            R7 K8 ["SurfaceAppearanceIds"]
        9 SETTABLEKS                       R7 R6 K4 ["Id"]
       11 LOADK                            R9 K9 ["Plugin"]
       12 LOADK                            R10 K10 ["SurfaceAppearanceAssetIds"]
       13 NAMECALL                         R7 R1 K11 ["getText"]
       15 CALL                             R7 3 1
       16 SETTABLEKS                       R7 R6 K5 ["Label"]
       18 NEWTABLE                         R7 0 4
       20 DUPTABLE                         R8 K14 [{"Id", "Label", "Schema", "Value"}]
       21 LOADK                            R9 K15 ["ColorMap"]
       22 SETTABLEKS                       R9 R8 K4 ["Id"]
       24 LOADK                            R11 K9 ["Plugin"]
       25 LOADK                            R12 K15 ["ColorMap"]
       26 NAMECALL                         R9 R1 K11 ["getText"]
       28 CALL                             R9 3 1
       29 SETTABLEKS                       R9 R8 K5 ["Label"]
       31 DUPTABLE                         R9 K17 [{"Type"}]
       32 LOADK                            R10 K18 ["Text"]
       33 SETTABLEKS                       R10 R9 K16 ["Type"]
       35 SETTABLEKS                       R9 R8 K12 ["Schema"]
       37 LOADK                            R9 K19 [""]
       38 SETTABLEKS                       R9 R8 K13 ["Value"]
       40 DUPTABLE                         R9 K14 [{"Id", "Label", "Schema", "Value"}]
       41 LOADK                            R10 K20 ["MetalnessMap"]
       42 SETTABLEKS                       R10 R9 K4 ["Id"]
       44 LOADK                            R12 K9 ["Plugin"]
       45 LOADK                            R13 K20 ["MetalnessMap"]
       46 NAMECALL                         R10 R1 K11 ["getText"]
       48 CALL                             R10 3 1
       49 SETTABLEKS                       R10 R9 K5 ["Label"]
       51 DUPTABLE                         R10 K17 [{"Type"}]
       52 LOADK                            R11 K18 ["Text"]
       53 SETTABLEKS                       R11 R10 K16 ["Type"]
       55 SETTABLEKS                       R10 R9 K12 ["Schema"]
       57 LOADK                            R10 K19 [""]
       58 SETTABLEKS                       R10 R9 K13 ["Value"]
       60 DUPTABLE                         R10 K14 [{"Id", "Label", "Schema", "Value"}]
       61 LOADK                            R11 K21 ["NormalMap"]
       62 SETTABLEKS                       R11 R10 K4 ["Id"]
       64 LOADK                            R13 K9 ["Plugin"]
       65 LOADK                            R14 K21 ["NormalMap"]
       66 NAMECALL                         R11 R1 K11 ["getText"]
       68 CALL                             R11 3 1
       69 SETTABLEKS                       R11 R10 K5 ["Label"]
       71 DUPTABLE                         R11 K17 [{"Type"}]
       72 LOADK                            R12 K18 ["Text"]
       73 SETTABLEKS                       R12 R11 K16 ["Type"]
       75 SETTABLEKS                       R11 R10 K12 ["Schema"]
       77 LOADK                            R11 K19 [""]
       78 SETTABLEKS                       R11 R10 K13 ["Value"]
       80 DUPTABLE                         R11 K14 [{"Id", "Label", "Schema", "Value"}]
       81 LOADK                            R12 K22 ["RoughnessMap"]
       82 SETTABLEKS                       R12 R11 K4 ["Id"]
       84 LOADK                            R14 K9 ["Plugin"]
       85 LOADK                            R15 K22 ["RoughnessMap"]
       86 NAMECALL                         R12 R1 K11 ["getText"]
       88 CALL                             R12 3 1
       89 SETTABLEKS                       R12 R11 K5 ["Label"]
       91 DUPTABLE                         R12 K17 [{"Type"}]
       92 LOADK                            R13 K18 ["Text"]
       93 SETTABLEKS                       R13 R12 K16 ["Type"]
       95 SETTABLEKS                       R12 R11 K12 ["Schema"]
       97 LOADK                            R12 K19 [""]
       98 SETTABLEKS                       R12 R11 K13 ["Value"]
      100 SETLIST                          R7 R8 4 [1]
      102 SETTABLEKS                       R7 R6 K6 ["Children"]
      104 SETLIST                          R5 R6 1 [1]
      106 SETTABLEKS                       R5 R4 K2 ["Items"]
      108 NAMECALL                         R2 R0 K23 ["setState"]
      110 CALL                             R2 2 0
      111 RETURN                           R0 0

PROTO_4:
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
       23 GETTABLEKS                       R1 R2 K6 ["setSurfaceAppearanceIds"]
       25 GETTABLEKS                       R2 R0 K7 ["ColorMap"]
       27 GETTABLEKS                       R3 R0 K8 ["MetalnessMap"]
       29 GETTABLEKS                       R4 R0 K9 ["NormalMap"]
       31 GETTABLEKS                       R5 R0 K10 ["RoughnessMap"]
       33 CALL                             R1 4 0
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R2 R3 K5 ["props"]
       37 GETTABLEKS                       R1 R2 K11 ["mode"]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R3 R4 K12 ["Modes"]
       42 GETTABLEKS                       R2 R3 K13 ["Head"]
       44 JUMPIFNOTEQ                      R1 R2 ; [+14]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R2 R3 K5 ["props"]
       49 GETTABLEKS                       R1 R2 K14 ["close"]
       51 CALL                             R1 0 0
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R2 R3 K5 ["props"]
       55 GETTABLEKS                       R1 R2 K15 ["processHead"]
       57 CALL                             R1 0 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R2 R3 K5 ["props"]
       62 GETTABLEKS                       R1 R2 K11 ["mode"]
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R3 R4 K12 ["Modes"]
       67 GETTABLEKS                       R2 R3 K16 ["Accessory"]
       69 JUMPIFNOTEQ                      R1 R2 ; [+13]
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R2 R3 K5 ["props"]
       74 GETTABLEKS                       R1 R2 K17 ["setScreen"]
       76 GETUPVAL                         R4 1
       77 GETTABLEKS                       R3 R4 K18 ["Screens"]
       79 GETTABLEKS                       R2 R3 K19 ["InputAccessoryType"]
       81 CALL                             R1 1 0
       82 RETURN                           R0 0
       83 LOADB                            R2 0
       84 FASTCALL1                        ASSERT R2 ; [+2]
       85 GETIMPORT                        R1 K21 [assert]
       87 CALL                             R1 1 0
       88 RETURN                           R0 0

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
       27 CAPTURE                          UPVAL U2
       28 SETTABLEKS                       R4 R3 K5 ["onSubmit"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

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
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K4 [{"close", "setSurfaceAppearanceIds", "processHead", "setScreen"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["close"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["setSurfaceAppearanceIds"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["processHead"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["setScreen"]
       21 RETURN                           R1 1

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
       32 GETTABLEKS                       R7 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Constants"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R9 R0 K11 ["Src"]
       41 GETTABLEKS                       R8 R9 K13 ["Components"]
       43 GETTABLEKS                       R7 R8 K14 ["FormScreen"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R10 R0 K11 ["Src"]
       50 GETTABLEKS                       R9 R10 K15 ["Actions"]
       52 GETTABLEKS                       R8 R9 K16 ["SetEnabled"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R11 R0 K11 ["Src"]
       59 GETTABLEKS                       R10 R11 K15 ["Actions"]
       61 GETTABLEKS                       R9 R10 K17 ["SetSurfaceAppearanceIds"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R12 R0 K11 ["Src"]
       68 GETTABLEKS                       R11 R12 K15 ["Actions"]
       70 GETTABLEKS                       R10 R11 K18 ["SetScreen"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K5 [require]
       75 GETTABLEKS                       R13 R0 K11 ["Src"]
       77 GETTABLEKS                       R12 R13 K19 ["Thunks"]
       79 GETTABLEKS                       R11 R12 K20 ["ProcessHead"]
       81 CALL                             R10 1 1
       82 GETTABLEKS                       R11 R1 K21 ["PureComponent"]
       84 LOADK                            R13 K22 ["InputSurfaceAppearanceIdsScreen"]
       85 NAMECALL                         R11 R11 K23 ["extend"]
       87 CALL                             R11 2 1
       88 DUPCLOSURE                       R12 K24 [PROTO_2]
       89 SETTABLEKS                       R12 R11 K25 ["init"]
       91 DUPCLOSURE                       R12 K26 [PROTO_3]
       92 SETTABLEKS                       R12 R11 K27 ["didMount"]
       94 DUPCLOSURE                       R12 K28 [PROTO_5]
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R5
       98 SETTABLEKS                       R12 R11 K29 ["render"]
      100 GETTABLEKS                       R12 R4 K30 ["withContext"]
      102 DUPTABLE                         R13 K34 [{"Localization", "Stylizer", "Plugin"}]
      103 GETTABLEKS                       R14 R4 K31 ["Localization"]
      105 SETTABLEKS                       R14 R13 K31 ["Localization"]
      107 GETTABLEKS                       R14 R4 K32 ["Stylizer"]
      109 SETTABLEKS                       R14 R13 K32 ["Stylizer"]
      111 GETTABLEKS                       R14 R4 K33 ["Plugin"]
      113 SETTABLEKS                       R14 R13 K33 ["Plugin"]
      115 CALL                             R12 1 1
      116 MOVE                             R13 R11
      117 CALL                             R12 1 1
      118 MOVE                             R11 R12
      119 DUPCLOSURE                       R12 K35 [PROTO_6]
      120 DUPCLOSURE                       R13 K36 [PROTO_11]
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R9
      125 GETTABLEKS                       R14 R2 K37 ["connect"]
      127 MOVE                             R15 R12
      128 MOVE                             R16 R13
      129 CALL                             R14 2 1
      130 MOVE                             R15 R11
      131 CALL                             R14 1 -1
      132 RETURN                           R14 -1
