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
        9 JUMPIFNOT                        R5 ; [+33]
       10 GETTABLEKS                       R5 R4 K3 ["Name"]
       12 LOADK                            R7 K4 ["^StudioDesign"]
       13 NAMECALL                         R5 R5 K5 ["match"]
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+26]
       17 GETUPVAL                         R7 1
       18 NAMECALL                         R5 R4 K6 ["GetAttribute"]
       20 CALL                             R5 2 1
       21 JUMPIFNOTEQKN                    R5 K7 [4] ; [+2]
       23 RETURN                           R4 1
       24 GETIMPORT                        R5 K9 [game]
       26 LOADK                            R7 K10 ["DebugDeveloperFrameworkSdk"]
       27 NAMECALL                         R5 R5 K11 ["GetFastFlag"]
       29 CALL                             R5 2 1
       30 JUMPIFNOT                        R5 ; [+12]
       31 GETIMPORT                        R5 K13 [warn]
       33 LOADK                            R6 K14 ["[DebugDeveloperFrameworkSdk] Found an outdated copy of Studio design. Please update plugin that created Version %*"]
       34 GETUPVAL                         R11 1
       35 NAMECALL                         R9 R4 K6 ["GetAttribute"]
       37 CALL                             R9 2 1
       38 ORK                              R8 R9 K15 [0]
       39 NAMECALL                         R6 R6 K16 ["format"]
       41 CALL                             R6 2 1
       42 CALL                             R5 1 0
       43 FORGLOOP                         R0 2 ; [-39]
       45 GETIMPORT                        R0 K9 [game]
       47 LOADK                            R2 K10 ["DebugDeveloperFrameworkSdk"]
       48 NAMECALL                         R0 R0 K11 ["GetFastFlag"]
       50 CALL                             R0 2 1
       51 JUMPIFNOT                        R0 ; [+16]
       52 GETIMPORT                        R0 K18 [script]
       54 LOADK                            R2 K19 ["Plugin"]
       55 NAMECALL                         R0 R0 K20 ["FindFirstAncestorWhichIsA"]
       57 CALL                             R0 2 1
       58 JUMPIFNOT                        R0 ; [+9]
       59 GETIMPORT                        R1 K22 [print]
       61 LOADK                            R2 K23 ["[DebugDeveloperFrameworkSdk] Plugin creating Studio design: %*"]
       62 GETTABLEKS                       R4 R0 K3 ["Name"]
       64 NAMECALL                         R2 R2 K16 ["format"]
       66 CALL                             R2 2 1
       67 CALL                             R1 1 0
       68 GETUPVAL                         R0 2
       69 CALL                             R0 0 1
       70 JUMPIFNOT                        R0 ; [+5]
       71 GETTABLEKS                       R1 R0 K24 ["Theme"]
       73 GETTABLEKS                       R1 R1 K3 ["Name"]
       75 JUMP                             ; [+1]
       76 GETUPVAL                         R1 3
       77 GETUPVAL                         R2 4
       78 LOADK                            R3 K25 ["StudioDesign-%*"]
       79 LOADN                            R5 4
       80 NAMECALL                         R3 R3 K16 ["format"]
       82 CALL                             R3 2 1
       83 CALL                             R2 1 1
       84 GETUPVAL                         R3 5
       85 LOADK                            R4 K26 ["Palette"]
       86 NEWTABLE                         R5 0 0
       88 GETUPVAL                         R6 6
       89 NEWTABLE                         R7 0 0
       91 CALL                             R3 4 1
       92 SETTABLEKS                       R2 R3 K27 ["Parent"]
       94 DUPTABLE                         R4 K30 [{"Light", "Dark"}]
       95 GETUPVAL                         R5 5
       96 LOADK                            R6 K28 ["Light"]
       97 NEWTABLE                         R7 0 0
       99 GETUPVAL                         R8 7
      100 NEWTABLE                         R9 0 1
      102 MOVE                             R10 R3
      103 SETLIST                          R9 R10 1 [1]
      105 CALL                             R5 4 1
      106 SETTABLEKS                       R5 R4 K28 ["Light"]
      108 GETUPVAL                         R5 5
      109 LOADK                            R6 K29 ["Dark"]
      110 NEWTABLE                         R7 0 0
      112 GETUPVAL                         R8 8
      113 NEWTABLE                         R9 0 1
      115 MOVE                             R10 R3
      116 SETLIST                          R9 R10 1 [1]
      118 CALL                             R5 4 1
      119 SETTABLEKS                       R5 R4 K29 ["Dark"]
      121 MOVE                             R5 R4
      122 LOADNIL                          R6
      123 LOADNIL                          R7
      124 FORGPREP                         R5
      125 GETTABLEKS                       R10 R2 K31 ["Themes"]
      127 SETTABLEKS                       R10 R9 K27 ["Parent"]
      129 LOADK                            R12 K32 ["StyleCategory"]
      130 LOADK                            R13 K24 ["Theme"]
      131 NAMECALL                         R10 R9 K33 ["SetAttribute"]
      133 CALL                             R10 3 0
      134 JUMPIFNOTEQ                      R8 R1 ; [+11]
      136 GETTABLEKS                       R10 R2 K34 ["Design"]
      138 NEWTABLE                         R12 0 1
      140 MOVE                             R13 R9
      141 SETLIST                          R12 R13 1 [1]
      143 NAMECALL                         R10 R10 K35 ["SetDerives"]
      145 CALL                             R10 2 0
      146 FORGLOOP                         R5 2 ; [-22]
      148 GETUPVAL                         R5 9
      149 NEWTABLE                         R6 0 0
      151 GETUPVAL                         R7 10
      152 NAMECALL                         R7 R7 K0 ["GetChildren"]
      154 CALL                             R7 1 1
      155 GETUPVAL                         R8 11
      156 NAMECALL                         R8 R8 K0 ["GetChildren"]
      158 CALL                             R8 1 -1
      159 CALL                             R5 -1 1
      160 GETUPVAL                         R6 12
      161 MOVE                             R7 R5
      162 DUPCLOSURE                       R8 K36 [PROTO_1]
      163 CAPTURE                          UPVAL U13
      164 CAPTURE                          UPVAL U14
      165 CALL                             R6 2 1
      166 GETIMPORT                        R7 K39 [table.sort]
      168 MOVE                             R8 R6
      169 DUPCLOSURE                       R9 K40 [PROTO_2]
      170 CALL                             R7 2 0
      171 GETUPVAL                         R7 14
      172 LOADNIL                          R8
      173 LOADNIL                          R9
      174 FORGPREP                         R7
      175 GETUPVAL                         R12 15
      176 MOVE                             R13 R2
      177 GETUPVAL                         R14 10
      178 MOVE                             R16 R11
      179 NAMECALL                         R14 R14 K41 ["FindFirstChild"]
      181 CALL                             R14 2 -1
      182 CALL                             R12 -1 0
      183 FORGLOOP                         R7 2 ; [-9]
      185 MOVE                             R7 R6
      186 LOADNIL                          R8
      187 LOADNIL                          R9
      188 FORGPREP                         R7
      189 GETUPVAL                         R12 15
      190 MOVE                             R13 R2
      191 MOVE                             R14 R11
      192 CALL                             R12 2 0
      193 FORGLOOP                         R7 2 ; [-5]
      195 GETUPVAL                         R7 16
      196 LOADNIL                          R8
      197 LOADNIL                          R9
      198 FORGPREP                         R7
      199 GETTABLEKS                       R12 R2 K34 ["Design"]
      201 MOVE                             R14 R11
      202 GETTABLEKS                       R16 R2 K34 ["Design"]
      204 NAMECALL                         R16 R16 K42 ["GetStyleRules"]
      206 CALL                             R16 1 1
      207 LENGTH                           R15 R16
      208 NAMECALL                         R12 R12 K43 ["InsertStyleRule"]
      210 CALL                             R12 3 0
      211 FORGLOOP                         R7 2 ; [-13]
      213 LOADNIL                          R7
      214 JUMPIFEQKNIL                     R0 ; [+11]
      216 GETTABLEKS                       R8 R0 K44 ["ThemeChanged"]
      218 NEWCLOSURE                       R10 P2
      219 CAPTURE                          UPVAL U2
      220 CAPTURE                          VAL R2
      221 CAPTURE                          VAL R4
      222 NAMECALL                         R8 R8 K45 ["Connect"]
      224 CALL                             R8 2 1
      225 MOVE                             R7 R8
      226 GETUPVAL                         R10 1
      227 LOADN                            R11 4
      228 NAMECALL                         R8 R2 K33 ["SetAttribute"]
      230 CALL                             R8 3 0
      231 GETUPVAL                         R8 0
      232 SETTABLEKS                       R8 R2 K27 ["Parent"]
      234 MOVE                             R8 R2
      235 MOVE                             R9 R7
      236 RETURN                           R8 2

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
