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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 DUPTABLE                         R4 K3 [{"Items"}]
        5 NEWTABLE                         R5 0 1
        7 DUPTABLE                         R6 K8 [{["Id"] = "SurfaceAppearanceIds", ["Label"], ["Children"]}]
        8 LOADK                            R9 K9 ["Plugin"]
        9 LOADK                            R10 K10 ["SurfaceAppearanceAssetIds"]
       10 NAMECALL                         R7 R1 K11 ["getText"]
       12 CALL                             R7 3 1
       13 SETTABLEKS                       R7 R6 K6 ["Label"]
       15 NEWTABLE                         R7 0 4
       17 DUPTABLE                         R8 K16 [{["Id"] = "ColorMap", ["Label"], ["Schema"], ["Value"] = ""}]
       18 LOADK                            R11 K9 ["Plugin"]
       19 LOADK                            R12 K12 ["ColorMap"]
       20 NAMECALL                         R9 R1 K11 ["getText"]
       22 CALL                             R9 3 1
       23 SETTABLEKS                       R9 R8 K6 ["Label"]
       25 DUPTABLE                         R9 K19 [{["Type"] = "Text"}]
       26 SETTABLEKS                       R9 R8 K13 ["Schema"]
       28 DUPTABLE                         R9 K21 [{["Id"] = "MetalnessMap", ["Label"], ["Schema"], ["Value"] = ""}]
       29 LOADK                            R12 K9 ["Plugin"]
       30 LOADK                            R13 K20 ["MetalnessMap"]
       31 NAMECALL                         R10 R1 K11 ["getText"]
       33 CALL                             R10 3 1
       34 SETTABLEKS                       R10 R9 K6 ["Label"]
       36 DUPTABLE                         R10 K19 [{["Type"] = "Text"}]
       37 SETTABLEKS                       R10 R9 K13 ["Schema"]
       39 DUPTABLE                         R10 K23 [{["Id"] = "NormalMap", ["Label"], ["Schema"], ["Value"] = ""}]
       40 LOADK                            R13 K9 ["Plugin"]
       41 LOADK                            R14 K22 ["NormalMap"]
       42 NAMECALL                         R11 R1 K11 ["getText"]
       44 CALL                             R11 3 1
       45 SETTABLEKS                       R11 R10 K6 ["Label"]
       47 DUPTABLE                         R11 K19 [{["Type"] = "Text"}]
       48 SETTABLEKS                       R11 R10 K13 ["Schema"]
       50 DUPTABLE                         R11 K25 [{["Id"] = "RoughnessMap", ["Label"], ["Schema"], ["Value"] = ""}]
       51 LOADK                            R14 K9 ["Plugin"]
       52 LOADK                            R15 K24 ["RoughnessMap"]
       53 NAMECALL                         R12 R1 K11 ["getText"]
       55 CALL                             R12 3 1
       56 SETTABLEKS                       R12 R11 K6 ["Label"]
       58 DUPTABLE                         R12 K19 [{["Type"] = "Text"}]
       59 SETTABLEKS                       R12 R11 K13 ["Schema"]
       61 SETLIST                          R7 R8 4 [1]
       63 SETTABLEKS                       R7 R6 K7 ["Children"]
       65 SETLIST                          R5 R6 1 [1]
       67 SETTABLEKS                       R5 R4 K2 ["Items"]
       69 NAMECALL                         R2 R0 K26 ["setState"]
       71 CALL                             R2 2 0
       72 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["state"]
        5 GETTABLEKS                       R4 R4 K1 ["Items"]
        7 GETTABLEN                        R1 R4 1
        8 GETTABLEKS                       R1 R1 K2 ["Children"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETTABLEKS                       R6 R5 K3 ["Id"]
       15 GETTABLEKS                       R7 R5 K4 ["Value"]
       17 SETTABLE                         R7 R0 R6
       18 FORGLOOP                         R1 2 ; [-6]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K5 ["props"]
       23 GETTABLEKS                       R1 R1 K6 ["setSurfaceAppearanceIds"]
       25 GETTABLEKS                       R2 R0 K7 ["ColorMap"]
       27 GETTABLEKS                       R3 R0 K8 ["MetalnessMap"]
       29 GETTABLEKS                       R4 R0 K9 ["NormalMap"]
       31 GETTABLEKS                       R5 R0 K10 ["RoughnessMap"]
       33 CALL                             R1 4 0
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K5 ["props"]
       37 GETTABLEKS                       R1 R1 K11 ["mode"]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K12 ["Modes"]
       42 GETTABLEKS                       R2 R2 K13 ["Head"]
       44 JUMPIFNOTEQ                      R1 R2 ; [+14]
       46 GETUPVAL                         R1 0
       47 GETTABLEKS                       R1 R1 K5 ["props"]
       49 GETTABLEKS                       R1 R1 K14 ["close"]
       51 CALL                             R1 0 0
       52 GETUPVAL                         R1 0
       53 GETTABLEKS                       R1 R1 K5 ["props"]
       55 GETTABLEKS                       R1 R1 K15 ["processHead"]
       57 CALL                             R1 0 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K5 ["props"]
       62 GETTABLEKS                       R1 R1 K11 ["mode"]
       64 GETUPVAL                         R2 1
       65 GETTABLEKS                       R2 R2 K12 ["Modes"]
       67 GETTABLEKS                       R2 R2 K16 ["Accessory"]
       69 JUMPIFNOTEQ                      R1 R2 ; [+13]
       71 GETUPVAL                         R1 0
       72 GETTABLEKS                       R1 R1 K5 ["props"]
       74 GETTABLEKS                       R1 R1 K17 ["setScreen"]
       76 GETUPVAL                         R2 1
       77 GETTABLEKS                       R2 R2 K18 ["Screens"]
       79 GETTABLEKS                       R2 R2 K19 ["InputAccessoryType"]
       81 CALL                             R1 1 0
       82 RETURN                           R0 0
       83 LOADB                            R2 0
       84 FASTCALL1                        ASSERT R2 ; [+2]
       85 GETIMPORT                        R1 K21 [assert]
       87 CALL                             R1 1 0
       88 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"Expansion", "Items", "onExpansionChange", "onChange", "onSubmit"}]
        5 GETTABLEKS                       R4 R0 K7 ["state"]
        7 GETTABLEKS                       R4 R4 K1 ["Expansion"]
        9 SETTABLEKS                       R4 R3 K1 ["Expansion"]
       11 GETTABLEKS                       R4 R0 K7 ["state"]
       13 GETTABLEKS                       R4 R4 K2 ["Items"]
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
        1 GETTABLEKS                       R3 R0 K2 ["PluginReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["mode"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Constants"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R0 K11 ["Src"]
       41 GETTABLEKS                       R7 R7 K13 ["Components"]
       43 GETTABLEKS                       R7 R7 K14 ["FormScreen"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R0 K11 ["Src"]
       50 GETTABLEKS                       R8 R8 K15 ["Actions"]
       52 GETTABLEKS                       R8 R8 K16 ["SetEnabled"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R9 R0 K11 ["Src"]
       59 GETTABLEKS                       R9 R9 K15 ["Actions"]
       61 GETTABLEKS                       R9 R9 K17 ["SetSurfaceAppearanceIds"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R10 R0 K11 ["Src"]
       68 GETTABLEKS                       R10 R10 K15 ["Actions"]
       70 GETTABLEKS                       R10 R10 K18 ["SetScreen"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K5 [require]
       75 GETTABLEKS                       R11 R0 K11 ["Src"]
       77 GETTABLEKS                       R11 R11 K19 ["Thunks"]
       79 GETTABLEKS                       R11 R11 K20 ["ProcessHead"]
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
