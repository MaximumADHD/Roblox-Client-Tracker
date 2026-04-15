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
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K2 ["equals"]
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
        4 LOADN                            R2 255
        5 FORNPREP                         R1
        6 GETUPVAL                         R6 0
        7 GETTABLE                         R5 R6 R3
        8 GETTABLEKS                       R4 R5 K0 ["open"]
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
       15 DUPTABLE                         R7 K12 [{"Id", "InitialEnabled", "MinSize", "Modal", "Popup", "Resizable", "Size", "Title", "ZIndex"}]
       16 SETTABLEKS                       R3 R7 K3 ["Id"]
       18 LOADB                            R8 0
       19 SETTABLEKS                       R8 R7 K4 ["InitialEnabled"]
       21 GETIMPORT                        R8 K15 [Vector2.new]
       23 LOADN                            R9 100
       24 LOADN                            R10 100
       25 CALL                             R8 2 1
       26 SETTABLEKS                       R8 R7 K5 ["MinSize"]
       28 LOADB                            R8 0
       29 SETTABLEKS                       R8 R7 K6 ["Modal"]
       31 DUPTABLE                         R8 K17 [{"PassesThroughMouseEvents"}]
       32 LOADB                            R9 1
       33 SETTABLEKS                       R9 R8 K16 ["PassesThroughMouseEvents"]
       35 SETTABLEKS                       R8 R7 K7 ["Popup"]
       37 LOADB                            R8 1
       38 SETTABLEKS                       R8 R7 K8 ["Resizable"]
       40 GETIMPORT                        R8 K15 [Vector2.new]
       42 LOADN                            R9 100
       43 LOADN                            R10 100
       44 CALL                             R8 2 1
       45 SETTABLEKS                       R8 R7 K9 ["Size"]
       47 SETTABLEKS                       R3 R7 K10 ["Title"]
       49 LOADN                            R8 200
       50 SETTABLEKS                       R8 R7 K11 ["ZIndex"]
       52 NAMECALL                         R4 R0 K18 ["CreateQWidgetPluginGui"]
       54 CALL                             R4 3 1
       55 GETIMPORT                        R5 K22 [Enum.ZIndexBehavior.Sibling]
       57 SETTABLEKS                       R5 R4 K20 ["ZIndexBehavior"]
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R5 R6 K23 ["createRoot"]
       62 MOVE                             R6 R4
       63 CALL                             R5 1 1
       64 DUPTABLE                         R6 K31 [{"depth", "uri", "ref", "panel", "root", "open", "onClose", "Panels"}]
       65 GETUPVAL                         R9 0
       66 LENGTH                           R8 R9
       67 ADDK                             R7 R8 K32 [1]
       68 SETTABLEKS                       R7 R6 K24 ["depth"]
       70 GETUPVAL                         R8 2
       71 GETTABLEKS                       R7 R8 K33 ["join"]
       73 NAMECALL                         R8 R0 K34 ["GetUri"]
       75 CALL                             R8 1 1
       76 DUPTABLE                         R9 K37 [{"Category", "ItemId"}]
       77 LOADK                            R10 K30 ["Panels"]
       78 SETTABLEKS                       R10 R9 K35 ["Category"]
       80 SETTABLEKS                       R3 R9 K36 ["ItemId"]
       82 CALL                             R7 2 1
       83 SETTABLEKS                       R7 R6 K25 ["uri"]
       85 GETUPVAL                         R8 3
       86 GETTABLEKS                       R7 R8 K38 ["createRef"]
       88 CALL                             R7 0 1
       89 SETTABLEKS                       R7 R6 K26 ["ref"]
       91 SETTABLEKS                       R4 R6 K27 ["panel"]
       93 SETTABLEKS                       R5 R6 K28 ["root"]
       95 LOADB                            R7 0
       96 SETTABLEKS                       R7 R6 K29 ["open"]
       98 SETTABLEKS                       R2 R6 K0 ["onClose"]
      100 LOADK                            R9 K30 ["Panels"]
      101 NAMECALL                         R7 R0 K39 ["GetPluginComponent"]
      103 CALL                             R7 2 1
      104 SETTABLEKS                       R7 R6 K30 ["Panels"]
      106 GETUPVAL                         R7 0
      107 SETTABLE                         R6 R7 R1
      108 LOADK                            R9 K40 ["PluginGui"]
      109 NAMECALL                         R7 R4 K41 ["IsA"]
      111 CALL                             R7 2 1
      112 JUMPIFNOT                        R7 ; [+7]
      113 NEWCLOSURE                       R9 P0
      114 CAPTURE                          UPVAL U0
      115 CAPTURE                          VAL R6
      116 CAPTURE                          UPVAL U4
      117 NAMECALL                         R7 R4 K42 ["BindToClose"]
      119 CALL                             R7 2 0
      120 RETURN                           R6 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"isOpen"}]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R1 K0 ["isOpen"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 LOADN                            R3 184
        1 GETTABLEKS                       R5 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R4 R5 K1 ["X"]
        5 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        7 GETIMPORT                        R2 K4 [math.min]
        9 CALL                             R2 2 1
       10 FASTCALL1                        MATH_CEIL R2 ; [+2]
       11 GETIMPORT                        R1 K6 [math.ceil]
       13 CALL                             R1 1 1
       14 LOADN                            R4 184
       15 GETTABLEKS                       R6 R0 K0 ["AbsoluteSize"]
       17 GETTABLEKS                       R5 R6 K7 ["Y"]
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
        5 DUPTABLE                         R3 K5 [{"functionType", "sourceType", "sourceData"}]
        6 LOADK                            R4 K6 ["Navigation"]
        7 SETTABLEKS                       R4 R3 K2 ["functionType"]
        9 LOADK                            R4 K7 ["Widget"]
       10 SETTABLEKS                       R4 R3 K3 ["sourceType"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K8 ["toString"]
       15 GETUPVAL                         R5 2
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K4 ["sourceData"]
       19 NAMECALL                         R1 R0 K9 ["ReportInteractionAsync"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

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
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["depth"]
        6 ADDK                             R4 R5 K0 [1]
        7 GETUPVAL                         R5 2
        8 NAMECALL                         R5 R5 K2 ["get"]
       10 CALL                             R5 1 1
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R6 R7 K3 ["wrap"]
       14 NAMECALL                         R7 R5 K4 ["GetUri"]
       16 CALL                             R7 1 -1
       17 CALL                             R6 -1 1
       18 LOADK                            R8 K5 ["Menus/%*"]
       19 MOVE                             R10 R4
       20 NAMECALL                         R8 R8 K6 ["format"]
       22 CALL                             R8 2 1
       23 MOVE                             R7 R8
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R8 R9 K7 ["join"]
       27 MOVE                             R9 R6
       28 DUPTABLE                         R10 K10 [{"Category", "ItemId"}]
       29 LOADK                            R11 K11 ["Panels"]
       30 SETTABLEKS                       R11 R10 K8 ["Category"]
       32 SETTABLEKS                       R7 R10 K9 ["ItemId"]
       34 CALL                             R8 2 1
       35 GETUPVAL                         R9 4
       36 MOVE                             R10 R5
       37 MOVE                             R11 R4
       38 GETUPVAL                         R12 5
       39 CALL                             R9 3 1
       40 SETTABLEKS                       R1 R9 K12 ["openInProgressUri"]
       42 LOADK                            R12 K11 ["Panels"]
       43 NAMECALL                         R10 R5 K13 ["GetPluginComponent"]
       45 CALL                             R10 2 1
       46 GETTABLEKS                       R11 R9 K14 ["prevAttachment"]
       48 JUMPIFNOT                        R11 ; [+34]
       49 GETUPVAL                         R12 3
       50 GETTABLEKS                       R11 R12 K15 ["equals"]
       52 GETTABLEKS                       R13 R9 K14 ["prevAttachment"]
       54 GETTABLEKS                       R12 R13 K16 ["TargetWidgetUri"]
       56 MOVE                             R13 R1
       57 CALL                             R11 2 1
       58 JUMPIFNOT                        R11 ; [+24]
       59 GETTABLEKS                       R13 R9 K18 ["lastOpenTime"]
       61 ORK                              R12 R13 K17 [0]
       62 GETTABLEKS                       R14 R9 K19 ["lastCloseTime"]
       64 ORK                              R13 R14 K17 [0]
       65 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
       67 GETIMPORT                        R11 K22 [math.max]
       69 CALL                             R11 2 1
       70 MOVE                             R12 R11
       71 JUMPIFNOT                        R12 ; [+9]
       72 GETIMPORT                        R13 K25 [os.clock]
       74 CALL                             R13 0 1
       75 GETUPVAL                         R15 6
       76 ADD                              R14 R11 R15
       77 JUMPIFLT                         R13 R14 ; [+2]
       79 LOADB                            R12 0 +1
       80 LOADB                            R12 1
       81 JUMPIFNOT                        R12 ; [+1]
       82 RETURN                           R9 1
       83 MOVE                             R13 R8
       84 GETIMPORT                        R14 K28 [Vector2.new]
       86 LOADN                            R15 0
       87 LOADN                            R16 0
       88 CALL                             R14 2 -1
       89 NAMECALL                         R11 R10 K29 ["SetSizeAsync"]
       91 CALL                             R11 -1 0
       92 GETTABLEKS                       R11 R9 K12 ["openInProgressUri"]
       94 JUMPIF                           R11 ; [+2]
       95 LOADNIL                          R11
       96 RETURN                           R11 1
       97 GETUPVAL                         R12 7
       98 GETTABLEKS                       R11 R12 K30 ["closeTooltips"]
      100 CALL                             R11 0 0
      101 GETUPVAL                         R12 7
      102 GETTABLEKS                       R11 R12 K31 ["cancelShowTooltip"]
      104 CALL                             R11 0 0
      105 DUPTABLE                         R11 K33 [{"Main"}]
      106 GETUPVAL                         R13 8
      107 GETTABLEKS                       R12 R13 K34 ["createElement"]
      109 LOADK                            R13 K35 ["Frame"]
      110 NEWTABLE                         R14 4 0
      112 GETTABLEKS                       R15 R9 K36 ["ref"]
      114 SETTABLEKS                       R15 R14 K36 ["ref"]
      116 GETUPVAL                         R17 8
      117 GETTABLEKS                       R16 R17 K37 ["Change"]
      119 GETTABLEKS                       R15 R16 K38 ["AbsoluteSize"]
      121 NEWCLOSURE                       R16 P0
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R8
      124 SETTABLE                         R16 R14 R15
      125 GETUPVAL                         R16 8
      126 GETTABLEKS                       R15 R16 K39 ["Tag"]
      128 LOADK                            R16 K40 ["Role-Menu X-Fit"]
      129 SETTABLE                         R16 R14 R15
      130 DUPTABLE                         R15 K43 [{"Menu", "StyleLink"}]
      131 GETUPVAL                         R17 8
      132 GETTABLEKS                       R16 R17 K34 ["createElement"]
      134 GETUPVAL                         R17 9
      135 NEWTABLE                         R18 4 0
      137 SETTABLEKS                       R1 R18 K44 ["WidgetUri"]
      139 SETTABLEKS                       R5 R18 K45 ["Plugin"]
      141 SETTABLEKS                       R0 R18 K46 ["Controls"]
      143 GETUPVAL                         R20 8
      144 GETTABLEKS                       R19 R20 K39 ["Tag"]
      146 LOADK                            R21 K47 ["X-Top X-Fit data-testid=%*"]
      147 GETUPVAL                         R23 10
      148 MOVE                             R24 R1
      149 CALL                             R23 1 1
      150 NAMECALL                         R21 R21 K6 ["format"]
      152 CALL                             R21 2 1
      153 MOVE                             R20 R21
      154 SETTABLE                         R20 R18 R19
      155 CALL                             R16 2 1
      156 SETTABLEKS                       R16 R15 K41 ["Menu"]
      158 GETUPVAL                         R17 8
      159 GETTABLEKS                       R16 R17 K34 ["createElement"]
      161 LOADK                            R17 K42 ["StyleLink"]
      162 DUPTABLE                         R18 K49 [{"StyleSheet"}]
      163 GETUPVAL                         R19 11
      164 NAMECALL                         R19 R19 K2 ["get"]
      166 CALL                             R19 1 1
      167 SETTABLEKS                       R19 R18 K48 ["StyleSheet"]
      169 CALL                             R16 2 1
      170 SETTABLEKS                       R16 R15 K42 ["StyleLink"]
      172 CALL                             R12 3 1
      173 SETTABLEKS                       R12 R11 K32 ["Main"]
      175 DUPTABLE                         R12 K51 [{"ContextStack"}]
      176 GETUPVAL                         R14 8
      177 GETTABLEKS                       R13 R14 K34 ["createElement"]
      179 GETUPVAL                         R14 12
      180 DUPTABLE                         R15 K53 [{"providers"}]
      181 NEWTABLE                         R16 0 2
      183 GETUPVAL                         R18 8
      184 GETTABLEKS                       R17 R18 K34 ["createElement"]
      186 GETUPVAL                         R18 13
      187 DUPTABLE                         R19 K55 [{"onStyleSheetChange"}]
      188 GETUPVAL                         R20 14
      189 SETTABLEKS                       R20 R19 K54 ["onStyleSheetChange"]
      191 CALL                             R17 2 1
      192 GETUPVAL                         R19 8
      193 GETTABLEKS                       R18 R19 K34 ["createElement"]
      195 GETUPVAL                         R20 15
      196 GETTABLEKS                       R19 R20 K56 ["Provider"]
      198 DUPTABLE                         R20 K58 [{"value"}]
      199 GETUPVAL                         R21 16
      200 SETTABLEKS                       R21 R20 K57 ["value"]
      202 CALL                             R18 2 -1
      203 SETLIST                          R16 R17 -1 [1]
      205 SETTABLEKS                       R16 R15 K52 ["providers"]
      207 MOVE                             R16 R11
      208 CALL                             R13 3 1
      209 SETTABLEKS                       R13 R12 K50 ["ContextStack"]
      211 GETTABLEKS                       R13 R9 K59 ["root"]
      213 GETUPVAL                         R16 17
      214 GETTABLEKS                       R15 R16 K60 ["provide"]
      216 NEWTABLE                         R16 0 5
      218 GETUPVAL                         R17 11
      219 GETUPVAL                         R18 18
      220 GETUPVAL                         R19 2
      221 GETUPVAL                         R20 19
      222 GETUPVAL                         R22 20
      223 GETTABLEKS                       R21 R22 K27 ["new"]
      225 DUPTABLE                         R22 K62 [{"depth", "menuOnLeft"}]
      226 SETTABLEKS                       R4 R22 K1 ["depth"]
      228 MOVE                             R23 R3
      229 JUMPIF                           R23 ; [+3]
      230 GETUPVAL                         R24 1
      231 GETTABLEKS                       R23 R24 K61 ["menuOnLeft"]
      233 SETTABLEKS                       R23 R22 K61 ["menuOnLeft"]
      235 CALL                             R21 1 -1
      236 SETLIST                          R16 R17 -1 [1]
      238 MOVE                             R17 R12
      239 CALL                             R15 2 -1
      240 NAMECALL                         R13 R13 K63 ["render"]
      242 CALL                             R13 -1 0
      243 GETUPVAL                         R13 21
      244 DUPTABLE                         R14 K67 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      245 SETTABLEKS                       R1 R14 K16 ["TargetWidgetUri"]
      247 GETIMPORT                        R15 K28 [Vector2.new]
      249 LOADN                            R16 0
      250 LOADN                            R17 1
      251 CALL                             R15 2 1
      252 SETTABLEKS                       R15 R14 K64 ["TargetAnchorPoint"]
      254 GETIMPORT                        R15 K28 [Vector2.new]
      256 LOADN                            R16 0
      257 LOADN                            R17 0
      258 CALL                             R15 2 1
      259 SETTABLEKS                       R15 R14 K65 ["SubjectAnchorPoint"]
      261 GETIMPORT                        R15 K28 [Vector2.new]
      263 LOADN                            R16 0
      264 LOADN                            R17 0
      265 CALL                             R15 2 1
      266 SETTABLEKS                       R15 R14 K66 ["Offset"]
      268 MOVE                             R15 R2
      269 CALL                             R13 2 1
      270 MOVE                             R16 R8
      271 MOVE                             R17 R13
      272 NAMECALL                         R14 R10 K68 ["SetAttachmentAsync"]
      274 CALL                             R14 3 0
      275 GETTABLEKS                       R14 R9 K12 ["openInProgressUri"]
      277 JUMPIF                           R14 ; [+2]
      278 LOADNIL                          R14
      279 RETURN                           R14 1
      280 MOVE                             R16 R8
      281 NAMECALL                         R14 R10 K69 ["ShowIfAttachedAsync"]
      283 CALL                             R14 2 0
      284 GETTABLEKS                       R14 R9 K12 ["openInProgressUri"]
      286 JUMPIF                           R14 ; [+2]
      287 LOADNIL                          R14
      288 RETURN                           R14 1
      289 GETTABLEKS                       R14 R9 K70 ["panel"]
      291 LOADB                            R15 1
      292 SETTABLEKS                       R15 R14 K71 ["Enabled"]
      294 LOADB                            R14 1
      295 SETTABLEKS                       R14 R9 K72 ["open"]
      297 SETTABLEKS                       R13 R9 K14 ["prevAttachment"]
      299 SETTABLEKS                       R13 R9 K73 ["attachment"]
      301 SETTABLEKS                       R0 R9 K74 ["controls"]
      303 GETIMPORT                        R14 K25 [os.clock]
      305 CALL                             R14 0 1
      306 SETTABLEKS                       R14 R9 K18 ["lastOpenTime"]
      308 LOADNIL                          R14
      309 SETTABLEKS                       R14 R9 K12 ["openInProgressUri"]
      311 SETTABLEKS                       R1 R9 K75 ["baseUri"]
      313 GETUPVAL                         R14 22
      314 DUPTABLE                         R15 K78 [{"isOpen", "widgetUriString"}]
      315 LOADB                            R16 1
      316 SETTABLEKS                       R16 R15 K76 ["isOpen"]
      318 GETUPVAL                         R17 3
      319 GETTABLEKS                       R16 R17 K79 ["toString"]
      321 MOVE                             R17 R1
      322 CALL                             R16 1 1
      323 SETTABLEKS                       R16 R15 K77 ["widgetUriString"]
      325 CALL                             R14 1 0
      326 GETIMPORT                        R14 K82 [task.defer]
      328 NEWCLOSURE                       R15 P1
      329 CAPTURE                          VAL R5
      330 CAPTURE                          UPVAL U3
      331 CAPTURE                          VAL R1
      332 CALL                             R14 1 0
      333 RETURN                           R9 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isOpen"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 DUPCLOSURE                       R0 K1 [PROTO_9]
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R0 1
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 GETUPVAL                         R7 6
       22 CALL                             R6 1 1
       23 GETTABLEKS                       R8 R3 K1 ["get"]
       25 JUMPIFNOT                        R8 ; [+4]
       26 NAMECALL                         R7 R3 K1 ["get"]
       28 CALL                             R7 1 1
       29 JUMP                             ; [+7]
       30 DUPTABLE                         R7 K4 [{"depth", "menuOnLeft"}]
       31 LOADN                            R8 0
       32 SETTABLEKS                       R8 R7 K2 ["depth"]
       34 LOADB                            R8 0
       35 SETTABLEKS                       R8 R7 K3 ["menuOnLeft"]
       37 GETUPVAL                         R10 7
       38 GETTABLEKS                       R9 R10 K5 ["Util"]
       40 GETTABLEKS                       R8 R9 K6 ["createFoundationDesignBinding"]
       42 CALL                             R8 0 2
       43 GETUPVAL                         R11 8
       44 GETTABLEKS                       R10 R11 K7 ["useState"]
       46 DUPTABLE                         R11 K9 [{"isOpen"}]
       47 LOADB                            R12 0
       48 SETTABLEKS                       R12 R11 K8 ["isOpen"]
       50 CALL                             R10 1 2
       51 GETUPVAL                         R13 8
       52 GETTABLEKS                       R12 R13 K10 ["useCallback"]
       54 NEWCLOSURE                       R13 P0
       55 CAPTURE                          VAL R11
       56 NEWTABLE                         R14 0 0
       58 CALL                             R12 2 1
       59 GETUPVAL                         R13 9
       60 NEWCLOSURE                       R14 P1
       61 CAPTURE                          UPVAL U10
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R10
       64 NEWTABLE                         R15 0 2
       66 MOVE                             R16 R7
       67 MOVE                             R17 R10
       68 SETLIST                          R15 R16 2 [1]
       70 CALL                             R13 2 1
       71 NEWCLOSURE                       R14 P2
       72 CAPTURE                          UPVAL U11
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R1
       75 CAPTURE                          UPVAL U12
       76 CAPTURE                          UPVAL U13
       77 CAPTURE                          VAL R12
       78 CAPTURE                          UPVAL U14
       79 CAPTURE                          UPVAL U15
       80 CAPTURE                          UPVAL U8
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U16
       83 CAPTURE                          VAL R2
       84 CAPTURE                          UPVAL U17
       85 CAPTURE                          UPVAL U18
       86 CAPTURE                          VAL R9
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R6
       89 CAPTURE                          UPVAL U19
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R4
       92 CAPTURE                          UPVAL U2
       93 CAPTURE                          UPVAL U10
       94 CAPTURE                          VAL R11
       95 GETUPVAL                         R15 20
       96 NEWCLOSURE                       R16 P3
       97 CAPTURE                          VAL R10
       98 CAPTURE                          UPVAL U21
       99 NEWTABLE                         R17 0 1
      101 MOVE                             R18 R10
      102 SETLIST                          R17 R18 1 [1]
      104 CALL                             R15 2 0
      105 GETUPVAL                         R15 22
      106 MOVE                             R16 R14
      107 NEWTABLE                         R17 0 2
      109 MOVE                             R18 R13
      110 MOVE                             R19 R0
      111 SETLIST                          R17 R18 2 [1]
      113 CALL                             R15 2 1
      114 MOVE                             R16 R15
      115 GETUPVAL                         R17 21
      116 MOVE                             R18 R13
      117 RETURN                           R16 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K11 [game]
       30 LOADK                            R6 K12 ["StudioCloseMenuDelayAfterOpenMillis"]
       31 LOADN                            R7 200
       32 NAMECALL                         R4 R4 K13 ["DefineFastInt"]
       34 CALL                             R4 3 1
       35 GETIMPORT                        R5 K11 [game]
       37 LOADK                            R7 K14 ["StudioMenuOpenCooldownMillis"]
       38 LOADN                            R8 238
       39 NAMECALL                         R5 R5 K13 ["DefineFastInt"]
       41 CALL                             R5 3 1
       42 GETTABLEKS                       R6 R1 K15 ["useCallback"]
       44 GETTABLEKS                       R7 R1 K16 ["useContext"]
       46 GETTABLEKS                       R8 R1 K17 ["useEffect"]
       48 GETTABLEKS                       R9 R1 K18 ["useMemo"]
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R12 R0 K6 ["Packages"]
       54 GETTABLEKS                       R11 R12 K19 ["ReactUtils"]
       56 CALL                             R10 1 1
       57 GETTABLEKS                       R11 R10 K20 ["ContextStack"]
       59 GETIMPORT                        R12 K5 [require]
       61 GETTABLEKS                       R15 R0 K21 ["Src"]
       63 GETTABLEKS                       R14 R15 K22 ["Contexts"]
       65 GETTABLEKS                       R13 R14 K23 ["ControlSignalStoreContext"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K5 [require]
       70 GETTABLEKS                       R15 R0 K6 ["Packages"]
       72 GETTABLEKS                       R14 R15 K24 ["Framework"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R16 R0 K21 ["Src"]
       79 GETTABLEKS                       R15 R16 K25 ["Types"]
       81 CALL                             R14 1 1
       82 GETTABLEKS                       R16 R3 K26 ["Util"]
       84 GETTABLEKS                       R15 R16 K27 ["StudioUri"]
       86 GETTABLEKS                       R17 R3 K28 ["Components"]
       88 GETTABLEKS                       R16 R17 K29 ["FoundationProviderAdapter"]
       90 GETIMPORT                        R17 K5 [require]
       92 GETTABLEKS                       R20 R0 K21 ["Src"]
       94 GETTABLEKS                       R19 R20 K26 ["Util"]
       96 GETTABLEKS                       R18 R19 K30 ["uriToTestId"]
       98 CALL                             R17 1 1
       99 GETIMPORT                        R18 K5 [require]
      101 GETTABLEKS                       R20 R0 K6 ["Packages"]
      103 GETTABLEKS                       R19 R20 K31 ["Dash"]
      105 CALL                             R18 1 1
      106 GETTABLEKS                       R19 R18 K32 ["join"]
      108 GETTABLEKS                       R20 R13 K33 ["ContextServices"]
      110 GETTABLEKS                       R21 R20 K34 ["Localization"]
      112 GETTABLEKS                       R22 R20 K35 ["Plugin"]
      114 GETTABLEKS                       R23 R20 K36 ["Design"]
      116 GETTABLEKS                       R24 R20 K37 ["Focus"]
      118 GETIMPORT                        R25 K5 [require]
      120 GETTABLEKS                       R28 R0 K21 ["Src"]
      122 GETTABLEKS                       R27 R28 K38 ["Hooks"]
      124 GETTABLEKS                       R26 R27 K39 ["MenuSettings"]
      126 CALL                             R25 1 1
      127 GETIMPORT                        R26 K5 [require]
      129 GETTABLEKS                       R29 R0 K21 ["Src"]
      131 GETTABLEKS                       R28 R29 K38 ["Hooks"]
      133 GETTABLEKS                       R27 R28 K40 ["TooltipSettings"]
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
