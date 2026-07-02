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
        8 LOADK                            R4 K1 ["Menus/%*"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R4 R4 K2 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 MOVE                             R6 R3
       15 DUPTABLE                         R7 K15 [{["Id"], ["InitialEnabled"] = False, ["MinSize"], ["Modal"] = False, ["Popup"], ["Resizable"] = True, ["Size"], ["Title"], ["ZIndex"] = 200}]
       16 SETTABLEKS                       R3 R7 K3 ["Id"]
       18 GETIMPORT                        R8 K18 [Vector2.new]
       20 LOADN                            R9 100
       21 LOADN                            R10 100
       22 CALL                             R8 2 1
       23 SETTABLEKS                       R8 R7 K6 ["MinSize"]
       25 DUPTABLE                         R8 K20 [{["PassesThroughMouseEvents"] = True}]
       26 SETTABLEKS                       R8 R7 K8 ["Popup"]
       28 GETIMPORT                        R8 K18 [Vector2.new]
       30 LOADN                            R9 100
       31 LOADN                            R10 100
       32 CALL                             R8 2 1
       33 SETTABLEKS                       R8 R7 K11 ["Size"]
       35 SETTABLEKS                       R3 R7 K12 ["Title"]
       37 NAMECALL                         R4 R0 K21 ["CreateQWidgetPluginGui"]
       39 CALL                             R4 3 1
       40 GETIMPORT                        R5 K25 [Enum.ZIndexBehavior.Sibling]
       42 SETTABLEKS                       R5 R4 K23 ["ZIndexBehavior"]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K26 ["createRoot"]
       47 MOVE                             R6 R4
       48 CALL                             R5 1 1
       49 DUPTABLE                         R6 K34 [{["depth"], ["uri"], ["ref"], ["panel"], ["root"], ["open"] = False, [7], ["Panels"]}]
       50 GETUPVAL                         R9 0
       51 LENGTH                           R8 R9
       52 ADDK                             R7 R8 K35 [1]
       53 SETTABLEKS                       R7 R6 K27 ["depth"]
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K36 ["join"]
       58 NAMECALL                         R8 R0 K37 ["GetUri"]
       60 CALL                             R8 1 1
       61 DUPTABLE                         R9 K40 [{["Category"] = "Panels", ["ItemId"]}]
       62 SETTABLEKS                       R3 R9 K39 ["ItemId"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K28 ["uri"]
       67 GETUPVAL                         R7 3
       68 GETTABLEKS                       R7 R7 K41 ["createRef"]
       70 CALL                             R7 0 1
       71 SETTABLEKS                       R7 R6 K29 ["ref"]
       73 SETTABLEKS                       R4 R6 K30 ["panel"]
       75 SETTABLEKS                       R5 R6 K31 ["root"]
       77 SETTABLEKS                       R2 R6 K0 ["onClose"]
       79 LOADK                            R9 K33 ["Panels"]
       80 NAMECALL                         R7 R0 K42 ["GetPluginComponent"]
       82 CALL                             R7 2 1
       83 SETTABLEKS                       R7 R6 K33 ["Panels"]
       85 GETUPVAL                         R7 0
       86 SETTABLE                         R6 R7 R1
       87 LOADK                            R9 K43 ["PluginGui"]
       88 NAMECALL                         R7 R4 K44 ["IsA"]
       90 CALL                             R7 2 1
       91 JUMPIFNOT                        R7 ; [+7]
       92 NEWCLOSURE                       R9 P0
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          VAL R6
       95 CAPTURE                          UPVAL U4
       96 NAMECALL                         R7 R4 K45 ["BindToClose"]
       98 CALL                             R7 2 0
       99 RETURN                           R6 1

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

PROTO_7:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 ADDK                             R4 R4 K0 [1]
        2 SETUPVAL                         R4 0
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["depth"]
        6 ADDK                             R4 R5 K0 [1]
        7 GETUPVAL                         R5 2
        8 NAMECALL                         R5 R5 K2 ["get"]
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K3 ["wrap"]
       14 NAMECALL                         R7 R5 K4 ["GetUri"]
       16 CALL                             R7 1 -1
       17 CALL                             R6 -1 1
       18 LOADK                            R8 K5 ["Menus/%*"]
       19 MOVE                             R10 R4
       20 NAMECALL                         R8 R8 K6 ["format"]
       22 CALL                             R8 2 1
       23 MOVE                             R7 R8
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R8 R8 K7 ["join"]
       27 MOVE                             R9 R6
       28 DUPTABLE                         R10 K11 [{["Category"] = "Panels", ["ItemId"]}]
       29 SETTABLEKS                       R7 R10 K10 ["ItemId"]
       31 CALL                             R8 2 1
       32 GETUPVAL                         R9 4
       33 MOVE                             R10 R5
       34 MOVE                             R11 R4
       35 GETUPVAL                         R12 5
       36 CALL                             R9 3 1
       37 SETTABLEKS                       R1 R9 K12 ["openInProgressUri"]
       39 LOADK                            R12 K9 ["Panels"]
       40 NAMECALL                         R10 R5 K13 ["GetPluginComponent"]
       42 CALL                             R10 2 1
       43 GETTABLEKS                       R11 R9 K14 ["prevAttachment"]
       45 JUMPIFNOT                        R11 ; [+34]
       46 GETUPVAL                         R11 3
       47 GETTABLEKS                       R11 R11 K15 ["equals"]
       49 GETTABLEKS                       R12 R9 K14 ["prevAttachment"]
       51 GETTABLEKS                       R12 R12 K16 ["TargetWidgetUri"]
       53 MOVE                             R13 R1
       54 CALL                             R11 2 1
       55 JUMPIFNOT                        R11 ; [+24]
       56 GETTABLEKS                       R13 R9 K18 ["lastOpenTime"]
       58 ORK                              R12 R13 K17 [0]
       59 GETTABLEKS                       R14 R9 K19 ["lastCloseTime"]
       61 ORK                              R13 R14 K17 [0]
       62 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
       64 GETIMPORT                        R11 K22 [math.max]
       66 CALL                             R11 2 1
       67 MOVE                             R12 R11
       68 JUMPIFNOT                        R12 ; [+9]
       69 GETIMPORT                        R13 K25 [os.clock]
       71 CALL                             R13 0 1
       72 GETUPVAL                         R15 6
       73 ADD                              R14 R11 R15
       74 JUMPIFLT                         R13 R14 ; [+2]
       76 LOADB                            R12 0 +1
       77 LOADB                            R12 1
       78 JUMPIFNOT                        R12 ; [+1]
       79 RETURN                           R9 1
       80 MOVE                             R13 R8
       81 GETIMPORT                        R14 K28 [Vector2.new]
       83 LOADN                            R15 0
       84 LOADN                            R16 0
       85 CALL                             R14 2 -1
       86 NAMECALL                         R11 R10 K29 ["SetSizeAsync"]
       88 CALL                             R11 -1 0
       89 GETTABLEKS                       R11 R9 K12 ["openInProgressUri"]
       91 JUMPIF                           R11 ; [+2]
       92 LOADNIL                          R11
       93 RETURN                           R11 1
       94 GETUPVAL                         R11 7
       95 GETTABLEKS                       R11 R11 K30 ["closeTooltips"]
       97 CALL                             R11 0 0
       98 GETUPVAL                         R11 7
       99 GETTABLEKS                       R11 R11 K31 ["cancelShowTooltip"]
      101 CALL                             R11 0 0
      102 DUPTABLE                         R11 K33 [{"Main"}]
      103 GETUPVAL                         R12 8
      104 GETTABLEKS                       R12 R12 K34 ["createElement"]
      106 LOADK                            R13 K35 ["Frame"]
      107 NEWTABLE                         R14 4 0
      109 GETTABLEKS                       R15 R9 K36 ["ref"]
      111 SETTABLEKS                       R15 R14 K36 ["ref"]
      113 GETUPVAL                         R15 8
      114 GETTABLEKS                       R15 R15 K37 ["Change"]
      116 GETTABLEKS                       R15 R15 K38 ["AbsoluteSize"]
      118 NEWCLOSURE                       R16 P0
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R8
      121 SETTABLE                         R16 R14 R15
      122 GETUPVAL                         R15 8
      123 GETTABLEKS                       R15 R15 K39 ["Tag"]
      125 LOADK                            R16 K40 ["Role-Menu X-Fit"]
      126 SETTABLE                         R16 R14 R15
      127 DUPTABLE                         R15 K43 [{"Menu", "StyleLink"}]
      128 GETUPVAL                         R16 8
      129 GETTABLEKS                       R16 R16 K34 ["createElement"]
      131 GETUPVAL                         R17 9
      132 NEWTABLE                         R18 4 0
      134 SETTABLEKS                       R1 R18 K44 ["WidgetUri"]
      136 SETTABLEKS                       R5 R18 K45 ["Plugin"]
      138 SETTABLEKS                       R0 R18 K46 ["Controls"]
      140 GETUPVAL                         R19 8
      141 GETTABLEKS                       R19 R19 K39 ["Tag"]
      143 LOADK                            R21 K47 ["X-Top X-Fit data-testid=%*"]
      144 GETUPVAL                         R23 10
      145 MOVE                             R24 R1
      146 CALL                             R23 1 1
      147 NAMECALL                         R21 R21 K6 ["format"]
      149 CALL                             R21 2 1
      150 MOVE                             R20 R21
      151 SETTABLE                         R20 R18 R19
      152 CALL                             R16 2 1
      153 SETTABLEKS                       R16 R15 K41 ["Menu"]
      155 GETUPVAL                         R16 8
      156 GETTABLEKS                       R16 R16 K34 ["createElement"]
      158 LOADK                            R17 K42 ["StyleLink"]
      159 DUPTABLE                         R18 K49 [{"StyleSheet"}]
      160 GETUPVAL                         R19 11
      161 NAMECALL                         R19 R19 K2 ["get"]
      163 CALL                             R19 1 1
      164 SETTABLEKS                       R19 R18 K48 ["StyleSheet"]
      166 CALL                             R16 2 1
      167 SETTABLEKS                       R16 R15 K42 ["StyleLink"]
      169 CALL                             R12 3 1
      170 SETTABLEKS                       R12 R11 K32 ["Main"]
      172 DUPTABLE                         R12 K51 [{"ContextStack"}]
      173 GETUPVAL                         R13 8
      174 GETTABLEKS                       R13 R13 K34 ["createElement"]
      176 GETUPVAL                         R14 12
      177 DUPTABLE                         R15 K53 [{"providers"}]
      178 NEWTABLE                         R16 0 2
      180 GETUPVAL                         R17 8
      181 GETTABLEKS                       R17 R17 K34 ["createElement"]
      183 GETUPVAL                         R18 13
      184 DUPTABLE                         R19 K55 [{"onStyleSheetChange"}]
      185 GETUPVAL                         R20 14
      186 SETTABLEKS                       R20 R19 K54 ["onStyleSheetChange"]
      188 CALL                             R17 2 1
      189 GETUPVAL                         R18 8
      190 GETTABLEKS                       R18 R18 K34 ["createElement"]
      192 GETUPVAL                         R19 15
      193 GETTABLEKS                       R19 R19 K56 ["Provider"]
      195 DUPTABLE                         R20 K58 [{"value"}]
      196 GETUPVAL                         R21 16
      197 SETTABLEKS                       R21 R20 K57 ["value"]
      199 CALL                             R18 2 -1
      200 SETLIST                          R16 R17 -1 [1]
      202 SETTABLEKS                       R16 R15 K52 ["providers"]
      204 MOVE                             R16 R11
      205 CALL                             R13 3 1
      206 SETTABLEKS                       R13 R12 K50 ["ContextStack"]
      208 GETTABLEKS                       R13 R9 K59 ["root"]
      210 GETUPVAL                         R15 17
      211 GETTABLEKS                       R15 R15 K60 ["provide"]
      213 NEWTABLE                         R16 0 5
      215 GETUPVAL                         R17 11
      216 GETUPVAL                         R18 18
      217 GETUPVAL                         R19 2
      218 GETUPVAL                         R20 19
      219 GETUPVAL                         R21 20
      220 GETTABLEKS                       R21 R21 K27 ["new"]
      222 DUPTABLE                         R22 K62 [{"depth", "menuOnLeft"}]
      223 SETTABLEKS                       R4 R22 K1 ["depth"]
      225 MOVE                             R23 R3
      226 JUMPIF                           R23 ; [+3]
      227 GETUPVAL                         R23 1
      228 GETTABLEKS                       R23 R23 K61 ["menuOnLeft"]
      230 SETTABLEKS                       R23 R22 K61 ["menuOnLeft"]
      232 CALL                             R21 1 -1
      233 SETLIST                          R16 R17 -1 [1]
      235 MOVE                             R17 R12
      236 CALL                             R15 2 -1
      237 NAMECALL                         R13 R13 K63 ["render"]
      239 CALL                             R13 -1 0
      240 GETUPVAL                         R13 21
      241 DUPTABLE                         R14 K67 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      242 SETTABLEKS                       R1 R14 K16 ["TargetWidgetUri"]
      244 GETIMPORT                        R15 K28 [Vector2.new]
      246 LOADN                            R16 0
      247 LOADN                            R17 1
      248 CALL                             R15 2 1
      249 SETTABLEKS                       R15 R14 K64 ["TargetAnchorPoint"]
      251 GETIMPORT                        R15 K28 [Vector2.new]
      253 LOADN                            R16 0
      254 LOADN                            R17 0
      255 CALL                             R15 2 1
      256 SETTABLEKS                       R15 R14 K65 ["SubjectAnchorPoint"]
      258 GETIMPORT                        R15 K28 [Vector2.new]
      260 LOADN                            R16 0
      261 LOADN                            R17 0
      262 CALL                             R15 2 1
      263 SETTABLEKS                       R15 R14 K66 ["Offset"]
      265 MOVE                             R15 R2
      266 CALL                             R13 2 1
      267 MOVE                             R16 R8
      268 MOVE                             R17 R13
      269 NAMECALL                         R14 R10 K68 ["SetAttachmentAsync"]
      271 CALL                             R14 3 0
      272 GETTABLEKS                       R14 R9 K12 ["openInProgressUri"]
      274 JUMPIF                           R14 ; [+2]
      275 LOADNIL                          R14
      276 RETURN                           R14 1
      277 MOVE                             R16 R8
      278 NAMECALL                         R14 R10 K69 ["ShowIfAttachedAsync"]
      280 CALL                             R14 2 0
      281 GETTABLEKS                       R14 R9 K12 ["openInProgressUri"]
      283 JUMPIF                           R14 ; [+2]
      284 LOADNIL                          R14
      285 RETURN                           R14 1
      286 GETTABLEKS                       R14 R9 K70 ["panel"]
      288 LOADB                            R15 1
      289 SETTABLEKS                       R15 R14 K71 ["Enabled"]
      291 LOADB                            R14 1
      292 SETTABLEKS                       R14 R9 K72 ["open"]
      294 SETTABLEKS                       R13 R9 K14 ["prevAttachment"]
      296 SETTABLEKS                       R13 R9 K73 ["attachment"]
      298 SETTABLEKS                       R0 R9 K74 ["controls"]
      300 GETIMPORT                        R14 K25 [os.clock]
      302 CALL                             R14 0 1
      303 SETTABLEKS                       R14 R9 K18 ["lastOpenTime"]
      305 LOADNIL                          R14
      306 SETTABLEKS                       R14 R9 K12 ["openInProgressUri"]
      308 SETTABLEKS                       R1 R9 K75 ["baseUri"]
      310 GETUPVAL                         R14 22
      311 DUPTABLE                         R15 K79 [{["isOpen"] = True, ["widgetUriString"]}]
      312 GETUPVAL                         R16 3
      313 GETTABLEKS                       R16 R16 K80 ["toString"]
      315 MOVE                             R17 R1
      316 CALL                             R16 1 1
      317 SETTABLEKS                       R16 R15 K78 ["widgetUriString"]
      319 CALL                             R14 1 0
      320 GETIMPORT                        R14 K83 [task.defer]
      322 NEWCLOSURE                       R15 P1
      323 CAPTURE                          VAL R5
      324 CAPTURE                          UPVAL U3
      325 CAPTURE                          VAL R1
      326 CALL                             R14 1 0
      327 RETURN                           R9 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 DUPCLOSURE                       R0 K1 [PROTO_9]
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R0 1
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_11:
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
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U16
       74 CAPTURE                          VAL R2
       75 CAPTURE                          UPVAL U17
       76 CAPTURE                          UPVAL U18
       77 CAPTURE                          VAL R9
       78 CAPTURE                          UPVAL U6
       79 CAPTURE                          VAL R6
       80 CAPTURE                          UPVAL U19
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R4
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          UPVAL U10
       85 CAPTURE                          VAL R11
       86 GETUPVAL                         R15 20
       87 NEWCLOSURE                       R16 P3
       88 CAPTURE                          VAL R10
       89 CAPTURE                          UPVAL U21
       90 NEWTABLE                         R17 0 1
       92 MOVE                             R18 R10
       93 SETLIST                          R17 R18 1 [1]
       95 CALL                             R15 2 0
       96 GETUPVAL                         R15 22
       97 MOVE                             R16 R14
       98 NEWTABLE                         R17 0 2
      100 MOVE                             R18 R13
      101 MOVE                             R19 R0
      102 SETLIST                          R17 R18 2 [1]
      104 CALL                             R15 2 1
      105 MOVE                             R16 R15
      106 GETUPVAL                         R17 21
      107 MOVE                             R18 R13
      108 RETURN                           R16 3

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
       42 GETTABLEKS                       R6 R1 K15 ["useCallback"]
       44 GETTABLEKS                       R7 R1 K16 ["useContext"]
       46 GETTABLEKS                       R8 R1 K17 ["useEffect"]
       48 GETTABLEKS                       R9 R1 K18 ["useMemo"]
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R0 K6 ["Packages"]
       54 GETTABLEKS                       R11 R11 K19 ["ReactUtils"]
       56 CALL                             R10 1 1
       57 GETTABLEKS                       R11 R10 K20 ["ContextStack"]
       59 GETIMPORT                        R12 K5 [require]
       61 GETTABLEKS                       R13 R0 K21 ["Src"]
       63 GETTABLEKS                       R13 R13 K22 ["Contexts"]
       65 GETTABLEKS                       R13 R13 K23 ["ControlSignalStoreContext"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K5 [require]
       70 GETTABLEKS                       R14 R0 K6 ["Packages"]
       72 GETTABLEKS                       R14 R14 K24 ["Framework"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R0 K21 ["Src"]
       79 GETTABLEKS                       R15 R15 K25 ["Types"]
       81 CALL                             R14 1 1
       82 GETTABLEKS                       R15 R3 K26 ["Util"]
       84 GETTABLEKS                       R15 R15 K27 ["StudioUri"]
       86 GETTABLEKS                       R16 R3 K28 ["Components"]
       88 GETTABLEKS                       R16 R16 K29 ["FoundationProviderAdapter"]
       90 GETIMPORT                        R17 K5 [require]
       92 GETTABLEKS                       R18 R0 K21 ["Src"]
       94 GETTABLEKS                       R18 R18 K26 ["Util"]
       96 GETTABLEKS                       R18 R18 K30 ["uriToTestId"]
       98 CALL                             R17 1 1
       99 GETIMPORT                        R18 K5 [require]
      101 GETTABLEKS                       R19 R0 K6 ["Packages"]
      103 GETTABLEKS                       R19 R19 K31 ["Dash"]
      105 CALL                             R18 1 1
      106 GETTABLEKS                       R19 R18 K32 ["join"]
      108 GETTABLEKS                       R20 R13 K33 ["ContextServices"]
      110 GETTABLEKS                       R21 R20 K34 ["Localization"]
      112 GETTABLEKS                       R22 R20 K35 ["Plugin"]
      114 GETTABLEKS                       R23 R20 K36 ["Design"]
      116 GETTABLEKS                       R24 R20 K37 ["Focus"]
      118 GETIMPORT                        R25 K5 [require]
      120 GETTABLEKS                       R26 R0 K21 ["Src"]
      122 GETTABLEKS                       R26 R26 K38 ["Hooks"]
      124 GETTABLEKS                       R26 R26 K39 ["MenuSettings"]
      126 CALL                             R25 1 1
      127 GETIMPORT                        R26 K5 [require]
      129 GETTABLEKS                       R27 R0 K21 ["Src"]
      131 GETTABLEKS                       R27 R27 K38 ["Hooks"]
      133 GETTABLEKS                       R27 R27 K40 ["TooltipSettings"]
      135 CALL                             R26 1 1
      136 GETTABLEKS                       R27 R25 K41 ["menus"]
      138 GETTABLEKS                       R28 R20 K42 ["ContextItem"]
      140 LOADK                            R31 K43 ["Menu"]
      141 NAMECALL                         R29 R28 K44 ["createSimple"]
      143 CALL                             R29 2 1
      144 DIVK                             R30 R4 K45 [1000]
      145 DIVK                             R31 R5 K45 [1000]
      146 LOADN                            R32 0
      147 DUPCLOSURE                       R33 K46 [PROTO_0]
      148 CAPTURE                          VAL R27
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R30
      151 DUPCLOSURE                       R34 K47 [PROTO_2]
      152 CAPTURE                          VAL R27
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R33
      157 NEWCLOSURE                       R35 P2
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R29
      161 CAPTURE                          VAL R24
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R19
      169 CAPTURE                          REF R32
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R34
      172 CAPTURE                          VAL R31
      173 CAPTURE                          VAL R26
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R33
      180 CAPTURE                          VAL R6
      181 CLOSEUPVALS                      R32
      182 RETURN                           R35 1
