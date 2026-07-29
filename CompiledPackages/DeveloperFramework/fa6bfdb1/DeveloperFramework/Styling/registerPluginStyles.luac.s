PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["Theme"]
        5 GETTABLEKS                       R0 R0 K1 ["Name"]
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R0 1
        9 LOADK                            R2 K2 ["PluginStyles%*Theme"]
       10 MOVE                             R4 R0
       11 NAMECALL                         R2 R2 K3 ["format"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 2
        2 LOADK                            R1 K0 ["PluginStylesDarkTheme"]
        3 LOADK                            R2 K1 ["PluginStylesLightTheme"]
        4 SETLIST                          R0 R1 2 [1]
        6 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 DUPTABLE                         R1 K3 [{"GetCurrentName", "GetNames", "Changed"}]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R2 R1 K0 ["GetCurrentName"]
        8 DUPCLOSURE                       R2 K4 [PROTO_1]
        9 SETTABLEKS                       R2 R1 K1 ["GetNames"]
       11 JUMPIFNOT                        R0 ; [+3]
       12 GETTABLEKS                       R2 R0 K5 ["ThemeChanged"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K2 ["Changed"]
       18 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Src"]
        2 GETTABLEKS                       R2 R2 K1 ["Resources"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 LOADK                            R6 K3 ["Missing StyleSheet expected under Src/Resources: %*"]
        9 MOVE                             R8 R1
       10 NAMECALL                         R6 R6 K4 ["format"]
       12 CALL                             R6 2 1
       13 MOVE                             R5 R6
       14 FASTCALL2                        ASSERT R2 R5 ; [+4]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K6 [assert]
       19 CALL                             R3 2 0
       20 GETIMPORT                        R3 K8 [require]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 1
       24 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["GetStyleSheet"]
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R1 K1 ["GetCurrentName"]
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+5]
        8 MOVE                             R4 R2
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R3
       11 CALL                             R4 2 1
       12 RETURN                           R4 1
       13 LOADNIL                          R4
       14 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 2 1
        6 GETUPVAL                         R3 4
        7 GETTABLEKS                       R3 R3 K0 ["Design"]
        9 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K3 [table.insert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 5
       16 MOVE                             R3 R0
       17 NAMECALL                         R1 R1 K4 ["SetDerives"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["Changed"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R1 K0 ["Changed"]
        5 GETUPVAL                         R4 0
        6 NAMECALL                         R2 R2 K1 ["Connect"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_8:
        0 JUMPIF                           R1 ; [+31]
        1 GETIMPORT                        R4 K1 [game]
        3 LOADK                            R6 K2 ["GetPluginParentInternalFix"]
        4 LOADB                            R7 0
        5 NAMECALL                         R4 R4 K3 ["DefineFastFlag"]
        7 CALL                             R4 3 1
        8 JUMPIFNOT                        R4 ; [+18]
        9 LOADK                            R6 K4 ["Src"]
       10 LOADB                            R7 1
       11 NAMECALL                         R4 R0 K5 ["FindFirstChild"]
       13 CALL                             R4 3 1
       14 JUMPIFNOTEQKNIL                  R4 ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       20 LOADK                            R7 K6 ["Couldn't find root Src folder"]
       21 GETIMPORT                        R5 K8 [assert]
       23 CALL                             R5 2 0
       24 GETTABLEKS                       R1 R4 K9 ["Parent"]
       26 JUMP                             ; [+5]
       27 LOADK                            R6 K10 ["Folder"]
       28 NAMECALL                         R4 R0 K11 ["FindFirstChildWhichIsA"]
       30 CALL                             R4 2 1
       31 MOVE                             R1 R4
       32 GETTABLEKS                       R4 R1 K4 ["Src"]
       34 GETTABLEKS                       R4 R4 K12 ["Resources"]
       36 LOADK                            R6 K13 ["PluginStylesDarkTheme"]
       37 NAMECALL                         R4 R4 K5 ["FindFirstChild"]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 0
       41 MOVE                             R6 R3
       42 JUMPIF                           R6 ; [+2]
       43 NEWTABLE                         R6 0 0
       45 CALL                             R5 1 1
       46 JUMPIFNOT                        R4 ; [+8]
       47 GETUPVAL                         R8 1
       48 CALL                             R8 0 1
       49 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       51 MOVE                             R7 R5
       52 GETIMPORT                        R6 K16 [table.insert]
       54 CALL                             R6 2 0
       55 GETTABLEKS                       R6 R1 K17 ["Name"]
       57 GETUPVAL                         R7 2
       58 MOVE                             R9 R6
       59 NAMECALL                         R7 R7 K5 ["FindFirstChild"]
       61 CALL                             R7 2 1
       62 JUMPIFNOT                        R7 ; [+3]
       63 LOADNIL                          R8
       64 SETTABLEKS                       R8 R7 K9 ["Parent"]
       66 GETIMPORT                        R8 K20 [Instance.new]
       68 LOADK                            R9 K10 ["Folder"]
       69 CALL                             R8 1 1
       70 MOVE                             R7 R8
       71 SETTABLEKS                       R6 R7 K17 ["Name"]
       73 LOADNIL                          R8
       74 GETTABLEKS                       R9 R1 K4 ["Src"]
       76 GETTABLEKS                       R9 R9 K12 ["Resources"]
       78 LOADK                            R11 K21 ["PluginStyles"]
       79 NAMECALL                         R9 R9 K5 ["FindFirstChild"]
       81 CALL                             R9 2 1
       82 JUMPIFNOT                        R9 ; [+11]
       83 GETIMPORT                        R9 K23 [require]
       85 GETTABLEKS                       R10 R1 K4 ["Src"]
       87 GETTABLEKS                       R10 R10 K12 ["Resources"]
       89 GETTABLEKS                       R10 R10 K21 ["PluginStyles"]
       91 CALL                             R9 1 1
       92 MOVE                             R8 R9
       93 JUMP                             ; [+5]
       94 GETIMPORT                        R9 K20 [Instance.new]
       96 LOADK                            R10 K24 ["StyleSheet"]
       97 CALL                             R9 1 1
       98 MOVE                             R8 R9
       99 LOADK                            R9 K25 ["Design"]
      100 SETTABLEKS                       R9 R8 K17 ["Name"]
      102 SETTABLEKS                       R7 R8 K9 ["Parent"]
      104 GETTABLEKS                       R9 R1 K4 ["Src"]
      106 GETTABLEKS                       R9 R9 K26 ["Components"]
      108 NAMECALL                         R9 R9 K27 ["GetDescendants"]
      110 CALL                             R9 1 1
      111 MOVE                             R10 R9
      112 LOADNIL                          R11
      113 LOADNIL                          R12
      114 FORGPREP                         R10
      115 LOADK                            R17 K28 ["ModuleScript"]
      116 NAMECALL                         R15 R14 K29 ["IsA"]
      118 CALL                             R15 2 1
      119 JUMPIFNOT                        R15 ; [+15]
      120 GETTABLEKS                       R15 R14 K17 ["Name"]
      122 JUMPIFNOTEQKS                    R15 K30 ["styles"] ; [+12]
      124 GETIMPORT                        R17 K23 [require]
      126 MOVE                             R18 R14
      127 CALL                             R17 1 1
      128 NAMECALL                         R19 R8 K31 ["GetStyleRules"]
      130 CALL                             R19 1 1
      131 LENGTH                           R18 R19
      132 NAMECALL                         R15 R8 K32 ["InsertStyleRule"]
      134 CALL                             R15 3 0
      135 FORGLOOP                         R10 2 ; [-21]
      137 GETUPVAL                         R10 3
      138 CALL                             R10 0 1
      139 MOVE                             R11 R5
      140 LOADNIL                          R12
      141 LOADNIL                          R13
      142 FORGPREP                         R11
      143 GETTABLEKS                       R16 R15 K33 ["GetNames"]
      145 CALL                             R16 0 1
      146 MOVE                             R17 R16
      147 LOADNIL                          R18
      148 LOADNIL                          R19
      149 FORGPREP                         R17
      150 GETTABLEKS                       R22 R15 K34 ["GetStyleSheet"]
      152 JUMPIF                           R22 ; [+1]
      153 GETUPVAL                         R22 4
      154 MOVE                             R23 R22
      155 MOVE                             R24 R1
      156 MOVE                             R25 R21
      157 CALL                             R23 2 1
      158 JUMPIFNOT                        R23 ; [+11]
      159 NEWTABLE                         R26 0 1
      161 GETTABLEKS                       R27 R10 K25 ["Design"]
      163 SETLIST                          R26 R27 1 [1]
      165 NAMECALL                         R24 R23 K35 ["SetDerives"]
      167 CALL                             R24 2 0
      168 SETTABLEKS                       R7 R23 K9 ["Parent"]
      170 FORGLOOP                         R17 2 ; [-21]
      172 FORGLOOP                         R11 2 ; [-30]
      174 NEWCLOSURE                       R11 P0
      175 CAPTURE                          UPVAL U5
      176 CAPTURE                          VAL R5
      177 CAPTURE                          UPVAL U4
      178 CAPTURE                          REF R1
      179 CAPTURE                          VAL R10
      180 CAPTURE                          REF R8
      181 GETUPVAL                         R12 5
      182 MOVE                             R13 R5
      183 NEWCLOSURE                       R14 P1
      184 CAPTURE                          VAL R11
      185 CALL                             R12 2 1
      186 GETTABLEKS                       R13 R0 K36 ["Unloading"]
      188 NEWCLOSURE                       R15 P2
      189 CAPTURE                          VAL R12
      190 NAMECALL                         R13 R13 K37 ["Connect"]
      192 CALL                             R13 2 0
      193 JUMPIF                           R2 ; [+1]
      194 GETUPVAL                         R2 2
      195 SETTABLEKS                       R2 R7 K9 ["Parent"]
      197 GETUPVAL                         R13 5
      198 MOVE                             R14 R5
      199 NEWCLOSURE                       R15 P3
      200 CAPTURE                          UPVAL U4
      201 CAPTURE                          REF R1
      202 CALL                             R13 2 1
      203 GETTABLEKS                       R16 R10 K25 ["Design"]
      205 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
      207 MOVE                             R15 R13
      208 GETIMPORT                        R14 K16 [table.insert]
      210 CALL                             R14 2 0
      211 MOVE                             R16 R13
      212 NAMECALL                         R14 R8 K35 ["SetDerives"]
      214 CALL                             R14 2 0
      215 CLOSEUPVALS                      R1
      216 RETURN                           R8 1

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
       20 GETTABLEKS                       R3 R2 K10 ["collectArray"]
       22 GETTABLEKS                       R4 R2 K11 ["copy"]
       24 GETIMPORT                        R5 K8 [require]
       26 GETIMPORT                        R6 K1 [script]
       28 GETTABLEKS                       R6 R6 K2 ["Parent"]
       30 GETTABLEKS                       R6 R6 K12 ["createStudioDesign"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Util"]
       37 GETTABLEKS                       R7 R7 K14 ["getStudioSettings"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K8 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Style"]
       44 GETTABLEKS                       R8 R8 K16 ["StudioThemeFallback"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K17 [PROTO_2]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 DUPCLOSURE                       R9 K18 [PROTO_3]
       51 DUPCLOSURE                       R10 K19 [PROTO_8]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R3
       58 RETURN                           R10 1
