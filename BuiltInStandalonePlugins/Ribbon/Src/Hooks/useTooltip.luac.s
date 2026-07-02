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
       43 CALL                             R5 2 1
       44 MOVE                             R0 R5
       45 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+65]
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
       62 MOVE                             R1 R6
       63 MOVE                             R0 R1
       64 GETUPVAL                         R1 3
       65 GETTABLEKS                       R1 R1 K16 ["OnResize"]
       67 MOVE                             R2 R0
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

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
       55 MOVE                             R2 R7
       56 MOVE                             R1 R2
       57 GETUPVAL                         R2 2
       58 GETTABLEKS                       R2 R2 K16 ["OnResize"]
       60 MOVE                             R3 R1
       61 CALL                             R2 1 0
       62 RETURN                           R0 0

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
       49 LOADK                            R10 K9 ["Role-Surface X-FitY X-Middle data-testid=%*"]
       50 GETUPVAL                         R12 4
       51 GETTABLEKS                       R13 R0 K10 ["Uri"]
       53 CALL                             R12 1 1
       54 NAMECALL                         R10 R10 K11 ["format"]
       56 CALL                             R10 2 1
       57 MOVE                             R9 R10
       58 SETTABLE                         R9 R7 R8
       59 DUPTABLE                         R8 K13 [{"Icon", "Content"}]
       60 GETTABLEKS                       R10 R0 K2 ["Icon"]
       62 JUMPIFNOT                        R10 ; [+22]
       63 GETUPVAL                         R9 3
       64 GETTABLEKS                       R9 R9 K3 ["createElement"]
       66 LOADK                            R10 K14 ["ImageLabel"]
       67 DUPTABLE                         R11 K20 [{["Image"], ["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
       68 GETTABLEKS                       R12 R0 K2 ["Icon"]
       70 SETTABLEKS                       R12 R11 K15 ["Image"]
       72 GETIMPORT                        R12 K23 [UDim2.fromOffset]
       74 LOADN                            R13 24
       75 LOADN                            R14 24
       76 CALL                             R12 2 1
       77 SETTABLEKS                       R12 R11 K18 ["Size"]
       79 MOVE                             R12 R4
       80 CALL                             R12 0 1
       81 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
       83 CALL                             R9 2 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R9
       86 SETTABLEKS                       R9 R8 K2 ["Icon"]
       88 GETUPVAL                         R9 3
       89 GETTABLEKS                       R9 R9 K3 ["createElement"]
       91 LOADK                            R10 K4 ["Frame"]
       92 NEWTABLE                         R11 2 0
       94 MOVE                             R12 R4
       95 CALL                             R12 0 1
       96 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
       98 GETUPVAL                         R12 3
       99 GETTABLEKS                       R12 R12 K8 ["Tag"]
      101 LOADK                            R13 K24 ["Role-Surface X-Fit X-Middle"]
      102 SETTABLE                         R13 R11 R12
      103 DUPTABLE                         R12 K26 [{"TitleFrame", "Text"}]
      104 GETUPVAL                         R13 3
      105 GETTABLEKS                       R13 R13 K3 ["createElement"]
      107 LOADK                            R14 K4 ["Frame"]
      108 NEWTABLE                         R15 4 0
      110 SETTABLEKS                       R3 R15 K5 ["ref"]
      112 MOVE                             R16 R4
      113 CALL                             R16 0 1
      114 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      116 GETUPVAL                         R16 3
      117 GETTABLEKS                       R16 R16 K8 ["Tag"]
      119 LOADK                            R17 K27 ["Role-Surface X-Fit"]
      120 SETTABLE                         R17 R15 R16
      121 DUPTABLE                         R16 K30 [{"Title", "Spacer", "Shortcuts"}]
      122 GETTABLEKS                       R18 R0 K0 ["Title"]
      124 JUMPIFNOT                        R18 ; [+24]
      125 GETUPVAL                         R17 3
      126 GETTABLEKS                       R17 R17 K3 ["createElement"]
      128 LOADK                            R18 K31 ["TextLabel"]
      129 NEWTABLE                         R19 4 0
      131 MOVE                             R20 R4
      132 CALL                             R20 0 1
      133 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      135 LOADB                            R20 1
      136 SETTABLEKS                       R20 R19 K32 ["RichText"]
      138 GETTABLEKS                       R20 R0 K0 ["Title"]
      140 SETTABLEKS                       R20 R19 K1 ["Text"]
      142 GETUPVAL                         R20 3
      143 GETTABLEKS                       R20 R20 K8 ["Tag"]
      145 LOADK                            R21 K33 ["X-Fit"]
      146 SETTABLE                         R21 R19 R20
      147 CALL                             R17 2 1
      148 JUMP                             ; [+1]
      149 LOADNIL                          R17
      150 SETTABLEKS                       R17 R16 K0 ["Title"]
      152 GETUPVAL                         R17 3
      153 GETTABLEKS                       R17 R17 K3 ["createElement"]
      155 LOADK                            R18 K4 ["Frame"]
      156 NEWTABLE                         R19 2 0
      158 MOVE                             R20 R4
      159 CALL                             R20 0 1
      160 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      162 GETUPVAL                         R20 3
      163 GETTABLEKS                       R20 R20 K8 ["Tag"]
      165 LOADK                            R21 K34 ["Role-Surface X-FitY"]
      166 SETTABLE                         R21 R19 R20
      167 CALL                             R17 2 1
      168 SETTABLEKS                       R17 R16 K28 ["Spacer"]
      170 GETTABLEKS                       R18 R0 K29 ["Shortcuts"]
      172 JUMPIFNOT                        R18 ; [+42]
      173 GETUPVAL                         R17 3
      174 GETTABLEKS                       R17 R17 K3 ["createElement"]
      176 LOADK                            R18 K31 ["TextLabel"]
      177 NEWTABLE                         R19 4 0
      179 MOVE                             R20 R4
      180 CALL                             R20 0 1
      181 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      183 LOADB                            R20 1
      184 SETTABLEKS                       R20 R19 K32 ["RichText"]
      186 GETTABLEKS                       R21 R0 K29 ["Shortcuts"]
      188 LOADK                            R22 K35 [""]
      189 GETIMPORT                        R23 K37 [ipairs]
      191 MOVE                             R24 R21
      192 CALL                             R23 1 3
      193 FORGPREP_INEXT                   R23
      194 LOADN                            R28 1
      195 JUMPIFNOTLT                      R28 R26 ; [+4]
      197 MOVE                             R28 R22
      198 LOADK                            R29 K38 [", "]
      199 CONCAT                           R22 R28 R29
      200 MOVE                             R28 R22
      201 MOVE                             R29 R27
      202 CONCAT                           R22 R28 R29
      203 FORGLOOP                         R23 2 [inext] ; [-10]
      205 MOVE                             R20 R22
      206 SETTABLEKS                       R20 R19 K1 ["Text"]
      208 GETUPVAL                         R20 3
      209 GETTABLEKS                       R20 R20 K8 ["Tag"]
      211 LOADK                            R21 K33 ["X-Fit"]
      212 SETTABLE                         R21 R19 R20
      213 CALL                             R17 2 1
      214 JUMP                             ; [+1]
      215 LOADNIL                          R17
      216 SETTABLEKS                       R17 R16 K29 ["Shortcuts"]
      218 CALL                             R13 3 1
      219 SETTABLEKS                       R13 R12 K25 ["TitleFrame"]
      221 GETTABLEKS                       R14 R0 K1 ["Text"]
      223 JUMPIFNOT                        R14 ; [+26]
      224 GETUPVAL                         R13 3
      225 GETTABLEKS                       R13 R13 K3 ["createElement"]
      227 LOADK                            R14 K31 ["TextLabel"]
      228 NEWTABLE                         R15 8 0
      230 SETTABLEKS                       R2 R15 K5 ["ref"]
      232 MOVE                             R16 R4
      233 CALL                             R16 0 1
      234 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      236 LOADB                            R16 1
      237 SETTABLEKS                       R16 R15 K32 ["RichText"]
      239 GETTABLEKS                       R16 R0 K1 ["Text"]
      241 SETTABLEKS                       R16 R15 K1 ["Text"]
      243 GETUPVAL                         R16 3
      244 GETTABLEKS                       R16 R16 K8 ["Tag"]
      246 LOADK                            R17 K33 ["X-Fit"]
      247 SETTABLE                         R17 R15 R16
      248 CALL                             R13 2 1
      249 JUMP                             ; [+1]
      250 LOADNIL                          R13
      251 SETTABLEKS                       R13 R12 K1 ["Text"]
      253 CALL                             R9 3 1
      254 SETTABLEKS                       R9 R8 K12 ["Content"]
      256 CALL                             R5 3 1
      257 GETUPVAL                         R6 3
      258 GETTABLEKS                       R6 R6 K3 ["createElement"]
      260 LOADK                            R7 K4 ["Frame"]
      261 NEWTABLE                         R8 1 0
      263 GETUPVAL                         R9 3
      264 GETTABLEKS                       R9 R9 K8 ["Tag"]
      266 LOADK                            R10 K39 ["Role-Tooltip X-Fill"]
      267 SETTABLE                         R10 R8 R9
      268 DUPTABLE                         R9 K42 [{"Wrapper", "StyleLink"}]
      269 SETTABLEKS                       R5 R9 K40 ["Wrapper"]
      271 GETUPVAL                         R10 3
      272 GETTABLEKS                       R10 R10 K3 ["createElement"]
      274 LOADK                            R11 K41 ["StyleLink"]
      275 DUPTABLE                         R12 K44 [{"StyleSheet"}]
      276 GETTABLEKS                       R13 R0 K45 ["Design"]
      278 SETTABLEKS                       R13 R12 K43 ["StyleSheet"]
      280 CALL                             R10 2 1
      281 SETTABLEKS                       R10 R9 K41 ["StyleLink"]
      283 CALL                             R6 3 -1
      284 RETURN                           R6 -1

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
       12 GETUPVAL                         R3 2
       13 DUPTABLE                         R4 K15 [{["Id"], ["InitialEnabled"] = False, ["MinSize"], ["Modal"] = False, ["Tooltip"] = True, ["Resizable"] = True, ["Size"], ["Title"] = "Tooltip", ["ZIndex"] = 100}]
       14 GETUPVAL                         R5 2
       15 SETTABLEKS                       R5 R4 K3 ["Id"]
       17 GETIMPORT                        R5 K18 [Vector2.new]
       19 LOADN                            R6 50
       20 LOADN                            R7 50
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K6 ["MinSize"]
       24 GETIMPORT                        R5 K18 [Vector2.new]
       26 LOADN                            R6 220
       27 LOADN                            R7 224
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K11 ["Size"]
       31 NAMECALL                         R1 R0 K19 ["CreateQWidgetPluginGui"]
       33 CALL                             R1 3 1
       34 SETUPVAL                         R1 1
       35 GETUPVAL                         R1 1
       36 GETIMPORT                        R2 K23 [Enum.ZIndexBehavior.Sibling]
       38 SETTABLEKS                       R2 R1 K21 ["ZIndexBehavior"]
       40 GETUPVAL                         R1 4
       41 GETTABLEKS                       R1 R1 K24 ["createRoot"]
       43 GETUPVAL                         R2 1
       44 CALL                             R1 1 1
       45 SETUPVAL                         R1 3
       46 GETUPVAL                         R1 5
       47 GETUPVAL                         R2 1
       48 SETTABLEKS                       R2 R1 K25 ["panel"]
       50 LOADB                            R1 0
       51 SETUPVAL                         R1 0
       52 GETUPVAL                         R1 1
       53 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["SetSizeAsync"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["uniqueTooltipId"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+6]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 NAMECALL                         R0 R0 K1 ["ShowIfAttachedAsync"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["wrap"]
        6 NAMECALL                         R4 R0 K1 ["GetUri"]
        8 CALL                             R4 1 -1
        9 CALL                             R3 -1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["join"]
       13 MOVE                             R5 R3
       14 DUPTABLE                         R6 K6 [{["Category"] = "Panels", ["ItemId"]}]
       15 GETUPVAL                         R7 2
       16 SETTABLEKS                       R7 R6 K5 ["ItemId"]
       18 CALL                             R4 2 1
       19 LOADK                            R7 K4 ["Panels"]
       20 NAMECALL                         R5 R0 K7 ["GetPluginComponent"]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 3
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K8 ["createElement"]
       27 GETUPVAL                         R9 5
       28 GETUPVAL                         R10 6
       29 MOVE                             R11 R1
       30 DUPTABLE                         R12 K11 [{"Design", "OnResize"}]
       31 SETTABLEKS                       R2 R12 K9 ["Design"]
       33 NEWCLOSURE                       R13 P0
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R13 R12 K10 ["OnResize"]
       38 CALL                             R10 2 -1
       39 CALL                             R8 -1 -1
       40 NAMECALL                         R6 R6 K12 ["render"]
       42 CALL                             R6 -1 0
       43 GETIMPORT                        R6 K15 [Vector2.new]
       45 LOADN                            R7 0
       46 LOADN                            R8 1
       47 CALL                             R6 2 1
       48 GETIMPORT                        R7 K15 [Vector2.new]
       50 LOADN                            R8 0
       51 LOADN                            R9 0
       52 CALL                             R7 2 1
       53 GETTABLEKS                       R8 R1 K16 ["Location"]
       55 JUMPIFNOT                        R8 ; [+67]
       56 GETTABLEKS                       R8 R1 K16 ["Location"]
       58 JUMPIFNOTEQKS                    R8 K17 ["Above"] ; [+14]
       60 GETIMPORT                        R8 K15 [Vector2.new]
       62 LOADN                            R9 0
       63 LOADN                            R10 0
       64 CALL                             R8 2 1
       65 MOVE                             R6 R8
       66 GETIMPORT                        R8 K15 [Vector2.new]
       68 LOADN                            R9 0
       69 LOADN                            R10 1
       70 CALL                             R8 2 1
       71 MOVE                             R7 R8
       72 JUMP                             ; [+50]
       73 GETTABLEKS                       R8 R1 K16 ["Location"]
       75 JUMPIFNOTEQKS                    R8 K18 ["Below"] ; [+14]
       77 GETIMPORT                        R8 K15 [Vector2.new]
       79 LOADN                            R9 0
       80 LOADN                            R10 1
       81 CALL                             R8 2 1
       82 MOVE                             R6 R8
       83 GETIMPORT                        R8 K15 [Vector2.new]
       85 LOADN                            R9 0
       86 LOADN                            R10 0
       87 CALL                             R8 2 1
       88 MOVE                             R7 R8
       89 JUMP                             ; [+33]
       90 GETTABLEKS                       R8 R1 K16 ["Location"]
       92 JUMPIFNOTEQKS                    R8 K19 ["Left"] ; [+14]
       94 GETIMPORT                        R8 K15 [Vector2.new]
       96 LOADN                            R9 0
       97 LOADN                            R10 0
       98 CALL                             R8 2 1
       99 MOVE                             R6 R8
      100 GETIMPORT                        R8 K15 [Vector2.new]
      102 LOADN                            R9 1
      103 LOADN                            R10 0
      104 CALL                             R8 2 1
      105 MOVE                             R7 R8
      106 JUMP                             ; [+16]
      107 GETTABLEKS                       R8 R1 K16 ["Location"]
      109 JUMPIFNOTEQKS                    R8 K20 ["Right"] ; [+13]
      111 GETIMPORT                        R8 K15 [Vector2.new]
      113 LOADN                            R9 1
      114 LOADN                            R10 0
      115 CALL                             R8 2 1
      116 MOVE                             R6 R8
      117 GETIMPORT                        R8 K15 [Vector2.new]
      119 LOADN                            R9 0
      120 LOADN                            R10 0
      121 CALL                             R8 2 1
      122 MOVE                             R7 R8
      123 MOVE                             R10 R4
      124 DUPTABLE                         R11 K27 [{["TargetWidgetUri"], ["TargetAnchorPoint"], ["SubjectAnchorPoint"], ["Offset"], ["AutoHide"] = True}]
      125 GETTABLEKS                       R12 R1 K28 ["Uri"]
      127 SETTABLEKS                       R12 R11 K21 ["TargetWidgetUri"]
      129 SETTABLEKS                       R6 R11 K22 ["TargetAnchorPoint"]
      131 SETTABLEKS                       R7 R11 K23 ["SubjectAnchorPoint"]
      133 GETIMPORT                        R12 K15 [Vector2.new]
      135 LOADN                            R13 0
      136 LOADN                            R14 0
      137 CALL                             R12 2 1
      138 SETTABLEKS                       R12 R11 K24 ["Offset"]
      140 NAMECALL                         R8 R5 K29 ["SetAttachmentAsync"]
      142 CALL                             R8 3 0
      143 GETUPVAL                         R8 7
      144 GETTABLEKS                       R9 R8 K30 ["uniqueTooltipId"]
      146 ADDK                             R9 R9 K31 [1]
      147 SETTABLEKS                       R9 R8 K30 ["uniqueTooltipId"]
      149 GETUPVAL                         R8 7
      150 GETTABLEKS                       R8 R8 K30 ["uniqueTooltipId"]
      152 GETIMPORT                        R9 K34 [task.delay]
      154 GETUPVAL                         R10 7
      155 GETTABLEKS                       R10 R10 K35 ["showDelay"]
      157 NEWCLOSURE                       R11 P1
      158 CAPTURE                          UPVAL U7
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R4
      162 CALL                             R9 2 -1
      163 RETURN                           R9 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["uniqueTooltipId"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+12]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 CALL                             R0 1 1
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       12 GETUPVAL                         R1 4
       13 LOADNIL                          R3
       14 NAMECALL                         R1 R1 K2 ["render"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["uniqueTooltipId"]
        3 ADDK                             R2 R2 K1 [1]
        4 SETTABLEKS                       R2 R1 K0 ["uniqueTooltipId"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["uniqueTooltipId"]
        9 GETIMPORT                        R2 K4 [task.delay]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["hideDelay"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETIMPORT                        R1 K3 [coroutine.status]
        6 GETTABLEKS                       R2 R0 K4 ["watcherThread"]
        8 CALL                             R1 1 1
        9 JUMPIFEQKS                       R1 K5 ["running"] ; [+6]
       11 GETIMPORT                        R1 K7 [coroutine.close]
       13 GETTABLEKS                       R2 R0 K4 ["watcherThread"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K8 ["mouseTrackerInstance"]
       18 NAMECALL                         R1 R1 K9 ["Destroy"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 0
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K0 ["current"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K0 ["current"]
       28 JUMPIFNOT                        R1 ; [+19]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K0 ["current"]
       32 FASTCALL1                        TYPE R2 ; [+2]
       33 GETIMPORT                        R1 K11 [type]
       35 CALL                             R1 1 1
       36 JUMPIFNOTEQKS                    R1 K12 ["thread"] ; [+11]
       38 GETIMPORT                        R1 K15 [task.cancel]
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K0 ["current"]
       43 CALL                             R1 1 0
       44 GETUPVAL                         R1 1
       45 LOADNIL                          R2
       46 SETTABLEKS                       R2 R1 K0 ["current"]
       48 GETUPVAL                         R1 2
       49 GETTABLEKS                       R1 R1 K0 ["current"]
       51 JUMPIFNOT                        R1 ; [+29]
       52 GETUPVAL                         R1 2
       53 LOADB                            R2 0
       54 SETTABLEKS                       R2 R1 K0 ["current"]
       56 GETUPVAL                         R1 3
       57 NAMECALL                         R1 R1 K16 ["get"]
       59 CALL                             R1 1 1
       60 GETUPVAL                         R2 4
       61 GETTABLEKS                       R3 R2 K17 ["uniqueTooltipId"]
       63 ADDK                             R3 R3 K18 [1]
       64 SETTABLEKS                       R3 R2 K17 ["uniqueTooltipId"]
       66 GETUPVAL                         R2 4
       67 GETTABLEKS                       R2 R2 K17 ["uniqueTooltipId"]
       69 GETIMPORT                        R3 K20 [task.delay]
       71 GETUPVAL                         R4 4
       72 GETTABLEKS                       R4 R4 K21 ["hideDelay"]
       74 NEWCLOSURE                       R5 P0
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          VAL R2
       77 CAPTURE                          UPVAL U5
       78 CAPTURE                          VAL R1
       79 CAPTURE                          UPVAL U6
       80 CALL                             R3 2 0
       81 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["open"]
        2 JUMPIF                           R1 ; [+13]
        3 GETTABLEKS                       R1 R0 K1 ["closeTime"]
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETIMPORT                        R2 K4 [os.clock]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R4 R0 K1 ["closeTime"]
       11 ADDK                             R3 R4 K5 [0.5]
       12 JUMPIFLT                         R2 R3 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_13:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 1
        3 JUMPIFNOT                        R0 ; [+44]
        4 GETUPVAL                         R0 0
        5 LOADK                            R2 K3 ["RBX_MousePosition"]
        6 NAMECALL                         R0 R0 K4 ["GetAttribute"]
        8 CALL                             R0 2 1
        9 JUMPIFNOT                        R0 ; [+37]
       10 GETUPVAL                         R1 1
       11 JUMPIFNOT                        R1 ; [+35]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K5 ["Parent"]
       15 JUMPIFNOT                        R1 ; [+31]
       16 GETTABLEKS                       R1 R0 K6 ["X"]
       18 LOADN                            R2 0
       19 JUMPIFLT                         R1 R2 ; [+24]
       21 GETTABLEKS                       R1 R0 K6 ["X"]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K7 ["AbsoluteSize"]
       26 GETTABLEKS                       R2 R2 K6 ["X"]
       28 JUMPIFLT                         R2 R1 ; [+15]
       30 GETTABLEKS                       R1 R0 K8 ["Y"]
       32 LOADN                            R2 0
       33 JUMPIFLT                         R1 R2 ; [+10]
       35 GETTABLEKS                       R1 R0 K8 ["Y"]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K7 ["AbsoluteSize"]
       40 GETTABLEKS                       R2 R2 K8 ["Y"]
       42 JUMPIFNOTLT                      R2 R1 ; [+4]
       44 GETUPVAL                         R1 2
       45 CALL                             R1 0 0
       46 RETURN                           R0 0
       47 JUMPBACK                         ; [-48]
       48 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["disableAllTooltips"]
        8 JUMPIFNOT                        R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K2 ["Text"]
       13 JUMPIFNOT                        R0 ; [+7]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K2 ["Text"]
       17 JUMPIFNOTEQKS                    R1 K3 [""] ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K4 ["Title"]
       24 JUMPIFNOT                        R1 ; [+7]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K4 ["Title"]
       28 JUMPIFNOTEQKS                    R2 K3 [""] ; [+2]
       30 LOADB                            R1 0 +1
       31 LOADB                            R1 1
       32 JUMPIF                           R0 ; [+2]
       33 JUMPIF                           R1 ; [+1]
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 3
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R3 R3 K5 ["menus"]
       39 DUPCLOSURE                       R4 K6 [PROTO_12]
       40 CALL                             R2 2 1
       41 JUMPIFNOT                        R2 ; [+1]
       42 RETURN                           R0 0
       43 GETUPVAL                         R2 5
       44 NAMECALL                         R2 R2 K7 ["get"]
       46 CALL                             R2 1 1
       47 GETUPVAL                         R3 6
       48 NAMECALL                         R3 R3 K7 ["get"]
       50 CALL                             R3 1 1
       51 GETUPVAL                         R4 7
       52 GETUPVAL                         R5 8
       53 MOVE                             R6 R2
       54 GETUPVAL                         R7 2
       55 MOVE                             R8 R3
       56 CALL                             R5 3 1
       57 SETTABLEKS                       R5 R4 K0 ["current"]
       59 GETUPVAL                         R4 0
       60 LOADB                            R5 1
       61 SETTABLEKS                       R5 R4 K0 ["current"]
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R4 R4 K8 ["WidgetRef"]
       66 JUMPIFNOT                        R4 ; [+40]
       67 GETUPVAL                         R4 2
       68 GETTABLEKS                       R4 R4 K8 ["WidgetRef"]
       70 GETTABLEKS                       R4 R4 K0 ["current"]
       72 JUMPIFNOT                        R4 ; [+34]
       73 LOADK                            R6 K9 ["MouseTracker"]
       74 NAMECALL                         R4 R2 K10 ["GetPluginComponent"]
       76 CALL                             R4 2 1
       77 GETUPVAL                         R7 2
       78 GETTABLEKS                       R7 R7 K11 ["Uri"]
       80 NAMECALL                         R5 R4 K12 ["RegisterMouseTrackingRelativeToWidgetAsync"]
       82 CALL                             R5 2 1
       83 GETUPVAL                         R6 2
       84 GETTABLEKS                       R6 R6 K8 ["WidgetRef"]
       86 GETTABLEKS                       R6 R6 K0 ["current"]
       88 GETIMPORT                        R7 K15 [coroutine.create]
       90 NEWCLOSURE                       R8 P1
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R6
       93 CAPTURE                          UPVAL U9
       94 CALL                             R7 1 1
       95 GETIMPORT                        R8 K17 [coroutine.resume]
       97 MOVE                             R9 R7
       98 CALL                             R8 1 0
       99 GETUPVAL                         R8 10
      100 DUPTABLE                         R9 K20 [{"mouseTrackerInstance", "watcherThread"}]
      101 SETTABLEKS                       R5 R9 K18 ["mouseTrackerInstance"]
      103 SETTABLEKS                       R7 R9 K19 ["watcherThread"]
      105 SETTABLEKS                       R9 R8 K0 ["current"]
      107 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 LOADB                            R4 0
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 NEWTABLE                         R5 0 5
       16 GETTABLEKS                       R6 R0 K1 ["Uri"]
       18 GETTABLEKS                       R7 R0 K2 ["Title"]
       20 GETTABLEKS                       R8 R0 K3 ["Icon"]
       22 GETTABLEKS                       R9 R0 K4 ["Text"]
       24 GETTABLEKS                       R10 R0 K5 ["WidgetRef"]
       26 SETLIST                          R5 R6 5 [1]
       28 GETUPVAL                         R6 2
       29 LOADNIL                          R7
       30 CALL                             R6 1 1
       31 GETUPVAL                         R7 3
       32 NEWCLOSURE                       R8 P0
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 MOVE                             R9 R5
       41 CALL                             R7 2 1
       42 GETUPVAL                         R8 3
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 MOVE                             R10 R5
       56 CALL                             R8 2 1
       57 GETUPVAL                         R9 10
       58 NEWCLOSURE                       R10 P2
       59 CAPTURE                          VAL R7
       60 NEWTABLE                         R11 0 0
       62 CALL                             R9 2 0
       63 MOVE                             R9 R8
       64 MOVE                             R10 R7
       65 RETURN                           R9 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["join"]
       37 GETTABLEKS                       R6 R4 K12 ["some"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K6 ["Packages"]
       43 GETTABLEKS                       R8 R8 K13 ["StudioFoundation"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R7 K14 ["Util"]
       48 GETTABLEKS                       R8 R8 K15 ["StudioUri"]
       50 GETTABLEKS                       R9 R1 K16 ["useCallback"]
       52 GETTABLEKS                       R10 R1 K17 ["useEffect"]
       54 GETTABLEKS                       R11 R1 K18 ["useRef"]
       56 GETTABLEKS                       R12 R3 K19 ["ContextServices"]
       58 GETTABLEKS                       R13 R12 K20 ["Plugin"]
       60 GETTABLEKS                       R14 R12 K21 ["Design"]
       62 GETTABLEKS                       R15 R3 K14 ["Util"]
       64 GETTABLEKS                       R15 R15 K22 ["counter"]
       66 GETIMPORT                        R16 K5 [require]
       68 GETTABLEKS                       R17 R0 K23 ["Src"]
       70 GETTABLEKS                       R17 R17 K24 ["Hooks"]
       72 GETTABLEKS                       R17 R17 K25 ["MenuSettings"]
       74 CALL                             R16 1 1
       75 GETIMPORT                        R17 K5 [require]
       77 GETIMPORT                        R18 K1 [script]
       79 GETTABLEKS                       R18 R18 K26 ["Parent"]
       81 GETTABLEKS                       R18 R18 K27 ["TooltipSettings"]
       83 CALL                             R17 1 1
       84 GETIMPORT                        R18 K5 [require]
       86 GETTABLEKS                       R19 R0 K23 ["Src"]
       88 GETTABLEKS                       R19 R19 K14 ["Util"]
       90 GETTABLEKS                       R19 R19 K28 ["uriToTestId"]
       92 CALL                             R18 1 1
       93 DUPCLOSURE                       R19 K29 [PROTO_0]
       94 DUPCLOSURE                       R20 K30 [PROTO_1]
       95 DUPCLOSURE                       R21 K31 [PROTO_4]
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R18
      101 LOADK                            R23 K32 ["Tooltip_%*"]
      102 GETIMPORT                        R25 K35 [math.random]
      104 CALL                             R25 0 1
      105 NAMECALL                         R23 R23 K36 ["format"]
      107 CALL                             R23 2 1
      108 MOVE                             R22 R23
      109 LOADNIL                          R23
      110 LOADNIL                          R24
      111 LOADB                            R25 0
      112 NEWCLOSURE                       R26 P3
      113 CAPTURE                          REF R25
      114 CAPTURE                          REF R23
      115 CAPTURE                          VAL R22
      116 CAPTURE                          REF R24
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R17
      119 NEWCLOSURE                       R27 P4
      120 CAPTURE                          VAL R26
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R22
      123 CAPTURE                          REF R24
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R21
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R17
      128 NEWCLOSURE                       R28 P5
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R26
      131 CAPTURE                          REF R24
      132 NEWCLOSURE                       R29 P6
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R26
      139 CAPTURE                          REF R24
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R27
      143 CAPTURE                          VAL R10
      144 CLOSEUPVALS                      R23
      145 RETURN                           R29 1
