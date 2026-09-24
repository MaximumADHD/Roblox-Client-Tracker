PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"selected"}]
        2 SETTABLEKS                       R0 R3 K0 ["selected"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ChangedOptInLocations"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R1 R3
        8 JUMPIFEQKNIL                     R2 ; [+4]
       10 GETUPVAL                         R3 1
       11 GETTABLE                         R2 R1 R3
       12 RETURN                           R2 1
       13 LOADB                            R2 0
       14 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isFirstPublish"]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["IsPublish"]
        7 GETIMPORT                        R3 K4 [game]
        9 GETTABLEKS                       R3 R3 K5 ["GameId"]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K0 ["isFirstPublish"]
       14 DUPTABLE                         R1 K12 [{["selected"] = 1, ["showEmailDialog"] = False, ["bottomText"] = ""}]
       15 SETTABLEKS                       R1 R0 K13 ["state"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K14 ["finishedConnection"]
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K15 ["changeSelection"]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K16 ["createRef"]
       27 CALL                             R1 0 1
       28 SETTABLEKS                       R1 R0 K17 ["scrollingFrameRef"]
       30 NEWCLOSURE                       R1 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U2
       33 SETTABLEKS                       R1 R0 K18 ["shouldShowEmailDialog"]
       35 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+22]
        1 JUMPIFEQKN                       R1 K0 [0] ; [+21]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["isFirstPublish"]
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["props"]
       14 GETTABLEKS                       R2 R2 K3 ["OpenPublishSuccessfulPage"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["props"]
       19 GETTABLEKS                       R3 R3 K4 ["Changed"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K2 ["props"]
       26 GETTABLEKS                       R2 R2 K5 ["OpenPublishFailPage"]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K2 ["props"]
       31 GETTABLEKS                       R3 R3 K4 ["Changed"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GamePublishFinished"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NAMECALL                         R1 R1 K1 ["connect"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K2 ["finishedConnection"]
       11 GETTABLEKS                       R1 R0 K3 ["props"]
       13 GETTABLEKS                       R1 R1 K4 ["DispatchLoadGroups"]
       15 GETTABLEKS                       R2 R0 K3 ["props"]
       17 GETTABLEKS                       R2 R2 K5 ["IsPublish"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K3 ["props"]
       22 GETTABLEKS                       R1 R1 K6 ["DispatchDataSharingDefault"]
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["finishedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["finishedConnection"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+11]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["shouldShowEmailDialog"]
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R0 1
        9 DUPTABLE                         R2 K3 [{["showEmailDialog"] = True}]
       10 NAMECALL                         R0 R0 K4 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 0
       15 CALL                             R0 0 1
       16 JUMPIFNOT                        R0 ; [+14]
       17 NEWTABLE                         R0 2 0
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R2 3
       21 SETTABLE                         R2 R0 R1
       22 GETUPVAL                         R1 4
       23 LOADB                            R2 0
       24 SETTABLE                         R2 R0 R1
       25 GETUPVAL                         R1 5
       26 GETUPVAL                         R2 6
       27 GETUPVAL                         R3 7
       28 GETUPVAL                         R4 8
       29 MOVE                             R5 R0
       30 CALL                             R1 4 0
       31 GETUPVAL                         R0 9
       32 LOADB                            R1 1
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 10
       35 GETTABLEKS                       R0 R0 K5 ["saveAll"]
       37 GETUPVAL                         R1 11
       38 GETUPVAL                         R2 12
       39 GETUPVAL                         R3 13
       40 LOADNIL                          R4
       41 GETUPVAL                         R5 14
       42 GETUPVAL                         R6 15
       43 GETTABLEKS                       R6 R6 K6 ["OwnedGroups"]
       45 CALL                             R0 6 0
       46 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{[1] = False, ["bottomText"] = ""}]
        2 NAMECALL                         R0 R0 K5 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 JUMPIFEQKS                       R0 K0 ["Submit"] ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 JUMPIFNOT                        R3 ; [+51]
        5 NEWTABLE                         R4 2 0
        7 GETUPVAL                         R5 0
        8 GETUPVAL                         R6 1
        9 SETTABLE                         R6 R4 R5
       10 GETUPVAL                         R5 2
       11 LOADB                            R6 1
       12 SETTABLE                         R6 R4 R5
       13 GETUPVAL                         R5 3
       14 GETUPVAL                         R6 4
       15 GETUPVAL                         R7 5
       16 GETUPVAL                         R8 6
       17 MOVE                             R9 R4
       18 CALL                             R5 4 0
       19 JUMPIFNOTEQ                      R1 R2 ; [+22]
       21 GETUPVAL                         R5 7
       22 DUPTABLE                         R7 K5 [{["showEmailDialog"] = False, ["bottomText"] = ""}]
       23 NAMECALL                         R5 R5 K6 ["setState"]
       25 CALL                             R5 2 0
       26 GETUPVAL                         R5 8
       27 LOADB                            R6 1
       28 CALL                             R5 1 0
       29 GETUPVAL                         R5 9
       30 GETTABLEKS                       R5 R5 K7 ["saveAll"]
       32 GETUPVAL                         R6 10
       33 GETUPVAL                         R7 11
       34 GETUPVAL                         R8 12
       35 MOVE                             R9 R1
       36 GETUPVAL                         R10 13
       37 GETUPVAL                         R11 14
       38 GETTABLEKS                       R11 R11 K8 ["OwnedGroups"]
       40 CALL                             R5 6 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R5 7
       43 DUPTABLE                         R7 K9 [{"bottomText"}]
       44 GETUPVAL                         R8 11
       45 GETUPVAL                         R10 0
       46 LOADK                            R11 K10 ["ErrorEmailNotEqual"]
       47 NAMECALL                         R8 R8 K11 ["getText"]
       49 CALL                             R8 3 1
       50 SETTABLEKS                       R8 R7 K3 ["bottomText"]
       52 NAMECALL                         R5 R5 K6 ["setState"]
       54 CALL                             R5 2 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R4 7
       57 DUPTABLE                         R6 K5 [{["showEmailDialog"] = False, ["bottomText"] = ""}]
       58 NAMECALL                         R4 R4 K6 ["setState"]
       60 CALL                             R4 2 0
       61 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["API"]
        8 NAMECALL                         R4 R4 K4 ["get"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R1 K5 ["OnClose"]
       13 GETTABLEKS                       R6 R1 K6 ["ReadyToSave"]
       15 GETTABLEKS                       R7 R1 K7 ["IsPublishing"]
       17 GETTABLEKS                       R8 R1 K8 ["Changed"]
       19 GETTABLEKS                       R9 R1 K9 ["IsPublish"]
       21 GETTABLEKS                       R10 R1 K10 ["dispatchSetIsPublishing"]
       23 GETTABLEKS                       R11 R0 K11 ["state"]
       25 GETTABLEKS                       R11 R11 K12 ["selected"]
       27 GETUPVAL                         R12 0
       28 CALL                             R12 0 1
       29 JUMPIFNOT                        R12 ; [+11]
       30 GETTABLEKS                       R12 R0 K13 ["isFirstPublish"]
       32 JUMPIFNOT                        R12 ; [+8]
       33 JUMPIFNOT                        R7 ; [+7]
       34 GETUPVAL                         R12 1
       35 GETTABLEKS                       R12 R12 K14 ["createElement"]
       37 GETUPVAL                         R13 2
       38 DUPTABLE                         R14 K17 [{["WaitForPublish"] = True}]
       39 CALL                             R12 2 -1
       40 RETURN                           R12 -1
       41 LOADNIL                          R12
       42 GETUPVAL                         R13 0
       43 CALL                             R13 0 1
       44 JUMPIFNOT                        R13 ; [+5]
       45 GETTABLEKS                       R13 R0 K13 ["isFirstPublish"]
       47 JUMPIFNOT                        R13 ; [+2]
       48 LOADK                            R12 K18 ["Next"]
       49 JUMP                             ; [+4]
       50 JUMPIFNOT                        R9 ; [+2]
       51 LOADK                            R12 K19 ["Create"]
       52 JUMP                             ; [+1]
       53 LOADK                            R12 K20 ["Save"]
       54 GETUPVAL                         R14 3
       55 JUMPIFNOT                        R14 ; [+2]
       56 LOADK                            R13 K21 ["UpdateExistingExperience"]
       57 JUMP                             ; [+1]
       58 LOADK                            R13 K22 ["UpdateExistingGame"]
       59 DUPTABLE                         R14 K26 [{"MenuBar", "Separator", "Footer"}]
       60 GETUPVAL                         R15 1
       61 GETTABLEKS                       R15 R15 K14 ["createElement"]
       63 GETUPVAL                         R16 4
       64 DUPTABLE                         R17 K30 [{"Entries", "Selected", "SelectionChanged"}]
       65 GETUPVAL                         R18 5
       66 SETTABLEKS                       R18 R17 K27 ["Entries"]
       68 SETTABLEKS                       R11 R17 K28 ["Selected"]
       70 GETTABLEKS                       R18 R0 K31 ["changeSelection"]
       72 SETTABLEKS                       R18 R17 K29 ["SelectionChanged"]
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K23 ["MenuBar"]
       77 GETUPVAL                         R15 1
       78 GETTABLEKS                       R15 R15 K14 ["createElement"]
       80 GETUPVAL                         R16 6
       81 DUPTABLE                         R17 K34 [{"Position", "DominantAxis"}]
       82 GETIMPORT                        R18 K37 [UDim2.new]
       84 LOADN                            R19 0
       85 GETTABLEKS                       R20 R2 K38 ["MENU_BAR_WIDTH"]
       87 LOADK                            R21 K39 [0.5]
       88 LOADN                            R22 0
       89 CALL                             R18 4 1
       90 SETTABLEKS                       R18 R17 K32 ["Position"]
       92 GETIMPORT                        R18 K42 [Enum.DominantAxis.Height]
       94 SETTABLEKS                       R18 R17 K33 ["DominantAxis"]
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K24 ["Separator"]
       99 GETUPVAL                         R15 1
      100 GETTABLEKS                       R15 R15 K14 ["createElement"]
      102 GETUPVAL                         R16 7
      103 DUPTABLE                         R17 K46 [{"MainButton", "OnClose", "NextScreen", "NextScreenText", "IsPublish"}]
      104 DUPTABLE                         R18 K50 [{"Name", "Active", "OnActivated"}]
      105 SETTABLEKS                       R12 R18 K47 ["Name"]
      107 MOVE                             R19 R6
      108 JUMPIFNOT                        R19 ; [+1]
      109 NOT                              R19 R7
      110 SETTABLEKS                       R19 R18 K48 ["Active"]
      112 NEWCLOSURE                       R19 P0
      113 CAPTURE                          UPVAL U8
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U9
      116 CAPTURE                          UPVAL U10
      117 CAPTURE                          UPVAL U11
      118 CAPTURE                          UPVAL U12
      119 CAPTURE                          UPVAL U13
      120 CAPTURE                          UPVAL U14
      121 CAPTURE                          UPVAL U15
      122 CAPTURE                          VAL R10
      123 CAPTURE                          UPVAL U16
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R1
      129 SETTABLEKS                       R19 R18 K49 ["OnActivated"]
      131 SETTABLEKS                       R18 R17 K43 ["MainButton"]
      133 SETTABLEKS                       R5 R17 K5 ["OnClose"]
      135 GETUPVAL                         R18 17
      136 GETTABLEKS                       R18 R18 K51 ["SCREENS"]
      138 GETTABLEKS                       R18 R18 K52 ["CHOOSE_GAME"]
      140 SETTABLEKS                       R18 R17 K44 ["NextScreen"]
      142 SETTABLEKS                       R13 R17 K45 ["NextScreenText"]
      144 SETTABLEKS                       R9 R17 K9 ["IsPublish"]
      146 DUPTABLE                         R18 K54 [{"EmailDialog"}]
      147 GETUPVAL                         R19 1
      148 GETTABLEKS                       R19 R19 K14 ["createElement"]
      150 GETUPVAL                         R20 18
      151 DUPTABLE                         R21 K64 [{"Enabled", "Size", "Title", "Header", "Buttons", "Body", "Description", "TextInput", "OnClose", "OnButtonPressed"}]
      152 GETTABLEKS                       R22 R0 K11 ["state"]
      154 GETTABLEKS                       R22 R22 K65 ["showEmailDialog"]
      156 SETTABLEKS                       R22 R21 K55 ["Enabled"]
      158 GETIMPORT                        R22 K67 [Vector2.new]
      160 GETTABLEKS                       R23 R2 K68 ["emailDialog"]
      162 GETTABLEKS                       R23 R23 K56 ["Size"]
      164 GETTABLEKS                       R23 R23 K69 ["X"]
      166 GETTABLEKS                       R24 R2 K68 ["emailDialog"]
      168 GETTABLEKS                       R24 R24 K56 ["Size"]
      170 GETTABLEKS                       R24 R24 K70 ["Y"]
      172 CALL                             R22 2 1
      173 SETTABLEKS                       R22 R21 K56 ["Size"]
      175 GETUPVAL                         R24 9
      176 LOADK                            R25 K71 ["EmailDialogHeader"]
      177 NAMECALL                         R22 R3 K72 ["getText"]
      179 CALL                             R22 3 1
      180 SETTABLEKS                       R22 R21 K57 ["Title"]
      182 GETUPVAL                         R24 9
      183 LOADK                            R25 K71 ["EmailDialogHeader"]
      184 NAMECALL                         R22 R3 K72 ["getText"]
      186 CALL                             R22 3 1
      187 SETTABLEKS                       R22 R21 K58 ["Header"]
      189 NEWTABLE                         R22 0 2
      191 DUPTABLE                         R23 K76 [{["Key"] = "Submit", ["Text"]}]
      192 LOADK                            R26 K77 ["Button"]
      193 LOADK                            R27 K74 ["Submit"]
      194 NAMECALL                         R24 R3 K72 ["getText"]
      196 CALL                             R24 3 1
      197 SETTABLEKS                       R24 R23 K75 ["Text"]
      199 DUPTABLE                         R24 K79 [{["Key"] = "Cancel", ["Text"]}]
      200 LOADK                            R27 K77 ["Button"]
      201 LOADK                            R28 K78 ["Cancel"]
      202 NAMECALL                         R25 R3 K72 ["getText"]
      204 CALL                             R25 3 1
      205 SETTABLEKS                       R25 R24 K75 ["Text"]
      207 SETLIST                          R22 R23 2 [1]
      209 SETTABLEKS                       R22 R21 K59 ["Buttons"]
      211 GETUPVAL                         R24 9
      212 LOADK                            R25 K80 ["EmailDialogBody"]
      213 NAMECALL                         R22 R3 K72 ["getText"]
      215 CALL                             R22 3 1
      216 SETTABLEKS                       R22 R21 K60 ["Body"]
      218 GETUPVAL                         R24 9
      219 LOADK                            R25 K81 ["EmailDialogDescription"]
      220 NAMECALL                         R22 R3 K72 ["getText"]
      222 CALL                             R22 3 1
      223 SETTABLEKS                       R22 R21 K61 ["Description"]
      225 NEWTABLE                         R22 0 2
      227 DUPTABLE                         R23 K83 [{"PlaceholderText"}]
      228 GETUPVAL                         R26 9
      229 LOADK                            R27 K84 ["EmailAddress"]
      230 NAMECALL                         R24 R3 K72 ["getText"]
      232 CALL                             R24 3 1
      233 SETTABLEKS                       R24 R23 K82 ["PlaceholderText"]
      235 DUPTABLE                         R24 K86 [{"PlaceholderText", "BottomText"}]
      236 GETUPVAL                         R27 9
      237 LOADK                            R28 K87 ["ConfirmEmailAddress"]
      238 NAMECALL                         R25 R3 K72 ["getText"]
      240 CALL                             R25 3 1
      241 SETTABLEKS                       R25 R24 K82 ["PlaceholderText"]
      243 GETTABLEKS                       R25 R0 K11 ["state"]
      245 GETTABLEKS                       R25 R25 K88 ["bottomText"]
      247 SETTABLEKS                       R25 R24 K85 ["BottomText"]
      249 SETLIST                          R22 R23 2 [1]
      251 SETTABLEKS                       R22 R21 K62 ["TextInput"]
      253 NEWCLOSURE                       R22 P1
      254 CAPTURE                          VAL R0
      255 SETTABLEKS                       R22 R21 K5 ["OnClose"]
      257 NEWCLOSURE                       R22 P2
      258 CAPTURE                          UPVAL U9
      259 CAPTURE                          UPVAL U10
      260 CAPTURE                          UPVAL U11
      261 CAPTURE                          UPVAL U12
      262 CAPTURE                          UPVAL U13
      263 CAPTURE                          UPVAL U14
      264 CAPTURE                          UPVAL U15
      265 CAPTURE                          VAL R0
      266 CAPTURE                          VAL R10
      267 CAPTURE                          UPVAL U16
      268 CAPTURE                          VAL R8
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R4
      271 CAPTURE                          VAL R9
      272 CAPTURE                          VAL R1
      273 SETTABLEKS                       R22 R21 K63 ["OnButtonPressed"]
      275 CALL                             R19 2 1
      276 SETTABLEKS                       R19 R18 K53 ["EmailDialog"]
      278 CALL                             R15 3 1
      279 SETTABLEKS                       R15 R14 K25 ["Footer"]
      281 GETUPVAL                         R15 1
      282 GETTABLEKS                       R15 R15 K14 ["createElement"]
      284 GETUPVAL                         R16 19
      285 NEWTABLE                         R17 8 0
      287 LOADN                            R18 1
      288 SETTABLEKS                       R18 R17 K89 ["BackgroundTransparency"]
      290 GETIMPORT                        R18 K37 [UDim2.new]
      292 LOADN                            R19 0
      293 GETTABLEKS                       R20 R2 K38 ["MENU_BAR_WIDTH"]
      295 LOADN                            R21 0
      296 LOADN                            R22 0
      297 CALL                             R18 4 1
      298 SETTABLEKS                       R18 R17 K32 ["Position"]
      300 GETIMPORT                        R18 K37 [UDim2.new]
      302 LOADN                            R19 1
      303 GETTABLEKS                       R21 R2 K38 ["MENU_BAR_WIDTH"]
      305 MINUS                            R20 R21
      306 LOADN                            R21 1
      307 GETTABLEKS                       R23 R2 K90 ["FOOTER_HEIGHT"]
      309 MINUS                            R22 R23
      310 CALL                             R18 4 1
      311 SETTABLEKS                       R18 R17 K56 ["Size"]
      313 GETIMPORT                        R18 K37 [UDim2.new]
      315 LOADN                            R19 1
      316 GETTABLEKS                       R21 R2 K38 ["MENU_BAR_WIDTH"]
      318 MINUS                            R20 R21
      319 LOADN                            R21 0
      320 LOADN                            R22 0
      321 CALL                             R18 4 1
      322 SETTABLEKS                       R18 R17 K91 ["CanvasSize"]
      324 GETIMPORT                        R18 K93 [Enum.AutomaticSize.Y]
      326 SETTABLEKS                       R18 R17 K94 ["AutomaticCanvasSize"]
      328 GETUPVAL                         R18 1
      329 GETTABLEKS                       R18 R18 K95 ["Ref"]
      331 GETTABLEKS                       R19 R0 K96 ["scrollingFrameRef"]
      333 SETTABLE                         R19 R17 R18
      334 NEWTABLE                         R18 0 1
      336 GETUPVAL                         R19 1
      337 GETTABLEKS                       R19 R19 K14 ["createElement"]
      339 GETUPVAL                         R20 20
      340 DUPTABLE                         R21 K97 [{"IsPublish"}]
      341 SETTABLEKS                       R9 R21 K9 ["IsPublish"]
      343 CALL                             R19 2 -1
      344 SETLIST                          R18 R19 -1 [1]
      346 CALL                             R15 3 1
      347 SETTABLEKS                       R15 R14 K98 ["Page"]
      349 GETUPVAL                         R15 1
      350 GETTABLEKS                       R15 R15 K14 ["createElement"]
      352 LOADK                            R16 K99 ["Frame"]
      353 DUPTABLE                         R17 K101 [{"Size", "BackgroundColor3"}]
      354 GETIMPORT                        R18 K37 [UDim2.new]
      356 LOADN                            R19 1
      357 LOADN                            R20 0
      358 LOADN                            R21 1
      359 LOADN                            R22 0
      360 CALL                             R18 4 1
      361 SETTABLEKS                       R18 R17 K56 ["Size"]
      363 GETTABLEKS                       R18 R2 K102 ["backgroundColor"]
      365 SETTABLEKS                       R18 R17 K100 ["BackgroundColor3"]
      367 MOVE                             R18 R14
      368 CALL                             R15 3 -1
      369 RETURN                           R15 -1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["NewGameSettings"]
        2 GETTABLEKS                       R3 R0 K1 ["GroupsHavePermission"]
        4 GETTABLEKS                       R3 R3 K2 ["groupInfo"]
        6 GETTABLEKS                       R3 R3 K3 ["ownedGroups"]
        8 DUPTABLE                         R4 K9 [{"Changed", "ReadyToSave", "IsPublishing", "ChangedOptInLocations", "OwnedGroups"}]
        9 GETTABLEKS                       R5 R2 K10 ["changed"]
       11 SETTABLEKS                       R5 R4 K4 ["Changed"]
       13 GETIMPORT                        R6 K12 [next]
       15 GETTABLEKS                       R7 R2 K13 ["errors"]
       17 CALL                             R6 1 1
       18 JUMPIFEQKNIL                     R6 ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 SETTABLEKS                       R5 R4 K5 ["ReadyToSave"]
       24 GETTABLEKS                       R5 R0 K14 ["PublishedPlace"]
       26 GETTABLEKS                       R5 R5 K15 ["isPublishing"]
       28 SETTABLEKS                       R5 R4 K6 ["IsPublishing"]
       30 GETTABLEKS                       R5 R2 K10 ["changed"]
       32 GETTABLEKS                       R5 R5 K16 ["OptInLocations"]
       34 SETTABLEKS                       R5 R4 K7 ["ChangedOptInLocations"]
       36 SETTABLEKS                       R3 R4 K8 ["OwnedGroups"]
       38 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{"id", "name", "parentGameName"}]
        3 GETIMPORT                        R4 K5 [game]
        5 GETTABLEKS                       R4 R4 K6 ["GameId"]
        7 SETTABLEKS                       R4 R3 K0 ["id"]
        9 GETTABLEKS                       R4 R0 K1 ["name"]
       11 SETTABLEKS                       R4 R3 K1 ["name"]
       13 GETTABLEKS                       R4 R0 K1 ["name"]
       15 SETTABLEKS                       R4 R3 K2 ["parentGameName"]
       17 CALL                             R2 1 -1
       18 CALL                             R1 -1 0
       19 GETUPVAL                         R1 0
       20 GETUPVAL                         R2 2
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K7 ["SCREENS"]
       24 GETTABLEKS                       R3 R3 K8 ["PUBLISH_SUCCESSFUL"]
       26 CALL                             R2 1 -1
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K8 [{[1], ["name"], ["parentGameName"], ["parentGameId"] = 0, ["settings"], ["failed"] = True}]
        3 GETIMPORT                        R4 K10 [game]
        5 GETTABLEKS                       R4 R4 K11 ["GameId"]
        7 SETTABLEKS                       R4 R3 K0 ["id"]
        9 GETTABLEKS                       R4 R0 K1 ["name"]
       11 SETTABLEKS                       R4 R3 K1 ["name"]
       13 GETTABLEKS                       R4 R0 K1 ["name"]
       15 SETTABLEKS                       R4 R3 K2 ["parentGameName"]
       17 SETTABLEKS                       R0 R3 K5 ["settings"]
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 0
       21 GETUPVAL                         R1 0
       22 GETUPVAL                         R2 2
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K12 ["SCREENS"]
       26 GETTABLEKS                       R3 R3 K13 ["PUBLISH_FAIL"]
       28 CALL                             R2 1 -1
       29 CALL                             R1 -1 0
       30 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 LOADB                            R4 1
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["name"]
        3 GETTABLEKS                       R4 R0 K0 ["name"]
        5 CALL                             R2 2 -1
        6 CALL                             R1 -1 0
        7 GETTABLEKS                       R1 R0 K1 ["description"]
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R2 1
       12 LOADK                            R3 K1 ["description"]
       13 GETTABLEKS                       R4 R0 K1 ["description"]
       15 CALL                             R2 2 -1
       16 CALL                             R1 -1 0
       17 GETTABLEKS                       R1 R0 K2 ["genre"]
       19 JUMPIFNOT                        R1 ; [+7]
       20 GETUPVAL                         R1 0
       21 GETUPVAL                         R2 1
       22 LOADK                            R3 K2 ["genre"]
       23 GETTABLEKS                       R4 R0 K2 ["genre"]
       25 CALL                             R2 2 -1
       26 CALL                             R1 -1 0
       27 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K6 [{"OpenPublishSuccessfulPage", "OpenPublishFailPage", "DispatchLoadGroups", "DispatchDataSharingDefault", "dispatchSetIsPublishing", "dispatchSetExistingUniverseConfiguration"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 SETTABLEKS                       R2 R1 K0 ["OpenPublishSuccessfulPage"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 SETTABLEKS                       R2 R1 K1 ["OpenPublishFailPage"]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 SETTABLEKS                       R2 R1 K2 ["DispatchLoadGroups"]
       20 NEWCLOSURE                       R2 P3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U4
       23 SETTABLEKS                       R2 R1 K3 ["DispatchDataSharingDefault"]
       25 NEWCLOSURE                       R2 P4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U5
       28 SETTABLEKS                       R2 R1 K4 ["dispatchSetIsPublishing"]
       30 NEWCLOSURE                       R2 P5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U6
       33 SETTABLEKS                       R2 R1 K5 ["dispatchSetExistingUniverseConfiguration"]
       35 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["ScrollingFrame"]
       38 GETIMPORT                        R8 K4 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K14 ["Network"]
       44 GETTABLEKS                       R9 R9 K15 ["Requests"]
       46 GETTABLEKS                       R9 R9 K16 ["SettingsImpl"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Src"]
       53 GETTABLEKS                       R10 R10 K17 ["Resources"]
       55 GETTABLEKS                       R10 R10 K18 ["Constants"]
       57 CALL                             R9 1 1
       58 GETTABLEKS                       R10 R3 K11 ["UI"]
       60 GETTABLEKS                       R10 R10 K19 ["Separator"]
       62 GETIMPORT                        R11 K4 [require]
       64 GETTABLEKS                       R12 R0 K13 ["Src"]
       66 GETTABLEKS                       R12 R12 K20 ["Components"]
       68 GETTABLEKS                       R12 R12 K21 ["Menu"]
       70 GETTABLEKS                       R12 R12 K22 ["MenuBar"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K4 [require]
       75 GETTABLEKS                       R13 R0 K13 ["Src"]
       77 GETTABLEKS                       R13 R13 K20 ["Components"]
       79 GETTABLEKS                       R13 R13 K23 ["Footer"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K4 [require]
       84 GETTABLEKS                       R14 R0 K13 ["Src"]
       86 GETTABLEKS                       R14 R14 K20 ["Components"]
       88 GETTABLEKS                       R14 R14 K24 ["BasicInfo"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K4 [require]
       93 GETTABLEKS                       R15 R0 K13 ["Src"]
       95 GETTABLEKS                       R15 R15 K20 ["Components"]
       97 GETTABLEKS                       R15 R15 K25 ["ScreenPublishInProgress"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K4 [require]
      102 GETTABLEKS                       R16 R0 K13 ["Src"]
      104 GETTABLEKS                       R16 R16 K26 ["Actions"]
      106 GETTABLEKS                       R16 R16 K27 ["AddChange"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K4 [require]
      111 GETTABLEKS                       R17 R0 K13 ["Src"]
      113 GETTABLEKS                       R17 R17 K26 ["Actions"]
      115 GETTABLEKS                       R17 R17 K28 ["SetIsPublishing"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K4 [require]
      120 GETTABLEKS                       R18 R0 K13 ["Src"]
      122 GETTABLEKS                       R18 R18 K26 ["Actions"]
      124 GETTABLEKS                       R18 R18 K29 ["SetScreen"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K4 [require]
      129 GETTABLEKS                       R19 R0 K13 ["Src"]
      131 GETTABLEKS                       R19 R19 K26 ["Actions"]
      133 GETTABLEKS                       R19 R19 K30 ["SetPublishInfo"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K4 [require]
      138 GETTABLEKS                       R20 R0 K13 ["Src"]
      140 GETTABLEKS                       R20 R20 K31 ["Thunks"]
      142 GETTABLEKS                       R20 R20 K32 ["LoadGroups"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K4 [require]
      147 GETTABLEKS                       R21 R0 K13 ["Src"]
      149 GETTABLEKS                       R21 R21 K31 ["Thunks"]
      151 GETTABLEKS                       R21 R21 K33 ["LoadDataSharingDefault"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K4 [require]
      156 GETTABLEKS                       R22 R0 K13 ["Src"]
      158 GETTABLEKS                       R22 R22 K34 ["Util"]
      160 GETTABLEKS                       R22 R22 K35 ["PublishPlaceAsUtilities"]
      162 CALL                             R21 1 1
      163 GETTABLEKS                       R21 R21 K36 ["shouldShowDevPublishLocations"]
      165 GETIMPORT                        R22 K4 [require]
      167 GETTABLEKS                       R23 R0 K13 ["Src"]
      169 GETTABLEKS                       R23 R23 K34 ["Util"]
      171 GETTABLEKS                       R23 R23 K35 ["PublishPlaceAsUtilities"]
      173 CALL                             R22 1 1
      174 GETTABLEKS                       R22 R22 K37 ["sendAnalyticsToKibana"]
      176 GETIMPORT                        R23 K39 [game]
      178 LOADK                            R25 K40 ["LuobuDevPublishAnalyticsHundredthsPercentage"]
      179 NAMECALL                         R23 R23 K41 ["GetFastInt"]
      181 CALL                             R23 2 1
      182 GETIMPORT                        R24 K4 [require]
      184 GETTABLEKS                       R25 R0 K13 ["Src"]
      186 GETTABLEKS                       R25 R25 K42 ["Flags"]
      188 GETTABLEKS                       R25 R25 K43 ["getFFlagPublishPlaceAsGameToExperience"]
      190 CALL                             R24 1 1
      191 CALL                             R24 0 1
      192 GETIMPORT                        R25 K4 [require]
      194 GETTABLEKS                       R26 R0 K13 ["Src"]
      196 GETTABLEKS                       R26 R26 K42 ["Flags"]
      198 GETTABLEKS                       R26 R26 K44 ["getEngineFeatureStudioUnifiedPublishAction"]
      200 CALL                             R25 1 1
      201 GETIMPORT                        R26 K4 [require]
      203 GETTABLEKS                       R27 R0 K13 ["Src"]
      205 GETTABLEKS                       R27 R27 K34 ["Util"]
      207 GETTABLEKS                       R27 R27 K45 ["FirstPublishFlow"]
      209 CALL                             R26 1 1
      210 GETTABLEKS                       R27 R3 K11 ["UI"]
      212 GETTABLEKS                       R27 R27 K46 ["TextInputDialog"]
      214 GETIMPORT                        R28 K4 [require]
      216 GETTABLEKS                       R29 R0 K13 ["Src"]
      218 GETTABLEKS                       R29 R29 K34 ["Util"]
      220 GETTABLEKS                       R29 R29 K47 ["KeyProvider"]
      222 CALL                             R28 1 1
      223 GETTABLEKS                       R29 R28 K48 ["getOptInLocationsKeyName"]
      225 CALL                             R29 0 1
      226 GETTABLEKS                       R30 R28 K49 ["getChinaKeyName"]
      228 CALL                             R30 0 1
      229 GETTABLEKS                       R31 R28 K50 ["getLuobuStudioDevPublishKeyName"]
      231 CALL                             R31 0 1
      232 GETTABLEKS                       R32 R28 K51 ["getSelectedKeyName"]
      234 CALL                             R32 0 1
      235 GETTABLEKS                       R33 R28 K52 ["getCreateNewGameKeyName"]
      237 CALL                             R33 0 1
      238 GETIMPORT                        R34 K39 [game]
      240 LOADK                            R36 K53 ["StudioPublishService"]
      241 NAMECALL                         R34 R34 K54 ["GetService"]
      243 CALL                             R34 2 1
      244 NEWTABLE                         R35 0 1
      246 LOADK                            R36 K24 ["BasicInfo"]
      247 SETLIST                          R35 R36 1 [1]
      249 GETTABLEKS                       R36 R1 K55 ["PureComponent"]
      251 LOADK                            R38 K56 ["ScreenCreateNewGame"]
      252 NAMECALL                         R36 R36 K57 ["extend"]
      254 CALL                             R36 2 1
      255 DUPCLOSURE                       R37 K58 [PROTO_2]
      256 CAPTURE                          VAL R26
      257 CAPTURE                          VAL R1
      258 CAPTURE                          VAL R30
      259 SETTABLEKS                       R37 R36 K59 ["init"]
      261 DUPCLOSURE                       R37 K60 [PROTO_4]
      262 CAPTURE                          VAL R34
      263 CAPTURE                          VAL R25
      264 SETTABLEKS                       R37 R36 K61 ["didMount"]
      266 DUPCLOSURE                       R37 K62 [PROTO_5]
      267 SETTABLEKS                       R37 R36 K63 ["willUnmount"]
      269 DUPCLOSURE                       R37 K64 [PROTO_9]
      270 CAPTURE                          VAL R25
      271 CAPTURE                          VAL R1
      272 CAPTURE                          VAL R14
      273 CAPTURE                          VAL R24
      274 CAPTURE                          VAL R11
      275 CAPTURE                          VAL R35
      276 CAPTURE                          VAL R10
      277 CAPTURE                          VAL R12
      278 CAPTURE                          VAL R21
      279 CAPTURE                          VAL R29
      280 CAPTURE                          VAL R30
      281 CAPTURE                          VAL R32
      282 CAPTURE                          VAL R22
      283 CAPTURE                          VAL R31
      284 CAPTURE                          VAL R23
      285 CAPTURE                          VAL R33
      286 CAPTURE                          VAL R8
      287 CAPTURE                          VAL R9
      288 CAPTURE                          VAL R27
      289 CAPTURE                          VAL R7
      290 CAPTURE                          VAL R13
      291 SETTABLEKS                       R37 R36 K65 ["render"]
      293 MOVE                             R37 R5
      294 DUPTABLE                         R38 K69 [{"Stylizer", "Localization", "API"}]
      295 GETTABLEKS                       R39 R4 K66 ["Stylizer"]
      297 SETTABLEKS                       R39 R38 K66 ["Stylizer"]
      299 GETTABLEKS                       R39 R4 K67 ["Localization"]
      301 SETTABLEKS                       R39 R38 K67 ["Localization"]
      303 GETTABLEKS                       R39 R4 K68 ["API"]
      305 SETTABLEKS                       R39 R38 K68 ["API"]
      307 CALL                             R37 1 1
      308 MOVE                             R38 R36
      309 CALL                             R37 1 1
      310 MOVE                             R36 R37
      311 DUPCLOSURE                       R37 K70 [PROTO_10]
      312 DUPCLOSURE                       R38 K71 [PROTO_17]
      313 CAPTURE                          VAL R18
      314 CAPTURE                          VAL R17
      315 CAPTURE                          VAL R9
      316 CAPTURE                          VAL R19
      317 CAPTURE                          VAL R20
      318 CAPTURE                          VAL R16
      319 CAPTURE                          VAL R15
      320 GETTABLEKS                       R39 R2 K72 ["connect"]
      322 MOVE                             R40 R37
      323 MOVE                             R41 R38
      324 CALL                             R39 2 1
      325 MOVE                             R40 R36
      326 CALL                             R39 1 -1
      327 RETURN                           R39 -1
