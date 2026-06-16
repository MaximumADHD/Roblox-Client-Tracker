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
        0 JUMPIF                           R1 ; [+5]
        1 LOADK                            R6 K0 ["Folder"]
        2 NAMECALL                         R4 R0 K1 ["FindFirstChildWhichIsA"]
        4 CALL                             R4 2 1
        5 MOVE                             R1 R4
        6 GETTABLEKS                       R4 R1 K2 ["Src"]
        8 GETTABLEKS                       R4 R4 K3 ["Resources"]
       10 LOADK                            R6 K4 ["PluginStylesDarkTheme"]
       11 NAMECALL                         R4 R4 K5 ["FindFirstChild"]
       13 CALL                             R4 2 1
       14 GETUPVAL                         R5 0
       15 MOVE                             R6 R3
       16 JUMPIF                           R6 ; [+2]
       17 NEWTABLE                         R6 0 0
       19 CALL                             R5 1 1
       20 JUMPIFNOT                        R4 ; [+8]
       21 GETUPVAL                         R8 1
       22 CALL                             R8 0 1
       23 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       25 MOVE                             R7 R5
       26 GETIMPORT                        R6 K8 [table.insert]
       28 CALL                             R6 2 0
       29 GETTABLEKS                       R6 R1 K9 ["Name"]
       31 GETUPVAL                         R7 2
       32 MOVE                             R9 R6
       33 NAMECALL                         R7 R7 K5 ["FindFirstChild"]
       35 CALL                             R7 2 1
       36 JUMPIFNOT                        R7 ; [+3]
       37 LOADNIL                          R8
       38 SETTABLEKS                       R8 R7 K10 ["Parent"]
       40 GETIMPORT                        R8 K13 [Instance.new]
       42 LOADK                            R9 K0 ["Folder"]
       43 CALL                             R8 1 1
       44 MOVE                             R7 R8
       45 SETTABLEKS                       R6 R7 K9 ["Name"]
       47 LOADNIL                          R8
       48 GETTABLEKS                       R9 R1 K2 ["Src"]
       50 GETTABLEKS                       R9 R9 K3 ["Resources"]
       52 LOADK                            R11 K14 ["PluginStyles"]
       53 NAMECALL                         R9 R9 K5 ["FindFirstChild"]
       55 CALL                             R9 2 1
       56 JUMPIFNOT                        R9 ; [+11]
       57 GETIMPORT                        R9 K16 [require]
       59 GETTABLEKS                       R10 R1 K2 ["Src"]
       61 GETTABLEKS                       R10 R10 K3 ["Resources"]
       63 GETTABLEKS                       R10 R10 K14 ["PluginStyles"]
       65 CALL                             R9 1 1
       66 MOVE                             R8 R9
       67 JUMP                             ; [+5]
       68 GETIMPORT                        R9 K13 [Instance.new]
       70 LOADK                            R10 K17 ["StyleSheet"]
       71 CALL                             R9 1 1
       72 MOVE                             R8 R9
       73 LOADK                            R9 K18 ["Design"]
       74 SETTABLEKS                       R9 R8 K9 ["Name"]
       76 SETTABLEKS                       R7 R8 K10 ["Parent"]
       78 GETTABLEKS                       R9 R1 K2 ["Src"]
       80 GETTABLEKS                       R9 R9 K19 ["Components"]
       82 NAMECALL                         R9 R9 K20 ["GetDescendants"]
       84 CALL                             R9 1 1
       85 MOVE                             R10 R9
       86 LOADNIL                          R11
       87 LOADNIL                          R12
       88 FORGPREP                         R10
       89 LOADK                            R17 K21 ["ModuleScript"]
       90 NAMECALL                         R15 R14 K22 ["IsA"]
       92 CALL                             R15 2 1
       93 JUMPIFNOT                        R15 ; [+15]
       94 GETTABLEKS                       R15 R14 K9 ["Name"]
       96 JUMPIFNOTEQKS                    R15 K23 ["styles"] ; [+12]
       98 GETIMPORT                        R17 K16 [require]
      100 MOVE                             R18 R14
      101 CALL                             R17 1 1
      102 NAMECALL                         R19 R8 K24 ["GetStyleRules"]
      104 CALL                             R19 1 1
      105 LENGTH                           R18 R19
      106 NAMECALL                         R15 R8 K25 ["InsertStyleRule"]
      108 CALL                             R15 3 0
      109 FORGLOOP                         R10 2 ; [-21]
      111 GETUPVAL                         R10 3
      112 CALL                             R10 0 1
      113 MOVE                             R11 R5
      114 LOADNIL                          R12
      115 LOADNIL                          R13
      116 FORGPREP                         R11
      117 GETTABLEKS                       R16 R15 K26 ["GetNames"]
      119 CALL                             R16 0 1
      120 MOVE                             R17 R16
      121 LOADNIL                          R18
      122 LOADNIL                          R19
      123 FORGPREP                         R17
      124 GETTABLEKS                       R22 R15 K27 ["GetStyleSheet"]
      126 JUMPIF                           R22 ; [+1]
      127 GETUPVAL                         R22 4
      128 MOVE                             R23 R22
      129 MOVE                             R24 R1
      130 MOVE                             R25 R21
      131 CALL                             R23 2 1
      132 JUMPIFNOT                        R23 ; [+11]
      133 NEWTABLE                         R26 0 1
      135 GETTABLEKS                       R27 R10 K18 ["Design"]
      137 SETLIST                          R26 R27 1 [1]
      139 NAMECALL                         R24 R23 K28 ["SetDerives"]
      141 CALL                             R24 2 0
      142 SETTABLEKS                       R7 R23 K10 ["Parent"]
      144 FORGLOOP                         R17 2 ; [-21]
      146 FORGLOOP                         R11 2 ; [-30]
      148 NEWCLOSURE                       R11 P0
      149 CAPTURE                          UPVAL U5
      150 CAPTURE                          VAL R5
      151 CAPTURE                          UPVAL U4
      152 CAPTURE                          REF R1
      153 CAPTURE                          VAL R10
      154 CAPTURE                          REF R8
      155 GETUPVAL                         R12 5
      156 MOVE                             R13 R5
      157 NEWCLOSURE                       R14 P1
      158 CAPTURE                          VAL R11
      159 CALL                             R12 2 1
      160 GETTABLEKS                       R13 R0 K29 ["Unloading"]
      162 NEWCLOSURE                       R15 P2
      163 CAPTURE                          VAL R12
      164 NAMECALL                         R13 R13 K30 ["Connect"]
      166 CALL                             R13 2 0
      167 JUMPIF                           R2 ; [+1]
      168 GETUPVAL                         R2 2
      169 SETTABLEKS                       R2 R7 K10 ["Parent"]
      171 GETUPVAL                         R13 5
      172 MOVE                             R14 R5
      173 NEWCLOSURE                       R15 P3
      174 CAPTURE                          UPVAL U4
      175 CAPTURE                          REF R1
      176 CALL                             R13 2 1
      177 GETTABLEKS                       R16 R10 K18 ["Design"]
      179 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
      181 MOVE                             R15 R13
      182 GETIMPORT                        R14 K8 [table.insert]
      184 CALL                             R14 2 0
      185 MOVE                             R16 R13
      186 NAMECALL                         R14 R8 K28 ["SetDerives"]
      188 CALL                             R14 2 0
      189 CLOSEUPVALS                      R1
      190 RETURN                           R8 1

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
