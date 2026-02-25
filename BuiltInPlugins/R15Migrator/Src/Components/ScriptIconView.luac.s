PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K1 ["ScriptStatus"]
        3 GETTABLEKS                       R3 R4 K2 ["Reverted"]
        5 GETTABLE                         R2 R0 R3
        6 ORK                              R1 R2 K0 [0]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K1 ["ScriptStatus"]
        3 GETTABLEKS                       R3 R4 K2 ["Complete"]
        5 GETTABLE                         R2 R0 R3
        6 ORK                              R1 R2 K0 [0]
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K1 ["ScriptStatus"]
        3 GETTABLEKS                       R3 R4 K2 ["Error"]
        5 GETTABLE                         R2 R0 R3
        6 ORK                              R1 R2 K0 [0]
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K1 ["ScriptStatus"]
        3 GETTABLEKS                       R3 R4 K2 ["VariableError"]
        5 GETTABLE                         R2 R0 R3
        6 ORK                              R1 R2 K0 [0]
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K1 ["ScriptStatus"]
        3 GETTABLEKS                       R3 R4 K2 ["Warning"]
        5 GETTABLE                         R2 R0 R3
        6 ORK                              R1 R2 K0 [0]
        7 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R6 R5 K1 ["Localization"]
        4 GETTABLEKS                       R7 R5 K2 ["Stylizer"]
        6 GETTABLEKS                       R8 R5 K3 ["AllowTooltips"]
        8 GETUPVAL                         R10 0
        9 GETTABLEKS                       R9 R10 K4 ["createElement"]
       11 GETUPVAL                         R10 1
       12 DUPTABLE                         R11 K9 [{"Image", "ImageColor3", "Size", "LayoutOrder"}]
       13 SETTABLEKS                       R1 R11 K5 ["Image"]
       15 SETTABLEKS                       R2 R11 K6 ["ImageColor3"]
       17 GETTABLEKS                       R12 R7 K10 ["StatusImageSize"]
       19 SETTABLEKS                       R12 R11 K7 ["Size"]
       21 SETTABLEKS                       R4 R11 K8 ["LayoutOrder"]
       23 DUPTABLE                         R12 K12 [{"Tooltip"}]
       24 JUMPIFNOT                        R8 ; [+14]
       25 GETUPVAL                         R14 0
       26 GETTABLEKS                       R13 R14 K4 ["createElement"]
       28 GETUPVAL                         R14 2
       29 DUPTABLE                         R15 K14 [{"Text"}]
       30 LOADK                            R18 K15 ["ScriptStatus"]
       31 MOVE                             R19 R3
       32 NAMECALL                         R16 R6 K16 ["getText"]
       34 CALL                             R16 3 1
       35 SETTABLEKS                       R16 R15 K13 ["Text"]
       37 CALL                             R13 2 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R13
       40 SETTABLEKS                       R13 R12 K11 ["Tooltip"]
       42 CALL                             R9 3 -1
       43 RETURN                           R9 -1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Stylizer"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["createElement"]
        7 GETUPVAL                         R6 1
        8 DUPTABLE                         R7 K7 [{"Text", "AutomaticSize", "LayoutOrder", "TextSize"}]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R9 R1
       11 GETIMPORT                        R8 K9 [tostring]
       13 CALL                             R8 1 1
       14 SETTABLEKS                       R8 R7 K3 ["Text"]
       16 GETIMPORT                        R8 K12 [Enum.AutomaticSize.XY]
       18 SETTABLEKS                       R8 R7 K4 ["AutomaticSize"]
       20 SETTABLEKS                       R2 R7 K5 ["LayoutOrder"]
       22 GETTABLEKS                       R8 R4 K13 ["CountTextSize"]
       24 SETTABLEKS                       R8 R7 K6 ["TextSize"]
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R3 R1 K2 ["Statuses"]
        6 GETTABLEKS                       R4 R1 K3 ["ShowCounts"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETUPVAL                         R10 0
       11 GETTABLEKS                       R9 R10 K6 ["ScriptStatus"]
       13 GETTABLEKS                       R8 R9 K7 ["Error"]
       15 GETTABLE                         R7 R3 R8
       16 ORK                              R6 R7 K5 [0]
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R10 R11 K6 ["ScriptStatus"]
       20 GETTABLEKS                       R9 R10 K8 ["VariableError"]
       22 GETTABLE                         R8 R3 R9
       23 ORK                              R7 R8 K5 [0]
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R11 R12 K6 ["ScriptStatus"]
       27 GETTABLEKS                       R10 R11 K9 ["Warning"]
       29 GETTABLE                         R9 R3 R10
       30 ORK                              R8 R9 K5 [0]
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R12 R13 K6 ["ScriptStatus"]
       34 GETTABLEKS                       R11 R12 K10 ["Complete"]
       36 GETTABLE                         R10 R3 R11
       37 ORK                              R9 R10 K5 [0]
       38 GETUPVAL                         R14 0
       39 GETTABLEKS                       R13 R14 K6 ["ScriptStatus"]
       41 GETTABLEKS                       R12 R13 K11 ["Reverted"]
       43 GETTABLE                         R11 R3 R12
       44 ORK                              R10 R11 K5 [0]
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R11 R12 K12 ["new"]
       48 CALL                             R11 0 1
       49 GETUPVAL                         R13 2
       50 GETTABLEKS                       R12 R13 K13 ["createElement"]
       52 GETUPVAL                         R13 3
       53 DUPTABLE                         R14 K18 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Size"}]
       54 GETIMPORT                        R15 K22 [Enum.FillDirection.Horizontal]
       56 SETTABLEKS                       R15 R14 K14 ["Layout"]
       58 GETIMPORT                        R15 K24 [Enum.HorizontalAlignment.Left]
       60 SETTABLEKS                       R15 R14 K15 ["HorizontalAlignment"]
       62 GETIMPORT                        R15 K26 [Enum.VerticalAlignment.Center]
       64 SETTABLEKS                       R15 R14 K16 ["VerticalAlignment"]
       66 GETTABLEKS                       R15 R5 K17 ["Spacing"]
       68 SETTABLEKS                       R15 R14 K17 ["Spacing"]
       70 SETTABLEKS                       R2 R14 K1 ["Size"]
       72 DUPTABLE                         R15 K37 [{"CompleteIcon", "CompleteCount", "ErrorIcon", "ErrorCount", "VarErrorIcon", "VarErrorCount", "WarningIcon", "WarningCount", "RevertedIcon", "RevertedCount"}]
       73 LOADN                            R17 0
       74 JUMPIFNOTLT                      R17 R9 ; [+18]
       76 GETTABLEKS                       R19 R5 K38 ["StatusIcons"]
       78 GETTABLEKS                       R18 R19 K10 ["Complete"]
       80 LOADNIL                          R19
       81 GETUPVAL                         R22 0
       82 GETTABLEKS                       R21 R22 K6 ["ScriptStatus"]
       84 GETTABLEKS                       R20 R21 K10 ["Complete"]
       86 NAMECALL                         R21 R11 K39 ["getNextOrder"]
       88 CALL                             R21 1 -1
       89 NAMECALL                         R16 R0 K40 ["renderIcon"]
       91 CALL                             R16 -1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R16
       94 SETTABLEKS                       R16 R15 K27 ["CompleteIcon"]
       96 JUMPIFNOT                        R4 ; [+11]
       97 LOADN                            R17 1
       98 JUMPIFNOTLT                      R17 R9 ; [+9]
      100 MOVE                             R18 R9
      101 NAMECALL                         R19 R11 K39 ["getNextOrder"]
      103 CALL                             R19 1 -1
      104 NAMECALL                         R16 R0 K41 ["renderCount"]
      106 CALL                             R16 -1 1
      107 JUMP                             ; [+1]
      108 LOADNIL                          R16
      109 SETTABLEKS                       R16 R15 K28 ["CompleteCount"]
      111 LOADN                            R17 0
      112 JUMPIFNOTLT                      R17 R6 ; [+18]
      114 GETTABLEKS                       R19 R5 K38 ["StatusIcons"]
      116 GETTABLEKS                       R18 R19 K7 ["Error"]
      118 LOADNIL                          R19
      119 GETUPVAL                         R22 0
      120 GETTABLEKS                       R21 R22 K6 ["ScriptStatus"]
      122 GETTABLEKS                       R20 R21 K7 ["Error"]
      124 NAMECALL                         R21 R11 K39 ["getNextOrder"]
      126 CALL                             R21 1 -1
      127 NAMECALL                         R16 R0 K40 ["renderIcon"]
      129 CALL                             R16 -1 1
      130 JUMP                             ; [+1]
      131 LOADNIL                          R16
      132 SETTABLEKS                       R16 R15 K29 ["ErrorIcon"]
      134 JUMPIFNOT                        R4 ; [+11]
      135 LOADN                            R17 0
      136 JUMPIFNOTLT                      R17 R6 ; [+9]
      138 MOVE                             R18 R6
      139 NAMECALL                         R19 R11 K39 ["getNextOrder"]
      141 CALL                             R19 1 -1
      142 NAMECALL                         R16 R0 K41 ["renderCount"]
      144 CALL                             R16 -1 1
      145 JUMP                             ; [+1]
      146 LOADNIL                          R16
      147 SETTABLEKS                       R16 R15 K30 ["ErrorCount"]
      149 LOADN                            R17 0
      150 JUMPIFNOTLT                      R17 R7 ; [+18]
      152 GETTABLEKS                       R19 R5 K38 ["StatusIcons"]
      154 GETTABLEKS                       R18 R19 K8 ["VariableError"]
      156 LOADNIL                          R19
      157 GETUPVAL                         R22 0
      158 GETTABLEKS                       R21 R22 K6 ["ScriptStatus"]
      160 GETTABLEKS                       R20 R21 K8 ["VariableError"]
      162 NAMECALL                         R21 R11 K39 ["getNextOrder"]
      164 CALL                             R21 1 -1
      165 NAMECALL                         R16 R0 K40 ["renderIcon"]
      167 CALL                             R16 -1 1
      168 JUMP                             ; [+1]
      169 LOADNIL                          R16
      170 SETTABLEKS                       R16 R15 K31 ["VarErrorIcon"]
      172 JUMPIFNOT                        R4 ; [+11]
      173 LOADN                            R17 0
      174 JUMPIFNOTLT                      R17 R7 ; [+9]
      176 MOVE                             R18 R7
      177 NAMECALL                         R19 R11 K39 ["getNextOrder"]
      179 CALL                             R19 1 -1
      180 NAMECALL                         R16 R0 K41 ["renderCount"]
      182 CALL                             R16 -1 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R16
      185 SETTABLEKS                       R16 R15 K32 ["VarErrorCount"]
      187 LOADN                            R17 0
      188 JUMPIFNOTLT                      R17 R8 ; [+18]
      190 GETTABLEKS                       R19 R5 K38 ["StatusIcons"]
      192 GETTABLEKS                       R18 R19 K9 ["Warning"]
      194 LOADNIL                          R19
      195 GETUPVAL                         R22 0
      196 GETTABLEKS                       R21 R22 K6 ["ScriptStatus"]
      198 GETTABLEKS                       R20 R21 K9 ["Warning"]
      200 NAMECALL                         R21 R11 K39 ["getNextOrder"]
      202 CALL                             R21 1 -1
      203 NAMECALL                         R16 R0 K40 ["renderIcon"]
      205 CALL                             R16 -1 1
      206 JUMP                             ; [+1]
      207 LOADNIL                          R16
      208 SETTABLEKS                       R16 R15 K33 ["WarningIcon"]
      210 JUMPIFNOT                        R4 ; [+11]
      211 LOADN                            R17 0
      212 JUMPIFNOTLT                      R17 R8 ; [+9]
      214 MOVE                             R18 R8
      215 NAMECALL                         R19 R11 K39 ["getNextOrder"]
      217 CALL                             R19 1 -1
      218 NAMECALL                         R16 R0 K41 ["renderCount"]
      220 CALL                             R16 -1 1
      221 JUMP                             ; [+1]
      222 LOADNIL                          R16
      223 SETTABLEKS                       R16 R15 K34 ["WarningCount"]
      225 LOADN                            R17 0
      226 JUMPIFNOTLT                      R17 R10 ; [+19]
      228 GETTABLEKS                       R19 R5 K38 ["StatusIcons"]
      230 GETTABLEKS                       R18 R19 K11 ["Reverted"]
      232 GETTABLEKS                       R19 R5 K42 ["RevertedIconColor"]
      234 GETUPVAL                         R22 0
      235 GETTABLEKS                       R21 R22 K6 ["ScriptStatus"]
      237 GETTABLEKS                       R20 R21 K11 ["Reverted"]
      239 NAMECALL                         R21 R11 K39 ["getNextOrder"]
      241 CALL                             R21 1 -1
      242 NAMECALL                         R16 R0 K40 ["renderIcon"]
      244 CALL                             R16 -1 1
      245 JUMP                             ; [+1]
      246 LOADNIL                          R16
      247 SETTABLEKS                       R16 R15 K35 ["RevertedIcon"]
      249 JUMPIFNOT                        R4 ; [+11]
      250 LOADN                            R17 1
      251 JUMPIFNOTLT                      R17 R10 ; [+9]
      253 MOVE                             R18 R10
      254 NAMECALL                         R19 R11 K39 ["getNextOrder"]
      256 CALL                             R19 1 -1
      257 NAMECALL                         R16 R0 K41 ["renderCount"]
      259 CALL                             R16 -1 1
      260 JUMP                             ; [+1]
      261 LOADNIL                          R16
      262 SETTABLEKS                       R16 R15 K36 ["RevertedCount"]
      264 CALL                             R12 3 -1
      265 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R8 R0 K10 ["Src"]
       27 GETTABLEKS                       R7 R8 K11 ["Util"]
       29 GETTABLEKS                       R6 R7 K12 ["ScriptAnalysis"]
       31 GETTABLEKS                       R5 R6 K13 ["Constants"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R2 K14 ["UI"]
       36 GETTABLEKS                       R6 R5 K15 ["Image"]
       38 GETTABLEKS                       R7 R5 K16 ["TextLabel"]
       40 GETTABLEKS                       R8 R5 K17 ["Pane"]
       42 GETTABLEKS                       R9 R5 K18 ["Tooltip"]
       44 GETTABLEKS                       R10 R2 K11 ["Util"]
       46 GETTABLEKS                       R11 R10 K19 ["LayoutOrderIterator"]
       48 GETTABLEKS                       R12 R1 K20 ["PureComponent"]
       50 LOADK                            R14 K21 ["ScriptIconView"]
       51 NAMECALL                         R12 R12 K22 ["extend"]
       53 CALL                             R12 2 1
       54 DUPTABLE                         R13 K24 [{"AllowTooltips"}]
       55 LOADB                            R14 1
       56 SETTABLEKS                       R14 R13 K23 ["AllowTooltips"]
       58 SETTABLEKS                       R13 R12 K25 ["defaultProps"]
       60 DUPCLOSURE                       R13 K26 [PROTO_0]
       61 CAPTURE                          VAL R4
       62 DUPCLOSURE                       R14 K27 [PROTO_1]
       63 CAPTURE                          VAL R4
       64 DUPCLOSURE                       R15 K28 [PROTO_2]
       65 CAPTURE                          VAL R4
       66 DUPCLOSURE                       R16 K29 [PROTO_3]
       67 CAPTURE                          VAL R4
       68 DUPCLOSURE                       R17 K30 [PROTO_4]
       69 CAPTURE                          VAL R4
       70 DUPCLOSURE                       R18 K31 [PROTO_5]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R9
       74 SETTABLEKS                       R18 R12 K32 ["renderIcon"]
       76 DUPCLOSURE                       R18 K33 [PROTO_6]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R18 R12 K34 ["renderCount"]
       81 DUPCLOSURE                       R18 K35 [PROTO_7]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R8
       86 SETTABLEKS                       R18 R12 K36 ["render"]
       88 GETTABLEKS                       R18 R3 K37 ["withContext"]
       90 DUPTABLE                         R19 K40 [{"Stylizer", "Localization"}]
       91 GETTABLEKS                       R20 R3 K38 ["Stylizer"]
       93 SETTABLEKS                       R20 R19 K38 ["Stylizer"]
       95 GETTABLEKS                       R20 R3 K39 ["Localization"]
       97 SETTABLEKS                       R20 R19 K39 ["Localization"]
       99 CALL                             R18 1 1
      100 MOVE                             R19 R12
      101 CALL                             R18 1 1
      102 MOVE                             R12 R18
      103 RETURN                           R12 1
