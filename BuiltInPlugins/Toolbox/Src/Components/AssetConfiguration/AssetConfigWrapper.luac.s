PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["popUpGuiRef"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["onAssetConfigDestroy"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["onAssetConfigDestroy"]
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
        0 DUPTABLE                         R2 K4 [{[1] = , ["owner"] = , ["groupId"]}]
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 JUMPIFNOT                        R4 ; [+6]
        4 GETUPVAL                         R4 1
        5 CALL                             R4 0 1
        6 JUMPIF                           R4 ; [+3]
        7 GETTABLEKS                       R3 R1 K3 ["groupId"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K3 ["groupId"]
       13 SETTABLEKS                       R2 R0 K5 ["state"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K6 ["popUpRefFunc"]
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K7 ["onClose"]
       23 NEWCLOSURE                       R2 P2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K8 ["setOwner"]
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K9 ["Util"]
       30 GETTABLEKS                       R2 R2 K10 ["createFoundationDesignBinding"]
       32 CALL                             R2 0 2
       33 SETTABLEKS                       R3 R0 K11 ["onFoundationStyleSheetChange"]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R5 R1 K12 ["plugin"]
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 NEWTABLE                         R8 0 1
       42 MOVE                             R9 R2
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R4 4 1
       46 SETTABLEKS                       R4 R0 K13 ["design"]
       48 RETURN                           R0 0

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
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["createElement"]
       15 GETUPVAL                         R8 1
       16 NEWTABLE                         R9 16 0
       18 LOADK                            R10 K7 ["Asset Configuration"]
       19 SETTABLEKS                       R10 R9 K8 ["Title"]
       21 LOADB                            R10 1
       22 SETTABLEKS                       R10 R9 K9 ["Resizable"]
       24 GETIMPORT                        R10 K12 [Vector2.new]
       26 GETUPVAL                         R11 2
       27 GETTABLEKS                       R11 R11 K13 ["MIN_WIDTH"]
       29 GETUPVAL                         R12 2
       30 GETTABLEKS                       R12 R12 K14 ["MIN_HEIGHT"]
       32 CALL                             R10 2 1
       33 SETTABLEKS                       R10 R9 K15 ["MinSize"]
       35 GETIMPORT                        R10 K12 [Vector2.new]
       37 GETUPVAL                         R11 2
       38 GETTABLEKS                       R11 R11 K16 ["WIDTH"]
       40 GETUPVAL                         R12 2
       41 GETTABLEKS                       R12 R12 K17 ["HEIGHT"]
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
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K25 ["Change"]
       67 GETTABLEKS                       R10 R10 K26 ["Enabled"]
       69 GETTABLEKS                       R11 R0 K27 ["onClose"]
       71 SETTABLE                         R11 R9 R10
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K28 ["Ref"]
       75 GETTABLEKS                       R11 R0 K29 ["popUpRefFunc"]
       77 SETTABLE                         R11 R9 R10
       78 GETUPVAL                         R10 0
       79 GETTABLEKS                       R10 R10 K30 ["Event"]
       81 GETTABLEKS                       R10 R10 K31 ["AncestryChanged"]
       83 GETTABLEKS                       R11 R0 K32 ["onAncestryChanged"]
       85 SETTABLE                         R11 R9 R10
       86 DUPTABLE                         R10 K34 [{"ContextServices"}]
       87 GETTABLEKS                       R12 R2 K35 ["popUpGui"]
       89 JUMPIFNOT                        R12 ; [+100]
       90 GETUPVAL                         R11 5
       91 GETTABLEKS                       R11 R11 K36 ["provide"]
       93 NEWTABLE                         R12 0 8
       95 GETUPVAL                         R13 5
       96 GETTABLEKS                       R13 R13 K37 ["Focus"]
       98 GETTABLEKS                       R13 R13 K11 ["new"]
      100 GETTABLEKS                       R14 R2 K35 ["popUpGui"]
      102 CALL                             R13 1 1
      103 GETUPVAL                         R14 6
      104 GETTABLEKS                       R14 R14 K11 ["new"]
      106 GETTABLEKS                       R15 R2 K35 ["popUpGui"]
      108 CALL                             R14 1 1
      109 GETUPVAL                         R15 7
      110 GETTABLEKS                       R15 R15 K11 ["new"]
      112 MOVE                             R16 R5
      113 CALL                             R15 1 1
      114 GETUPVAL                         R16 8
      115 GETUPVAL                         R17 9
      116 CALL                             R17 0 -1
      117 CALL                             R16 -1 1
      118 GETUPVAL                         R17 10
      119 GETTABLEKS                       R17 R17 K11 ["new"]
      121 CALL                             R17 0 1
      122 GETUPVAL                         R18 11
      123 GETTABLEKS                       R18 R18 K11 ["new"]
      125 CALL                             R18 0 1
      126 GETUPVAL                         R19 12
      127 GETTABLEKS                       R19 R19 K11 ["new"]
      129 CALL                             R19 0 1
      130 GETUPVAL                         R20 13
      131 GETTABLEKS                       R20 R20 K11 ["new"]
      133 GETTABLEKS                       R21 R0 K38 ["design"]
      135 CALL                             R20 1 -1
      136 SETLIST                          R12 R13 -1 [1]
      138 DUPTABLE                         R13 K40 [{"FoundationProviderAdapter"}]
      139 GETUPVAL                         R14 14
      140 GETTABLEKS                       R14 R14 K6 ["createElement"]
      142 GETUPVAL                         R15 15
      143 DUPTABLE                         R16 K43 [{"onStyleSheetChange", "overlayGui"}]
      144 GETTABLEKS                       R17 R0 K44 ["onFoundationStyleSheetChange"]
      146 SETTABLEKS                       R17 R16 K41 ["onStyleSheetChange"]
      148 GETTABLEKS                       R17 R2 K35 ["popUpGui"]
      150 SETTABLEKS                       R17 R16 K42 ["overlayGui"]
      152 DUPTABLE                         R17 K46 [{"ScreenSelect"}]
      153 GETUPVAL                         R18 0
      154 GETTABLEKS                       R18 R18 K6 ["createElement"]
      156 GETUPVAL                         R19 16
      157 DUPTABLE                         R20 K51 [{"assetId", "assetTypeEnum", "onClose", "pluginGui", "owner", "groupId", "setOwner"}]
      158 SETTABLEKS                       R3 R20 K2 ["assetId"]
      160 SETTABLEKS                       R4 R20 K3 ["assetTypeEnum"]
      162 GETTABLEKS                       R21 R0 K27 ["onClose"]
      164 SETTABLEKS                       R21 R20 K27 ["onClose"]
      166 GETTABLEKS                       R21 R2 K35 ["popUpGui"]
      168 SETTABLEKS                       R21 R20 K47 ["pluginGui"]
      170 GETTABLEKS                       R21 R2 K48 ["owner"]
      172 SETTABLEKS                       R21 R20 K48 ["owner"]
      174 GETTABLEKS                       R21 R2 K49 ["groupId"]
      176 SETTABLEKS                       R21 R20 K49 ["groupId"]
      178 GETTABLEKS                       R21 R0 K50 ["setOwner"]
      180 SETTABLEKS                       R21 R20 K50 ["setOwner"]
      182 CALL                             R18 2 1
      183 SETTABLEKS                       R18 R17 K45 ["ScreenSelect"]
      185 CALL                             R14 3 1
      186 SETTABLEKS                       R14 R13 K39 ["FoundationProviderAdapter"]
      188 CALL                             R11 2 1
      189 JUMP                             ; [+1]
      190 LOADNIL                          R11
      191 SETTABLEKS                       R11 R10 K33 ["ContextServices"]
      193 CALL                             R7 3 -1
      194 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Util"]
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
       43 GETTABLEKS                       R8 R0 K3 ["Src"]
       45 GETTABLEKS                       R8 R8 K16 ["Components"]
       47 GETIMPORT                        R9 K11 [require]
       49 GETTABLEKS                       R10 R8 K17 ["PluginWidget"]
       51 GETTABLEKS                       R10 R10 K18 ["Dialog"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K11 [require]
       56 GETTABLEKS                       R11 R8 K19 ["AssetConfiguration"]
       58 GETTABLEKS                       R11 R11 K20 ["ScreenSelect"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K11 [require]
       63 GETTABLEKS                       R12 R0 K3 ["Src"]
       65 GETTABLEKS                       R12 R12 K21 ["Themes"]
       67 GETTABLEKS                       R12 R12 K22 ["getAssetConfigTheme"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K11 [require]
       72 GETTABLEKS                       R13 R1 K23 ["AssetConfigConstants"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K11 [require]
       77 GETTABLEKS                       R14 R1 K24 ["makeTheme"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K11 [require]
       82 GETTABLEKS                       R15 R3 K14 ["Framework"]
       84 CALL                             R14 1 1
       85 GETTABLEKS                       R14 R14 K25 ["ContextServices"]
       87 GETTABLEKS                       R15 R14 K26 ["Design"]
       89 GETIMPORT                        R16 K11 [require]
       91 GETTABLEKS                       R17 R0 K3 ["Src"]
       93 GETTABLEKS                       R17 R17 K25 ["ContextServices"]
       95 GETTABLEKS                       R17 R17 K27 ["ModalContext"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K11 [require]
      100 GETTABLEKS                       R18 R0 K3 ["Src"]
      102 GETTABLEKS                       R18 R18 K25 ["ContextServices"]
      104 GETTABLEKS                       R18 R18 K28 ["NetworkContext"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K11 [require]
      109 GETTABLEKS                       R19 R0 K3 ["Src"]
      111 GETTABLEKS                       R19 R19 K25 ["ContextServices"]
      113 GETTABLEKS                       R19 R19 K29 ["PublishServiceContext"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K11 [require]
      118 GETTABLEKS                       R20 R0 K3 ["Src"]
      120 GETTABLEKS                       R20 R20 K25 ["ContextServices"]
      122 GETTABLEKS                       R20 R20 K30 ["PluginGuiServiceContext"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K11 [require]
      127 GETTABLEKS                       R21 R0 K3 ["Src"]
      129 GETTABLEKS                       R21 R21 K25 ["ContextServices"]
      131 GETTABLEKS                       R21 R21 K31 ["ContentProviderContext"]
      133 CALL                             R20 1 1
      134 GETTABLEKS                       R21 R6 K32 ["Styling"]
      136 GETTABLEKS                       R21 R21 K33 ["registerPluginStyles"]
      138 GETTABLEKS                       R22 R7 K16 ["Components"]
      140 GETTABLEKS                       R22 R22 K34 ["FoundationProviderAdapter"]
      142 GETIMPORT                        R23 K11 [require]
      144 GETTABLEKS                       R24 R0 K3 ["Src"]
      146 GETTABLEKS                       R24 R24 K4 ["Util"]
      148 GETTABLEKS                       R24 R24 K35 ["SharedFlags"]
      150 GETTABLEKS                       R24 R24 K36 ["getFFlagToolboxModelUploadNonBlocking"]
      152 CALL                             R23 1 1
      153 GETTABLEKS                       R24 R5 K37 ["PureComponent"]
      155 LOADK                            R26 K38 ["AssetConfigWrapper"]
      156 NAMECALL                         R24 R24 K39 ["extend"]
      158 CALL                             R24 2 1
      159 GETIMPORT                        R25 K11 [require]
      161 GETTABLEKS                       R26 R0 K3 ["Src"]
      163 GETTABLEKS                       R26 R26 K40 ["Flags"]
      165 GETTABLEKS                       R26 R26 K41 ["getFFlagToolboxAssetConfigGroupOwnership"]
      167 CALL                             R25 1 1
      168 GETIMPORT                        R26 K11 [require]
      170 GETTABLEKS                       R27 R0 K3 ["Src"]
      172 GETTABLEKS                       R27 R27 K40 ["Flags"]
      174 GETTABLEKS                       R27 R27 K42 ["getFFlagToolboxAssetConfigSaveDefaults"]
      176 CALL                             R26 1 1
      177 DUPCLOSURE                       R27 K43 [PROTO_3]
      178 CAPTURE                          VAL R25
      179 CAPTURE                          VAL R26
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R21
      182 SETTABLEKS                       R27 R24 K44 ["init"]
      184 DUPCLOSURE                       R27 K45 [PROTO_4]
      185 SETTABLEKS                       R27 R24 K46 ["didMount"]
      187 DUPCLOSURE                       R27 K47 [PROTO_5]
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R18
      199 CAPTURE                          VAL R19
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R10
      205 SETTABLEKS                       R27 R24 K48 ["render"]
      207 RETURN                           R24 1
