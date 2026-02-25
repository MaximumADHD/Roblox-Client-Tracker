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
      192 GETUPVAL                         R19 15
      193 CALL                             R19 0 1
      194 JUMPIFNOT                        R19 ; [+12]
      195 GETUPVAL                         R19 8
      196 GETTABLEKS                       R18 R19 K34 ["createElement"]
      198 GETUPVAL                         R20 16
      199 GETTABLEKS                       R19 R20 K56 ["Provider"]
      201 DUPTABLE                         R20 K58 [{"value"}]
      202 GETUPVAL                         R21 17
      203 SETTABLEKS                       R21 R20 K57 ["value"]
      205 CALL                             R18 2 1
      206 JUMP                             ; [+7]
      207 GETUPVAL                         R19 8
      208 GETTABLEKS                       R18 R19 K34 ["createElement"]
      210 GETUPVAL                         R20 8
      211 GETTABLEKS                       R19 R20 K59 ["Fragment"]
      213 CALL                             R18 1 1
      214 SETLIST                          R16 R17 2 [1]
      216 SETTABLEKS                       R16 R15 K52 ["providers"]
      218 MOVE                             R16 R11
      219 CALL                             R13 3 1
      220 SETTABLEKS                       R13 R12 K50 ["ContextStack"]
      222 GETTABLEKS                       R13 R9 K60 ["root"]
      224 GETUPVAL                         R16 18
      225 GETTABLEKS                       R15 R16 K61 ["provide"]
      227 NEWTABLE                         R16 0 5
      229 GETUPVAL                         R17 11
      230 GETUPVAL                         R18 19
      231 GETUPVAL                         R19 2
      232 GETUPVAL                         R20 20
      233 GETUPVAL                         R22 21
      234 GETTABLEKS                       R21 R22 K27 ["new"]
      236 DUPTABLE                         R22 K63 [{"depth", "menuOnLeft"}]
      237 SETTABLEKS                       R4 R22 K1 ["depth"]
      239 MOVE                             R23 R3
      240 JUMPIF                           R23 ; [+3]
      241 GETUPVAL                         R24 1
      242 GETTABLEKS                       R23 R24 K62 ["menuOnLeft"]
      244 SETTABLEKS                       R23 R22 K62 ["menuOnLeft"]
      246 CALL                             R21 1 -1
      247 SETLIST                          R16 R17 -1 [1]
      249 MOVE                             R17 R12
      250 CALL                             R15 2 -1
      251 NAMECALL                         R13 R13 K64 ["render"]
      253 CALL                             R13 -1 0
      254 GETUPVAL                         R13 22
      255 DUPTABLE                         R14 K68 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      256 SETTABLEKS                       R1 R14 K16 ["TargetWidgetUri"]
      258 GETIMPORT                        R15 K28 [Vector2.new]
      260 LOADN                            R16 0
      261 LOADN                            R17 1
      262 CALL                             R15 2 1
      263 SETTABLEKS                       R15 R14 K65 ["TargetAnchorPoint"]
      265 GETIMPORT                        R15 K28 [Vector2.new]
      267 LOADN                            R16 0
      268 LOADN                            R17 0
      269 CALL                             R15 2 1
      270 SETTABLEKS                       R15 R14 K66 ["SubjectAnchorPoint"]
      272 GETIMPORT                        R15 K28 [Vector2.new]
      274 LOADN                            R16 0
      275 LOADN                            R17 0
      276 CALL                             R15 2 1
      277 SETTABLEKS                       R15 R14 K67 ["Offset"]
      279 MOVE                             R15 R2
      280 CALL                             R13 2 1
      281 MOVE                             R16 R8
      282 MOVE                             R17 R13
      283 NAMECALL                         R14 R10 K69 ["SetAttachmentAsync"]
      285 CALL                             R14 3 0
      286 GETTABLEKS                       R14 R9 K12 ["openInProgressUri"]
      288 JUMPIF                           R14 ; [+2]
      289 LOADNIL                          R14
      290 RETURN                           R14 1
      291 MOVE                             R16 R8
      292 NAMECALL                         R14 R10 K70 ["ShowIfAttachedAsync"]
      294 CALL                             R14 2 0
      295 GETTABLEKS                       R14 R9 K12 ["openInProgressUri"]
      297 JUMPIF                           R14 ; [+2]
      298 LOADNIL                          R14
      299 RETURN                           R14 1
      300 GETTABLEKS                       R14 R9 K71 ["panel"]
      302 LOADB                            R15 1
      303 SETTABLEKS                       R15 R14 K72 ["Enabled"]
      305 LOADB                            R14 1
      306 SETTABLEKS                       R14 R9 K73 ["open"]
      308 SETTABLEKS                       R13 R9 K14 ["prevAttachment"]
      310 SETTABLEKS                       R13 R9 K74 ["attachment"]
      312 SETTABLEKS                       R0 R9 K75 ["controls"]
      314 GETIMPORT                        R14 K25 [os.clock]
      316 CALL                             R14 0 1
      317 SETTABLEKS                       R14 R9 K18 ["lastOpenTime"]
      319 LOADNIL                          R14
      320 SETTABLEKS                       R14 R9 K12 ["openInProgressUri"]
      322 SETTABLEKS                       R1 R9 K76 ["baseUri"]
      324 GETUPVAL                         R14 23
      325 DUPTABLE                         R15 K79 [{"isOpen", "widgetUriString"}]
      326 LOADB                            R16 1
      327 SETTABLEKS                       R16 R15 K77 ["isOpen"]
      329 GETUPVAL                         R17 3
      330 GETTABLEKS                       R16 R17 K80 ["toString"]
      332 MOVE                             R17 R1
      333 CALL                             R16 1 1
      334 SETTABLEKS                       R16 R15 K78 ["widgetUriString"]
      336 CALL                             R14 1 0
      337 GETIMPORT                        R14 K83 [task.defer]
      339 NEWCLOSURE                       R15 P1
      340 CAPTURE                          VAL R5
      341 CAPTURE                          UPVAL U3
      342 CAPTURE                          VAL R1
      343 CALL                             R14 1 0
      344 RETURN                           R9 1

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
       20 LOADNIL                          R6
       21 GETUPVAL                         R7 5
       22 CALL                             R7 0 1
       23 JUMPIFNOT                        R7 ; [+4]
       24 GETUPVAL                         R7 6
       25 GETUPVAL                         R8 7
       26 CALL                             R7 1 1
       27 MOVE                             R6 R7
       28 GETTABLEKS                       R8 R3 K1 ["get"]
       30 JUMPIFNOT                        R8 ; [+4]
       31 NAMECALL                         R7 R3 K1 ["get"]
       33 CALL                             R7 1 1
       34 JUMP                             ; [+7]
       35 DUPTABLE                         R7 K4 [{"depth", "menuOnLeft"}]
       36 LOADN                            R8 0
       37 SETTABLEKS                       R8 R7 K2 ["depth"]
       39 LOADB                            R8 0
       40 SETTABLEKS                       R8 R7 K3 ["menuOnLeft"]
       42 GETUPVAL                         R10 8
       43 GETTABLEKS                       R9 R10 K5 ["Util"]
       45 GETTABLEKS                       R8 R9 K6 ["createFoundationDesignBinding"]
       47 CALL                             R8 0 2
       48 GETUPVAL                         R11 9
       49 GETTABLEKS                       R10 R11 K7 ["useState"]
       51 DUPTABLE                         R11 K9 [{"isOpen"}]
       52 LOADB                            R12 0
       53 SETTABLEKS                       R12 R11 K8 ["isOpen"]
       55 CALL                             R10 1 2
       56 GETUPVAL                         R13 9
       57 GETTABLEKS                       R12 R13 K10 ["useCallback"]
       59 NEWCLOSURE                       R13 P0
       60 CAPTURE                          VAL R11
       61 NEWTABLE                         R14 0 0
       63 CALL                             R12 2 1
       64 GETUPVAL                         R13 10
       65 NEWCLOSURE                       R14 P1
       66 CAPTURE                          UPVAL U11
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R10
       69 NEWTABLE                         R15 0 2
       71 MOVE                             R16 R7
       72 MOVE                             R17 R10
       73 SETLIST                          R15 R16 2 [1]
       75 CALL                             R13 2 1
       76 NEWCLOSURE                       R14 P2
       77 CAPTURE                          UPVAL U12
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R1
       80 CAPTURE                          UPVAL U13
       81 CAPTURE                          UPVAL U14
       82 CAPTURE                          VAL R12
       83 CAPTURE                          UPVAL U15
       84 CAPTURE                          UPVAL U16
       85 CAPTURE                          UPVAL U9
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U17
       88 CAPTURE                          VAL R2
       89 CAPTURE                          UPVAL U18
       90 CAPTURE                          UPVAL U19
       91 CAPTURE                          VAL R9
       92 CAPTURE                          UPVAL U5
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          REF R6
       95 CAPTURE                          UPVAL U20
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R4
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          UPVAL U11
      100 CAPTURE                          VAL R11
      101 GETUPVAL                         R15 21
      102 NEWCLOSURE                       R16 P3
      103 CAPTURE                          VAL R10
      104 CAPTURE                          UPVAL U22
      105 NEWTABLE                         R17 0 1
      107 MOVE                             R18 R10
      108 SETLIST                          R17 R18 1 [1]
      110 CALL                             R15 2 0
      111 GETUPVAL                         R15 23
      112 MOVE                             R16 R14
      113 NEWTABLE                         R17 0 2
      115 MOVE                             R18 R13
      116 MOVE                             R19 R0
      117 SETLIST                          R17 R18 2 [1]
      119 CALL                             R15 2 1
      120 MOVE                             R16 R15
      121 GETUPVAL                         R17 22
      122 MOVE                             R18 R13
      123 CLOSEUPVALS                      R6
      124 RETURN                           R16 3

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
       63 GETTABLEKS                       R14 R15 K22 ["SharedFlags"]
       65 GETTABLEKS                       R13 R14 K23 ["getFeatureRibbonControlsCaching"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K5 [require]
       70 GETTABLEKS                       R16 R0 K21 ["Src"]
       72 GETTABLEKS                       R15 R16 K24 ["Contexts"]
       74 GETTABLEKS                       R14 R15 K25 ["ControlSignalStoreContext"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K5 [require]
       79 GETTABLEKS                       R16 R0 K6 ["Packages"]
       81 GETTABLEKS                       R15 R16 K26 ["Framework"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R17 R0 K21 ["Src"]
       88 GETTABLEKS                       R16 R17 K27 ["Types"]
       90 CALL                             R15 1 1
       91 GETTABLEKS                       R17 R3 K28 ["Util"]
       93 GETTABLEKS                       R16 R17 K29 ["StudioUri"]
       95 GETTABLEKS                       R18 R3 K30 ["Components"]
       97 GETTABLEKS                       R17 R18 K31 ["FoundationProviderAdapter"]
       99 GETIMPORT                        R18 K5 [require]
      101 GETTABLEKS                       R21 R0 K21 ["Src"]
      103 GETTABLEKS                       R20 R21 K28 ["Util"]
      105 GETTABLEKS                       R19 R20 K32 ["uriToTestId"]
      107 CALL                             R18 1 1
      108 GETIMPORT                        R19 K5 [require]
      110 GETTABLEKS                       R21 R0 K6 ["Packages"]
      112 GETTABLEKS                       R20 R21 K33 ["Dash"]
      114 CALL                             R19 1 1
      115 GETTABLEKS                       R20 R19 K34 ["join"]
      117 GETTABLEKS                       R21 R14 K35 ["ContextServices"]
      119 GETTABLEKS                       R22 R21 K36 ["Localization"]
      121 GETTABLEKS                       R23 R21 K37 ["Plugin"]
      123 GETTABLEKS                       R24 R21 K38 ["Design"]
      125 GETTABLEKS                       R25 R21 K39 ["Focus"]
      127 GETIMPORT                        R26 K5 [require]
      129 GETTABLEKS                       R29 R0 K21 ["Src"]
      131 GETTABLEKS                       R28 R29 K40 ["Hooks"]
      133 GETTABLEKS                       R27 R28 K41 ["MenuSettings"]
      135 CALL                             R26 1 1
      136 GETIMPORT                        R27 K5 [require]
      138 GETTABLEKS                       R30 R0 K21 ["Src"]
      140 GETTABLEKS                       R29 R30 K40 ["Hooks"]
      142 GETTABLEKS                       R28 R29 K42 ["TooltipSettings"]
      144 CALL                             R27 1 1
      145 GETTABLEKS                       R28 R26 K43 ["menus"]
      147 GETTABLEKS                       R29 R21 K44 ["ContextItem"]
      149 LOADK                            R32 K45 ["Menu"]
      150 NAMECALL                         R30 R29 K46 ["createSimple"]
      152 CALL                             R30 2 1
      153 DIVK                             R31 R4 K47 [1000]
      154 DIVK                             R32 R5 K47 [1000]
      155 LOADN                            R33 0
      156 DUPCLOSURE                       R34 K48 [PROTO_0]
      157 CAPTURE                          VAL R28
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R31
      160 DUPCLOSURE                       R35 K49 [PROTO_2]
      161 CAPTURE                          VAL R28
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R34
      166 NEWCLOSURE                       R36 P2
      167 CAPTURE                          VAL R23
      168 CAPTURE                          VAL R24
      169 CAPTURE                          VAL R30
      170 CAPTURE                          VAL R25
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R20
      179 CAPTURE                          REF R33
      180 CAPTURE                          VAL R16
      181 CAPTURE                          VAL R35
      182 CAPTURE                          VAL R32
      183 CAPTURE                          VAL R27
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R34
      190 CAPTURE                          VAL R6
      191 CLOSEUPVALS                      R33
      192 RETURN                           R36 1
