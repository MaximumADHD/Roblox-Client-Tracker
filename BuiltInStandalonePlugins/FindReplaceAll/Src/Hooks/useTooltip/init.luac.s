PROTO_0:
        0 LOADK                            R1 K0 [""]
        1 GETIMPORT                        R2 K2 [ipairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_INEXT                   R2
        6 LOADN                            R7 1
        7 JUMPIFNOTLT                      R7 R5 ; [+4]
        9 MOVE                             R7 R1
       10 LOADK                            R8 K3 [", "]
       11 CONCAT                           R1 R7 R8
       12 MOVE                             R7 R1
       13 MOVE                             R8 R6
       14 CONCAT                           R1 R7 R8
       15 FORGLOOP                         R2 2 [inext] ; [-10]
       17 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R4 0
        1 GETTABLEKS                       R5 R1 K0 ["current"]
        3 JUMPIFNOT                        R5 ; [+6]
        4 GETTABLEKS                       R5 R1 K0 ["current"]
        6 GETTABLEKS                       R5 R5 K1 ["AbsoluteSize"]
        8 GETTABLEKS                       R4 R5 K2 ["X"]
       10 GETTABLEKS                       R5 R2 K0 ["current"]
       12 JUMPIFNOT                        R5 ; [+13]
       13 GETTABLEKS                       R7 R2 K0 ["current"]
       15 GETTABLEKS                       R7 R7 K1 ["AbsoluteSize"]
       17 GETTABLEKS                       R7 R7 K2 ["X"]
       19 FASTCALL2                        MATH_MAX R4 R7 ; [+4]
       21 MOVE                             R6 R4
       22 GETIMPORT                        R5 K5 [math.max]
       24 CALL                             R5 2 1
       25 MOVE                             R4 R5
       26 JUMPIFNOT                        R3 ; [+1]
       27 ADDK                             R4 R4 K6 [24]
       28 GETIMPORT                        R5 K9 [Vector2.new]
       30 GETTABLEKS                       R9 R0 K2 ["X"]
       32 FASTCALL2                        MATH_MIN R9 R4 ; [+4]
       34 MOVE                             R10 R4
       35 GETIMPORT                        R8 K13 [math.min]
       37 CALL                             R8 2 1
       38 ADDK                             R7 R8 K11 [12]
       39 ADDK                             R6 R7 K10 [6]
       40 GETTABLEKS                       R8 R0 K14 ["Y"]
       42 ADDK                             R7 R8 K10 [6]
       43 CALL                             R5 2 -1
       44 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+64]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K2 ["Icon"]
       14 JUMPIFNOTEQKNIL                  R5 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 LOADN                            R5 0
       19 GETTABLEKS                       R6 R2 K0 ["current"]
       21 JUMPIFNOT                        R6 ; [+6]
       22 GETTABLEKS                       R6 R2 K0 ["current"]
       24 GETTABLEKS                       R6 R6 K1 ["AbsoluteSize"]
       26 GETTABLEKS                       R5 R6 K3 ["X"]
       28 GETTABLEKS                       R6 R3 K0 ["current"]
       30 JUMPIFNOT                        R6 ; [+13]
       31 GETTABLEKS                       R8 R3 K0 ["current"]
       33 GETTABLEKS                       R8 R8 K1 ["AbsoluteSize"]
       35 GETTABLEKS                       R8 R8 K3 ["X"]
       37 FASTCALL2                        MATH_MAX R5 R8 ; [+4]
       39 MOVE                             R7 R5
       40 GETIMPORT                        R6 K6 [math.max]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 JUMPIFNOT                        R4 ; [+1]
       45 ADDK                             R5 R5 K7 [24]
       46 GETIMPORT                        R6 K10 [Vector2.new]
       48 GETTABLEKS                       R10 R1 K3 ["X"]
       50 FASTCALL2                        MATH_MIN R10 R5 ; [+4]
       52 MOVE                             R11 R5
       53 GETIMPORT                        R9 K14 [math.min]
       55 CALL                             R9 2 1
       56 ADDK                             R8 R9 K12 [12]
       57 ADDK                             R7 R8 K11 [6]
       58 GETTABLEKS                       R9 R1 K15 ["Y"]
       60 ADDK                             R8 R9 K11 [6]
       61 CALL                             R6 2 1
       62 MOVE                             R0 R6
       63 GETUPVAL                         R1 3
       64 GETTABLEKS                       R1 R1 K16 ["OnResize"]
       66 MOVE                             R2 R0
       67 CALL                             R1 1 0
       68 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R6 R6 K1 ["Icon"]
        7 JUMPIFNOTEQKNIL                  R6 ; [+2]
        9 LOADB                            R5 0 +1
       10 LOADB                            R5 1
       11 LOADN                            R6 0
       12 GETTABLEKS                       R7 R3 K2 ["current"]
       14 JUMPIFNOT                        R7 ; [+6]
       15 GETTABLEKS                       R7 R3 K2 ["current"]
       17 GETTABLEKS                       R7 R7 K0 ["AbsoluteSize"]
       19 GETTABLEKS                       R6 R7 K3 ["X"]
       21 GETTABLEKS                       R7 R4 K2 ["current"]
       23 JUMPIFNOT                        R7 ; [+13]
       24 GETTABLEKS                       R9 R4 K2 ["current"]
       26 GETTABLEKS                       R9 R9 K0 ["AbsoluteSize"]
       28 GETTABLEKS                       R9 R9 K3 ["X"]
       30 FASTCALL2                        MATH_MAX R6 R9 ; [+4]
       32 MOVE                             R8 R6
       33 GETIMPORT                        R7 K6 [math.max]
       35 CALL                             R7 2 1
       36 MOVE                             R6 R7
       37 JUMPIFNOT                        R5 ; [+1]
       38 ADDK                             R6 R6 K7 [24]
       39 GETIMPORT                        R7 K10 [Vector2.new]
       41 GETTABLEKS                       R11 R2 K3 ["X"]
       43 FASTCALL2                        MATH_MIN R11 R6 ; [+4]
       45 MOVE                             R12 R6
       46 GETIMPORT                        R10 K14 [math.min]
       48 CALL                             R10 2 1
       49 ADDK                             R9 R10 K12 [12]
       50 ADDK                             R8 R9 K11 [6]
       51 GETTABLEKS                       R10 R2 K15 ["Y"]
       53 ADDK                             R9 R10 K11 [6]
       54 CALL                             R7 2 1
       55 MOVE                             R1 R7
       56 GETUPVAL                         R2 2
       57 GETTABLEKS                       R2 R2 K16 ["OnResize"]
       59 MOVE                             R3 R1
       60 CALL                             R2 1 0
       61 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 0
        7 LOADNIL                          R4
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 1
       10 CALL                             R4 0 1
       11 GETUPVAL                         R5 2
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R7 0 3
       19 GETTABLEKS                       R8 R0 K0 ["Title"]
       21 GETTABLEKS                       R9 R0 K1 ["Text"]
       23 GETTABLEKS                       R10 R0 K2 ["Icon"]
       25 SETLIST                          R7 R8 3 [1]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K3 ["createElement"]
       31 LOADK                            R6 K4 ["Frame"]
       32 NEWTABLE                         R7 4 0
       34 SETTABLEKS                       R1 R7 K5 ["ref"]
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K6 ["Change"]
       39 GETTABLEKS                       R8 R8 K7 ["AbsoluteSize"]
       41 NEWCLOSURE                       R9 P1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R0
       45 SETTABLE                         R9 R7 R8
       46 GETUPVAL                         R8 3
       47 GETTABLEKS                       R8 R8 K8 ["Tag"]
       49 LOADK                            R9 K9 ["Role-Surface X-PadTooltip X-RowSpace50 X-FitY X-Middle"]
       50 SETTABLE                         R9 R7 R8
       51 GETIMPORT                        R8 K12 [UDim2.new]
       53 LOADN                            R9 0
       54 LOADN                            R10 1000
       55 LOADN                            R11 0
       56 LOADN                            R12 0
       57 CALL                             R8 4 1
       58 SETTABLEKS                       R8 R7 K13 ["Size"]
       60 DUPTABLE                         R8 K15 [{"Icon", "Content"}]
       61 GETTABLEKS                       R10 R0 K2 ["Icon"]
       63 JUMPIFNOT                        R10 ; [+22]
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R9 R9 K3 ["createElement"]
       67 LOADK                            R10 K16 ["ImageLabel"]
       68 DUPTABLE                         R11 K21 [{["Image"], ["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
       69 GETTABLEKS                       R12 R0 K2 ["Icon"]
       71 SETTABLEKS                       R12 R11 K17 ["Image"]
       73 GETIMPORT                        R12 K23 [UDim2.fromOffset]
       75 LOADN                            R13 24
       76 LOADN                            R14 24
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K13 ["Size"]
       80 MOVE                             R12 R4
       81 CALL                             R12 0 1
       82 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
       84 CALL                             R9 2 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R9
       87 SETTABLEKS                       R9 R8 K2 ["Icon"]
       89 GETUPVAL                         R9 3
       90 GETTABLEKS                       R9 R9 K3 ["createElement"]
       92 LOADK                            R10 K4 ["Frame"]
       93 NEWTABLE                         R11 2 0
       95 MOVE                             R12 R4
       96 CALL                             R12 0 1
       97 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
       99 GETUPVAL                         R12 3
      100 GETTABLEKS                       R12 R12 K8 ["Tag"]
      102 LOADK                            R13 K24 ["Role-Surface X-Fit X-ColumnSpace25"]
      103 SETTABLE                         R13 R11 R12
      104 DUPTABLE                         R12 K26 [{"TitleFrame", "Text"}]
      105 GETUPVAL                         R13 3
      106 GETTABLEKS                       R13 R13 K3 ["createElement"]
      108 LOADK                            R14 K4 ["Frame"]
      109 NEWTABLE                         R15 4 0
      111 SETTABLEKS                       R3 R15 K5 ["ref"]
      113 MOVE                             R16 R4
      114 CALL                             R16 0 1
      115 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      117 GETUPVAL                         R16 3
      118 GETTABLEKS                       R16 R16 K8 ["Tag"]
      120 LOADK                            R17 K27 ["Role-Surface X-Fit X-RowSpace50"]
      121 SETTABLE                         R17 R15 R16
      122 DUPTABLE                         R16 K29 [{"Title", "Shortcuts"}]
      123 GETTABLEKS                       R18 R0 K0 ["Title"]
      125 JUMPIFNOT                        R18 ; [+21]
      126 GETUPVAL                         R17 3
      127 GETTABLEKS                       R17 R17 K3 ["createElement"]
      129 LOADK                            R18 K30 ["TextLabel"]
      130 NEWTABLE                         R19 4 0
      132 MOVE                             R20 R4
      133 CALL                             R20 0 1
      134 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      136 GETTABLEKS                       R20 R0 K0 ["Title"]
      138 SETTABLEKS                       R20 R19 K1 ["Text"]
      140 GETUPVAL                         R20 3
      141 GETTABLEKS                       R20 R20 K8 ["Tag"]
      143 LOADK                            R21 K31 ["X-Fit Text-Title"]
      144 SETTABLE                         R21 R19 R20
      145 CALL                             R17 2 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R17
      148 SETTABLEKS                       R17 R16 K0 ["Title"]
      150 GETTABLEKS                       R18 R0 K28 ["Shortcuts"]
      152 JUMPIFNOT                        R18 ; [+39]
      153 GETUPVAL                         R17 3
      154 GETTABLEKS                       R17 R17 K3 ["createElement"]
      156 LOADK                            R18 K30 ["TextLabel"]
      157 NEWTABLE                         R19 4 0
      159 MOVE                             R20 R4
      160 CALL                             R20 0 1
      161 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      163 GETTABLEKS                       R21 R0 K28 ["Shortcuts"]
      165 LOADK                            R22 K32 [""]
      166 GETIMPORT                        R23 K34 [ipairs]
      168 MOVE                             R24 R21
      169 CALL                             R23 1 3
      170 FORGPREP_INEXT                   R23
      171 LOADN                            R28 1
      172 JUMPIFNOTLT                      R28 R26 ; [+4]
      174 MOVE                             R28 R22
      175 LOADK                            R29 K35 [", "]
      176 CONCAT                           R22 R28 R29
      177 MOVE                             R28 R22
      178 MOVE                             R29 R27
      179 CONCAT                           R22 R28 R29
      180 FORGLOOP                         R23 2 [inext] ; [-10]
      182 MOVE                             R20 R22
      183 SETTABLEKS                       R20 R19 K1 ["Text"]
      185 GETUPVAL                         R20 3
      186 GETTABLEKS                       R20 R20 K8 ["Tag"]
      188 LOADK                            R21 K36 ["X-Fit Text-Label"]
      189 SETTABLE                         R21 R19 R20
      190 CALL                             R17 2 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R17
      193 SETTABLEKS                       R17 R16 K28 ["Shortcuts"]
      195 CALL                             R13 3 1
      196 SETTABLEKS                       R13 R12 K25 ["TitleFrame"]
      198 GETTABLEKS                       R14 R0 K1 ["Text"]
      200 JUMPIFNOT                        R14 ; [+26]
      201 GETUPVAL                         R13 3
      202 GETTABLEKS                       R13 R13 K3 ["createElement"]
      204 LOADK                            R14 K30 ["TextLabel"]
      205 NEWTABLE                         R15 8 0
      207 SETTABLEKS                       R2 R15 K5 ["ref"]
      209 MOVE                             R16 R4
      210 CALL                             R16 0 1
      211 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      213 GETTABLEKS                       R16 R0 K1 ["Text"]
      215 SETTABLEKS                       R16 R15 K1 ["Text"]
      217 LOADB                            R16 1
      218 SETTABLEKS                       R16 R15 K37 ["RichText"]
      220 GETUPVAL                         R16 3
      221 GETTABLEKS                       R16 R16 K8 ["Tag"]
      223 LOADK                            R17 K38 ["Text-Label X-Fit TooltipTextBounds FindReplaceAll-Text-Size-12"]
      224 SETTABLE                         R17 R15 R16
      225 CALL                             R13 2 1
      226 JUMP                             ; [+1]
      227 LOADNIL                          R13
      228 SETTABLEKS                       R13 R12 K1 ["Text"]
      230 CALL                             R9 3 1
      231 SETTABLEKS                       R9 R8 K14 ["Content"]
      233 CALL                             R5 3 1
      234 GETUPVAL                         R6 3
      235 GETTABLEKS                       R6 R6 K3 ["createElement"]
      237 LOADK                            R7 K4 ["Frame"]
      238 NEWTABLE                         R8 1 0
      240 GETUPVAL                         R9 3
      241 GETTABLEKS                       R9 R9 K8 ["Tag"]
      243 LOADK                            R10 K39 ["Component-useTooltip Role-Tooltip X-Fill"]
      244 SETTABLE                         R10 R8 R9
      245 DUPTABLE                         R9 K42 [{"Wrapper", "StyleLink"}]
      246 SETTABLEKS                       R5 R9 K40 ["Wrapper"]
      248 GETUPVAL                         R10 3
      249 GETTABLEKS                       R10 R10 K3 ["createElement"]
      251 LOADK                            R11 K41 ["StyleLink"]
      252 DUPTABLE                         R12 K44 [{"StyleSheet"}]
      253 GETTABLEKS                       R13 R0 K45 ["Design"]
      255 SETTABLEKS                       R13 R12 K43 ["StyleSheet"]
      257 CALL                             R10 2 1
      258 SETTABLEKS                       R10 R9 K41 ["StyleLink"]
      260 CALL                             R6 3 -1
      261 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETIMPORT                        R1 K2 [task.wait]
        4 CALL                             R1 0 0
        5 JUMPBACK                         ; [-6]
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+2]
        8 GETUPVAL                         R1 1
        9 RETURN                           R1 1
       10 LOADB                            R1 1
       11 SETUPVAL                         R1 0
       12 LOADK                            R3 K3 ["Tooltip"]
       13 DUPTABLE                         R4 K13 [{["Id"] = "Tooltip", ["InitialEnabled"] = False, ["MinSize"], ["Modal"] = False, ["Tooltip"] = True, ["Resizable"] = True, ["Size"], ["Title"] = "Tooltip"}]
       14 GETIMPORT                        R5 K16 [Vector2.new]
       16 LOADN                            R6 50
       17 LOADN                            R7 50
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K7 ["MinSize"]
       21 GETIMPORT                        R5 K16 [Vector2.new]
       23 LOADN                            R6 220
       24 LOADN                            R7 224
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K11 ["Size"]
       28 NAMECALL                         R1 R0 K17 ["CreateQWidgetPluginGui"]
       30 CALL                             R1 3 1
       31 SETUPVAL                         R1 1
       32 GETUPVAL                         R1 1
       33 GETIMPORT                        R2 K21 [Enum.ZIndexBehavior.Sibling]
       35 SETTABLEKS                       R2 R1 K19 ["ZIndexBehavior"]
       37 GETUPVAL                         R1 3
       38 GETTABLEKS                       R1 R1 K22 ["createRoot"]
       40 GETUPVAL                         R2 1
       41 CALL                             R1 1 1
       42 SETUPVAL                         R1 2
       43 LOADB                            R1 0
       44 SETUPVAL                         R1 0
       45 GETUPVAL                         R1 1
       46 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["SetSizeAsync"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["hideCount"]
        4 JUMPIFNOTLE                      R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 3
        9 NAMECALL                         R0 R0 K1 ["ShowIfAttachedAsync"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 0
        3 NAMECALL                         R3 R0 K0 ["GetUri"]
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R3
        8 DUPTABLE                         R6 K5 [{["Category"] = "Panels", ["ItemId"] = "Tooltip"}]
        9 CALL                             R4 2 1
       10 LOADK                            R7 K2 ["Panels"]
       11 NAMECALL                         R5 R0 K6 ["GetPluginComponent"]
       13 CALL                             R5 2 1
       14 GETUPVAL                         R6 2
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R8 R8 K7 ["createElement"]
       18 GETUPVAL                         R9 4
       19 GETUPVAL                         R10 1
       20 MOVE                             R11 R1
       21 DUPTABLE                         R12 K10 [{"Design", "OnResize"}]
       22 SETTABLEKS                       R2 R12 K8 ["Design"]
       24 NEWCLOSURE                       R13 P0
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R4
       27 SETTABLEKS                       R13 R12 K9 ["OnResize"]
       29 CALL                             R10 2 -1
       30 CALL                             R8 -1 -1
       31 NAMECALL                         R6 R6 K11 ["render"]
       33 CALL                             R6 -1 0
       34 GETIMPORT                        R6 K14 [Vector2.new]
       36 LOADN                            R7 0
       37 LOADN                            R8 1
       38 CALL                             R6 2 1
       39 GETIMPORT                        R7 K14 [Vector2.new]
       41 LOADN                            R8 0
       42 LOADN                            R9 0
       43 CALL                             R7 2 1
       44 GETIMPORT                        R8 K14 [Vector2.new]
       46 LOADN                            R9 0
       47 LOADN                            R10 0
       48 CALL                             R8 2 1
       49 GETTABLEKS                       R9 R1 K15 ["Location"]
       51 JUMPIFNOT                        R9 ; [+67]
       52 GETTABLEKS                       R9 R1 K15 ["Location"]
       54 JUMPIFNOTEQKS                    R9 K16 ["Above"] ; [+14]
       56 GETIMPORT                        R9 K14 [Vector2.new]
       58 LOADN                            R10 0
       59 LOADN                            R11 0
       60 CALL                             R9 2 1
       61 MOVE                             R6 R9
       62 GETIMPORT                        R9 K14 [Vector2.new]
       64 LOADN                            R10 0
       65 LOADN                            R11 1
       66 CALL                             R9 2 1
       67 MOVE                             R7 R9
       68 JUMP                             ; [+50]
       69 GETTABLEKS                       R9 R1 K15 ["Location"]
       71 JUMPIFNOTEQKS                    R9 K17 ["Below"] ; [+14]
       73 GETIMPORT                        R9 K14 [Vector2.new]
       75 LOADN                            R10 0
       76 LOADN                            R11 1
       77 CALL                             R9 2 1
       78 MOVE                             R6 R9
       79 GETIMPORT                        R9 K14 [Vector2.new]
       81 LOADN                            R10 0
       82 LOADN                            R11 0
       83 CALL                             R9 2 1
       84 MOVE                             R7 R9
       85 JUMP                             ; [+33]
       86 GETTABLEKS                       R9 R1 K15 ["Location"]
       88 JUMPIFNOTEQKS                    R9 K18 ["Left"] ; [+14]
       90 GETIMPORT                        R9 K14 [Vector2.new]
       92 LOADN                            R10 0
       93 LOADN                            R11 0
       94 CALL                             R9 2 1
       95 MOVE                             R6 R9
       96 GETIMPORT                        R9 K14 [Vector2.new]
       98 LOADN                            R10 1
       99 LOADN                            R11 0
      100 CALL                             R9 2 1
      101 MOVE                             R7 R9
      102 JUMP                             ; [+16]
      103 GETTABLEKS                       R9 R1 K15 ["Location"]
      105 JUMPIFNOTEQKS                    R9 K19 ["Right"] ; [+13]
      107 GETIMPORT                        R9 K14 [Vector2.new]
      109 LOADN                            R10 1
      110 LOADN                            R11 0
      111 CALL                             R9 2 1
      112 MOVE                             R6 R9
      113 GETIMPORT                        R9 K14 [Vector2.new]
      115 LOADN                            R10 0
      116 LOADN                            R11 0
      117 CALL                             R9 2 1
      118 MOVE                             R7 R9
      119 GETTABLEKS                       R9 R1 K20 ["AttachmentInfo"]
      121 JUMPIFEQKNIL                     R9 ; [+16]
      123 GETTABLEKS                       R9 R1 K20 ["AttachmentInfo"]
      125 GETTABLEKS                       R9 R9 K21 ["TargetAnchorPoint"]
      127 OR                               R6 R9 R6
      128 GETTABLEKS                       R9 R1 K20 ["AttachmentInfo"]
      130 GETTABLEKS                       R9 R9 K22 ["SubjectAnchorPoint"]
      132 OR                               R7 R9 R7
      133 GETTABLEKS                       R9 R1 K20 ["AttachmentInfo"]
      135 GETTABLEKS                       R9 R9 K23 ["Offset"]
      137 OR                               R8 R9 R8
      138 MOVE                             R11 R4
      139 DUPTABLE                         R12 K25 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      140 GETTABLEKS                       R13 R1 K26 ["Uri"]
      142 SETTABLEKS                       R13 R12 K24 ["TargetWidgetUri"]
      144 SETTABLEKS                       R6 R12 K21 ["TargetAnchorPoint"]
      146 SETTABLEKS                       R7 R12 K22 ["SubjectAnchorPoint"]
      148 SETTABLEKS                       R8 R12 K23 ["Offset"]
      150 NAMECALL                         R9 R5 K27 ["SetAttachmentAsync"]
      152 CALL                             R9 3 0
      153 GETUPVAL                         R9 5
      154 GETTABLEKS                       R10 R9 K28 ["showCount"]
      156 ADDK                             R10 R10 K29 [1]
      157 SETTABLEKS                       R10 R9 K28 ["showCount"]
      159 GETUPVAL                         R9 5
      160 GETTABLEKS                       R9 R9 K28 ["showCount"]
      162 GETIMPORT                        R10 K31 [delay]
      164 GETUPVAL                         R11 5
      165 GETTABLEKS                       R11 R11 K32 ["showDelay"]
      167 NEWCLOSURE                       R12 P1
      168 CAPTURE                          VAL R9
      169 CAPTURE                          UPVAL U5
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R4
      172 CALL                             R10 2 0
      173 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["showCount"]
        4 JUMPIFNOTLT                      R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 3
        9 CALL                             R0 1 1
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       13 GETUPVAL                         R1 4
       14 LOADNIL                          R3
       15 NAMECALL                         R1 R1 K2 ["render"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["hideCount"]
        3 ADDK                             R2 R2 K1 [1]
        4 SETTABLEKS                       R2 R1 K0 ["hideCount"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["hideCount"]
        9 GETIMPORT                        R2 K3 [delay]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["hideDelay"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["disableAllTooltips"]
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K3 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+6]
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R2 3
       19 MOVE                             R3 R0
       20 CALL                             R1 2 1
       21 JUMP                             ; [+1]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R2 R1 K5 ["Uri"]
       25 JUMPIFEQKNIL                     R2 ; [+5]
       27 GETTABLEKS                       R2 R1 K6 ["Text"]
       29 JUMPIFNOTEQKNIL                  R2 ; [+2]
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 0
       33 LOADB                            R3 1
       34 SETTABLEKS                       R3 R2 K0 ["current"]
       36 GETUPVAL                         R2 4
       37 NAMECALL                         R2 R2 K7 ["get"]
       39 CALL                             R2 1 1
       40 GETUPVAL                         R3 5
       41 NAMECALL                         R3 R3 K7 ["get"]
       43 CALL                             R3 1 1
       44 GETUPVAL                         R4 6
       45 MOVE                             R5 R2
       46 MOVE                             R6 R1
       47 MOVE                             R7 R3
       48 CALL                             R4 3 0
       49 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K1 ["get"]
       12 CALL                             R0 1 1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R2 R1 K2 ["hideCount"]
       16 ADDK                             R2 R2 K3 [1]
       17 SETTABLEKS                       R2 R1 K2 ["hideCount"]
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K2 ["hideCount"]
       22 GETIMPORT                        R2 K5 [delay]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K6 ["hideDelay"]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U4
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 LOADB                            R4 0
       10 CALL                             R3 1 1
       11 NEWTABLE                         R4 0 4
       13 GETTABLEKS                       R5 R0 K1 ["Uri"]
       15 GETTABLEKS                       R6 R0 K2 ["Title"]
       17 GETTABLEKS                       R7 R0 K3 ["Icon"]
       19 GETTABLEKS                       R8 R0 K4 ["Text"]
       21 SETLIST                          R4 R5 4 [1]
       23 GETUPVAL                         R5 3
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U6
       32 MOVE                             R7 R4
       33 CALL                             R5 2 1
       34 GETUPVAL                         R6 3
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U8
       41 MOVE                             R8 R4
       42 CALL                             R6 2 1
       43 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["join"]
       37 GETTABLEKS                       R6 R2 K12 ["useCallback"]
       39 GETTABLEKS                       R7 R2 K13 ["useEffect"]
       41 GETTABLEKS                       R8 R2 K14 ["useRef"]
       43 GETTABLEKS                       R9 R1 K15 ["ContextServices"]
       45 GETTABLEKS                       R10 R9 K16 ["Design"]
       47 GETTABLEKS                       R11 R9 K17 ["Plugin"]
       49 GETTABLEKS                       R12 R1 K18 ["Util"]
       51 GETTABLEKS                       R13 R12 K19 ["counter"]
       53 GETIMPORT                        R14 K5 [require]
       55 GETIMPORT                        R15 K1 [script]
       57 GETTABLEKS                       R15 R15 K20 ["TooltipSettings"]
       59 CALL                             R14 1 1
       60 DUPCLOSURE                       R15 K21 [PROTO_0]
       61 DUPCLOSURE                       R16 K22 [PROTO_1]
       62 DUPCLOSURE                       R17 K23 [PROTO_4]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R2
       67 LOADNIL                          R18
       68 LOADNIL                          R19
       69 LOADB                            R20 0
       70 NEWCLOSURE                       R21 P3
       71 CAPTURE                          REF R20
       72 CAPTURE                          REF R18
       73 CAPTURE                          REF R19
       74 CAPTURE                          VAL R3
       75 NEWCLOSURE                       R22 P4
       76 CAPTURE                          VAL R21
       77 CAPTURE                          VAL R5
       78 CAPTURE                          REF R19
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R17
       81 CAPTURE                          VAL R14
       82 NEWCLOSURE                       R23 P5
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R21
       85 CAPTURE                          REF R19
       86 NEWCLOSURE                       R24 P6
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R22
       94 CAPTURE                          VAL R21
       95 CAPTURE                          REF R19
       96 CLOSEUPVALS                      R18
       97 RETURN                           R24 1
