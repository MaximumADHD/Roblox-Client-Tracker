PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Icon"]
       12 DUPTABLE                         R4 K11 [{"name", "variant", "size", "style", "AnchorPoint", "Position", "LayoutOrder"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K12 ["Enums"]
       16 GETTABLEKS                       R5 R5 K13 ["IconName"]
       18 GETTABLEKS                       R5 R5 K14 ["TriangleExclamation"]
       20 SETTABLEKS                       R5 R4 K4 ["name"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K12 ["Enums"]
       25 GETTABLEKS                       R5 R5 K15 ["IconVariant"]
       27 GETTABLEKS                       R5 R5 K16 ["Filled"]
       29 SETTABLEKS                       R5 R4 K5 ["variant"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K12 ["Enums"]
       34 GETTABLEKS                       R5 R5 K17 ["IconSize"]
       36 GETTABLEKS                       R5 R5 K18 ["Medium"]
       38 SETTABLEKS                       R5 R4 K6 ["size"]
       40 GETTABLEKS                       R5 R1 K19 ["Color"]
       42 GETTABLEKS                       R5 R5 K20 ["System"]
       44 GETTABLEKS                       R5 R5 K21 ["Warning"]
       46 SETTABLEKS                       R5 R4 K7 ["style"]
       48 GETIMPORT                        R5 K24 [Vector2.new]
       50 LOADN                            R6 1
       51 LOADK                            R7 K25 [0.5]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K8 ["AnchorPoint"]
       55 GETIMPORT                        R5 K28 [UDim2.fromScale]
       57 LOADN                            R6 1
       58 LOADK                            R7 K25 [0.5]
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R4 K9 ["Position"]
       62 GETTABLEKS                       R5 R0 K10 ["LayoutOrder"]
       64 SETTABLEKS                       R5 R4 K10 ["LayoutOrder"]
       66 CALL                             R2 2 -1
       67 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hoveredIndex"}]
        2 SETTABLEKS                       R0 R3 K0 ["hoveredIndex"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{[1] = 0}]
        2 NAMECALL                         R1 R1 K3 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{[1] = 0}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["onItemEntered"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K5 ["onItemLeft"]
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["ItemClickCallBack"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["ItemClickCallBack"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["ItemClickCallBack"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 MULK                             R7 R3 K0 [0.4]
        1 DUPTABLE                         R8 K2 [{"UIListLayout"}]
        2 GETUPVAL                         R9 0
        3 GETTABLEKS                       R9 R9 K3 ["createElement"]
        5 LOADK                            R10 K1 ["UIListLayout"]
        6 DUPTABLE                         R11 K9 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
        7 GETIMPORT                        R12 K12 [Enum.FillDirection.Vertical]
        9 SETTABLEKS                       R12 R11 K4 ["FillDirection"]
       11 GETIMPORT                        R12 K14 [Enum.HorizontalAlignment.Center]
       13 SETTABLEKS                       R12 R11 K5 ["HorizontalAlignment"]
       15 GETIMPORT                        R12 K16 [Enum.VerticalAlignment.Top]
       17 SETTABLEKS                       R12 R11 K6 ["VerticalAlignment"]
       19 GETIMPORT                        R12 K18 [Enum.SortOrder.LayoutOrder]
       21 SETTABLEKS                       R12 R11 K7 ["SortOrder"]
       23 GETIMPORT                        R12 K21 [UDim.new]
       25 LOADN                            R13 0
       26 LOADN                            R14 0
       27 CALL                             R12 2 1
       28 SETTABLEKS                       R12 R11 K8 ["Padding"]
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K1 ["UIListLayout"]
       33 GETTABLEKS                       R9 R5 K22 ["current"]
       35 LOADN                            R10 0
       36 JUMPIFNOT                        R9 ; [+4]
       37 GETTABLEKS                       R11 R9 K23 ["AbsoluteSize"]
       39 GETTABLEKS                       R10 R11 K24 ["X"]
       41 GETIMPORT                        R11 K26 [pairs]
       43 MOVE                             R12 R1
       44 CALL                             R11 1 3
       45 FORGPREP_NEXT                    R11
       46 GETUPVAL                         R17 1
       47 GETTABLEKS                       R18 R0 K27 ["props"]
       49 GETTABLEKS                       R18 R18 K28 ["Localization"]
       51 CALL                             R17 1 1
       52 GETTABLEKS                       R18 R15 K29 ["name"]
       54 GETTABLE                         R16 R17 R18
       55 JUMPIFEQ                         R15 R2 ; [+2]
       57 LOADB                            R17 0 +1
       58 LOADB                            R17 1
       59 GETTABLEKS                       R18 R4 K30 ["sideTab"]
       61 GETTABLEKS                       R18 R18 K31 ["contentColor"]
       63 GETUPVAL                         R19 2
       64 CALL                             R19 0 1
       65 JUMPIFNOT                        R19 ; [+14]
       66 LOADB                            R19 0
       67 GETTABLEKS                       R20 R15 K29 ["name"]
       69 GETUPVAL                         R21 3
       70 GETTABLEKS                       R21 R21 K32 ["SIDE_TABS"]
       72 GETTABLEKS                       R21 R21 K33 ["Versions"]
       74 JUMPIFNOTEQ                      R20 R21 ; [+5]
       76 GETTABLEKS                       R19 R0 K27 ["props"]
       78 GETTABLEKS                       R19 R19 K34 ["isLatestVersionRejected"]
       80 NOT                              R20 R19
       81 JUMPIFNOT                        R20 ; [+7]
       82 GETTABLEKS                       R20 R0 K27 ["props"]
       84 GETTABLEKS                       R20 R20 K35 ["tabHasErrors"]
       86 GETTABLEKS                       R21 R15 K29 ["name"]
       88 CALL                             R20 1 1
       89 GETUPVAL                         R21 0
       90 GETTABLEKS                       R21 R21 K3 ["createElement"]
       92 LOADK                            R22 K36 ["Frame"]
       93 DUPTABLE                         R23 K40 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       94 GETIMPORT                        R24 K42 [UDim2.new]
       96 LOADK                            R25 K43 [0.5]
       97 LOADN                            R26 0
       98 LOADN                            R27 0
       99 MOVE                             R28 R3
      100 CALL                             R24 4 1
      101 SETTABLEKS                       R24 R23 K37 ["Size"]
      103 SETTABLEKS                       R14 R23 K17 ["LayoutOrder"]
      105 DUPTABLE                         R24 K49 [{"Icon", "Text", "Selection", "ModerationWarning", "Error"}]
      106 GETUPVAL                         R25 0
      107 GETTABLEKS                       R25 R25 K3 ["createElement"]
      109 LOADK                            R26 K50 ["ImageButton"]
      110 NEWTABLE                         R27 8 0
      112 GETIMPORT                        R28 K52 [Vector2.new]
      114 LOADN                            R29 0
      115 LOADK                            R30 K43 [0.5]
      116 CALL                             R28 2 1
      117 SETTABLEKS                       R28 R27 K53 ["AnchorPoint"]
      119 GETIMPORT                        R28 K42 [UDim2.new]
      121 LOADN                            R29 0
      122 LOADN                            R30 0
      123 LOADK                            R31 K43 [0.5]
      124 LOADN                            R32 0
      125 CALL                             R28 4 1
      126 SETTABLEKS                       R28 R27 K54 ["Position"]
      128 GETIMPORT                        R28 K42 [UDim2.new]
      130 LOADN                            R29 0
      131 MOVE                             R30 R7
      132 LOADN                            R31 0
      133 MOVE                             R32 R7
      134 CALL                             R28 4 1
      135 SETTABLEKS                       R28 R27 K37 ["Size"]
      137 LOADN                            R28 1
      138 SETTABLEKS                       R28 R27 K38 ["BackgroundTransparency"]
      140 SETTABLEKS                       R18 R27 K55 ["ImageColor3"]
      142 GETTABLEKS                       R28 R15 K56 ["image"]
      144 SETTABLEKS                       R28 R27 K57 ["Image"]
      146 GETUPVAL                         R28 0
      147 GETTABLEKS                       R28 R28 K58 ["Event"]
      149 GETTABLEKS                       R28 R28 K59 ["Activated"]
      151 NEWCLOSURE                       R29 P0
      152 CAPTURE                          VAL R0
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R15
      155 SETTABLE                         R29 R27 R28
      156 LOADN                            R28 1
      157 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      159 CALL                             R25 2 1
      160 SETTABLEKS                       R25 R24 K44 ["Icon"]
      162 GETUPVAL                         R25 0
      163 GETTABLEKS                       R25 R25 K3 ["createElement"]
      165 LOADK                            R26 K60 ["TextButton"]
      166 NEWTABLE                         R27 16 0
      168 GETIMPORT                        R28 K42 [UDim2.new]
      170 LOADN                            R29 0
      171 MULK                             R30 R7 K61 [2]
      172 LOADN                            R31 0
      173 LOADN                            R32 0
      174 CALL                             R28 4 1
      175 SETTABLEKS                       R28 R27 K54 ["Position"]
      177 GETIMPORT                        R28 K42 [UDim2.new]
      179 LOADN                            R29 1
      180 MINUS                            R30 R7
      181 LOADN                            R31 1
      182 LOADN                            R32 0
      183 CALL                             R28 4 1
      184 SETTABLEKS                       R28 R27 K37 ["Size"]
      186 LOADN                            R28 1
      187 SETTABLEKS                       R28 R27 K38 ["BackgroundTransparency"]
      189 SETTABLEKS                       R16 R27 K45 ["Text"]
      191 GETUPVAL                         R28 4
      192 GETTABLEKS                       R28 R28 K62 ["FONT"]
      194 SETTABLEKS                       R28 R27 K63 ["Font"]
      196 GETUPVAL                         R28 4
      197 GETTABLEKS                       R28 R28 K64 ["FONT_SIZE_LARGE"]
      199 SETTABLEKS                       R28 R27 K65 ["TextSize"]
      201 GETIMPORT                        R28 K68 [Enum.TextXAlignment.Left]
      203 SETTABLEKS                       R28 R27 K66 ["TextXAlignment"]
      205 GETTABLEKS                       R28 R4 K30 ["sideTab"]
      207 GETTABLEKS                       R28 R28 K69 ["textColor"]
      209 SETTABLEKS                       R28 R27 K70 ["TextColor3"]
      211 GETUPVAL                         R28 0
      212 GETTABLEKS                       R28 R28 K58 ["Event"]
      214 GETTABLEKS                       R28 R28 K59 ["Activated"]
      216 NEWCLOSURE                       R29 P1
      217 CAPTURE                          VAL R0
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R15
      220 SETTABLE                         R29 R27 R28
      221 LOADN                            R28 2
      222 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      224 CALL                             R25 2 1
      225 SETTABLEKS                       R25 R24 K45 ["Text"]
      227 MOVE                             R25 R17
      228 JUMPIFNOT                        R25 ; [+71]
      229 GETUPVAL                         R25 0
      230 GETTABLEKS                       R25 R25 K3 ["createElement"]
      232 LOADK                            R26 K36 ["Frame"]
      233 DUPTABLE                         R27 K75 [{["Position"], ["Size"], ["BackgroundTransparency"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["ZIndex"], ["LayoutOrder"] = 0}]
      234 GETIMPORT                        R28 K42 [UDim2.new]
      236 LOADK                            R29 K76 [-0.5]
      237 LOADN                            R30 0
      238 LOADN                            R31 0
      239 LOADN                            R32 0
      240 CALL                             R28 4 1
      241 SETTABLEKS                       R28 R27 K54 ["Position"]
      243 GETIMPORT                        R28 K42 [UDim2.new]
      245 LOADN                            R29 0
      246 MOVE                             R30 R10
      247 LOADN                            R31 1
      248 LOADN                            R32 0
      249 CALL                             R28 4 1
      250 SETTABLEKS                       R28 R27 K37 ["Size"]
      252 GETTABLEKS                       R28 R6 K77 ["selecteBarTrans"]
      254 SETTABLEKS                       R28 R27 K38 ["BackgroundTransparency"]
      256 GETTABLEKS                       R28 R6 K78 ["selecteBarColor"]
      258 SETTABLEKS                       R28 R27 K71 ["BackgroundColor3"]
      260 GETTABLEKS                       R28 R6 K79 ["selecteBarZindex"]
      262 SETTABLEKS                       R28 R27 K74 ["ZIndex"]
      264 DUPTABLE                         R28 K81 [{"Indicator"}]
      265 GETUPVAL                         R29 0
      266 GETTABLEKS                       R29 R29 K3 ["createElement"]
      268 LOADK                            R30 K36 ["Frame"]
      269 DUPTABLE                         R31 K82 [{["Position"], ["Size"], ["BackgroundTransparency"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      270 GETIMPORT                        R32 K42 [UDim2.new]
      272 LOADN                            R33 0
      273 LOADN                            R34 0
      274 LOADN                            R35 0
      275 LOADN                            R36 0
      276 CALL                             R32 4 1
      277 SETTABLEKS                       R32 R31 K54 ["Position"]
      279 GETIMPORT                        R32 K42 [UDim2.new]
      281 LOADN                            R33 0
      282 LOADN                            R34 4
      283 LOADN                            R35 1
      284 LOADN                            R36 0
      285 CALL                             R32 4 1
      286 SETTABLEKS                       R32 R31 K37 ["Size"]
      288 GETTABLEKS                       R32 R6 K83 ["selecteIndicatorTrans"]
      290 SETTABLEKS                       R32 R31 K38 ["BackgroundTransparency"]
      292 GETTABLEKS                       R32 R6 K84 ["selecteIndicatorColor"]
      294 SETTABLEKS                       R32 R31 K71 ["BackgroundColor3"]
      296 CALL                             R29 2 1
      297 SETTABLEKS                       R29 R28 K80 ["Indicator"]
      299 CALL                             R25 3 1
      300 SETTABLEKS                       R25 R24 K46 ["Selection"]
      302 JUMPIFNOT                        R19 ; [+7]
      303 GETUPVAL                         R25 0
      304 GETTABLEKS                       R25 R25 K3 ["createElement"]
      306 GETUPVAL                         R26 5
      307 DUPTABLE                         R27 K86 [{["LayoutOrder"] = 3}]
      308 CALL                             R25 2 1
      309 JUMP                             ; [+1]
      310 LOADNIL                          R25
      311 SETTABLEKS                       R25 R24 K47 ["ModerationWarning"]
      313 MOVE                             R25 R20
      314 JUMPIFNOT                        R25 ; [+46]
      315 GETUPVAL                         R25 0
      316 GETTABLEKS                       R25 R25 K3 ["createElement"]
      318 LOADK                            R26 K50 ["ImageButton"]
      319 NEWTABLE                         R27 8 0
      321 LOADN                            R28 1
      322 SETTABLEKS                       R28 R27 K38 ["BackgroundTransparency"]
      324 GETIMPORT                        R28 K42 [UDim2.new]
      326 LOADN                            R29 0
      327 LOADN                            R30 20
      328 LOADN                            R31 0
      329 LOADN                            R32 20
      330 CALL                             R28 4 1
      331 SETTABLEKS                       R28 R27 K37 ["Size"]
      333 GETIMPORT                        R28 K42 [UDim2.new]
      335 LOADN                            R29 1
      336 LOADN                            R30 -20
      337 LOADK                            R31 K43 [0.5]
      338 LOADN                            R32 -10
      339 CALL                             R28 4 1
      340 SETTABLEKS                       R28 R27 K54 ["Position"]
      342 GETUPVAL                         R28 6
      343 GETTABLEKS                       R28 R28 K87 ["ERROR_ICON"]
      345 SETTABLEKS                       R28 R27 K57 ["Image"]
      347 GETUPVAL                         R28 0
      348 GETTABLEKS                       R28 R28 K58 ["Event"]
      350 GETTABLEKS                       R28 R28 K59 ["Activated"]
      352 NEWCLOSURE                       R29 P2
      353 CAPTURE                          VAL R0
      354 CAPTURE                          VAL R14
      355 CAPTURE                          VAL R15
      356 SETTABLE                         R29 R27 R28
      357 LOADN                            R28 3
      358 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      360 CALL                             R25 2 1
      361 SETTABLEKS                       R25 R24 K48 ["Error"]
      363 CALL                             R21 3 1
      364 SETTABLE                         R21 R8 R16
      365 FORGLOOP                         R11 2 ; [-320]
      367 RETURN                           R8 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["Position"]
       10 GETTABLEKS                       R6 R1 K5 ["Items"]
       12 GETTABLEKS                       R7 R1 K6 ["ItemHeight"]
       14 GETTABLEKS                       R8 R1 K7 ["CurrentTab"]
       16 GETTABLEKS                       R9 R1 K8 ["SelectParentRef"]
       18 GETTABLEKS                       R10 R2 K9 ["sideTab"]
       20 MOVE                             R13 R6
       21 MOVE                             R14 R8
       22 MOVE                             R15 R7
       23 MOVE                             R16 R2
       24 MOVE                             R17 R9
       25 MOVE                             R18 R10
       26 NAMECALL                         R11 R0 K10 ["createSideButtons"]
       28 CALL                             R11 7 1
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R12 R12 K11 ["createElement"]
       32 LOADK                            R13 K12 ["Frame"]
       33 DUPTABLE                         R14 K17 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       34 SETTABLEKS                       R5 R14 K4 ["Position"]
       36 SETTABLEKS                       R4 R14 K3 ["Size"]
       38 SETTABLEKS                       R3 R14 K2 ["LayoutOrder"]
       40 MOVE                             R15 R11
       41 CALL                             R12 3 -1
       42 RETURN                           R12 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["tabErrors"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["tabErrors"]
        7 GETTABLE                         R1 R2 R0
        8 JUMPIFNOT                        R1 ; [+11]
        9 GETIMPORT                        R2 K2 [pairs]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 3
       13 FORGPREP_NEXT                    R2
       14 JUMPIFNOTEQKB                    R6 TRUE ; [+3]
       16 LOADB                            R7 1
       17 RETURN                           R7 1
       18 FORGLOOP                         R2 2 ; [-5]
       20 LOADB                            R1 0
       21 RETURN                           R1 1

PROTO_10:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+7]
        8 GETTABLEKS                       R2 R0 K0 ["versionHistoryWithDescriptions"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETTABLEKS                       R3 R0 K0 ["versionHistoryWithDescriptions"]
       13 GETTABLEN                        R2 R3 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 DUPTABLE                         R3 K3 [{"isLatestVersionRejected", "tabHasErrors"}]
       17 LOADB                            R4 0
       18 JUMPIFEQKNIL                     R2 ; [+10]
       20 GETTABLEKS                       R5 R2 K4 ["moderationState"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K5 ["MODERATION_STATE_REJECTED"]
       25 JUMPIFEQ                         R5 R6 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 SETTABLEKS                       R4 R3 K1 ["isLatestVersionRejected"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          REF R0
       33 SETTABLEKS                       R4 R3 K2 ["tabHasErrors"]
       35 CLOSEUPVALS                      R0
       36 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["RoactRodux"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K9 ["Framework"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R7 R1 K10 ["Foundation"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R0 K11 ["Src"]
       40 GETTABLEKS                       R7 R7 K12 ["Util"]
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R7 K13 ["AssetConfigConstants"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R7 K14 ["Constants"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R7 K15 ["Images"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R0 K11 ["Src"]
       61 GETTABLEKS                       R12 R12 K16 ["Flags"]
       63 GETTABLEKS                       R12 R12 K17 ["getFFlagToolboxEnableExtendedVersioning"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R0 K11 ["Src"]
       70 GETTABLEKS                       R13 R13 K18 ["Localization"]
       72 GETTABLEKS                       R13 R13 K19 ["getLocalizedSideTabsMap"]
       74 CALL                             R12 1 1
       75 GETTABLEKS                       R13 R5 K20 ["ContextServices"]
       77 GETTABLEKS                       R14 R13 K21 ["withContext"]
       79 GETTABLEKS                       R15 R2 K22 ["PureComponent"]
       81 LOADK                            R17 K23 ["SideTabs"]
       82 NAMECALL                         R15 R15 K24 ["extend"]
       84 CALL                             R15 2 1
       85 DUPCLOSURE                       R16 K25 [PROTO_0]
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R3
       88 DUPCLOSURE                       R17 K26 [PROTO_3]
       89 SETTABLEKS                       R17 R15 K27 ["init"]
       91 DUPCLOSURE                       R17 K28 [PROTO_7]
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R10
       99 SETTABLEKS                       R17 R15 K29 ["createSideButtons"]
      101 DUPCLOSURE                       R17 K30 [PROTO_8]
      102 CAPTURE                          VAL R2
      103 SETTABLEKS                       R17 R15 K31 ["render"]
      105 DUPCLOSURE                       R17 K32 [PROTO_10]
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R8
      108 MOVE                             R18 R14
      109 DUPTABLE                         R19 K34 [{"Stylizer", "Localization"}]
      110 GETTABLEKS                       R20 R13 K33 ["Stylizer"]
      112 SETTABLEKS                       R20 R19 K33 ["Stylizer"]
      114 GETTABLEKS                       R20 R13 K18 ["Localization"]
      116 SETTABLEKS                       R20 R19 K18 ["Localization"]
      118 CALL                             R18 1 1
      119 MOVE                             R19 R15
      120 CALL                             R18 1 1
      121 MOVE                             R15 R18
      122 GETTABLEKS                       R18 R4 K35 ["connect"]
      124 MOVE                             R19 R17
      125 CALL                             R18 1 1
      126 MOVE                             R19 R15
      127 CALL                             R18 1 -1
      128 RETURN                           R18 -1
