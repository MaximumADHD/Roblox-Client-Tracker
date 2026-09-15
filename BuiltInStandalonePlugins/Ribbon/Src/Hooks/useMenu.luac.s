PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFEQKNIL                     R0 ; [+3]
        6 JUMPIFLE                         R4 R0 ; [+81]
        8 LOADB                            R6 1
        9 GETTABLEKS                       R7 R5 K0 ["openInProgressUri"]
       11 JUMPIFEQKNIL                     R7 ; [+15]
       13 LOADB                            R6 0
       14 GETTABLEKS                       R7 R5 K1 ["baseUri"]
       16 JUMPIFEQKNIL                     R7 ; [+10]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K2 ["equals"]
       21 GETTABLEKS                       R8 R5 K1 ["baseUri"]
       23 GETTABLEKS                       R9 R5 K0 ["openInProgressUri"]
       25 CALL                             R7 2 1
       26 NOT                              R6 R7
       27 JUMPIFNOT                        R6 ; [+12]
       28 GETTABLEKS                       R7 R5 K3 ["lastOpenTime"]
       30 JUMPIFNOT                        R7 ; [+9]
       31 GETIMPORT                        R8 K6 [os.clock]
       33 CALL                             R8 0 1
       34 GETTABLEKS                       R9 R5 K3 ["lastOpenTime"]
       36 SUB                              R7 R8 R9
       37 GETUPVAL                         R8 2
       38 JUMPIFLT                         R7 R8 ; [+49]
       40 GETTABLEKS                       R7 R5 K7 ["open"]
       42 JUMPIFNOT                        R7 ; [+5]
       43 GETIMPORT                        R7 K6 [os.clock]
       45 CALL                             R7 0 1
       46 SETTABLEKS                       R7 R5 K8 ["closeTime"]
       48 LOADB                            R7 0
       49 SETTABLEKS                       R7 R5 K7 ["open"]
       51 GETTABLEKS                       R7 R5 K9 ["panel"]
       53 LOADB                            R8 0
       54 SETTABLEKS                       R8 R7 K10 ["Enabled"]
       56 GETTABLEKS                       R7 R5 K11 ["attachment"]
       58 JUMPIFNOT                        R7 ; [+8]
       59 GETIMPORT                        R7 K6 [os.clock]
       61 CALL                             R7 0 1
       62 SETTABLEKS                       R7 R5 K12 ["lastCloseTime"]
       64 LOADNIL                          R7
       65 SETTABLEKS                       R7 R5 K11 ["attachment"]
       67 LOADNIL                          R7
       68 SETTABLEKS                       R7 R5 K13 ["controls"]
       70 GETTABLEKS                       R7 R5 K0 ["openInProgressUri"]
       72 JUMPIFNOT                        R7 ; [+3]
       73 LOADNIL                          R7
       74 SETTABLEKS                       R7 R5 K0 ["openInProgressUri"]
       76 GETTABLEKS                       R7 R5 K14 ["onClose"]
       78 JUMPIFNOT                        R7 ; [+3]
       79 GETTABLEKS                       R7 R5 K14 ["onClose"]
       81 CALL                             R7 0 0
       82 GETTABLEKS                       R7 R5 K15 ["root"]
       84 LOADNIL                          R9
       85 NAMECALL                         R7 R7 K16 ["render"]
       87 CALL                             R7 2 0
       88 FORGLOOP                         R1 2 ; [-85]
       90 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 GETUPVAL                         R4 0
        2 LENGTH                           R3 R4
        3 LOADN                            R1 1
        4 LOADN                            R2 -1
        5 FORNPREP                         R1
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R4 R5 R3
        8 GETTABLEKS                       R4 R4 K0 ["open"]
       10 JUMPIFNOT                        R4 ; [+3]
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R0 R4 R3
       13 JUMP                             ; [+1]
       14 FORNLOOP                         R1
       15 GETUPVAL                         R1 1
       16 JUMPIFNOTEQ                      R1 R0 ; [+3]
       18 GETUPVAL                         R1 2
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETUPVAL                         R4 0
        4 GETTABLE                         R3 R4 R1
        5 SETTABLEKS                       R2 R3 K0 ["onClose"]
        7 RETURN                           R3 1
        8 LOADK                            R3 K1 ["Menus/%*"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K2 ["format"]
       12 CALL                             R3 2 1
       13 MOVE                             R6 R3
       14 DUPTABLE                         R7 K15 [{["Id"], ["InitialEnabled"] = False, ["MinSize"], ["Modal"] = False, ["Popup"], ["Resizable"] = True, ["Size"], ["Title"], ["ZIndex"] = 200}]
       15 SETTABLEKS                       R3 R7 K3 ["Id"]
       17 GETIMPORT                        R8 K18 [Vector2.new]
       19 LOADN                            R9 100
       20 LOADN                            R10 100
       21 CALL                             R8 2 1
       22 SETTABLEKS                       R8 R7 K6 ["MinSize"]
       24 DUPTABLE                         R8 K20 [{["PassesThroughMouseEvents"] = True}]
       25 SETTABLEKS                       R8 R7 K8 ["Popup"]
       27 GETIMPORT                        R8 K18 [Vector2.new]
       29 LOADN                            R9 100
       30 LOADN                            R10 100
       31 CALL                             R8 2 1
       32 SETTABLEKS                       R8 R7 K11 ["Size"]
       34 SETTABLEKS                       R3 R7 K12 ["Title"]
       36 NAMECALL                         R4 R0 K21 ["CreateQWidgetPluginGui"]
       38 CALL                             R4 3 1
       39 GETIMPORT                        R5 K25 [Enum.ZIndexBehavior.Sibling]
       41 SETTABLEKS                       R5 R4 K23 ["ZIndexBehavior"]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R5 R5 K26 ["createRoot"]
       46 MOVE                             R6 R4
       47 CALL                             R5 1 1
       48 DUPTABLE                         R6 K34 [{["depth"], ["uri"], ["ref"], ["panel"], ["root"], ["open"] = False, [7], ["Panels"]}]
       49 GETUPVAL                         R9 0
       50 LENGTH                           R8 R9
       51 ADDK                             R7 R8 K35 [1]
       52 SETTABLEKS                       R7 R6 K27 ["depth"]
       54 GETUPVAL                         R7 2
       55 GETTABLEKS                       R7 R7 K36 ["join"]
       57 NAMECALL                         R8 R0 K37 ["GetUri"]
       59 CALL                             R8 1 1
       60 DUPTABLE                         R9 K40 [{["Category"] = "Panels", ["ItemId"]}]
       61 SETTABLEKS                       R3 R9 K39 ["ItemId"]
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R6 K28 ["uri"]
       66 GETUPVAL                         R7 3
       67 GETTABLEKS                       R7 R7 K41 ["createRef"]
       69 CALL                             R7 0 1
       70 SETTABLEKS                       R7 R6 K29 ["ref"]
       72 SETTABLEKS                       R4 R6 K30 ["panel"]
       74 SETTABLEKS                       R5 R6 K31 ["root"]
       76 SETTABLEKS                       R2 R6 K0 ["onClose"]
       78 LOADK                            R9 K33 ["Panels"]
       79 NAMECALL                         R7 R0 K42 ["GetPluginComponent"]
       81 CALL                             R7 2 1
       82 SETTABLEKS                       R7 R6 K33 ["Panels"]
       84 GETUPVAL                         R7 0
       85 SETTABLE                         R6 R7 R1
       86 LOADK                            R9 K43 ["PluginGui"]
       87 NAMECALL                         R7 R4 K44 ["IsA"]
       89 CALL                             R7 2 1
       90 JUMPIFNOT                        R7 ; [+7]
       91 NEWCLOSURE                       R9 P0
       92 CAPTURE                          UPVAL U0
       93 CAPTURE                          VAL R6
       94 CAPTURE                          UPVAL U4
       95 NAMECALL                         R7 R4 K45 ["BindToClose"]
       97 CALL                             R7 2 0
       98 RETURN                           R6 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{[1] = False}]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 LOADN                            R3 3000
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R4 R4 K1 ["X"]
        5 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        7 GETIMPORT                        R2 K4 [math.min]
        9 CALL                             R2 2 1
       10 FASTCALL1                        MATH_CEIL R2 ; [+2]
       11 GETIMPORT                        R1 K6 [math.ceil]
       13 CALL                             R1 1 1
       14 LOADN                            R4 3000
       15 GETTABLEKS                       R5 R0 K0 ["AbsoluteSize"]
       17 GETTABLEKS                       R5 R5 K7 ["Y"]
       19 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       21 GETIMPORT                        R3 K4 [math.min]
       23 CALL                             R3 2 1
       24 FASTCALL1                        MATH_CEIL R3 ; [+2]
       25 GETIMPORT                        R2 K6 [math.ceil]
       27 CALL                             R2 1 1
       28 GETUPVAL                         R3 0
       29 GETUPVAL                         R5 1
       30 GETIMPORT                        R6 K10 [Vector2.new]
       32 MOVE                             R7 R1
       33 MOVE                             R8 R2
       34 CALL                             R6 2 -1
       35 NAMECALL                         R3 R3 K11 ["SetSizeAsync"]
       37 CALL                             R3 -1 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Column"] ; [+6]
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 DUPTABLE                         R3 K4 [{["Tags"] = "X-FitY"}]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["InteractionTelemetry"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 DUPTABLE                         R3 K7 [{["functionType"] = "Navigation", ["sourceType"] = "Widget", ["sourceData"]}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K8 ["toString"]
        9 GETUPVAL                         R5 2
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K6 ["sourceData"]
       13 NAMECALL                         R1 R0 K9 ["ReportInteractionAsync"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R5 0
        1 ADDK                             R5 R5 K0 [1]
        2 SETUPVAL                         R5 0
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["depth"]
        6 ADDK                             R5 R6 K0 [1]
        7 GETUPVAL                         R6 2
        8 NAMECALL                         R6 R6 K2 ["get"]
       10 CALL                             R6 1 1
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K3 ["wrap"]
       14 NAMECALL                         R8 R6 K4 ["GetUri"]
       16 CALL                             R8 1 -1
       17 CALL                             R7 -1 1
       18 LOADK                            R8 K5 ["Menus/%*"]
       19 MOVE                             R10 R5
       20 NAMECALL                         R8 R8 K6 ["format"]
       22 CALL                             R8 2 1
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K7 ["join"]
       26 MOVE                             R10 R7
       27 DUPTABLE                         R11 K11 [{["Category"] = "Panels", ["ItemId"]}]
       28 SETTABLEKS                       R8 R11 K10 ["ItemId"]
       30 CALL                             R9 2 1
       31 GETUPVAL                         R10 4
       32 MOVE                             R11 R6
       33 MOVE                             R12 R5
       34 GETUPVAL                         R13 5
       35 CALL                             R10 3 1
       36 SETTABLEKS                       R1 R10 K12 ["openInProgressUri"]
       38 LOADK                            R13 K9 ["Panels"]
       39 NAMECALL                         R11 R6 K13 ["GetPluginComponent"]
       41 CALL                             R11 2 1
       42 GETTABLEKS                       R12 R10 K14 ["prevAttachment"]
       44 JUMPIFNOT                        R12 ; [+34]
       45 GETUPVAL                         R12 3
       46 GETTABLEKS                       R12 R12 K15 ["equals"]
       48 GETTABLEKS                       R13 R10 K14 ["prevAttachment"]
       50 GETTABLEKS                       R13 R13 K16 ["TargetWidgetUri"]
       52 MOVE                             R14 R1
       53 CALL                             R12 2 1
       54 JUMPIFNOT                        R12 ; [+24]
       55 GETTABLEKS                       R14 R10 K18 ["lastOpenTime"]
       57 ORK                              R13 R14 K17 [0]
       58 GETTABLEKS                       R15 R10 K19 ["lastCloseTime"]
       60 ORK                              R14 R15 K17 [0]
       61 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
       63 GETIMPORT                        R12 K22 [math.max]
       65 CALL                             R12 2 1
       66 MOVE                             R13 R12
       67 JUMPIFNOT                        R13 ; [+9]
       68 GETIMPORT                        R14 K25 [os.clock]
       70 CALL                             R14 0 1
       71 GETUPVAL                         R16 6
       72 ADD                              R15 R12 R16
       73 JUMPIFLT                         R14 R15 ; [+2]
       75 LOADB                            R13 0 +1
       76 LOADB                            R13 1
       77 JUMPIFNOT                        R13 ; [+1]
       78 RETURN                           R10 1
       79 MOVE                             R14 R9
       80 GETIMPORT                        R15 K28 [Vector2.new]
       82 LOADN                            R16 0
       83 LOADN                            R17 0
       84 CALL                             R15 2 -1
       85 NAMECALL                         R12 R11 K29 ["SetSizeAsync"]
       87 CALL                             R12 -1 0
       88 GETTABLEKS                       R12 R10 K12 ["openInProgressUri"]
       90 JUMPIF                           R12 ; [+2]
       91 LOADNIL                          R12
       92 RETURN                           R12 1
       93 GETUPVAL                         R12 7
       94 GETTABLEKS                       R12 R12 K30 ["closeTooltips"]
       96 CALL                             R12 0 0
       97 GETUPVAL                         R12 7
       98 GETTABLEKS                       R12 R12 K31 ["cancelShowTooltip"]
      100 CALL                             R12 0 0
      101 GETUPVAL                         R13 8
      102 CALL                             R13 0 1
      103 JUMPIFNOT                        R13 ; [+5]
      104 JUMPIFNOTEQKNIL                  R4 ; [+2]
      106 LOADB                            R12 0 +1
      107 LOADB                            R12 1
      108 JUMP                             ; [+1]
      109 LOADB                            R12 0
      110 DUPTABLE                         R13 K33 [{"Main"}]
      111 GETUPVAL                         R14 9
      112 GETTABLEKS                       R14 R14 K34 ["createElement"]
      114 LOADK                            R15 K35 ["Frame"]
      115 NEWTABLE                         R16 8 0
      117 GETTABLEKS                       R17 R10 K36 ["ref"]
      119 SETTABLEKS                       R17 R16 K36 ["ref"]
      121 JUMPIFNOT                        R12 ; [+3]
      122 GETIMPORT                        R17 K40 [Enum.AutomaticSize.Y]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R17
      126 SETTABLEKS                       R17 R16 K38 ["AutomaticSize"]
      128 JUMPIFNOT                        R12 ; [+6]
      129 GETIMPORT                        R17 K43 [UDim2.fromOffset]
      131 MOVE                             R18 R4
      132 LOADN                            R19 0
      133 CALL                             R17 2 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R17
      136 SETTABLEKS                       R17 R16 K44 ["Size"]
      138 GETUPVAL                         R17 9
      139 GETTABLEKS                       R17 R17 K45 ["Change"]
      141 GETTABLEKS                       R17 R17 K46 ["AbsoluteSize"]
      143 NEWCLOSURE                       R18 P0
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R9
      146 SETTABLE                         R18 R16 R17
      147 GETUPVAL                         R17 9
      148 GETTABLEKS                       R17 R17 K47 ["Tag"]
      150 GETUPVAL                         R18 10
      151 LOADK                            R19 K48 ["Role-Menu"]
      152 JUMPIF                           R12 ; [+2]
      153 LOADK                            R20 K49 ["X-Fit"]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R20
      156 CALL                             R18 2 1
      157 SETTABLE                         R18 R16 R17
      158 DUPTABLE                         R17 K52 [{"Menu", "StyleLink"}]
      159 GETUPVAL                         R18 9
      160 GETTABLEKS                       R18 R18 K34 ["createElement"]
      162 GETUPVAL                         R19 11
      163 NEWTABLE                         R20 4 0
      165 SETTABLEKS                       R1 R20 K53 ["WidgetUri"]
      167 SETTABLEKS                       R6 R20 K54 ["Plugin"]
      169 JUMPIFNOT                        R12 ; [+6]
      170 GETUPVAL                         R21 12
      171 MOVE                             R22 R0
      172 DUPCLOSURE                       R23 K55 [PROTO_6]
      173 CAPTURE                          UPVAL U13
      174 CALL                             R21 2 1
      175 JUMP                             ; [+1]
      176 MOVE                             R21 R0
      177 SETTABLEKS                       R21 R20 K56 ["Controls"]
      179 GETUPVAL                         R21 9
      180 GETTABLEKS                       R21 R21 K47 ["Tag"]
      182 GETUPVAL                         R22 10
      183 LOADK                            R23 K57 ["X-Top"]
      184 JUMPIFNOT                        R12 ; [+2]
      185 LOADK                            R24 K58 ["X-FitY"]
      186 JUMP                             ; [+1]
      187 LOADK                            R24 K49 ["X-Fit"]
      188 LOADK                            R25 K59 ["data-testid=%*"]
      189 GETUPVAL                         R27 14
      190 MOVE                             R28 R1
      191 CALL                             R27 1 1
      192 NAMECALL                         R25 R25 K6 ["format"]
      194 CALL                             R25 2 1
      195 CALL                             R22 3 1
      196 SETTABLE                         R22 R20 R21
      197 CALL                             R18 2 1
      198 SETTABLEKS                       R18 R17 K50 ["Menu"]
      200 GETUPVAL                         R18 9
      201 GETTABLEKS                       R18 R18 K34 ["createElement"]
      203 LOADK                            R19 K51 ["StyleLink"]
      204 DUPTABLE                         R20 K61 [{"StyleSheet"}]
      205 GETUPVAL                         R21 15
      206 NAMECALL                         R21 R21 K2 ["get"]
      208 CALL                             R21 1 1
      209 SETTABLEKS                       R21 R20 K60 ["StyleSheet"]
      211 CALL                             R18 2 1
      212 SETTABLEKS                       R18 R17 K51 ["StyleLink"]
      214 CALL                             R14 3 1
      215 SETTABLEKS                       R14 R13 K32 ["Main"]
      217 DUPTABLE                         R14 K63 [{"ContextStack"}]
      218 GETUPVAL                         R15 9
      219 GETTABLEKS                       R15 R15 K34 ["createElement"]
      221 GETUPVAL                         R16 16
      222 DUPTABLE                         R17 K65 [{"providers"}]
      223 NEWTABLE                         R18 0 2
      225 GETUPVAL                         R19 9
      226 GETTABLEKS                       R19 R19 K34 ["createElement"]
      228 GETUPVAL                         R20 17
      229 DUPTABLE                         R21 K67 [{"onStyleSheetChange"}]
      230 GETUPVAL                         R22 18
      231 SETTABLEKS                       R22 R21 K66 ["onStyleSheetChange"]
      233 CALL                             R19 2 1
      234 GETUPVAL                         R20 9
      235 GETTABLEKS                       R20 R20 K34 ["createElement"]
      237 GETUPVAL                         R21 19
      238 GETTABLEKS                       R21 R21 K68 ["Provider"]
      240 DUPTABLE                         R22 K70 [{"value"}]
      241 GETUPVAL                         R23 20
      242 SETTABLEKS                       R23 R22 K69 ["value"]
      244 CALL                             R20 2 -1
      245 SETLIST                          R18 R19 -1 [1]
      247 SETTABLEKS                       R18 R17 K64 ["providers"]
      249 MOVE                             R18 R13
      250 CALL                             R15 3 1
      251 SETTABLEKS                       R15 R14 K62 ["ContextStack"]
      253 GETTABLEKS                       R15 R10 K71 ["root"]
      255 GETUPVAL                         R17 21
      256 GETTABLEKS                       R17 R17 K72 ["provide"]
      258 NEWTABLE                         R18 0 5
      260 GETUPVAL                         R19 15
      261 GETUPVAL                         R20 22
      262 GETUPVAL                         R21 2
      263 GETUPVAL                         R22 23
      264 GETUPVAL                         R23 24
      265 GETTABLEKS                       R23 R23 K27 ["new"]
      267 DUPTABLE                         R24 K74 [{"depth", "menuOnLeft"}]
      268 SETTABLEKS                       R5 R24 K1 ["depth"]
      270 MOVE                             R25 R3
      271 JUMPIF                           R25 ; [+3]
      272 GETUPVAL                         R25 1
      273 GETTABLEKS                       R25 R25 K73 ["menuOnLeft"]
      275 SETTABLEKS                       R25 R24 K73 ["menuOnLeft"]
      277 CALL                             R23 1 -1
      278 SETLIST                          R18 R19 -1 [1]
      280 MOVE                             R19 R14
      281 CALL                             R17 2 -1
      282 NAMECALL                         R15 R15 K75 ["render"]
      284 CALL                             R15 -1 0
      285 GETUPVAL                         R15 13
      286 DUPTABLE                         R16 K79 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      287 SETTABLEKS                       R1 R16 K16 ["TargetWidgetUri"]
      289 GETIMPORT                        R17 K28 [Vector2.new]
      291 LOADN                            R18 0
      292 LOADN                            R19 1
      293 CALL                             R17 2 1
      294 SETTABLEKS                       R17 R16 K76 ["TargetAnchorPoint"]
      296 GETIMPORT                        R17 K28 [Vector2.new]
      298 LOADN                            R18 0
      299 LOADN                            R19 0
      300 CALL                             R17 2 1
      301 SETTABLEKS                       R17 R16 K77 ["SubjectAnchorPoint"]
      303 GETIMPORT                        R17 K28 [Vector2.new]
      305 LOADN                            R18 0
      306 LOADN                            R19 0
      307 CALL                             R17 2 1
      308 SETTABLEKS                       R17 R16 K78 ["Offset"]
      310 MOVE                             R17 R2
      311 CALL                             R15 2 1
      312 MOVE                             R18 R9
      313 MOVE                             R19 R15
      314 NAMECALL                         R16 R11 K80 ["SetAttachmentAsync"]
      316 CALL                             R16 3 0
      317 GETTABLEKS                       R16 R10 K12 ["openInProgressUri"]
      319 JUMPIF                           R16 ; [+2]
      320 LOADNIL                          R16
      321 RETURN                           R16 1
      322 MOVE                             R18 R9
      323 NAMECALL                         R16 R11 K81 ["ShowIfAttachedAsync"]
      325 CALL                             R16 2 0
      326 GETTABLEKS                       R16 R10 K12 ["openInProgressUri"]
      328 JUMPIF                           R16 ; [+2]
      329 LOADNIL                          R16
      330 RETURN                           R16 1
      331 GETTABLEKS                       R16 R10 K82 ["panel"]
      333 LOADB                            R17 1
      334 SETTABLEKS                       R17 R16 K83 ["Enabled"]
      336 LOADB                            R16 1
      337 SETTABLEKS                       R16 R10 K84 ["open"]
      339 SETTABLEKS                       R15 R10 K14 ["prevAttachment"]
      341 SETTABLEKS                       R15 R10 K85 ["attachment"]
      343 SETTABLEKS                       R0 R10 K86 ["controls"]
      345 GETIMPORT                        R16 K25 [os.clock]
      347 CALL                             R16 0 1
      348 SETTABLEKS                       R16 R10 K18 ["lastOpenTime"]
      350 LOADNIL                          R16
      351 SETTABLEKS                       R16 R10 K12 ["openInProgressUri"]
      353 SETTABLEKS                       R1 R10 K87 ["baseUri"]
      355 GETUPVAL                         R16 25
      356 DUPTABLE                         R17 K91 [{["isOpen"] = True, ["widgetUriString"]}]
      357 GETUPVAL                         R18 3
      358 GETTABLEKS                       R18 R18 K92 ["toString"]
      360 MOVE                             R19 R1
      361 CALL                             R18 1 1
      362 SETTABLEKS                       R18 R17 K90 ["widgetUriString"]
      364 CALL                             R16 1 0
      365 GETIMPORT                        R16 K95 [task.defer]
      367 NEWCLOSURE                       R17 P2
      368 CAPTURE                          VAL R6
      369 CAPTURE                          UPVAL U3
      370 CAPTURE                          VAL R1
      371 CALL                             R16 1 0
      372 RETURN                           R10 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 DUPCLOSURE                       R0 K1 [PROTO_10]
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R0 1
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 GETUPVAL                         R7 6
       22 CALL                             R6 1 1
       23 GETTABLEKS                       R8 R3 K1 ["get"]
       25 JUMPIFNOT                        R8 ; [+4]
       26 NAMECALL                         R7 R3 K1 ["get"]
       28 CALL                             R7 1 1
       29 JUMP                             ; [+1]
       30 DUPTABLE                         R7 K6 [{["depth"] = 0, ["menuOnLeft"] = False}]
       31 GETUPVAL                         R8 7
       32 GETTABLEKS                       R8 R8 K7 ["Util"]
       34 GETTABLEKS                       R8 R8 K8 ["createFoundationDesignBinding"]
       36 CALL                             R8 0 2
       37 GETUPVAL                         R10 8
       38 GETTABLEKS                       R10 R10 K9 ["useState"]
       40 DUPTABLE                         R11 K11 [{["isOpen"] = False}]
       41 CALL                             R10 1 2
       42 GETUPVAL                         R12 8
       43 GETTABLEKS                       R12 R12 K12 ["useCallback"]
       45 NEWCLOSURE                       R13 P0
       46 CAPTURE                          VAL R11
       47 NEWTABLE                         R14 0 0
       49 CALL                             R12 2 1
       50 GETUPVAL                         R13 9
       51 NEWCLOSURE                       R14 P1
       52 CAPTURE                          UPVAL U10
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R10
       55 NEWTABLE                         R15 0 2
       57 MOVE                             R16 R7
       58 MOVE                             R17 R10
       59 SETLIST                          R15 R16 2 [1]
       61 CALL                             R13 2 1
       62 NEWCLOSURE                       R14 P2
       63 CAPTURE                          UPVAL U11
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U12
       67 CAPTURE                          UPVAL U13
       68 CAPTURE                          VAL R12
       69 CAPTURE                          UPVAL U14
       70 CAPTURE                          UPVAL U15
       71 CAPTURE                          UPVAL U16
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          UPVAL U17
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U18
       76 CAPTURE                          UPVAL U10
       77 CAPTURE                          UPVAL U19
       78 CAPTURE                          VAL R2
       79 CAPTURE                          UPVAL U20
       80 CAPTURE                          UPVAL U21
       81 CAPTURE                          VAL R9
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          VAL R6
       84 CAPTURE                          UPVAL U22
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R4
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          VAL R11
       89 GETUPVAL                         R15 23
       90 NEWCLOSURE                       R16 P3
       91 CAPTURE                          VAL R10
       92 CAPTURE                          UPVAL U24
       93 NEWTABLE                         R17 0 1
       95 MOVE                             R18 R10
       96 SETLIST                          R17 R18 1 [1]
       98 CALL                             R15 2 0
       99 GETUPVAL                         R15 25
      100 MOVE                             R16 R14
      101 NEWTABLE                         R17 0 2
      103 MOVE                             R18 R13
      104 MOVE                             R19 R0
      105 SETLIST                          R17 R18 2 [1]
      107 CALL                             R15 2 1
      108 MOVE                             R16 R15
      109 GETUPVAL                         R17 24
      110 MOVE                             R18 R13
      111 RETURN                           R16 3

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
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K11 [game]
       30 LOADK                            R6 K12 ["StudioCloseMenuDelayAfterOpenMillis"]
       31 LOADN                            R7 200
       32 NAMECALL                         R4 R4 K13 ["DefineFastInt"]
       34 CALL                             R4 3 1
       35 GETIMPORT                        R5 K11 [game]
       37 LOADK                            R7 K14 ["StudioMenuOpenCooldownMillis"]
       38 LOADN                            R8 750
       39 NAMECALL                         R5 R5 K13 ["DefineFastInt"]
       41 CALL                             R5 3 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Src"]
       46 GETTABLEKS                       R7 R7 K16 ["SharedFlags"]
       48 GETTABLEKS                       R7 R7 K17 ["getFFlagRibbonDropdownMinWidth"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R1 K18 ["useCallback"]
       53 GETTABLEKS                       R8 R1 K19 ["useContext"]
       55 GETTABLEKS                       R9 R1 K20 ["useEffect"]
       57 GETTABLEKS                       R10 R1 K21 ["useMemo"]
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R0 K6 ["Packages"]
       63 GETTABLEKS                       R12 R12 K22 ["ReactUtils"]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R12 R11 K23 ["ContextStack"]
       68 GETIMPORT                        R13 K5 [require]
       70 GETTABLEKS                       R14 R0 K15 ["Src"]
       72 GETTABLEKS                       R14 R14 K24 ["Contexts"]
       74 GETTABLEKS                       R14 R14 K25 ["ControlSignalStoreContext"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K5 [require]
       79 GETTABLEKS                       R15 R0 K6 ["Packages"]
       81 GETTABLEKS                       R15 R15 K26 ["Framework"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R16 R0 K15 ["Src"]
       88 GETTABLEKS                       R16 R16 K27 ["Types"]
       90 CALL                             R15 1 1
       91 GETTABLEKS                       R16 R3 K28 ["Util"]
       93 GETTABLEKS                       R16 R16 K29 ["StudioUri"]
       95 GETTABLEKS                       R17 R3 K30 ["Components"]
       97 GETTABLEKS                       R17 R17 K31 ["FoundationProviderAdapter"]
       99 GETIMPORT                        R18 K5 [require]
      101 GETTABLEKS                       R19 R0 K15 ["Src"]
      103 GETTABLEKS                       R19 R19 K28 ["Util"]
      105 GETTABLEKS                       R19 R19 K32 ["uriToTestId"]
      107 CALL                             R18 1 1
      108 GETIMPORT                        R19 K5 [require]
      110 GETTABLEKS                       R20 R0 K6 ["Packages"]
      112 GETTABLEKS                       R20 R20 K33 ["Dash"]
      114 CALL                             R19 1 1
      115 GETTABLEKS                       R20 R19 K34 ["join"]
      117 GETTABLEKS                       R21 R19 K35 ["map"]
      119 GETTABLEKS                       R22 R14 K36 ["Styling"]
      121 GETTABLEKS                       R23 R22 K37 ["joinTags"]
      123 GETTABLEKS                       R24 R14 K38 ["ContextServices"]
      125 GETTABLEKS                       R25 R24 K39 ["Localization"]
      127 GETTABLEKS                       R26 R24 K40 ["Plugin"]
      129 GETTABLEKS                       R27 R24 K41 ["Design"]
      131 GETTABLEKS                       R28 R24 K42 ["Focus"]
      133 GETIMPORT                        R29 K5 [require]
      135 GETTABLEKS                       R30 R0 K15 ["Src"]
      137 GETTABLEKS                       R30 R30 K43 ["Hooks"]
      139 GETTABLEKS                       R30 R30 K44 ["MenuSettings"]
      141 CALL                             R29 1 1
      142 GETIMPORT                        R30 K5 [require]
      144 GETTABLEKS                       R31 R0 K15 ["Src"]
      146 GETTABLEKS                       R31 R31 K43 ["Hooks"]
      148 GETTABLEKS                       R31 R31 K45 ["TooltipSettings"]
      150 CALL                             R30 1 1
      151 GETTABLEKS                       R31 R29 K46 ["menus"]
      153 GETTABLEKS                       R32 R24 K47 ["ContextItem"]
      155 LOADK                            R35 K48 ["Menu"]
      156 NAMECALL                         R33 R32 K49 ["createSimple"]
      158 CALL                             R33 2 1
      159 DIVK                             R34 R4 K50 [1000]
      160 DIVK                             R35 R5 K50 [1000]
      161 LOADN                            R36 0
      162 DUPCLOSURE                       R37 K51 [PROTO_0]
      163 CAPTURE                          VAL R31
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R34
      166 DUPCLOSURE                       R38 K52 [PROTO_2]
      167 CAPTURE                          VAL R31
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R37
      172 NEWCLOSURE                       R39 P2
      173 CAPTURE                          VAL R26
      174 CAPTURE                          VAL R27
      175 CAPTURE                          VAL R33
      176 CAPTURE                          VAL R28
      177 CAPTURE                          VAL R25
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R20
      184 CAPTURE                          REF R36
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R38
      187 CAPTURE                          VAL R35
      188 CAPTURE                          VAL R30
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R24
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R37
      198 CAPTURE                          VAL R7
      199 CLOSEUPVALS                      R36
      200 RETURN                           R39 1
