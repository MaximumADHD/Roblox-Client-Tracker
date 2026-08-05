PROTO_0:
        0 LOADK                            R4 K0 ["styles"]
        1 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+22]
        5 GETIMPORT                        R3 K3 [require]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 LOADK                            R6 K4 ["Design"]
       10 NAMECALL                         R4 R0 K1 ["FindFirstChild"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+13]
       14 LOADK                            R7 K5 ["StyleSheet"]
       15 NAMECALL                         R5 R4 K6 ["IsA"]
       17 CALL                             R5 2 1
       18 JUMPIFNOT                        R5 ; [+8]
       19 MOVE                             R7 R3
       20 NAMECALL                         R9 R4 K7 ["GetStyleRules"]
       22 CALL                             R9 1 1
       23 LENGTH                           R8 R9
       24 NAMECALL                         R5 R4 K8 ["InsertStyleRule"]
       26 CALL                             R5 3 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R0 K0 ["Name"]
        4 CALL                             R2 2 1
        5 NOT                              R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["Theme"]
        6 GETTABLEKS                       R1 R1 K1 ["Name"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["Design"]
       11 NEWTABLE                         R4 0 1
       13 GETUPVAL                         R6 2
       14 GETTABLE                         R5 R6 R1
       15 SETLIST                          R4 R5 1 [1]
       17 NAMECALL                         R2 R2 K3 ["SetDerives"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 LOADK                            R7 K1 ["Folder"]
        6 NAMECALL                         R5 R4 K2 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+34]
       10 GETTABLEKS                       R5 R4 K3 ["Name"]
       12 LOADK                            R7 K4 ["^StudioDesign"]
       13 NAMECALL                         R5 R5 K5 ["match"]
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+27]
       17 GETUPVAL                         R7 1
       18 NAMECALL                         R5 R4 K6 ["GetAttribute"]
       20 CALL                             R5 2 1
       21 JUMPIFNOTEQKN                    R5 K7 [4] ; [+2]
       23 RETURN                           R4 1
       24 GETIMPORT                        R5 K9 [game]
       26 LOADK                            R7 K10 ["DebugDeveloperFrameworkSdk"]
       27 NAMECALL                         R5 R5 K11 ["GetFastFlag"]
       29 CALL                             R5 2 1
       30 JUMPIFNOT                        R5 ; [+13]
       31 GETIMPORT                        R5 K13 [warn]
       33 LOADK                            R7 K14 ["[DebugDeveloperFrameworkSdk] Found an outdated copy of Studio design. Please update plugin that created Version %*"]
       34 GETUPVAL                         R12 1
       35 NAMECALL                         R10 R4 K6 ["GetAttribute"]
       37 CALL                             R10 2 1
       38 ORK                              R9 R10 K15 [0]
       39 NAMECALL                         R7 R7 K16 ["format"]
       41 CALL                             R7 2 1
       42 MOVE                             R6 R7
       43 CALL                             R5 1 0
       44 FORGLOOP                         R0 2 ; [-40]
       46 GETIMPORT                        R0 K9 [game]
       48 LOADK                            R2 K10 ["DebugDeveloperFrameworkSdk"]
       49 NAMECALL                         R0 R0 K11 ["GetFastFlag"]
       51 CALL                             R0 2 1
       52 JUMPIFNOT                        R0 ; [+17]
       53 GETIMPORT                        R0 K18 [script]
       55 LOADK                            R2 K19 ["Plugin"]
       56 NAMECALL                         R0 R0 K20 ["FindFirstAncestorWhichIsA"]
       58 CALL                             R0 2 1
       59 JUMPIFNOT                        R0 ; [+10]
       60 GETIMPORT                        R1 K22 [print]
       62 LOADK                            R3 K23 ["[DebugDeveloperFrameworkSdk] Plugin creating Studio design: %*"]
       63 GETTABLEKS                       R5 R0 K3 ["Name"]
       65 NAMECALL                         R3 R3 K16 ["format"]
       67 CALL                             R3 2 1
       68 MOVE                             R2 R3
       69 CALL                             R1 1 0
       70 GETUPVAL                         R0 2
       71 CALL                             R0 0 1
       72 JUMPIFNOT                        R0 ; [+5]
       73 GETTABLEKS                       R1 R0 K24 ["Theme"]
       75 GETTABLEKS                       R1 R1 K3 ["Name"]
       77 JUMP                             ; [+1]
       78 GETUPVAL                         R1 3
       79 GETUPVAL                         R2 4
       80 LOADK                            R4 K25 ["StudioDesign-%*"]
       81 LOADN                            R6 4
       82 NAMECALL                         R4 R4 K16 ["format"]
       84 CALL                             R4 2 1
       85 MOVE                             R3 R4
       86 CALL                             R2 1 1
       87 GETUPVAL                         R3 5
       88 LOADK                            R4 K26 ["Palette"]
       89 NEWTABLE                         R5 0 0
       91 GETUPVAL                         R6 6
       92 NEWTABLE                         R7 0 0
       94 CALL                             R3 4 1
       95 SETTABLEKS                       R2 R3 K27 ["Parent"]
       97 DUPTABLE                         R4 K30 [{"Light", "Dark"}]
       98 GETUPVAL                         R5 5
       99 LOADK                            R6 K28 ["Light"]
      100 NEWTABLE                         R7 0 0
      102 GETUPVAL                         R8 7
      103 NEWTABLE                         R9 0 1
      105 MOVE                             R10 R3
      106 SETLIST                          R9 R10 1 [1]
      108 CALL                             R5 4 1
      109 SETTABLEKS                       R5 R4 K28 ["Light"]
      111 GETUPVAL                         R5 5
      112 LOADK                            R6 K29 ["Dark"]
      113 NEWTABLE                         R7 0 0
      115 GETUPVAL                         R8 8
      116 NEWTABLE                         R9 0 1
      118 MOVE                             R10 R3
      119 SETLIST                          R9 R10 1 [1]
      121 CALL                             R5 4 1
      122 SETTABLEKS                       R5 R4 K29 ["Dark"]
      124 MOVE                             R5 R4
      125 LOADNIL                          R6
      126 LOADNIL                          R7
      127 FORGPREP                         R5
      128 GETTABLEKS                       R10 R2 K31 ["Themes"]
      130 SETTABLEKS                       R10 R9 K27 ["Parent"]
      132 LOADK                            R12 K32 ["StyleCategory"]
      133 LOADK                            R13 K24 ["Theme"]
      134 NAMECALL                         R10 R9 K33 ["SetAttribute"]
      136 CALL                             R10 3 0
      137 JUMPIFNOTEQ                      R8 R1 ; [+11]
      139 GETTABLEKS                       R10 R2 K34 ["Design"]
      141 NEWTABLE                         R12 0 1
      143 MOVE                             R13 R9
      144 SETLIST                          R12 R13 1 [1]
      146 NAMECALL                         R10 R10 K35 ["SetDerives"]
      148 CALL                             R10 2 0
      149 FORGLOOP                         R5 2 ; [-22]
      151 GETUPVAL                         R5 9
      152 NEWTABLE                         R6 0 0
      154 GETUPVAL                         R7 10
      155 NAMECALL                         R7 R7 K0 ["GetChildren"]
      157 CALL                             R7 1 1
      158 GETUPVAL                         R8 11
      159 NAMECALL                         R8 R8 K0 ["GetChildren"]
      161 CALL                             R8 1 -1
      162 CALL                             R5 -1 1
      163 GETUPVAL                         R6 12
      164 MOVE                             R7 R5
      165 DUPCLOSURE                       R8 K36 [PROTO_1]
      166 CAPTURE                          UPVAL U13
      167 CAPTURE                          UPVAL U14
      168 CALL                             R6 2 1
      169 GETIMPORT                        R7 K39 [table.sort]
      171 MOVE                             R8 R6
      172 DUPCLOSURE                       R9 K40 [PROTO_2]
      173 CALL                             R7 2 0
      174 GETUPVAL                         R7 14
      175 LOADNIL                          R8
      176 LOADNIL                          R9
      177 FORGPREP                         R7
      178 GETUPVAL                         R12 15
      179 MOVE                             R13 R2
      180 GETUPVAL                         R14 10
      181 MOVE                             R16 R11
      182 NAMECALL                         R14 R14 K41 ["FindFirstChild"]
      184 CALL                             R14 2 -1
      185 CALL                             R12 -1 0
      186 FORGLOOP                         R7 2 ; [-9]
      188 MOVE                             R7 R6
      189 LOADNIL                          R8
      190 LOADNIL                          R9
      191 FORGPREP                         R7
      192 GETUPVAL                         R12 15
      193 MOVE                             R13 R2
      194 MOVE                             R14 R11
      195 CALL                             R12 2 0
      196 FORGLOOP                         R7 2 ; [-5]
      198 GETUPVAL                         R7 16
      199 LOADNIL                          R8
      200 LOADNIL                          R9
      201 FORGPREP                         R7
      202 GETTABLEKS                       R12 R2 K34 ["Design"]
      204 MOVE                             R14 R11
      205 GETTABLEKS                       R16 R2 K34 ["Design"]
      207 NAMECALL                         R16 R16 K42 ["GetStyleRules"]
      209 CALL                             R16 1 1
      210 LENGTH                           R15 R16
      211 NAMECALL                         R12 R12 K43 ["InsertStyleRule"]
      213 CALL                             R12 3 0
      214 FORGLOOP                         R7 2 ; [-13]
      216 LOADNIL                          R7
      217 JUMPIFEQKNIL                     R0 ; [+11]
      219 GETTABLEKS                       R8 R0 K44 ["ThemeChanged"]
      221 NEWCLOSURE                       R10 P2
      222 CAPTURE                          UPVAL U2
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R4
      225 NAMECALL                         R8 R8 K45 ["Connect"]
      227 CALL                             R8 2 1
      228 MOVE                             R7 R8
      229 GETUPVAL                         R10 1
      230 LOADN                            R11 4
      231 NAMECALL                         R8 R2 K33 ["SetAttribute"]
      233 CALL                             R8 3 0
      234 GETUPVAL                         R8 0
      235 SETTABLEKS                       R8 R2 K27 ["Parent"]
      237 MOVE                             R8 R2
      238 MOVE                             R9 R7
      239 RETURN                           R8 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["StylingService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K2 ["Parent"]
       17 GETTABLEKS                       R3 R3 K9 ["Dash"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K10 ["append"]
       22 GETTABLEKS                       R4 R2 K11 ["filter"]
       24 GETTABLEKS                       R5 R2 K12 ["includes"]
       26 GETIMPORT                        R6 K8 [require]
       28 GETTABLEKS                       R7 R0 K13 ["Style"]
       30 GETTABLEKS                       R7 R7 K14 ["StudioThemeFallback"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K8 [require]
       35 GETTABLEKS                       R8 R0 K15 ["Styling"]
       37 GETTABLEKS                       R8 R8 K16 ["createDesign"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K8 [require]
       42 GETTABLEKS                       R9 R0 K15 ["Styling"]
       44 GETTABLEKS                       R9 R9 K17 ["createStyleSheet"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R0 K18 ["UI"]
       49 GETTABLEKS                       R9 R9 K19 ["Components"]
       51 GETTABLEKS                       R10 R0 K18 ["UI"]
       53 GETTABLEKS                       R10 R10 K20 ["Hooks"]
       55 GETIMPORT                        R11 K8 [require]
       57 GETTABLEKS                       R12 R0 K15 ["Styling"]
       59 GETTABLEKS                       R12 R12 K21 ["StudioPalette"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K8 [require]
       64 GETTABLEKS                       R13 R0 K15 ["Styling"]
       66 GETTABLEKS                       R13 R13 K22 ["StudioMixins"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K8 [require]
       71 GETTABLEKS                       R14 R0 K15 ["Styling"]
       73 GETTABLEKS                       R14 R14 K23 ["LightThemeTokens"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K8 [require]
       78 GETTABLEKS                       R15 R0 K15 ["Styling"]
       80 GETTABLEKS                       R15 R15 K24 ["DarkThemeTokens"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K8 [require]
       85 GETTABLEKS                       R16 R0 K25 ["SharedFlags"]
       87 GETTABLEKS                       R16 R16 K26 ["getFFlagDevFrameworkDesignVersionRename"]
       89 CALL                             R15 1 1
       90 CALL                             R15 0 1
       91 GETIMPORT                        R16 K8 [require]
       93 GETTABLEKS                       R17 R0 K27 ["Util"]
       95 GETTABLEKS                       R17 R17 K28 ["getStudioSettings"]
       97 CALL                             R16 1 1
       98 NEWTABLE                         R17 0 3
      100 LOADK                            R18 K29 ["Image"]
      101 LOADK                            R19 K30 ["Pane"]
      102 LOADK                            R20 K31 ["TextLabel"]
      103 SETLIST                          R17 R18 3 [1]
      105 JUMPIFNOT                        R15 ; [+2]
      106 LOADK                            R18 K32 ["Version"]
      107 JUMP                             ; [+1]
      108 LOADK                            R18 K33 ["RBX_Version"]
      109 DUPCLOSURE                       R19 K34 [PROTO_0]
      110 DUPCLOSURE                       R20 K35 [PROTO_4]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R18
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R12
      128 RETURN                           R20 1
