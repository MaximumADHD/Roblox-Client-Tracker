PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Material"}]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["None"]
       10 SETTABLEKS                       R5 R4 K2 ["Material"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["MaterialWrapper"]
        2 GETTABLEKS                       R3 R4 K1 ["MaterialVariant"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETTABLEKS                       R3 R1 K0 ["MaterialWrapper"]
        7 GETTABLEKS                       R2 R3 K1 ["MaterialVariant"]
        9 JUMP                             ; [+4]
       10 GETTABLEKS                       R3 R1 K0 ["MaterialWrapper"]
       12 GETTABLEKS                       R2 R3 K2 ["Material"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K3 ["Dictionary"]
       17 GETTABLEKS                       R3 R4 K4 ["join"]
       19 MOVE                             R4 R0
       20 DUPTABLE                         R5 K6 [{"Materials", "Material"}]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R7 R8 K3 ["Dictionary"]
       24 GETTABLEKS                       R6 R7 K4 ["join"]
       26 GETTABLEKS                       R7 R0 K5 ["Materials"]
       28 NEWTABLE                         R8 1 0
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R9 R10 K7 ["None"]
       33 SETTABLE                         R9 R8 R2
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K5 ["Materials"]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R9 R0 K5 ["Materials"]
       40 GETTABLE                         R8 R9 R2
       41 GETTABLEKS                       R9 R0 K2 ["Material"]
       43 CALL                             R7 2 1
       44 JUMPIFNOT                        R7 ; [+4]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K7 ["None"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 SETTABLEKS                       R6 R5 K2 ["Material"]
       52 CALL                             R3 2 -1
       53 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"ExpandedPane"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["ExpandedPane"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["PaneName"]
       18 GETTABLEKS                       R9 R1 K5 ["ExpandedPaneState"]
       20 SETTABLE                         R9 R7 R8
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K2 ["ExpandedPane"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Material"}]
        7 GETTABLEKS                       R5 R1 K2 ["Material"]
        9 SETTABLEKS                       R5 R4 K2 ["Material"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"MaterialBrowserLayout"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["MaterialBrowserLayout"]
       14 GETTABLEKS                       R7 R1 K2 ["MaterialBrowserLayout"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["MaterialBrowserLayout"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"MaterialList"}]
        7 GETTABLEKS                       R5 R1 K2 ["MaterialList"]
        9 SETTABLEKS                       R5 R4 K2 ["MaterialList"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"MaterialOverride"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["MaterialOverride"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["Material"]
       18 GETTABLEKS                       R9 R1 K5 ["Index"]
       20 SETTABLE                         R9 R7 R8
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K2 ["MaterialOverride"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"MaterialOverrides"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["MaterialOverrides"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["Material"]
       18 GETTABLEKS                       R9 R1 K5 ["Overrides"]
       20 SETTABLE                         R9 R7 R8
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K2 ["MaterialOverrides"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"MaterialStatus"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["MaterialStatus"]
       14 NEWTABLE                         R7 1 0
       16 GETTABLEKS                       R8 R1 K4 ["Material"]
       18 GETTABLEKS                       R9 R1 K2 ["MaterialStatus"]
       20 SETTABLE                         R9 R7 R8
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K2 ["MaterialStatus"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"MaterialTileSize"}]
        7 GETTABLEKS                       R5 R1 K2 ["MaterialTileSize"]
        9 SETTABLEKS                       R5 R4 K2 ["MaterialTileSize"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Material"}]
        7 GETTABLEKS                       R6 R0 K4 ["Materials"]
        9 GETTABLEKS                       R7 R1 K5 ["MaterialVariant"]
       11 GETTABLE                         R5 R6 R7
       12 SETTABLEKS                       R5 R4 K2 ["Material"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_11:
        0 GETTABLEKS                       R4 R1 K0 ["MaterialWrapper"]
        2 GETTABLEKS                       R3 R4 K1 ["MaterialVariant"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETTABLEKS                       R3 R1 K0 ["MaterialWrapper"]
        7 GETTABLEKS                       R2 R3 K1 ["MaterialVariant"]
        9 JUMP                             ; [+4]
       10 GETTABLEKS                       R3 R1 K0 ["MaterialWrapper"]
       12 GETTABLEKS                       R2 R3 K2 ["Material"]
       14 GETTABLEKS                       R3 R0 K2 ["Material"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K3 ["Dictionary"]
       19 GETTABLEKS                       R4 R5 K4 ["join"]
       21 MOVE                             R5 R0
       22 DUPTABLE                         R6 K6 [{"Materials", "Material"}]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K3 ["Dictionary"]
       26 GETTABLEKS                       R7 R8 K4 ["join"]
       28 GETTABLEKS                       R8 R0 K5 ["Materials"]
       30 NEWTABLE                         R9 1 0
       32 GETTABLEKS                       R10 R1 K0 ["MaterialWrapper"]
       34 SETTABLE                         R10 R9 R2
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K5 ["Materials"]
       38 JUMPIFNOT                        R3 ; [+11]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R10 R0 K5 ["Materials"]
       42 GETTABLE                         R9 R10 R2
       43 GETTABLEKS                       R10 R0 K2 ["Material"]
       45 CALL                             R8 2 1
       46 JUMPIFNOT                        R8 ; [+3]
       47 GETTABLEKS                       R7 R1 K0 ["MaterialWrapper"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R7
       51 SETTABLEKS                       R7 R6 K2 ["Material"]
       53 CALL                             R4 2 -1
       54 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"MenuHover"}]
        7 GETTABLEKS                       R5 R1 K2 ["MenuHover"]
        9 SETTABLEKS                       R5 R4 K2 ["MenuHover"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Path"}]
        7 GETTABLEKS                       R5 R1 K2 ["Path"]
        9 SETTABLEKS                       R5 R4 K2 ["Path"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Search"}]
        7 GETTABLEKS                       R5 R1 K2 ["Search"]
        9 SETTABLEKS                       R5 R4 K2 ["Search"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"ViewType"}]
        7 GETTABLEKS                       R5 R1 K2 ["ViewType"]
        9 SETTABLEKS                       R5 R4 K2 ["ViewType"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Use2022Materials"}]
        7 GETTABLEKS                       R5 R1 K2 ["Use2022Materials"]
        9 SETTABLEKS                       R5 R4 K2 ["Use2022Materials"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R4 K8 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R5 K9 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R0 K5 ["Src"]
       32 GETTABLEKS                       R4 R5 K10 ["Actions"]
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R4 K11 ["ClearMaterial"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R7 R4 K12 ["ClearMaterialWrapper"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K4 [require]
       46 GETTABLEKS                       R8 R4 K13 ["SetExpandedPane"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K4 [require]
       51 GETTABLEKS                       R9 R4 K14 ["SetMaterial"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R10 R4 K15 ["SetMaterialBrowserLayout"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K4 [require]
       61 GETTABLEKS                       R11 R4 K16 ["SetMaterialList"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K4 [require]
       66 GETTABLEKS                       R12 R4 K17 ["SetMaterialOverride"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K4 [require]
       71 GETTABLEKS                       R13 R4 K18 ["SetMaterialOverrides"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K4 [require]
       76 GETTABLEKS                       R14 R4 K19 ["SetMaterialStatus"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K4 [require]
       81 GETTABLEKS                       R15 R4 K20 ["SetMaterialTileSize"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K4 [require]
       86 GETTABLEKS                       R16 R4 K21 ["SetMaterialVariant"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K4 [require]
       91 GETTABLEKS                       R17 R4 K22 ["SetMaterialWrapper"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K4 [require]
       96 GETTABLEKS                       R18 R4 K23 ["SetMenuHover"]
       98 CALL                             R17 1 1
       99 GETIMPORT                        R18 K4 [require]
      101 GETTABLEKS                       R19 R4 K24 ["SetPath"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K4 [require]
      106 GETTABLEKS                       R20 R4 K25 ["SetSearch"]
      108 CALL                             R19 1 1
      109 GETIMPORT                        R20 K4 [require]
      111 GETTABLEKS                       R21 R4 K26 ["SetUse2022Materials"]
      113 CALL                             R20 1 1
      114 GETIMPORT                        R21 K4 [require]
      116 GETTABLEKS                       R22 R4 K27 ["SetViewType"]
      118 CALL                             R21 1 1
      119 GETTABLEKS                       R23 R0 K5 ["Src"]
      121 GETTABLEKS                       R22 R23 K28 ["Util"]
      123 GETIMPORT                        R23 K4 [require]
      125 GETTABLEKS                       R24 R22 K29 ["CompareMaterials"]
      127 CALL                             R23 1 1
      128 GETTABLEKS                       R26 R0 K5 ["Src"]
      130 GETTABLEKS                       R25 R26 K30 ["Resources"]
      132 GETTABLEKS                       R24 R25 K31 ["Constants"]
      134 GETIMPORT                        R25 K4 [require]
      136 GETTABLEKS                       R26 R24 K32 ["getSettingsNames"]
      138 CALL                             R25 1 1
      139 MOVE                             R26 R25
      140 CALL                             R26 0 1
      141 NEWTABLE                         R27 0 0
      143 GETIMPORT                        R28 K34 [pairs]
      145 MOVE                             R29 R26
      146 CALL                             R28 1 3
      147 FORGPREP_NEXT                    R28
      148 LOADB                            R33 1
      149 SETTABLE                         R33 R27 R32
      150 FORGLOOP                         R28 2 ; [-3]
      152 DUPTABLE                         R28 K47 [{"ExpandedPane", "MaterialBrowserLayout", "MaterialOverride", "MaterialOverrides", "Materials", "MaterialStatus", "MaterialTileSize", "MenuHover", "Path", "Search", "Use2022Materials", "ViewType"}]
      153 SETTABLEKS                       R27 R28 K35 ["ExpandedPane"]
      155 DUPTABLE                         R29 K51 [{"BaseShowSideBar", "OverrideShowSideBar", "SideBarWidth"}]
      156 LOADB                            R30 1
      157 SETTABLEKS                       R30 R29 K48 ["BaseShowSideBar"]
      159 LOADB                            R30 0
      160 SETTABLEKS                       R30 R29 K49 ["OverrideShowSideBar"]
      162 LOADN                            R30 200
      163 SETTABLEKS                       R30 R29 K50 ["SideBarWidth"]
      165 SETTABLEKS                       R29 R28 K36 ["MaterialBrowserLayout"]
      167 NEWTABLE                         R29 0 0
      169 SETTABLEKS                       R29 R28 K37 ["MaterialOverride"]
      171 NEWTABLE                         R29 0 0
      173 SETTABLEKS                       R29 R28 K38 ["MaterialOverrides"]
      175 NEWTABLE                         R29 0 0
      177 SETTABLEKS                       R29 R28 K39 ["Materials"]
      179 NEWTABLE                         R29 0 0
      181 SETTABLEKS                       R29 R28 K40 ["MaterialStatus"]
      183 LOADN                            R29 130
      184 SETTABLEKS                       R29 R28 K41 ["MaterialTileSize"]
      186 LOADB                            R29 0
      187 SETTABLEKS                       R29 R28 K42 ["MenuHover"]
      189 NEWTABLE                         R29 0 0
      191 SETTABLEKS                       R29 R28 K43 ["Path"]
      193 LOADK                            R29 K52 [""]
      194 SETTABLEKS                       R29 R28 K44 ["Search"]
      196 LOADB                            R29 0
      197 SETTABLEKS                       R29 R28 K45 ["Use2022Materials"]
      199 LOADK                            R29 K53 ["Grid"]
      200 SETTABLEKS                       R29 R28 K46 ["ViewType"]
      202 GETTABLEKS                       R29 R2 K54 ["createReducer"]
      204 MOVE                             R30 R28
      205 NEWTABLE                         R31 32 0
      207 GETTABLEKS                       R32 R5 K55 ["name"]
      209 DUPCLOSURE                       R33 K56 [PROTO_0]
      210 CAPTURE                          VAL R3
      211 SETTABLE                         R33 R31 R32
      212 GETTABLEKS                       R32 R6 K55 ["name"]
      214 DUPCLOSURE                       R33 K57 [PROTO_1]
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R23
      217 SETTABLE                         R33 R31 R32
      218 GETTABLEKS                       R32 R7 K55 ["name"]
      220 DUPCLOSURE                       R33 K58 [PROTO_2]
      221 CAPTURE                          VAL R3
      222 SETTABLE                         R33 R31 R32
      223 GETTABLEKS                       R32 R8 K55 ["name"]
      225 DUPCLOSURE                       R33 K59 [PROTO_3]
      226 CAPTURE                          VAL R3
      227 SETTABLE                         R33 R31 R32
      228 GETTABLEKS                       R32 R9 K55 ["name"]
      230 DUPCLOSURE                       R33 K60 [PROTO_4]
      231 CAPTURE                          VAL R3
      232 SETTABLE                         R33 R31 R32
      233 GETTABLEKS                       R32 R10 K55 ["name"]
      235 DUPCLOSURE                       R33 K61 [PROTO_5]
      236 CAPTURE                          VAL R3
      237 SETTABLE                         R33 R31 R32
      238 GETTABLEKS                       R32 R11 K55 ["name"]
      240 DUPCLOSURE                       R33 K62 [PROTO_6]
      241 CAPTURE                          VAL R3
      242 SETTABLE                         R33 R31 R32
      243 GETTABLEKS                       R32 R12 K55 ["name"]
      245 DUPCLOSURE                       R33 K63 [PROTO_7]
      246 CAPTURE                          VAL R3
      247 SETTABLE                         R33 R31 R32
      248 GETTABLEKS                       R32 R13 K55 ["name"]
      250 DUPCLOSURE                       R33 K64 [PROTO_8]
      251 CAPTURE                          VAL R3
      252 SETTABLE                         R33 R31 R32
      253 GETTABLEKS                       R32 R14 K55 ["name"]
      255 DUPCLOSURE                       R33 K65 [PROTO_9]
      256 CAPTURE                          VAL R3
      257 SETTABLE                         R33 R31 R32
      258 GETTABLEKS                       R32 R15 K55 ["name"]
      260 DUPCLOSURE                       R33 K66 [PROTO_10]
      261 CAPTURE                          VAL R3
      262 SETTABLE                         R33 R31 R32
      263 GETTABLEKS                       R32 R16 K55 ["name"]
      265 DUPCLOSURE                       R33 K67 [PROTO_11]
      266 CAPTURE                          VAL R3
      267 CAPTURE                          VAL R23
      268 SETTABLE                         R33 R31 R32
      269 GETTABLEKS                       R32 R17 K55 ["name"]
      271 DUPCLOSURE                       R33 K68 [PROTO_12]
      272 CAPTURE                          VAL R3
      273 SETTABLE                         R33 R31 R32
      274 GETTABLEKS                       R32 R18 K55 ["name"]
      276 DUPCLOSURE                       R33 K69 [PROTO_13]
      277 CAPTURE                          VAL R3
      278 SETTABLE                         R33 R31 R32
      279 GETTABLEKS                       R32 R19 K55 ["name"]
      281 DUPCLOSURE                       R33 K70 [PROTO_14]
      282 CAPTURE                          VAL R3
      283 SETTABLE                         R33 R31 R32
      284 GETTABLEKS                       R32 R21 K55 ["name"]
      286 DUPCLOSURE                       R33 K71 [PROTO_15]
      287 CAPTURE                          VAL R3
      288 SETTABLE                         R33 R31 R32
      289 GETTABLEKS                       R32 R20 K55 ["name"]
      291 DUPCLOSURE                       R33 K72 [PROTO_16]
      292 CAPTURE                          VAL R3
      293 SETTABLE                         R33 R31 R32
      294 CALL                             R29 2 1
      295 RETURN                           R29 1
