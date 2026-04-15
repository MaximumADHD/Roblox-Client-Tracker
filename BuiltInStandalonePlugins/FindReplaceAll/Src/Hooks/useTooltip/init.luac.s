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
        4 GETTABLEKS                       R6 R1 K0 ["current"]
        6 GETTABLEKS                       R5 R6 K1 ["AbsoluteSize"]
        8 GETTABLEKS                       R4 R5 K2 ["X"]
       10 GETTABLEKS                       R5 R2 K0 ["current"]
       12 JUMPIFNOT                        R5 ; [+13]
       13 GETTABLEKS                       R9 R2 K0 ["current"]
       15 GETTABLEKS                       R8 R9 K1 ["AbsoluteSize"]
       17 GETTABLEKS                       R7 R8 K2 ["X"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+64]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["current"]
        7 GETTABLEKS                       R1 R2 K1 ["AbsoluteSize"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K2 ["Icon"]
       14 JUMPIFNOTEQKNIL                  R5 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 LOADN                            R5 0
       19 GETTABLEKS                       R6 R2 K0 ["current"]
       21 JUMPIFNOT                        R6 ; [+6]
       22 GETTABLEKS                       R7 R2 K0 ["current"]
       24 GETTABLEKS                       R6 R7 K1 ["AbsoluteSize"]
       26 GETTABLEKS                       R5 R6 K3 ["X"]
       28 GETTABLEKS                       R6 R3 K0 ["current"]
       30 JUMPIFNOT                        R6 ; [+13]
       31 GETTABLEKS                       R10 R3 K0 ["current"]
       33 GETTABLEKS                       R9 R10 K1 ["AbsoluteSize"]
       35 GETTABLEKS                       R8 R9 K3 ["X"]
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
       63 GETUPVAL                         R2 3
       64 GETTABLEKS                       R1 R2 K16 ["OnResize"]
       66 MOVE                             R2 R0
       67 CALL                             R1 1 0
       68 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R7 2
        5 GETTABLEKS                       R6 R7 K1 ["Icon"]
        7 JUMPIFNOTEQKNIL                  R6 ; [+2]
        9 LOADB                            R5 0 +1
       10 LOADB                            R5 1
       11 LOADN                            R6 0
       12 GETTABLEKS                       R7 R3 K2 ["current"]
       14 JUMPIFNOT                        R7 ; [+6]
       15 GETTABLEKS                       R8 R3 K2 ["current"]
       17 GETTABLEKS                       R7 R8 K0 ["AbsoluteSize"]
       19 GETTABLEKS                       R6 R7 K3 ["X"]
       21 GETTABLEKS                       R7 R4 K2 ["current"]
       23 JUMPIFNOT                        R7 ; [+13]
       24 GETTABLEKS                       R11 R4 K2 ["current"]
       26 GETTABLEKS                       R10 R11 K0 ["AbsoluteSize"]
       28 GETTABLEKS                       R9 R10 K3 ["X"]
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
       56 GETUPVAL                         R3 2
       57 GETTABLEKS                       R2 R3 K16 ["OnResize"]
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
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R5 R6 K3 ["createElement"]
       31 LOADK                            R6 K4 ["Frame"]
       32 NEWTABLE                         R7 4 0
       34 SETTABLEKS                       R1 R7 K5 ["ref"]
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R9 R10 K6 ["Change"]
       39 GETTABLEKS                       R8 R9 K7 ["AbsoluteSize"]
       41 NEWCLOSURE                       R9 P1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R0
       45 SETTABLE                         R9 R7 R8
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R8 R9 K8 ["Tag"]
       49 LOADK                            R9 K9 ["Role-Surface X-PadTooltip X-RowSpace50 X-FitY X-Middle"]
       50 SETTABLE                         R9 R7 R8
       51 GETIMPORT                        R8 K12 [UDim2.new]
       53 LOADN                            R9 0
       54 LOADN                            R10 232
       55 LOADN                            R11 0
       56 LOADN                            R12 0
       57 CALL                             R8 4 1
       58 SETTABLEKS                       R8 R7 K13 ["Size"]
       60 DUPTABLE                         R8 K15 [{"Icon", "Content"}]
       61 GETTABLEKS                       R10 R0 K2 ["Icon"]
       63 JUMPIFNOT                        R10 ; [+25]
       64 GETUPVAL                         R10 3
       65 GETTABLEKS                       R9 R10 K3 ["createElement"]
       67 LOADK                            R10 K16 ["ImageLabel"]
       68 DUPTABLE                         R11 K20 [{"Image", "BackgroundTransparency", "Size", "LayoutOrder"}]
       69 GETTABLEKS                       R12 R0 K2 ["Icon"]
       71 SETTABLEKS                       R12 R11 K17 ["Image"]
       73 LOADN                            R12 1
       74 SETTABLEKS                       R12 R11 K18 ["BackgroundTransparency"]
       76 GETIMPORT                        R12 K22 [UDim2.fromOffset]
       78 LOADN                            R13 24
       79 LOADN                            R14 24
       80 CALL                             R12 2 1
       81 SETTABLEKS                       R12 R11 K13 ["Size"]
       83 MOVE                             R12 R4
       84 CALL                             R12 0 1
       85 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
       87 CALL                             R9 2 1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R9
       90 SETTABLEKS                       R9 R8 K2 ["Icon"]
       92 GETUPVAL                         R10 3
       93 GETTABLEKS                       R9 R10 K3 ["createElement"]
       95 LOADK                            R10 K4 ["Frame"]
       96 NEWTABLE                         R11 2 0
       98 MOVE                             R12 R4
       99 CALL                             R12 0 1
      100 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
      102 GETUPVAL                         R13 3
      103 GETTABLEKS                       R12 R13 K8 ["Tag"]
      105 LOADK                            R13 K23 ["Role-Surface X-Fit X-ColumnSpace25"]
      106 SETTABLE                         R13 R11 R12
      107 DUPTABLE                         R12 K25 [{"TitleFrame", "Text"}]
      108 GETUPVAL                         R14 3
      109 GETTABLEKS                       R13 R14 K3 ["createElement"]
      111 LOADK                            R14 K4 ["Frame"]
      112 NEWTABLE                         R15 4 0
      114 SETTABLEKS                       R3 R15 K5 ["ref"]
      116 MOVE                             R16 R4
      117 CALL                             R16 0 1
      118 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      120 GETUPVAL                         R17 3
      121 GETTABLEKS                       R16 R17 K8 ["Tag"]
      123 LOADK                            R17 K26 ["Role-Surface X-Fit X-RowSpace50"]
      124 SETTABLE                         R17 R15 R16
      125 DUPTABLE                         R16 K28 [{"Title", "Shortcuts"}]
      126 GETTABLEKS                       R18 R0 K0 ["Title"]
      128 JUMPIFNOT                        R18 ; [+21]
      129 GETUPVAL                         R18 3
      130 GETTABLEKS                       R17 R18 K3 ["createElement"]
      132 LOADK                            R18 K29 ["TextLabel"]
      133 NEWTABLE                         R19 4 0
      135 MOVE                             R20 R4
      136 CALL                             R20 0 1
      137 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      139 GETTABLEKS                       R20 R0 K0 ["Title"]
      141 SETTABLEKS                       R20 R19 K1 ["Text"]
      143 GETUPVAL                         R21 3
      144 GETTABLEKS                       R20 R21 K8 ["Tag"]
      146 LOADK                            R21 K30 ["X-Fit Text-Title"]
      147 SETTABLE                         R21 R19 R20
      148 CALL                             R17 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R17
      151 SETTABLEKS                       R17 R16 K0 ["Title"]
      153 GETTABLEKS                       R18 R0 K27 ["Shortcuts"]
      155 JUMPIFNOT                        R18 ; [+39]
      156 GETUPVAL                         R18 3
      157 GETTABLEKS                       R17 R18 K3 ["createElement"]
      159 LOADK                            R18 K29 ["TextLabel"]
      160 NEWTABLE                         R19 4 0
      162 MOVE                             R20 R4
      163 CALL                             R20 0 1
      164 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      166 GETTABLEKS                       R21 R0 K27 ["Shortcuts"]
      168 LOADK                            R22 K31 [""]
      169 GETIMPORT                        R23 K33 [ipairs]
      171 MOVE                             R24 R21
      172 CALL                             R23 1 3
      173 FORGPREP_INEXT                   R23
      174 LOADN                            R28 1
      175 JUMPIFNOTLT                      R28 R26 ; [+4]
      177 MOVE                             R28 R22
      178 LOADK                            R29 K34 [", "]
      179 CONCAT                           R22 R28 R29
      180 MOVE                             R28 R22
      181 MOVE                             R29 R27
      182 CONCAT                           R22 R28 R29
      183 FORGLOOP                         R23 2 [inext] ; [-10]
      185 MOVE                             R20 R22
      186 SETTABLEKS                       R20 R19 K1 ["Text"]
      188 GETUPVAL                         R21 3
      189 GETTABLEKS                       R20 R21 K8 ["Tag"]
      191 LOADK                            R21 K35 ["X-Fit Text-Label"]
      192 SETTABLE                         R21 R19 R20
      193 CALL                             R17 2 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R17
      196 SETTABLEKS                       R17 R16 K27 ["Shortcuts"]
      198 CALL                             R13 3 1
      199 SETTABLEKS                       R13 R12 K24 ["TitleFrame"]
      201 GETTABLEKS                       R14 R0 K1 ["Text"]
      203 JUMPIFNOT                        R14 ; [+26]
      204 GETUPVAL                         R14 3
      205 GETTABLEKS                       R13 R14 K3 ["createElement"]
      207 LOADK                            R14 K29 ["TextLabel"]
      208 NEWTABLE                         R15 8 0
      210 SETTABLEKS                       R2 R15 K5 ["ref"]
      212 MOVE                             R16 R4
      213 CALL                             R16 0 1
      214 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      216 GETTABLEKS                       R16 R0 K1 ["Text"]
      218 SETTABLEKS                       R16 R15 K1 ["Text"]
      220 LOADB                            R16 1
      221 SETTABLEKS                       R16 R15 K36 ["RichText"]
      223 GETUPVAL                         R17 3
      224 GETTABLEKS                       R16 R17 K8 ["Tag"]
      226 LOADK                            R17 K37 ["Text-Label X-Fit TooltipTextBounds FindReplaceAll-Text-Size-12"]
      227 SETTABLE                         R17 R15 R16
      228 CALL                             R13 2 1
      229 JUMP                             ; [+1]
      230 LOADNIL                          R13
      231 SETTABLEKS                       R13 R12 K1 ["Text"]
      233 CALL                             R9 3 1
      234 SETTABLEKS                       R9 R8 K14 ["Content"]
      236 CALL                             R5 3 1
      237 GETUPVAL                         R7 3
      238 GETTABLEKS                       R6 R7 K3 ["createElement"]
      240 LOADK                            R7 K4 ["Frame"]
      241 NEWTABLE                         R8 1 0
      243 GETUPVAL                         R10 3
      244 GETTABLEKS                       R9 R10 K8 ["Tag"]
      246 LOADK                            R10 K38 ["Component-useTooltip Role-Tooltip X-Fill"]
      247 SETTABLE                         R10 R8 R9
      248 DUPTABLE                         R9 K41 [{"Wrapper", "StyleLink"}]
      249 SETTABLEKS                       R5 R9 K39 ["Wrapper"]
      251 GETUPVAL                         R11 3
      252 GETTABLEKS                       R10 R11 K3 ["createElement"]
      254 LOADK                            R11 K40 ["StyleLink"]
      255 DUPTABLE                         R12 K43 [{"StyleSheet"}]
      256 GETTABLEKS                       R13 R0 K44 ["Design"]
      258 SETTABLEKS                       R13 R12 K42 ["StyleSheet"]
      260 CALL                             R10 2 1
      261 SETTABLEKS                       R10 R9 K40 ["StyleLink"]
      263 CALL                             R6 3 -1
      264 RETURN                           R6 -1

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
       13 DUPTABLE                         R4 K11 [{"Id", "InitialEnabled", "MinSize", "Modal", "Tooltip", "Resizable", "Size", "Title"}]
       14 LOADK                            R5 K3 ["Tooltip"]
       15 SETTABLEKS                       R5 R4 K4 ["Id"]
       17 LOADB                            R5 0
       18 SETTABLEKS                       R5 R4 K5 ["InitialEnabled"]
       20 GETIMPORT                        R5 K14 [Vector2.new]
       22 LOADN                            R6 50
       23 LOADN                            R7 50
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K6 ["MinSize"]
       27 LOADB                            R5 0
       28 SETTABLEKS                       R5 R4 K7 ["Modal"]
       30 LOADB                            R5 1
       31 SETTABLEKS                       R5 R4 K3 ["Tooltip"]
       33 LOADB                            R5 1
       34 SETTABLEKS                       R5 R4 K8 ["Resizable"]
       36 GETIMPORT                        R5 K14 [Vector2.new]
       38 LOADN                            R6 220
       39 LOADN                            R7 224
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K9 ["Size"]
       43 LOADK                            R5 K3 ["Tooltip"]
       44 SETTABLEKS                       R5 R4 K10 ["Title"]
       46 NAMECALL                         R1 R0 K15 ["CreateQWidgetPluginGui"]
       48 CALL                             R1 3 1
       49 SETUPVAL                         R1 1
       50 GETUPVAL                         R1 1
       51 GETIMPORT                        R2 K19 [Enum.ZIndexBehavior.Sibling]
       53 SETTABLEKS                       R2 R1 K17 ["ZIndexBehavior"]
       55 GETUPVAL                         R2 3
       56 GETTABLEKS                       R1 R2 K20 ["createRoot"]
       58 GETUPVAL                         R2 1
       59 CALL                             R1 1 1
       60 SETUPVAL                         R1 2
       61 LOADB                            R1 0
       62 SETUPVAL                         R1 0
       63 GETUPVAL                         R1 1
       64 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["SetSizeAsync"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["hideCount"]
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
        8 DUPTABLE                         R6 K3 [{"Category", "ItemId"}]
        9 LOADK                            R7 K4 ["Panels"]
       10 SETTABLEKS                       R7 R6 K1 ["Category"]
       12 LOADK                            R7 K5 ["Tooltip"]
       13 SETTABLEKS                       R7 R6 K2 ["ItemId"]
       15 CALL                             R4 2 1
       16 LOADK                            R7 K4 ["Panels"]
       17 NAMECALL                         R5 R0 K6 ["GetPluginComponent"]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 2
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R8 R9 K7 ["createElement"]
       24 GETUPVAL                         R9 4
       25 GETUPVAL                         R10 1
       26 MOVE                             R11 R1
       27 DUPTABLE                         R12 K10 [{"Design", "OnResize"}]
       28 SETTABLEKS                       R2 R12 K8 ["Design"]
       30 NEWCLOSURE                       R13 P0
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R13 R12 K9 ["OnResize"]
       35 CALL                             R10 2 -1
       36 CALL                             R8 -1 -1
       37 NAMECALL                         R6 R6 K11 ["render"]
       39 CALL                             R6 -1 0
       40 GETIMPORT                        R6 K14 [Vector2.new]
       42 LOADN                            R7 0
       43 LOADN                            R8 1
       44 CALL                             R6 2 1
       45 GETIMPORT                        R7 K14 [Vector2.new]
       47 LOADN                            R8 0
       48 LOADN                            R9 0
       49 CALL                             R7 2 1
       50 GETIMPORT                        R8 K14 [Vector2.new]
       52 LOADN                            R9 0
       53 LOADN                            R10 0
       54 CALL                             R8 2 1
       55 GETTABLEKS                       R9 R1 K15 ["Location"]
       57 JUMPIFNOT                        R9 ; [+67]
       58 GETTABLEKS                       R9 R1 K15 ["Location"]
       60 JUMPIFNOTEQKS                    R9 K16 ["Above"] ; [+14]
       62 GETIMPORT                        R9 K14 [Vector2.new]
       64 LOADN                            R10 0
       65 LOADN                            R11 0
       66 CALL                             R9 2 1
       67 MOVE                             R6 R9
       68 GETIMPORT                        R9 K14 [Vector2.new]
       70 LOADN                            R10 0
       71 LOADN                            R11 1
       72 CALL                             R9 2 1
       73 MOVE                             R7 R9
       74 JUMP                             ; [+50]
       75 GETTABLEKS                       R9 R1 K15 ["Location"]
       77 JUMPIFNOTEQKS                    R9 K17 ["Below"] ; [+14]
       79 GETIMPORT                        R9 K14 [Vector2.new]
       81 LOADN                            R10 0
       82 LOADN                            R11 1
       83 CALL                             R9 2 1
       84 MOVE                             R6 R9
       85 GETIMPORT                        R9 K14 [Vector2.new]
       87 LOADN                            R10 0
       88 LOADN                            R11 0
       89 CALL                             R9 2 1
       90 MOVE                             R7 R9
       91 JUMP                             ; [+33]
       92 GETTABLEKS                       R9 R1 K15 ["Location"]
       94 JUMPIFNOTEQKS                    R9 K18 ["Left"] ; [+14]
       96 GETIMPORT                        R9 K14 [Vector2.new]
       98 LOADN                            R10 0
       99 LOADN                            R11 0
      100 CALL                             R9 2 1
      101 MOVE                             R6 R9
      102 GETIMPORT                        R9 K14 [Vector2.new]
      104 LOADN                            R10 1
      105 LOADN                            R11 0
      106 CALL                             R9 2 1
      107 MOVE                             R7 R9
      108 JUMP                             ; [+16]
      109 GETTABLEKS                       R9 R1 K15 ["Location"]
      111 JUMPIFNOTEQKS                    R9 K19 ["Right"] ; [+13]
      113 GETIMPORT                        R9 K14 [Vector2.new]
      115 LOADN                            R10 1
      116 LOADN                            R11 0
      117 CALL                             R9 2 1
      118 MOVE                             R6 R9
      119 GETIMPORT                        R9 K14 [Vector2.new]
      121 LOADN                            R10 0
      122 LOADN                            R11 0
      123 CALL                             R9 2 1
      124 MOVE                             R7 R9
      125 GETTABLEKS                       R9 R1 K20 ["AttachmentInfo"]
      127 JUMPIFEQKNIL                     R9 ; [+16]
      129 GETTABLEKS                       R10 R1 K20 ["AttachmentInfo"]
      131 GETTABLEKS                       R9 R10 K21 ["TargetAnchorPoint"]
      133 OR                               R6 R9 R6
      134 GETTABLEKS                       R10 R1 K20 ["AttachmentInfo"]
      136 GETTABLEKS                       R9 R10 K22 ["SubjectAnchorPoint"]
      138 OR                               R7 R9 R7
      139 GETTABLEKS                       R10 R1 K20 ["AttachmentInfo"]
      141 GETTABLEKS                       R9 R10 K23 ["Offset"]
      143 OR                               R8 R9 R8
      144 MOVE                             R11 R4
      145 DUPTABLE                         R12 K25 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      146 GETTABLEKS                       R13 R1 K26 ["Uri"]
      148 SETTABLEKS                       R13 R12 K24 ["TargetWidgetUri"]
      150 SETTABLEKS                       R6 R12 K21 ["TargetAnchorPoint"]
      152 SETTABLEKS                       R7 R12 K22 ["SubjectAnchorPoint"]
      154 SETTABLEKS                       R8 R12 K23 ["Offset"]
      156 NAMECALL                         R9 R5 K27 ["SetAttachmentAsync"]
      158 CALL                             R9 3 0
      159 GETUPVAL                         R9 5
      160 GETTABLEKS                       R10 R9 K28 ["showCount"]
      162 ADDK                             R10 R10 K29 [1]
      163 SETTABLEKS                       R10 R9 K28 ["showCount"]
      165 GETUPVAL                         R10 5
      166 GETTABLEKS                       R9 R10 K28 ["showCount"]
      168 GETIMPORT                        R10 K31 [delay]
      170 GETUPVAL                         R12 5
      171 GETTABLEKS                       R11 R12 K32 ["showDelay"]
      173 NEWCLOSURE                       R12 P1
      174 CAPTURE                          VAL R9
      175 CAPTURE                          UPVAL U5
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R4
      178 CALL                             R10 2 0
      179 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["showCount"]
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
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["hideCount"]
        9 GETIMPORT                        R2 K3 [delay]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K4 ["hideDelay"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["disableAllTooltips"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R1 R2 K2 ["hideCount"]
       22 GETIMPORT                        R2 K5 [delay]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K6 ["hideDelay"]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U4
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Dash"]
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
       55 GETIMPORT                        R16 K1 [script]
       57 GETTABLEKS                       R15 R16 K20 ["TooltipSettings"]
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
