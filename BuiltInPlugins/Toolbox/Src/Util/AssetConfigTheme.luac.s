PROTO_0:
        0 GETIMPORT                        R0 K2 [Color3.fromRGB]
        2 LOADN                            R1 0
        3 LOADN                            R2 0
        4 LOADN                            R3 0
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"GetColor"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_0]
        2 SETTABLEKS                       R1 R0 K0 ["GetColor"]
        4 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPTABLE                         R1 K4 [{"getTheme", "studioStyleGuideColor", "studioStyleGuideModifier"}]
        4 DUPCLOSURE                       R2 K5 [PROTO_1]
        5 SETTABLEKS                       R2 R1 K1 ["getTheme"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K6 ["createMockStudioStyleGuideColor"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R1 K2 ["studioStyleGuideColor"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K7 ["createMockStudioStyleGuideModifier"]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R2 R1 K3 ["studioStyleGuideModifier"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_recalculateTheme"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K8 [{"_externalThemeGetter", "_externalThemeChangedSignal", "_externalThemeChangedConnection", "_studioStyleGuideColor", "_studioStyleGuideModifier", "_values", "_UILibraryTheme", "_signal"}]
        1 GETTABLEKS                       R3 R0 K10 ["getTheme"]
        3 ORK                              R2 R3 K9 []
        4 SETTABLEKS                       R2 R1 K0 ["_externalThemeGetter"]
        6 GETTABLEKS                       R3 R0 K11 ["themeChanged"]
        8 ORK                              R2 R3 K9 []
        9 SETTABLEKS                       R2 R1 K1 ["_externalThemeChangedSignal"]
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K2 ["_externalThemeChangedConnection"]
       14 GETTABLEKS                       R2 R0 K12 ["studioStyleGuideColor"]
       16 JUMPIF                           R2 ; [+2]
       17 GETIMPORT                        R2 K15 [Enum.StudioStyleGuideColor]
       19 SETTABLEKS                       R2 R1 K3 ["_studioStyleGuideColor"]
       21 GETTABLEKS                       R2 R0 K16 ["studioStyleGuideModifier"]
       23 JUMPIF                           R2 ; [+2]
       24 GETIMPORT                        R2 K18 [Enum.StudioStyleGuideModifier]
       26 SETTABLEKS                       R2 R1 K4 ["_studioStyleGuideModifier"]
       28 NEWTABLE                         R2 0 0
       30 SETTABLEKS                       R2 R1 K5 ["_values"]
       32 NEWTABLE                         R2 0 0
       34 SETTABLEKS                       R2 R1 K6 ["_UILibraryTheme"]
       36 GETUPVAL                         R2 0
       37 CALL                             R2 0 1
       38 SETTABLEKS                       R2 R1 K7 ["_signal"]
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R3 R1 K5 ["_values"]
       43 LOADK                            R4 K19 ["theme"]
       44 CALL                             R2 2 1
       45 SETTABLEKS                       R2 R1 K20 ["values"]
       47 GETUPVAL                         R4 2
       48 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       50 MOVE                             R3 R1
       51 GETIMPORT                        R2 K22 [setmetatable]
       53 CALL                             R2 2 0
       54 GETTABLEKS                       R2 R1 K1 ["_externalThemeChangedSignal"]
       56 JUMPIFNOT                        R2 ; [+9]
       57 GETTABLEKS                       R2 R1 K1 ["_externalThemeChangedSignal"]
       59 NEWCLOSURE                       R4 P0
       60 CAPTURE                          VAL R1
       61 NAMECALL                         R2 R2 K23 ["Connect"]
       63 CALL                             R2 2 1
       64 SETTABLEKS                       R2 R1 K2 ["_externalThemeChangedConnection"]
       66 NAMECALL                         R2 R1 K24 ["_recalculateTheme"]
       68 CALL                             R2 1 0
       69 RETURN                           R1 1

PROTO_5:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["_signal"]
        3 GETVARARGS                       R3 -1
        4 NAMECALL                         R1 R1 K1 ["subscribe"]
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_externalThemeChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_externalThemeChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_externalThemeChangedConnection"]
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 GETTABLEKS                       R3 R0 K2 ["_values"]
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R0 K2 ["_values"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R3 R0 K2 ["_values"]
       14 LOADK                            R4 K3 ["theme"]
       15 CALL                             R2 2 1
       16 SETTABLEKS                       R2 R0 K4 ["values"]
       18 GETTABLEKS                       R2 R0 K5 ["_signal"]
       20 GETTABLEKS                       R4 R0 K4 ["values"]
       22 GETTABLEKS                       R5 R0 K6 ["_UILibraryTheme"]
       24 NAMECALL                         R2 R2 K7 ["fire"]
       26 CALL                             R2 3 0
       27 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_externalThemeGetter"]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K2 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["function"] ; [+4]
        9 MOVE                             R2 R1
       10 CALL                             R2 0 -1
       11 RETURN                           R2 -1
       12 RETURN                           R1 1

PROTO_9:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_externalThemeGetter"]
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETTABLEKS                       R3 R0 K0 ["_externalThemeGetter"]
        6 CALL                             R3 0 1
        7 GETTABLEKS                       R2 R3 K1 ["Name"]
        9 JUMPIFEQKS                       R2 K2 ["Dark"] ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_10:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["GetColor"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["_getExternalTheme"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["_isDarkerTheme"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R0 K2 ["_studioStyleGuideColor"]
        8 GETTABLEKS                       R4 R0 K3 ["_studioStyleGuideModifier"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R1
       12 DUPTABLE                         R8 K19 [{"isDarkerTheme", "assetConfig", "publishAsset", "divider", "dropdownMenu", "textField", "footer", "scrollingFrame", "messageBox", "cancelButton", "defaultButton", "loading", "uploadResult", "inputFields", "tags"}]
       13 SETTABLEKS                       R2 R8 K4 ["isDarkerTheme"]
       15 DUPTABLE                         R9 K26 [{"backgroundColor", "textColor", "labelTextColor", "separatorColor", "errorColor", "packagePermissions"}]
       16 MOVE                             R10 R5
       17 GETTABLEKS                       R11 R3 K27 ["MainBackground"]
       19 CALL                             R10 1 1
       20 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
       22 MOVE                             R10 R5
       23 GETTABLEKS                       R11 R3 K28 ["MainText"]
       25 CALL                             R10 1 1
       26 SETTABLEKS                       R10 R9 K21 ["textColor"]
       28 MOVE                             R10 R5
       29 GETTABLEKS                       R11 R3 K29 ["DimmedText"]
       31 CALL                             R10 1 1
       32 SETTABLEKS                       R10 R9 K22 ["labelTextColor"]
       34 MOVE                             R10 R5
       35 GETTABLEKS                       R11 R3 K30 ["Border"]
       37 CALL                             R10 1 1
       38 SETTABLEKS                       R10 R9 K23 ["separatorColor"]
       40 MOVE                             R10 R5
       41 GETTABLEKS                       R11 R3 K31 ["ErrorText"]
       43 CALL                             R10 1 1
       44 SETTABLEKS                       R10 R9 K24 ["errorColor"]
       46 DUPTABLE                         R10 K35 [{"backgroundColor", "subTextColor", "collaboratorItem", "searchBar"}]
       47 MOVE                             R11 R5
       48 GETTABLEKS                       R12 R3 K27 ["MainBackground"]
       50 CALL                             R11 1 1
       51 SETTABLEKS                       R11 R10 K20 ["backgroundColor"]
       53 MOVE                             R11 R5
       54 GETTABLEKS                       R12 R3 K36 ["SubText"]
       56 CALL                             R11 1 1
       57 SETTABLEKS                       R11 R10 K32 ["subTextColor"]
       59 DUPTABLE                         R11 K39 [{"collapseStateArrow", "deleteButton"}]
       60 JUMPIFNOT                        R2 ; [+7]
       61 GETIMPORT                        R12 K42 [Color3.fromRGB]
       63 LOADN                            R13 204
       64 LOADN                            R14 204
       65 LOADN                            R15 204
       66 CALL                             R12 3 1
       67 JUMPIF                           R12 ; [+6]
       68 GETIMPORT                        R12 K42 [Color3.fromRGB]
       70 LOADN                            R13 25
       71 LOADN                            R14 25
       72 LOADN                            R15 25
       73 CALL                             R12 3 1
       74 SETTABLEKS                       R12 R11 K37 ["collapseStateArrow"]
       76 JUMPIFNOT                        R2 ; [+7]
       77 GETIMPORT                        R12 K42 [Color3.fromRGB]
       79 LOADN                            R13 136
       80 LOADN                            R14 136
       81 LOADN                            R15 136
       82 CALL                             R12 3 1
       83 JUMPIF                           R12 ; [+6]
       84 GETIMPORT                        R12 K42 [Color3.fromRGB]
       86 LOADN                            R13 184
       87 LOADN                            R14 184
       88 LOADN                            R15 184
       89 CALL                             R12 3 1
       90 SETTABLEKS                       R12 R11 K38 ["deleteButton"]
       92 SETTABLEKS                       R11 R10 K33 ["collaboratorItem"]
       94 DUPTABLE                         R11 K50 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "searchIcon", "clearButton", "dropDown"}]
       95 MOVE                             R12 R5
       96 GETTABLEKS                       R13 R3 K51 ["InputFieldBorder"]
       98 CALL                             R12 1 1
       99 SETTABLEKS                       R12 R11 K43 ["border"]
      101 JUMPIFNOT                        R2 ; [+5]
      102 MOVE                             R12 R5
      103 GETTABLEKS                       R13 R3 K52 ["MainButton"]
      105 CALL                             R12 1 1
      106 JUMPIF                           R12 ; [+4]
      107 MOVE                             R12 R5
      108 GETTABLEKS                       R13 R3 K53 ["CurrentMarker"]
      110 CALL                             R12 1 1
      111 SETTABLEKS                       R12 R11 K44 ["borderHover"]
      113 JUMPIFNOT                        R2 ; [+5]
      114 MOVE                             R12 R5
      115 GETTABLEKS                       R13 R3 K52 ["MainButton"]
      117 CALL                             R12 1 1
      118 JUMPIF                           R12 ; [+4]
      119 MOVE                             R12 R5
      120 GETTABLEKS                       R13 R3 K53 ["CurrentMarker"]
      122 CALL                             R12 1 1
      123 SETTABLEKS                       R12 R11 K45 ["borderSelected"]
      125 MOVE                             R12 R5
      126 GETTABLEKS                       R13 R3 K29 ["DimmedText"]
      128 CALL                             R12 1 1
      129 SETTABLEKS                       R12 R11 K46 ["placeholderText"]
      131 MOVE                             R12 R5
      132 GETTABLEKS                       R13 R3 K54 ["InputFieldBackground"]
      134 CALL                             R12 1 1
      135 SETTABLEKS                       R12 R11 K20 ["backgroundColor"]
      137 MOVE                             R12 R5
      138 GETTABLEKS                       R13 R3 K36 ["SubText"]
      140 CALL                             R12 1 1
      141 SETTABLEKS                       R12 R11 K47 ["searchIcon"]
      143 DUPTABLE                         R12 K56 [{"image"}]
      144 MOVE                             R13 R5
      145 GETTABLEKS                       R14 R3 K36 ["SubText"]
      147 CALL                             R13 1 1
      148 SETTABLEKS                       R13 R12 K55 ["image"]
      150 SETTABLEKS                       R12 R11 K48 ["clearButton"]
      152 DUPTABLE                         R12 K61 [{"backgroundColor", "itemText", "headerText", "hovered", "selected"}]
      153 MOVE                             R13 R5
      154 GETTABLEKS                       R14 R3 K54 ["InputFieldBackground"]
      156 CALL                             R13 1 1
      157 SETTABLEKS                       R13 R12 K20 ["backgroundColor"]
      159 MOVE                             R13 R5
      160 GETTABLEKS                       R14 R3 K28 ["MainText"]
      162 CALL                             R13 1 1
      163 SETTABLEKS                       R13 R12 K57 ["itemText"]
      165 MOVE                             R13 R5
      166 GETTABLEKS                       R14 R3 K36 ["SubText"]
      168 CALL                             R13 1 1
      169 SETTABLEKS                       R13 R12 K58 ["headerText"]
      171 DUPTABLE                         R13 K62 [{"backgroundColor", "itemText"}]
      172 MOVE                             R14 R5
      173 GETTABLEKS                       R15 R3 K63 ["Item"]
      175 GETTABLEKS                       R16 R4 K64 ["Hover"]
      177 CALL                             R14 2 1
      178 SETTABLEKS                       R14 R13 K20 ["backgroundColor"]
      180 MOVE                             R14 R5
      181 GETTABLEKS                       R15 R3 K65 ["ButtonText"]
      183 GETTABLEKS                       R16 R4 K64 ["Hover"]
      185 CALL                             R14 2 1
      186 SETTABLEKS                       R14 R13 K57 ["itemText"]
      188 SETTABLEKS                       R13 R12 K59 ["hovered"]
      190 DUPTABLE                         R13 K66 [{"backgroundColor"}]
      191 MOVE                             R14 R5
      192 GETTABLEKS                       R15 R3 K67 ["Button"]
      194 GETTABLEKS                       R16 R4 K68 ["Selected"]
      196 CALL                             R14 2 1
      197 SETTABLEKS                       R14 R13 K20 ["backgroundColor"]
      199 SETTABLEKS                       R13 R12 K60 ["selected"]
      201 SETTABLEKS                       R12 R11 K49 ["dropDown"]
      203 SETTABLEKS                       R11 R10 K34 ["searchBar"]
      205 SETTABLEKS                       R10 R9 K25 ["packagePermissions"]
      207 SETTABLEKS                       R9 R8 K5 ["assetConfig"]
      209 DUPTABLE                         R9 K71 [{"backgroundColor", "titleTextColor", "textColor", "tipsTextColor"}]
      210 JUMPIFNOT                        R2 ; [+5]
      211 MOVE                             R10 R5
      212 GETTABLEKS                       R11 R3 K27 ["MainBackground"]
      214 CALL                             R10 1 1
      215 JUMPIF                           R10 ; [+6]
      216 GETIMPORT                        R10 K42 [Color3.fromRGB]
      218 LOADN                            R11 46
      219 LOADN                            R12 46
      220 LOADN                            R13 46
      221 CALL                             R10 3 1
      222 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
      224 MOVE                             R10 R5
      225 GETTABLEKS                       R11 R3 K36 ["SubText"]
      227 CALL                             R10 1 1
      228 SETTABLEKS                       R10 R9 K69 ["titleTextColor"]
      230 MOVE                             R10 R5
      231 GETTABLEKS                       R11 R3 K28 ["MainText"]
      233 CALL                             R10 1 1
      234 SETTABLEKS                       R10 R9 K21 ["textColor"]
      236 JUMPIFNOT                        R2 ; [+7]
      237 GETIMPORT                        R10 K42 [Color3.fromRGB]
      239 LOADN                            R11 102
      240 LOADN                            R12 102
      241 LOADN                            R13 102
      242 CALL                             R10 3 1
      243 JUMPIF                           R10 ; [+3]
      244 GETUPVAL                         R11 0
      245 GETTABLEKS                       R10 R11 K72 ["GRAY_3"]
      247 SETTABLEKS                       R10 R9 K70 ["tipsTextColor"]
      249 SETTABLEKS                       R9 R8 K6 ["publishAsset"]
      251 DUPTABLE                         R9 K74 [{"horizontalLineColor"}]
      252 JUMPIFNOT                        R2 ; [+7]
      253 GETIMPORT                        R10 K42 [Color3.fromRGB]
      255 LOADN                            R11 34
      256 LOADN                            R12 34
      257 LOADN                            R13 34
      258 CALL                             R10 3 1
      259 JUMPIF                           R10 ; [+6]
      260 GETIMPORT                        R10 K42 [Color3.fromRGB]
      262 LOADN                            R11 227
      263 LOADN                            R12 227
      264 LOADN                            R13 227
      265 CALL                             R10 3 1
      266 SETTABLEKS                       R10 R9 K73 ["horizontalLineColor"]
      268 SETTABLEKS                       R9 R8 K7 ["divider"]
      270 DUPTABLE                         R9 K78 [{"currentSelection", "item", "dropdownFrame"}]
      271 DUPTABLE                         R10 K85 [{"backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor", "textColor", "textSelectedColor", "iconColor", "iconSelectedColor"}]
      272 MOVE                             R11 R5
      273 GETTABLEKS                       R12 R3 K86 ["Dropdown"]
      275 CALL                             R11 1 1
      276 SETTABLEKS                       R11 R10 K20 ["backgroundColor"]
      278 MOVE                             R11 R5
      279 GETTABLEKS                       R12 R3 K53 ["CurrentMarker"]
      281 CALL                             R11 1 1
      282 SETTABLEKS                       R11 R10 K79 ["backgroundSelectedColor"]
      284 MOVE                             R11 R5
      285 GETTABLEKS                       R12 R3 K30 ["Border"]
      287 CALL                             R11 1 1
      288 SETTABLEKS                       R11 R10 K80 ["borderColor"]
      290 MOVE                             R11 R5
      291 GETTABLEKS                       R12 R3 K53 ["CurrentMarker"]
      293 CALL                             R11 1 1
      294 SETTABLEKS                       R11 R10 K81 ["borderSelectedColor"]
      296 MOVE                             R11 R5
      297 GETTABLEKS                       R12 R3 K28 ["MainText"]
      299 CALL                             R11 1 1
      300 SETTABLEKS                       R11 R10 K21 ["textColor"]
      302 MOVE                             R11 R5
      303 GETTABLEKS                       R12 R3 K28 ["MainText"]
      305 GETTABLEKS                       R13 R4 K68 ["Selected"]
      307 CALL                             R11 2 1
      308 SETTABLEKS                       R11 R10 K82 ["textSelectedColor"]
      310 JUMPIFNOT                        R2 ; [+7]
      311 GETIMPORT                        R11 K42 [Color3.fromRGB]
      313 LOADN                            R12 242
      314 LOADN                            R13 242
      315 LOADN                            R14 242
      316 CALL                             R11 3 1
      317 JUMPIF                           R11 ; [+6]
      318 GETIMPORT                        R11 K42 [Color3.fromRGB]
      320 LOADN                            R12 25
      321 LOADN                            R13 25
      322 LOADN                            R14 25
      323 CALL                             R11 3 1
      324 SETTABLEKS                       R11 R10 K83 ["iconColor"]
      326 GETIMPORT                        R11 K42 [Color3.fromRGB]
      328 LOADN                            R12 255
      329 LOADN                            R13 255
      330 LOADN                            R14 255
      331 CALL                             R11 3 1
      332 SETTABLEKS                       R11 R10 K84 ["iconSelectedColor"]
      334 SETTABLEKS                       R10 R9 K75 ["currentSelection"]
      336 DUPTABLE                         R10 K88 [{"backgroundColor", "backgroundSelectedColor", "selectedBarColor", "textColor", "labelTextColor"}]
      337 MOVE                             R11 R5
      338 GETTABLEKS                       R12 R3 K63 ["Item"]
      340 CALL                             R11 1 1
      341 SETTABLEKS                       R11 R10 K20 ["backgroundColor"]
      343 JUMPIFNOT                        R2 ; [+7]
      344 MOVE                             R11 R5
      345 GETTABLEKS                       R12 R3 K63 ["Item"]
      347 GETTABLEKS                       R13 R4 K68 ["Selected"]
      349 CALL                             R11 2 1
      350 JUMPIF                           R11 ; [+4]
      351 MOVE                             R11 R5
      352 GETTABLEKS                       R12 R3 K89 ["Tab"]
      354 CALL                             R11 1 1
      355 SETTABLEKS                       R11 R10 K79 ["backgroundSelectedColor"]
      357 MOVE                             R11 R5
      358 GETTABLEKS                       R12 R3 K53 ["CurrentMarker"]
      360 CALL                             R11 1 1
      361 SETTABLEKS                       R11 R10 K87 ["selectedBarColor"]
      363 MOVE                             R11 R5
      364 GETTABLEKS                       R12 R3 K28 ["MainText"]
      366 CALL                             R11 1 1
      367 SETTABLEKS                       R11 R10 K21 ["textColor"]
      369 MOVE                             R11 R5
      370 GETTABLEKS                       R12 R3 K29 ["DimmedText"]
      372 CALL                             R11 1 1
      373 SETTABLEKS                       R11 R10 K22 ["labelTextColor"]
      375 SETTABLEKS                       R10 R9 K76 ["item"]
      377 DUPTABLE                         R10 K90 [{"borderColor"}]
      378 MOVE                             R11 R5
      379 GETTABLEKS                       R12 R3 K30 ["Border"]
      381 CALL                             R11 1 1
      382 SETTABLEKS                       R11 R10 K80 ["borderColor"]
      384 SETTABLEKS                       R10 R9 K77 ["dropdownFrame"]
      386 SETTABLEKS                       R9 R8 K8 ["dropdownMenu"]
      388 DUPTABLE                         R9 K92 [{"backgroundColor", "borderColor", "borderHoveredColor", "borderSelectedColor"}]
      389 MOVE                             R10 R5
      390 GETTABLEKS                       R11 R3 K27 ["MainBackground"]
      392 CALL                             R10 1 1
      393 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
      395 MOVE                             R10 R5
      396 GETTABLEKS                       R11 R3 K30 ["Border"]
      398 CALL                             R10 1 1
      399 SETTABLEKS                       R10 R9 K80 ["borderColor"]
      401 MOVE                             R10 R5
      402 GETTABLEKS                       R11 R3 K53 ["CurrentMarker"]
      404 CALL                             R10 1 1
      405 SETTABLEKS                       R10 R9 K91 ["borderHoveredColor"]
      407 GETUPVAL                         R11 0
      408 GETTABLEKS                       R10 R11 K93 ["BLUE_PRIMARY"]
      410 SETTABLEKS                       R10 R9 K81 ["borderSelectedColor"]
      412 SETTABLEKS                       R9 R8 K9 ["textField"]
      414 DUPTABLE                         R9 K94 [{"backgroundColor", "borderColor"}]
      415 MOVE                             R10 R5
      416 GETTABLEKS                       R11 R3 K27 ["MainBackground"]
      418 CALL                             R10 1 1
      419 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
      421 MOVE                             R10 R5
      422 GETTABLEKS                       R11 R3 K30 ["Border"]
      424 CALL                             R10 1 1
      425 SETTABLEKS                       R10 R9 K80 ["borderColor"]
      427 SETTABLEKS                       R9 R8 K10 ["footer"]
      429 DUPTABLE                         R9 K97 [{"scrollbarBackgroundColor", "scrollbarImageColor"}]
      430 JUMPIFNOT                        R2 ; [+7]
      431 GETIMPORT                        R10 K42 [Color3.fromRGB]
      433 LOADN                            R11 41
      434 LOADN                            R12 41
      435 LOADN                            R13 41
      436 CALL                             R10 3 1
      437 JUMPIF                           R10 ; [+6]
      438 GETIMPORT                        R10 K42 [Color3.fromRGB]
      440 LOADN                            R11 245
      441 LOADN                            R12 245
      442 LOADN                            R13 245
      443 CALL                             R10 3 1
      444 SETTABLEKS                       R10 R9 K95 ["scrollbarBackgroundColor"]
      446 JUMPIFNOT                        R2 ; [+7]
      447 GETIMPORT                        R10 K42 [Color3.fromRGB]
      449 LOADN                            R11 85
      450 LOADN                            R12 85
      451 LOADN                            R13 85
      452 CALL                             R10 3 1
      453 JUMPIF                           R10 ; [+6]
      454 GETIMPORT                        R10 K42 [Color3.fromRGB]
      456 LOADN                            R11 245
      457 LOADN                            R12 245
      458 LOADN                            R13 245
      459 CALL                             R10 3 1
      460 SETTABLEKS                       R10 R9 K96 ["scrollbarImageColor"]
      462 SETTABLEKS                       R9 R8 K11 ["scrollingFrame"]
      464 DUPTABLE                         R9 K100 [{"backgroundColor", "textColor", "informativeTextColor", "button"}]
      465 MOVE                             R10 R5
      466 GETTABLEKS                       R11 R3 K27 ["MainBackground"]
      468 CALL                             R10 1 1
      469 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
      471 MOVE                             R10 R5
      472 GETTABLEKS                       R11 R3 K28 ["MainText"]
      474 CALL                             R10 1 1
      475 SETTABLEKS                       R10 R9 K21 ["textColor"]
      477 MOVE                             R10 R5
      478 GETTABLEKS                       R11 R3 K36 ["SubText"]
      480 CALL                             R10 1 1
      481 SETTABLEKS                       R10 R9 K98 ["informativeTextColor"]
      483 DUPTABLE                         R10 K101 [{"textColor", "textSelectedColor", "backgroundColor", "backgroundSelectedColor", "borderColor", "borderSelectedColor"}]
      484 MOVE                             R11 R5
      485 GETTABLEKS                       R12 R3 K28 ["MainText"]
      487 CALL                             R11 1 1
      488 SETTABLEKS                       R11 R10 K21 ["textColor"]
      490 MOVE                             R11 R5
      491 GETTABLEKS                       R12 R3 K28 ["MainText"]
      493 GETTABLEKS                       R13 R4 K68 ["Selected"]
      495 CALL                             R11 2 1
      496 SETTABLEKS                       R11 R10 K82 ["textSelectedColor"]
      498 MOVE                             R11 R5
      499 GETTABLEKS                       R12 R3 K27 ["MainBackground"]
      501 CALL                             R11 1 1
      502 SETTABLEKS                       R11 R10 K20 ["backgroundColor"]
      504 MOVE                             R11 R5
      505 GETTABLEKS                       R12 R3 K53 ["CurrentMarker"]
      507 CALL                             R11 1 1
      508 SETTABLEKS                       R11 R10 K79 ["backgroundSelectedColor"]
      510 MOVE                             R11 R5
      511 GETTABLEKS                       R12 R3 K30 ["Border"]
      513 CALL                             R11 1 1
      514 SETTABLEKS                       R11 R10 K80 ["borderColor"]
      516 MOVE                             R11 R5
      517 GETTABLEKS                       R12 R3 K53 ["CurrentMarker"]
      519 CALL                             R11 1 1
      520 SETTABLEKS                       R11 R10 K81 ["borderSelectedColor"]
      522 SETTABLEKS                       R10 R9 K99 ["button"]
      524 SETTABLEKS                       R9 R8 K12 ["messageBox"]
      526 DUPTABLE                         R9 K108 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
      527 MOVE                             R10 R5
      528 GETTABLEKS                       R11 R3 K67 ["Button"]
      530 CALL                             R10 1 1
      531 SETTABLEKS                       R10 R9 K102 ["ButtonColor"]
      533 MOVE                             R10 R5
      534 GETTABLEKS                       R11 R3 K67 ["Button"]
      536 GETTABLEKS                       R12 R4 K64 ["Hover"]
      538 CALL                             R10 2 1
      539 SETTABLEKS                       R10 R9 K103 ["ButtonColor_Hover"]
      541 MOVE                             R10 R5
      542 GETTABLEKS                       R11 R3 K67 ["Button"]
      544 GETTABLEKS                       R12 R4 K109 ["Disabled"]
      546 CALL                             R10 2 1
      547 SETTABLEKS                       R10 R9 K104 ["ButtonColor_Disabled"]
      549 MOVE                             R10 R5
      550 GETTABLEKS                       R11 R3 K28 ["MainText"]
      552 CALL                             R10 1 1
      553 SETTABLEKS                       R10 R9 K105 ["TextColor"]
      555 MOVE                             R10 R5
      556 GETTABLEKS                       R11 R3 K29 ["DimmedText"]
      558 CALL                             R10 1 1
      559 SETTABLEKS                       R10 R9 K106 ["TextColor_Disabled"]
      561 MOVE                             R10 R5
      562 GETTABLEKS                       R11 R3 K30 ["Border"]
      564 CALL                             R10 1 1
      565 SETTABLEKS                       R10 R9 K107 ["BorderColor"]
      567 SETTABLEKS                       R9 R8 K13 ["cancelButton"]
      569 DUPTABLE                         R9 K108 [{"ButtonColor", "ButtonColor_Hover", "ButtonColor_Disabled", "TextColor", "TextColor_Disabled", "BorderColor"}]
      570 JUMPIFNOT                        R2 ; [+5]
      571 MOVE                             R10 R5
      572 GETTABLEKS                       R11 R3 K52 ["MainButton"]
      574 CALL                             R10 1 1
      575 JUMPIF                           R10 ; [+4]
      576 MOVE                             R10 R5
      577 GETTABLEKS                       R11 R3 K53 ["CurrentMarker"]
      579 CALL                             R10 1 1
      580 SETTABLEKS                       R10 R9 K102 ["ButtonColor"]
      582 MOVE                             R10 R5
      583 GETTABLEKS                       R11 R3 K110 ["LinkText"]
      585 CALL                             R10 1 1
      586 SETTABLEKS                       R10 R9 K103 ["ButtonColor_Hover"]
      588 JUMPIFNOT                        R2 ; [+7]
      589 MOVE                             R10 R5
      590 GETTABLEKS                       R11 R3 K67 ["Button"]
      592 GETTABLEKS                       R12 R4 K109 ["Disabled"]
      594 CALL                             R10 2 1
      595 JUMPIF                           R10 ; [+3]
      596 GETUPVAL                         R11 0
      597 GETTABLEKS                       R10 R11 K111 ["BLUE_DISABLED"]
      599 SETTABLEKS                       R10 R9 K104 ["ButtonColor_Disabled"]
      601 GETIMPORT                        R10 K113 [Color3.new]
      603 LOADN                            R11 1
      604 LOADN                            R12 1
      605 LOADN                            R13 1
      606 CALL                             R10 3 1
      607 SETTABLEKS                       R10 R9 K105 ["TextColor"]
      609 JUMPIFNOT                        R2 ; [+7]
      610 MOVE                             R10 R5
      611 GETTABLEKS                       R11 R3 K65 ["ButtonText"]
      613 GETTABLEKS                       R12 R4 K109 ["Disabled"]
      615 CALL                             R10 2 1
      616 JUMPIF                           R10 ; [+6]
      617 GETIMPORT                        R10 K113 [Color3.new]
      619 LOADN                            R11 1
      620 LOADN                            R12 1
      621 LOADN                            R13 1
      622 CALL                             R10 3 1
      623 SETTABLEKS                       R10 R9 K106 ["TextColor_Disabled"]
      625 MOVE                             R10 R5
      626 GETTABLEKS                       R11 R3 K114 ["Light"]
      628 CALL                             R10 1 1
      629 SETTABLEKS                       R10 R9 K107 ["BorderColor"]
      631 SETTABLEKS                       R9 R8 K14 ["defaultButton"]
      633 DUPTABLE                         R9 K118 [{"text", "backgroundBar", "bar"}]
      634 MOVE                             R10 R5
      635 GETTABLEKS                       R11 R3 K28 ["MainText"]
      637 CALL                             R10 1 1
      638 SETTABLEKS                       R10 R9 K115 ["text"]
      640 MOVE                             R10 R5
      641 GETTABLEKS                       R11 R3 K119 ["Midlight"]
      643 CALL                             R10 1 1
      644 SETTABLEKS                       R10 R9 K116 ["backgroundBar"]
      646 MOVE                             R10 R5
      647 GETTABLEKS                       R11 R3 K53 ["CurrentMarker"]
      649 CALL                             R10 1 1
      650 SETTABLEKS                       R10 R9 K117 ["bar"]
      652 SETTABLEKS                       R9 R8 K15 ["loading"]
      654 DUPTABLE                         R9 K126 [{"greenText", "redText", "text", "buttonColor", "idText", "background", "link"}]
      655 GETIMPORT                        R10 K42 [Color3.fromRGB]
      657 LOADN                            R11 2
      658 LOADN                            R12 183
      659 LOADN                            R13 87
      660 CALL                             R10 3 1
      661 SETTABLEKS                       R10 R9 K120 ["greenText"]
      663 GETIMPORT                        R10 K42 [Color3.fromRGB]
      665 LOADN                            R11 255
      666 LOADN                            R12 68
      667 LOADN                            R13 68
      668 CALL                             R10 3 1
      669 SETTABLEKS                       R10 R9 K121 ["redText"]
      671 MOVE                             R10 R5
      672 GETTABLEKS                       R11 R3 K28 ["MainText"]
      674 CALL                             R10 1 1
      675 SETTABLEKS                       R10 R9 K115 ["text"]
      677 JUMPIFNOT                        R2 ; [+5]
      678 MOVE                             R10 R5
      679 GETTABLEKS                       R11 R3 K28 ["MainText"]
      681 CALL                             R10 1 1
      682 JUMPIF                           R10 ; [+4]
      683 MOVE                             R10 R5
      684 GETTABLEKS                       R11 R3 K29 ["DimmedText"]
      686 CALL                             R10 1 1
      687 SETTABLEKS                       R10 R9 K122 ["buttonColor"]
      689 MOVE                             R10 R5
      690 GETTABLEKS                       R11 R3 K29 ["DimmedText"]
      692 CALL                             R10 1 1
      693 SETTABLEKS                       R10 R9 K123 ["idText"]
      695 MOVE                             R10 R5
      696 GETTABLEKS                       R11 R3 K127 ["TableItem"]
      698 CALL                             R10 1 1
      699 SETTABLEKS                       R10 R9 K124 ["background"]
      701 MOVE                             R10 R5
      702 GETTABLEKS                       R11 R3 K110 ["LinkText"]
      704 CALL                             R10 1 1
      705 SETTABLEKS                       R10 R9 K125 ["link"]
      707 SETTABLEKS                       R9 R8 K16 ["uploadResult"]
      709 DUPTABLE                         R9 K133 [{"backgroundColor", "backgroundColorDisabled", "borderColorActive", "borderColorDisabled", "borderColor", "toolTip", "error"}]
      710 MOVE                             R10 R5
      711 GETTABLEKS                       R11 R3 K54 ["InputFieldBackground"]
      713 CALL                             R10 1 1
      714 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
      716 MOVE                             R10 R5
      717 GETTABLEKS                       R11 R3 K54 ["InputFieldBackground"]
      719 GETTABLEKS                       R12 R4 K109 ["Disabled"]
      721 CALL                             R10 2 1
      722 SETTABLEKS                       R10 R9 K128 ["backgroundColorDisabled"]
      724 MOVE                             R10 R5
      725 GETTABLEKS                       R11 R3 K51 ["InputFieldBorder"]
      727 GETTABLEKS                       R12 R4 K68 ["Selected"]
      729 CALL                             R10 2 1
      730 SETTABLEKS                       R10 R9 K129 ["borderColorActive"]
      732 MOVE                             R10 R5
      733 GETTABLEKS                       R11 R3 K51 ["InputFieldBorder"]
      735 GETTABLEKS                       R12 R4 K109 ["Disabled"]
      737 CALL                             R10 2 1
      738 SETTABLEKS                       R10 R9 K130 ["borderColorDisabled"]
      740 MOVE                             R10 R5
      741 GETTABLEKS                       R11 R3 K51 ["InputFieldBorder"]
      743 CALL                             R10 1 1
      744 SETTABLEKS                       R10 R9 K80 ["borderColor"]
      746 MOVE                             R10 R5
      747 GETTABLEKS                       R11 R3 K29 ["DimmedText"]
      749 CALL                             R10 1 1
      750 SETTABLEKS                       R10 R9 K131 ["toolTip"]
      752 MOVE                             R10 R5
      753 GETTABLEKS                       R11 R3 K31 ["ErrorText"]
      755 CALL                             R10 1 1
      756 SETTABLEKS                       R10 R9 K132 ["error"]
      758 SETTABLEKS                       R9 R8 K17 ["inputFields"]
      760 DUPTABLE                         R9 K134 [{"textColor", "backgroundColor", "borderColor"}]
      761 MOVE                             R10 R5
      762 GETTABLEKS                       R11 R3 K28 ["MainText"]
      764 CALL                             R10 1 1
      765 SETTABLEKS                       R10 R9 K21 ["textColor"]
      767 MOVE                             R10 R5
      768 GETTABLEKS                       R11 R3 K27 ["MainBackground"]
      770 CALL                             R10 1 1
      771 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
      773 MOVE                             R10 R5
      774 GETTABLEKS                       R11 R3 K51 ["InputFieldBorder"]
      776 CALL                             R10 1 1
      777 SETTABLEKS                       R10 R9 K80 ["borderColor"]
      779 SETTABLEKS                       R9 R8 K18 ["tags"]
      781 NAMECALL                         R6 R0 K135 ["_update"]
      783 CALL                             R6 2 0
      784 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R4 R0 K7 ["Src"]
       18 GETTABLEKS                       R3 R4 K8 ["Util"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R3 K9 ["Colors"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R3 K10 ["createSignal"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R3 K11 ["wrapStrictTable"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R3 K12 ["Images"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R10 R3 K13 ["Test"]
       44 GETTABLEKS                       R9 R10 K14 ["TestHelpers"]
       46 CALL                             R8 1 1
       47 NEWTABLE                         R9 16 0
       49 SETTABLEKS                       R9 R9 K15 ["__index"]
       51 DUPCLOSURE                       R10 K16 [PROTO_2]
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R8
       54 SETTABLEKS                       R10 R9 K17 ["createDummyThemeManager"]
       56 DUPCLOSURE                       R10 K18 [PROTO_4]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R9
       60 SETTABLEKS                       R10 R9 K19 ["new"]
       62 DUPCLOSURE                       R10 K20 [PROTO_5]
       63 SETTABLEKS                       R10 R9 K21 ["subscribe"]
       65 DUPCLOSURE                       R10 K22 [PROTO_6]
       66 SETTABLEKS                       R10 R9 K23 ["destroy"]
       68 DUPCLOSURE                       R10 K24 [PROTO_7]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R6
       71 SETTABLEKS                       R10 R9 K25 ["_update"]
       73 DUPCLOSURE                       R10 K26 [PROTO_8]
       74 SETTABLEKS                       R10 R9 K27 ["_getExternalTheme"]
       76 DUPCLOSURE                       R10 K28 [PROTO_9]
       77 SETTABLEKS                       R10 R9 K29 ["_isDarkerTheme"]
       79 DUPCLOSURE                       R10 K30 [PROTO_11]
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R10 R9 K31 ["_recalculateTheme"]
       83 RETURN                           R9 1
