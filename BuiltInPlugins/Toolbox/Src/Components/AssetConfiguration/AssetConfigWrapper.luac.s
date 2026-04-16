PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["popUpGuiRef"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["onAssetConfigDestroy"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K1 ["onAssetConfigDestroy"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"owner", "groupId"}]
        2 SETTABLEKS                       R0 R4 K0 ["owner"]
        4 SETTABLEKS                       R1 R4 K1 ["groupId"]
        6 NAMECALL                         R2 R2 K3 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K3 [{"popUpGui", "owner", "groupId"}]
        1 LOADNIL                          R3
        2 SETTABLEKS                       R3 R2 K0 ["popUpGui"]
        4 LOADNIL                          R3
        5 SETTABLEKS                       R3 R2 K1 ["owner"]
        7 GETUPVAL                         R4 0
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+3]
       10 GETTABLEKS                       R3 R1 K2 ["groupId"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K2 ["groupId"]
       16 SETTABLEKS                       R2 R0 K4 ["state"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K5 ["popUpRefFunc"]
       22 NEWCLOSURE                       R2 P1
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K6 ["onClose"]
       26 NEWCLOSURE                       R2 P2
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R2 R0 K7 ["setOwner"]
       30 GETUPVAL                         R2 1
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+21]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R3 R4 K8 ["Util"]
       36 GETTABLEKS                       R2 R3 K9 ["createFoundationDesignBinding"]
       38 CALL                             R2 0 2
       39 SETTABLEKS                       R3 R0 K10 ["onFoundationStyleSheetChange"]
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R5 R1 K11 ["plugin"]
       44 LOADNIL                          R6
       45 LOADNIL                          R7
       46 NEWTABLE                         R8 0 1
       48 MOVE                             R9 R2
       49 SETLIST                          R8 R9 1 [1]
       51 CALL                             R4 4 1
       52 SETTABLEKS                       R4 R0 K12 ["design"]
       54 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R3 K1 [{"popUpGui"}]
        1 GETTABLEKS                       R4 R0 K2 ["popUpGuiRef"]
        3 SETTABLEKS                       R4 R3 K0 ["popUpGui"]
        5 NAMECALL                         R1 R0 K3 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["assetId"]
        6 GETTABLEKS                       R4 R1 K3 ["assetTypeEnum"]
        8 GETTABLEKS                       R5 R1 K4 ["networkInterface"]
       10 GETTABLEKS                       R6 R1 K5 ["plugin"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K6 ["createElement"]
       15 GETUPVAL                         R8 1
       16 NEWTABLE                         R9 16 0
       18 LOADK                            R10 K7 ["Asset Configuration"]
       19 SETTABLEKS                       R10 R9 K8 ["Title"]
       21 LOADB                            R10 1
       22 SETTABLEKS                       R10 R9 K9 ["Resizable"]
       24 GETIMPORT                        R10 K12 [Vector2.new]
       26 GETUPVAL                         R12 2
       27 GETTABLEKS                       R11 R12 K13 ["MIN_WIDTH"]
       29 GETUPVAL                         R13 2
       30 GETTABLEKS                       R12 R13 K14 ["MIN_HEIGHT"]
       32 CALL                             R10 2 1
       33 SETTABLEKS                       R10 R9 K15 ["MinSize"]
       35 GETIMPORT                        R10 K12 [Vector2.new]
       37 GETUPVAL                         R12 2
       38 GETTABLEKS                       R11 R12 K16 ["WIDTH"]
       40 GETUPVAL                         R13 2
       41 GETTABLEKS                       R12 R13 K17 ["HEIGHT"]
       43 CALL                             R10 2 1
       44 SETTABLEKS                       R10 R9 K18 ["Size"]
       46 GETIMPORT                        R10 K22 [Enum.ZIndexBehavior.Sibling]
       48 SETTABLEKS                       R10 R9 K20 ["ZIndexBehavior"]
       50 GETUPVAL                         R11 3
       51 CALL                             R11 0 1
       52 JUMPIFNOT                        R11 ; [+2]
       53 LOADB                            R10 0
       54 JUMP                             ; [+2]
       55 GETUPVAL                         R11 4
       56 NOT                              R10 R11
       57 SETTABLEKS                       R10 R9 K23 ["Modal"]
       59 LOADB                            R10 1
       60 SETTABLEKS                       R10 R9 K24 ["InitialEnabled"]
       62 SETTABLEKS                       R6 R9 K5 ["plugin"]
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R11 R12 K25 ["Change"]
       67 GETTABLEKS                       R10 R11 K26 ["Enabled"]
       69 GETTABLEKS                       R11 R0 K27 ["onClose"]
       71 SETTABLE                         R11 R9 R10
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R10 R11 K28 ["Ref"]
       75 GETTABLEKS                       R11 R0 K29 ["popUpRefFunc"]
       77 SETTABLE                         R11 R9 R10
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R11 R12 K30 ["Event"]
       81 GETTABLEKS                       R10 R11 K31 ["AncestryChanged"]
       83 GETTABLEKS                       R11 R0 K32 ["onAncestryChanged"]
       85 SETTABLE                         R11 R9 R10
       86 DUPTABLE                         R10 K34 [{"ContextServices"}]
       87 GETUPVAL                         R12 5
       88 CALL                             R12 0 1
       89 JUMPIFNOT                        R12 ; [+115]
       90 GETTABLEKS                       R12 R2 K35 ["popUpGui"]
       92 JUMPIFNOT                        R12 ; [+110]
       93 GETUPVAL                         R12 6
       94 GETTABLEKS                       R11 R12 K36 ["provide"]
       96 NEWTABLE                         R12 0 8
       98 GETUPVAL                         R15 6
       99 GETTABLEKS                       R14 R15 K37 ["Focus"]
      101 GETTABLEKS                       R13 R14 K11 ["new"]
      103 GETTABLEKS                       R14 R2 K35 ["popUpGui"]
      105 CALL                             R13 1 1
      106 GETUPVAL                         R15 7
      107 GETTABLEKS                       R14 R15 K11 ["new"]
      109 GETTABLEKS                       R15 R2 K35 ["popUpGui"]
      111 CALL                             R14 1 1
      112 GETUPVAL                         R16 8
      113 GETTABLEKS                       R15 R16 K11 ["new"]
      115 MOVE                             R16 R5
      116 CALL                             R15 1 1
      117 GETUPVAL                         R16 9
      118 GETUPVAL                         R17 10
      119 CALL                             R17 0 -1
      120 CALL                             R16 -1 1
      121 GETUPVAL                         R18 11
      122 GETTABLEKS                       R17 R18 K11 ["new"]
      124 CALL                             R17 0 1
      125 GETUPVAL                         R19 12
      126 CALL                             R19 0 1
      127 JUMPIFNOT                        R19 ; [+5]
      128 GETUPVAL                         R19 13
      129 GETTABLEKS                       R18 R19 K11 ["new"]
      131 CALL                             R18 0 1
      132 JUMP                             ; [+1]
      133 LOADNIL                          R18
      134 GETUPVAL                         R20 12
      135 CALL                             R20 0 1
      136 JUMPIFNOT                        R20 ; [+5]
      137 GETUPVAL                         R20 14
      138 GETTABLEKS                       R19 R20 K11 ["new"]
      140 CALL                             R19 0 1
      141 JUMP                             ; [+1]
      142 LOADNIL                          R19
      143 GETUPVAL                         R21 15
      144 GETTABLEKS                       R20 R21 K11 ["new"]
      146 GETTABLEKS                       R21 R0 K38 ["design"]
      148 CALL                             R20 1 -1
      149 SETLIST                          R12 R13 -1 [1]
      151 DUPTABLE                         R13 K40 [{"FoundationProviderAdapter"}]
      152 GETUPVAL                         R15 16
      153 GETTABLEKS                       R14 R15 K6 ["createElement"]
      155 GETUPVAL                         R15 17
      156 DUPTABLE                         R16 K43 [{"onStyleSheetChange", "overlayGui"}]
      157 GETTABLEKS                       R17 R0 K44 ["onFoundationStyleSheetChange"]
      159 SETTABLEKS                       R17 R16 K41 ["onStyleSheetChange"]
      161 GETTABLEKS                       R17 R2 K35 ["popUpGui"]
      163 SETTABLEKS                       R17 R16 K42 ["overlayGui"]
      165 DUPTABLE                         R17 K46 [{"ScreenSelect"}]
      166 GETUPVAL                         R19 0
      167 GETTABLEKS                       R18 R19 K6 ["createElement"]
      169 GETUPVAL                         R19 18
      170 DUPTABLE                         R20 K51 [{"assetId", "assetTypeEnum", "onClose", "pluginGui", "owner", "groupId", "setOwner"}]
      171 SETTABLEKS                       R3 R20 K2 ["assetId"]
      173 SETTABLEKS                       R4 R20 K3 ["assetTypeEnum"]
      175 GETTABLEKS                       R21 R0 K27 ["onClose"]
      177 SETTABLEKS                       R21 R20 K27 ["onClose"]
      179 GETTABLEKS                       R21 R2 K35 ["popUpGui"]
      181 SETTABLEKS                       R21 R20 K47 ["pluginGui"]
      183 GETTABLEKS                       R21 R2 K48 ["owner"]
      185 SETTABLEKS                       R21 R20 K48 ["owner"]
      187 GETTABLEKS                       R21 R2 K49 ["groupId"]
      189 SETTABLEKS                       R21 R20 K49 ["groupId"]
      191 GETTABLEKS                       R21 R0 K50 ["setOwner"]
      193 SETTABLEKS                       R21 R20 K50 ["setOwner"]
      195 CALL                             R18 2 1
      196 SETTABLEKS                       R18 R17 K45 ["ScreenSelect"]
      198 CALL                             R14 3 1
      199 SETTABLEKS                       R14 R13 K39 ["FoundationProviderAdapter"]
      201 CALL                             R11 2 1
      202 JUMP                             ; [+93]
      203 LOADNIL                          R11
      204 JUMP                             ; [+91]
      205 GETTABLEKS                       R12 R2 K35 ["popUpGui"]
      207 JUMPIFNOT                        R12 ; [+87]
      208 GETUPVAL                         R12 6
      209 GETTABLEKS                       R11 R12 K36 ["provide"]
      211 NEWTABLE                         R12 0 7
      213 GETUPVAL                         R15 6
      214 GETTABLEKS                       R14 R15 K37 ["Focus"]
      216 GETTABLEKS                       R13 R14 K11 ["new"]
      218 GETTABLEKS                       R14 R2 K35 ["popUpGui"]
      220 CALL                             R13 1 1
      221 GETUPVAL                         R15 7
      222 GETTABLEKS                       R14 R15 K11 ["new"]
      224 GETTABLEKS                       R15 R2 K35 ["popUpGui"]
      226 CALL                             R14 1 1
      227 GETUPVAL                         R16 8
      228 GETTABLEKS                       R15 R16 K11 ["new"]
      230 MOVE                             R16 R5
      231 CALL                             R15 1 1
      232 GETUPVAL                         R16 9
      233 GETUPVAL                         R17 10
      234 CALL                             R17 0 -1
      235 CALL                             R16 -1 1
      236 GETUPVAL                         R18 11
      237 GETTABLEKS                       R17 R18 K11 ["new"]
      239 CALL                             R17 0 1
      240 GETUPVAL                         R19 12
      241 CALL                             R19 0 1
      242 JUMPIFNOT                        R19 ; [+5]
      243 GETUPVAL                         R19 13
      244 GETTABLEKS                       R18 R19 K11 ["new"]
      246 CALL                             R18 0 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R18
      249 GETUPVAL                         R20 12
      250 CALL                             R20 0 1
      251 JUMPIFNOT                        R20 ; [+5]
      252 GETUPVAL                         R20 14
      253 GETTABLEKS                       R19 R20 K11 ["new"]
      255 CALL                             R19 0 1
      256 JUMP                             ; [+1]
      257 LOADNIL                          R19
      258 SETLIST                          R12 R13 7 [1]
      260 DUPTABLE                         R13 K46 [{"ScreenSelect"}]
      261 GETUPVAL                         R15 0
      262 GETTABLEKS                       R14 R15 K6 ["createElement"]
      264 GETUPVAL                         R15 18
      265 DUPTABLE                         R16 K51 [{"assetId", "assetTypeEnum", "onClose", "pluginGui", "owner", "groupId", "setOwner"}]
      266 SETTABLEKS                       R3 R16 K2 ["assetId"]
      268 SETTABLEKS                       R4 R16 K3 ["assetTypeEnum"]
      270 GETTABLEKS                       R17 R0 K27 ["onClose"]
      272 SETTABLEKS                       R17 R16 K27 ["onClose"]
      274 GETTABLEKS                       R17 R2 K35 ["popUpGui"]
      276 SETTABLEKS                       R17 R16 K47 ["pluginGui"]
      278 GETTABLEKS                       R17 R2 K48 ["owner"]
      280 SETTABLEKS                       R17 R16 K48 ["owner"]
      282 GETTABLEKS                       R17 R2 K49 ["groupId"]
      284 SETTABLEKS                       R17 R16 K49 ["groupId"]
      286 GETTABLEKS                       R17 R0 K50 ["setOwner"]
      288 SETTABLEKS                       R17 R16 K50 ["setOwner"]
      290 CALL                             R14 2 1
      291 SETTABLEKS                       R14 R13 K45 ["ScreenSelect"]
      293 CALL                             R11 2 1
      294 JUMP                             ; [+1]
      295 LOADNIL                          R11
      296 SETTABLEKS                       R11 R10 K33 ["ContextServices"]
      298 CALL                             R7 3 -1
      299 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [game]
       17 LOADK                            R4 K7 ["DebugBuiltInPluginModalsNotBlocking"]
       18 NAMECALL                         R2 R2 K8 ["GetFastFlag"]
       20 CALL                             R2 2 1
       21 GETTABLEKS                       R3 R0 K9 ["Packages"]
       23 GETIMPORT                        R4 K11 [require]
       25 GETTABLEKS                       R5 R3 K12 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K11 [require]
       30 GETTABLEKS                       R6 R3 K13 ["Roact"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K11 [require]
       35 GETTABLEKS                       R7 R3 K14 ["Framework"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K11 [require]
       40 GETTABLEKS                       R8 R3 K15 ["StudioFoundation"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R9 R0 K3 ["Src"]
       45 GETTABLEKS                       R8 R9 K16 ["Components"]
       47 GETIMPORT                        R9 K11 [require]
       49 GETTABLEKS                       R11 R8 K17 ["PluginWidget"]
       51 GETTABLEKS                       R10 R11 K18 ["Dialog"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K11 [require]
       56 GETTABLEKS                       R12 R8 K19 ["AssetConfiguration"]
       58 GETTABLEKS                       R11 R12 K20 ["ScreenSelect"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K11 [require]
       63 GETTABLEKS                       R14 R0 K3 ["Src"]
       65 GETTABLEKS                       R13 R14 K21 ["Themes"]
       67 GETTABLEKS                       R12 R13 K22 ["getAssetConfigTheme"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K11 [require]
       72 GETTABLEKS                       R13 R1 K23 ["AssetConfigConstants"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K11 [require]
       77 GETTABLEKS                       R14 R1 K24 ["makeTheme"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R15 K11 [require]
       82 GETTABLEKS                       R16 R3 K14 ["Framework"]
       84 CALL                             R15 1 1
       85 GETTABLEKS                       R14 R15 K25 ["ContextServices"]
       87 GETTABLEKS                       R15 R14 K26 ["Design"]
       89 GETIMPORT                        R16 K11 [require]
       91 GETTABLEKS                       R19 R0 K3 ["Src"]
       93 GETTABLEKS                       R18 R19 K25 ["ContextServices"]
       95 GETTABLEKS                       R17 R18 K27 ["ModalContext"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K11 [require]
      100 GETTABLEKS                       R20 R0 K3 ["Src"]
      102 GETTABLEKS                       R19 R20 K25 ["ContextServices"]
      104 GETTABLEKS                       R18 R19 K28 ["NetworkContext"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K11 [require]
      109 GETTABLEKS                       R21 R0 K3 ["Src"]
      111 GETTABLEKS                       R20 R21 K25 ["ContextServices"]
      113 GETTABLEKS                       R19 R20 K29 ["PublishServiceContext"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K11 [require]
      118 GETTABLEKS                       R22 R0 K3 ["Src"]
      120 GETTABLEKS                       R21 R22 K25 ["ContextServices"]
      122 GETTABLEKS                       R20 R21 K30 ["PluginGuiServiceContext"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K11 [require]
      127 GETTABLEKS                       R23 R0 K3 ["Src"]
      129 GETTABLEKS                       R22 R23 K25 ["ContextServices"]
      131 GETTABLEKS                       R21 R22 K31 ["ContentProviderContext"]
      133 CALL                             R20 1 1
      134 GETTABLEKS                       R22 R6 K32 ["Styling"]
      136 GETTABLEKS                       R21 R22 K33 ["registerPluginStyles"]
      138 GETTABLEKS                       R23 R7 K16 ["Components"]
      140 GETTABLEKS                       R22 R23 K34 ["FoundationProviderAdapter"]
      142 GETIMPORT                        R23 K11 [require]
      144 GETTABLEKS                       R27 R0 K3 ["Src"]
      146 GETTABLEKS                       R26 R27 K4 ["Util"]
      148 GETTABLEKS                       R25 R26 K35 ["SharedFlags"]
      150 GETTABLEKS                       R24 R25 K36 ["getFFlagToolboxModelUploadNonBlocking"]
      152 CALL                             R23 1 1
      153 GETTABLEKS                       R24 R5 K37 ["PureComponent"]
      155 LOADK                            R26 K38 ["AssetConfigWrapper"]
      156 NAMECALL                         R24 R24 K39 ["extend"]
      158 CALL                             R24 2 1
      159 GETIMPORT                        R25 K11 [require]
      161 GETTABLEKS                       R28 R0 K3 ["Src"]
      163 GETTABLEKS                       R27 R28 K40 ["Flags"]
      165 GETTABLEKS                       R26 R27 K41 ["getFFlagCheckAvatarAssetPrivacy"]
      167 CALL                             R25 1 1
      168 GETIMPORT                        R26 K11 [require]
      170 GETTABLEKS                       R29 R0 K3 ["Src"]
      172 GETTABLEKS                       R28 R29 K40 ["Flags"]
      174 GETTABLEKS                       R27 R28 K42 ["getFFlagToolboxMigrateFoundation"]
      176 CALL                             R26 1 1
      177 GETIMPORT                        R27 K11 [require]
      179 GETTABLEKS                       R30 R0 K3 ["Src"]
      181 GETTABLEKS                       R29 R30 K40 ["Flags"]
      183 GETTABLEKS                       R28 R29 K43 ["getFFlagToolboxAssetConfigGroupOwnership"]
      185 CALL                             R27 1 1
      186 DUPCLOSURE                       R28 K44 [PROTO_3]
      187 CAPTURE                          VAL R27
      188 CAPTURE                          VAL R26
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R21
      191 SETTABLEKS                       R28 R24 K45 ["init"]
      193 DUPCLOSURE                       R28 K46 [PROTO_4]
      194 SETTABLEKS                       R28 R24 K47 ["didMount"]
      196 DUPCLOSURE                       R28 K48 [PROTO_5]
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R26
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R16
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R25
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R10
      216 SETTABLEKS                       R28 R24 K49 ["render"]
      218 RETURN                           R24 1
