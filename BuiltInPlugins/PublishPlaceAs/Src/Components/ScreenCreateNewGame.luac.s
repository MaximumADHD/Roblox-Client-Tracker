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
       32 GETTABLEKS                       R0 R0 K5 ["OnCreateNewGame"]
       34 JUMPIFNOT                        R0 ; [+7]
       35 GETUPVAL                         R0 9
       36 GETTABLEKS                       R0 R0 K5 ["OnCreateNewGame"]
       38 GETUPVAL                         R1 10
       39 GETTABLEKS                       R1 R1 K6 ["teamCreateEnabled"]
       41 CALL                             R0 1 0
       42 GETUPVAL                         R0 11
       43 LOADB                            R1 1
       44 CALL                             R0 1 0
       45 GETUPVAL                         R0 12
       46 GETTABLEKS                       R0 R0 K7 ["saveAll"]
       48 GETUPVAL                         R1 10
       49 GETUPVAL                         R2 13
       50 GETUPVAL                         R3 14
       51 LOADNIL                          R4
       52 GETUPVAL                         R5 15
       53 GETUPVAL                         R6 9
       54 GETTABLEKS                       R6 R6 K8 ["OwnedGroups"]
       56 CALL                             R0 6 0
       57 RETURN                           R0 0

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
        4 JUMPIFNOT                        R3 ; [+62]
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
       19 JUMPIFNOTEQ                      R1 R2 ; [+33]
       21 GETUPVAL                         R5 7
       22 DUPTABLE                         R7 K5 [{["showEmailDialog"] = False, ["bottomText"] = ""}]
       23 NAMECALL                         R5 R5 K6 ["setState"]
       25 CALL                             R5 2 0
       26 GETUPVAL                         R5 8
       27 GETTABLEKS                       R5 R5 K7 ["OnCreateNewGame"]
       29 JUMPIFNOT                        R5 ; [+7]
       30 GETUPVAL                         R5 8
       31 GETTABLEKS                       R5 R5 K7 ["OnCreateNewGame"]
       33 GETUPVAL                         R6 9
       34 GETTABLEKS                       R6 R6 K8 ["teamCreateEnabled"]
       36 CALL                             R5 1 0
       37 GETUPVAL                         R5 10
       38 LOADB                            R6 1
       39 CALL                             R5 1 0
       40 GETUPVAL                         R5 11
       41 GETTABLEKS                       R5 R5 K9 ["saveAll"]
       43 GETUPVAL                         R6 9
       44 GETUPVAL                         R7 12
       45 GETUPVAL                         R8 13
       46 MOVE                             R9 R1
       47 GETUPVAL                         R10 14
       48 GETUPVAL                         R11 8
       49 GETTABLEKS                       R11 R11 K10 ["OwnedGroups"]
       51 CALL                             R5 6 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R5 7
       54 DUPTABLE                         R7 K11 [{"bottomText"}]
       55 GETUPVAL                         R8 12
       56 GETUPVAL                         R10 0
       57 LOADK                            R11 K12 ["ErrorEmailNotEqual"]
       58 NAMECALL                         R8 R8 K13 ["getText"]
       60 CALL                             R8 3 1
       61 SETTABLEKS                       R8 R7 K3 ["bottomText"]
       63 NAMECALL                         R5 R5 K6 ["setState"]
       65 CALL                             R5 2 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R4 7
       68 DUPTABLE                         R6 K5 [{["showEmailDialog"] = False, ["bottomText"] = ""}]
       69 NAMECALL                         R4 R4 K6 ["setState"]
       71 CALL                             R4 2 0
       72 RETURN                           R0 0

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
       27 GETUPVAL                         R13 0
       28 CALL                             R13 0 1
       29 JUMPIFNOT                        R13 ; [+2]
       30 LOADN                            R12 0
       31 JUMP                             ; [+2]
       32 GETTABLEKS                       R12 R2 K13 ["MENU_BAR_WIDTH"]
       34 GETUPVAL                         R13 1
       35 CALL                             R13 0 1
       36 JUMPIFNOT                        R13 ; [+11]
       37 GETTABLEKS                       R13 R0 K14 ["isFirstPublish"]
       39 JUMPIFNOT                        R13 ; [+8]
       40 JUMPIFNOT                        R7 ; [+7]
       41 GETUPVAL                         R13 2
       42 GETTABLEKS                       R13 R13 K15 ["createElement"]
       44 GETUPVAL                         R14 3
       45 DUPTABLE                         R15 K18 [{["WaitForPublish"] = True}]
       46 CALL                             R13 2 -1
       47 RETURN                           R13 -1
       48 LOADNIL                          R13
       49 GETUPVAL                         R14 1
       50 CALL                             R14 0 1
       51 JUMPIFNOT                        R14 ; [+5]
       52 GETTABLEKS                       R14 R0 K14 ["isFirstPublish"]
       54 JUMPIFNOT                        R14 ; [+2]
       55 LOADK                            R13 K19 ["Next"]
       56 JUMP                             ; [+4]
       57 JUMPIFNOT                        R9 ; [+2]
       58 LOADK                            R13 K20 ["Create"]
       59 JUMP                             ; [+1]
       60 LOADK                            R13 K21 ["Save"]
       61 GETUPVAL                         R15 4
       62 JUMPIFNOT                        R15 ; [+2]
       63 LOADK                            R14 K22 ["UpdateExistingExperience"]
       64 JUMP                             ; [+1]
       65 LOADK                            R14 K23 ["UpdateExistingGame"]
       66 DUPTABLE                         R15 K27 [{"MenuBar", "Separator", "Footer"}]
       67 LOADN                            R17 0
       68 JUMPIFNOTLT                      R17 R12 ; [+17]
       70 GETUPVAL                         R16 2
       71 GETTABLEKS                       R16 R16 K15 ["createElement"]
       73 GETUPVAL                         R17 5
       74 DUPTABLE                         R18 K31 [{"Entries", "Selected", "SelectionChanged"}]
       75 GETUPVAL                         R19 6
       76 SETTABLEKS                       R19 R18 K28 ["Entries"]
       78 SETTABLEKS                       R11 R18 K29 ["Selected"]
       80 GETTABLEKS                       R19 R0 K32 ["changeSelection"]
       82 SETTABLEKS                       R19 R18 K30 ["SelectionChanged"]
       84 CALL                             R16 2 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R16
       87 SETTABLEKS                       R16 R15 K24 ["MenuBar"]
       89 LOADN                            R17 0
       90 JUMPIFNOTLT                      R17 R12 ; [+21]
       92 GETUPVAL                         R16 2
       93 GETTABLEKS                       R16 R16 K15 ["createElement"]
       95 GETUPVAL                         R17 7
       96 DUPTABLE                         R18 K35 [{"Position", "DominantAxis"}]
       97 GETIMPORT                        R19 K38 [UDim2.new]
       99 LOADN                            R20 0
      100 MOVE                             R21 R12
      101 LOADK                            R22 K39 [0.5]
      102 LOADN                            R23 0
      103 CALL                             R19 4 1
      104 SETTABLEKS                       R19 R18 K33 ["Position"]
      106 GETIMPORT                        R19 K42 [Enum.DominantAxis.Height]
      108 SETTABLEKS                       R19 R18 K34 ["DominantAxis"]
      110 CALL                             R16 2 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R16
      113 SETTABLEKS                       R16 R15 K25 ["Separator"]
      115 GETUPVAL                         R16 2
      116 GETTABLEKS                       R16 R16 K15 ["createElement"]
      118 GETUPVAL                         R17 8
      119 DUPTABLE                         R18 K46 [{"MainButton", "OnClose", "NextScreen", "NextScreenText", "IsPublish"}]
      120 DUPTABLE                         R19 K50 [{"Name", "Active", "OnActivated"}]
      121 SETTABLEKS                       R13 R19 K47 ["Name"]
      123 MOVE                             R20 R6
      124 JUMPIFNOT                        R20 ; [+1]
      125 NOT                              R20 R7
      126 SETTABLEKS                       R20 R19 K48 ["Active"]
      128 NEWCLOSURE                       R20 P0
      129 CAPTURE                          UPVAL U9
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U10
      132 CAPTURE                          UPVAL U11
      133 CAPTURE                          UPVAL U12
      134 CAPTURE                          UPVAL U13
      135 CAPTURE                          UPVAL U14
      136 CAPTURE                          UPVAL U15
      137 CAPTURE                          UPVAL U16
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R10
      141 CAPTURE                          UPVAL U17
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R9
      145 SETTABLEKS                       R20 R19 K49 ["OnActivated"]
      147 SETTABLEKS                       R19 R18 K43 ["MainButton"]
      149 SETTABLEKS                       R5 R18 K5 ["OnClose"]
      151 GETUPVAL                         R19 18
      152 GETTABLEKS                       R19 R19 K51 ["SCREENS"]
      154 GETTABLEKS                       R19 R19 K52 ["CHOOSE_GAME"]
      156 SETTABLEKS                       R19 R18 K44 ["NextScreen"]
      158 SETTABLEKS                       R14 R18 K45 ["NextScreenText"]
      160 SETTABLEKS                       R9 R18 K9 ["IsPublish"]
      162 DUPTABLE                         R19 K54 [{"EmailDialog"}]
      163 GETUPVAL                         R20 2
      164 GETTABLEKS                       R20 R20 K15 ["createElement"]
      166 GETUPVAL                         R21 19
      167 DUPTABLE                         R22 K64 [{"Enabled", "Size", "Title", "Header", "Buttons", "Body", "Description", "TextInput", "OnClose", "OnButtonPressed"}]
      168 GETTABLEKS                       R23 R0 K11 ["state"]
      170 GETTABLEKS                       R23 R23 K65 ["showEmailDialog"]
      172 SETTABLEKS                       R23 R22 K55 ["Enabled"]
      174 GETIMPORT                        R23 K67 [Vector2.new]
      176 GETTABLEKS                       R24 R2 K68 ["emailDialog"]
      178 GETTABLEKS                       R24 R24 K56 ["Size"]
      180 GETTABLEKS                       R24 R24 K69 ["X"]
      182 GETTABLEKS                       R25 R2 K68 ["emailDialog"]
      184 GETTABLEKS                       R25 R25 K56 ["Size"]
      186 GETTABLEKS                       R25 R25 K70 ["Y"]
      188 CALL                             R23 2 1
      189 SETTABLEKS                       R23 R22 K56 ["Size"]
      191 GETUPVAL                         R25 10
      192 LOADK                            R26 K71 ["EmailDialogHeader"]
      193 NAMECALL                         R23 R3 K72 ["getText"]
      195 CALL                             R23 3 1
      196 SETTABLEKS                       R23 R22 K57 ["Title"]
      198 GETUPVAL                         R25 10
      199 LOADK                            R26 K71 ["EmailDialogHeader"]
      200 NAMECALL                         R23 R3 K72 ["getText"]
      202 CALL                             R23 3 1
      203 SETTABLEKS                       R23 R22 K58 ["Header"]
      205 NEWTABLE                         R23 0 2
      207 DUPTABLE                         R24 K76 [{["Key"] = "Submit", ["Text"]}]
      208 LOADK                            R27 K77 ["Button"]
      209 LOADK                            R28 K74 ["Submit"]
      210 NAMECALL                         R25 R3 K72 ["getText"]
      212 CALL                             R25 3 1
      213 SETTABLEKS                       R25 R24 K75 ["Text"]
      215 DUPTABLE                         R25 K79 [{["Key"] = "Cancel", ["Text"]}]
      216 LOADK                            R28 K77 ["Button"]
      217 LOADK                            R29 K78 ["Cancel"]
      218 NAMECALL                         R26 R3 K72 ["getText"]
      220 CALL                             R26 3 1
      221 SETTABLEKS                       R26 R25 K75 ["Text"]
      223 SETLIST                          R23 R24 2 [1]
      225 SETTABLEKS                       R23 R22 K59 ["Buttons"]
      227 GETUPVAL                         R25 10
      228 LOADK                            R26 K80 ["EmailDialogBody"]
      229 NAMECALL                         R23 R3 K72 ["getText"]
      231 CALL                             R23 3 1
      232 SETTABLEKS                       R23 R22 K60 ["Body"]
      234 GETUPVAL                         R25 10
      235 LOADK                            R26 K81 ["EmailDialogDescription"]
      236 NAMECALL                         R23 R3 K72 ["getText"]
      238 CALL                             R23 3 1
      239 SETTABLEKS                       R23 R22 K61 ["Description"]
      241 NEWTABLE                         R23 0 2
      243 DUPTABLE                         R24 K83 [{"PlaceholderText"}]
      244 GETUPVAL                         R27 10
      245 LOADK                            R28 K84 ["EmailAddress"]
      246 NAMECALL                         R25 R3 K72 ["getText"]
      248 CALL                             R25 3 1
      249 SETTABLEKS                       R25 R24 K82 ["PlaceholderText"]
      251 DUPTABLE                         R25 K86 [{"PlaceholderText", "BottomText"}]
      252 GETUPVAL                         R28 10
      253 LOADK                            R29 K87 ["ConfirmEmailAddress"]
      254 NAMECALL                         R26 R3 K72 ["getText"]
      256 CALL                             R26 3 1
      257 SETTABLEKS                       R26 R25 K82 ["PlaceholderText"]
      259 GETTABLEKS                       R26 R0 K11 ["state"]
      261 GETTABLEKS                       R26 R26 K88 ["bottomText"]
      263 SETTABLEKS                       R26 R25 K85 ["BottomText"]
      265 SETLIST                          R23 R24 2 [1]
      267 SETTABLEKS                       R23 R22 K62 ["TextInput"]
      269 NEWCLOSURE                       R23 P1
      270 CAPTURE                          VAL R0
      271 SETTABLEKS                       R23 R22 K5 ["OnClose"]
      273 NEWCLOSURE                       R23 P2
      274 CAPTURE                          UPVAL U10
      275 CAPTURE                          UPVAL U11
      276 CAPTURE                          UPVAL U12
      277 CAPTURE                          UPVAL U13
      278 CAPTURE                          UPVAL U14
      279 CAPTURE                          UPVAL U15
      280 CAPTURE                          UPVAL U16
      281 CAPTURE                          VAL R0
      282 CAPTURE                          VAL R1
      283 CAPTURE                          VAL R8
      284 CAPTURE                          VAL R10
      285 CAPTURE                          UPVAL U17
      286 CAPTURE                          VAL R3
      287 CAPTURE                          VAL R4
      288 CAPTURE                          VAL R9
      289 SETTABLEKS                       R23 R22 K63 ["OnButtonPressed"]
      291 CALL                             R20 2 1
      292 SETTABLEKS                       R20 R19 K53 ["EmailDialog"]
      294 CALL                             R16 3 1
      295 SETTABLEKS                       R16 R15 K26 ["Footer"]
      297 GETUPVAL                         R16 2
      298 GETTABLEKS                       R16 R16 K15 ["createElement"]
      300 GETUPVAL                         R17 20
      301 NEWTABLE                         R18 8 0
      303 LOADN                            R19 1
      304 SETTABLEKS                       R19 R18 K89 ["BackgroundTransparency"]
      306 GETIMPORT                        R19 K38 [UDim2.new]
      308 LOADN                            R20 0
      309 MOVE                             R21 R12
      310 LOADN                            R22 0
      311 LOADN                            R23 0
      312 CALL                             R19 4 1
      313 SETTABLEKS                       R19 R18 K33 ["Position"]
      315 GETIMPORT                        R19 K38 [UDim2.new]
      317 LOADN                            R20 1
      318 MINUS                            R21 R12
      319 LOADN                            R22 1
      320 GETTABLEKS                       R24 R2 K90 ["FOOTER_HEIGHT"]
      322 MINUS                            R23 R24
      323 CALL                             R19 4 1
      324 SETTABLEKS                       R19 R18 K56 ["Size"]
      326 GETIMPORT                        R19 K38 [UDim2.new]
      328 LOADN                            R20 1
      329 MINUS                            R21 R12
      330 LOADN                            R22 0
      331 LOADN                            R23 0
      332 CALL                             R19 4 1
      333 SETTABLEKS                       R19 R18 K91 ["CanvasSize"]
      335 GETIMPORT                        R19 K93 [Enum.AutomaticSize.Y]
      337 SETTABLEKS                       R19 R18 K94 ["AutomaticCanvasSize"]
      339 GETUPVAL                         R19 2
      340 GETTABLEKS                       R19 R19 K95 ["Ref"]
      342 GETTABLEKS                       R20 R0 K96 ["scrollingFrameRef"]
      344 SETTABLE                         R20 R18 R19
      345 NEWTABLE                         R19 0 1
      347 GETUPVAL                         R20 2
      348 GETTABLEKS                       R20 R20 K15 ["createElement"]
      350 GETUPVAL                         R21 21
      351 DUPTABLE                         R22 K97 [{"IsPublish"}]
      352 SETTABLEKS                       R9 R22 K9 ["IsPublish"]
      354 CALL                             R20 2 -1
      355 SETLIST                          R19 R20 -1 [1]
      357 CALL                             R16 3 1
      358 SETTABLEKS                       R16 R15 K98 ["Page"]
      360 GETUPVAL                         R16 2
      361 GETTABLEKS                       R16 R16 K15 ["createElement"]
      363 LOADK                            R17 K99 ["Frame"]
      364 DUPTABLE                         R18 K101 [{"Size", "BackgroundColor3"}]
      365 GETIMPORT                        R19 K38 [UDim2.new]
      367 LOADN                            R20 1
      368 LOADN                            R21 0
      369 LOADN                            R22 1
      370 LOADN                            R23 0
      371 CALL                             R19 4 1
      372 SETTABLEKS                       R19 R18 K56 ["Size"]
      374 GETTABLEKS                       R19 R2 K102 ["backgroundColor"]
      376 SETTABLEKS                       R19 R18 K100 ["BackgroundColor3"]
      378 MOVE                             R19 R15
      379 CALL                             R16 3 -1
      380 RETURN                           R16 -1

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
      198 GETTABLEKS                       R26 R26 K44 ["getFFlagSTUDIOPLAT45359RemoveSaveExperienceSidebar"]
      200 CALL                             R25 1 1
      201 GETIMPORT                        R26 K4 [require]
      203 GETTABLEKS                       R27 R0 K13 ["Src"]
      205 GETTABLEKS                       R27 R27 K42 ["Flags"]
      207 GETTABLEKS                       R27 R27 K45 ["getEngineFeatureStudioUnifiedPublishAction"]
      209 CALL                             R26 1 1
      210 GETIMPORT                        R27 K4 [require]
      212 GETTABLEKS                       R28 R0 K13 ["Src"]
      214 GETTABLEKS                       R28 R28 K34 ["Util"]
      216 GETTABLEKS                       R28 R28 K46 ["FirstPublishFlow"]
      218 CALL                             R27 1 1
      219 GETTABLEKS                       R28 R3 K11 ["UI"]
      221 GETTABLEKS                       R28 R28 K47 ["TextInputDialog"]
      223 GETIMPORT                        R29 K4 [require]
      225 GETTABLEKS                       R30 R0 K13 ["Src"]
      227 GETTABLEKS                       R30 R30 K34 ["Util"]
      229 GETTABLEKS                       R30 R30 K48 ["KeyProvider"]
      231 CALL                             R29 1 1
      232 GETTABLEKS                       R30 R29 K49 ["getOptInLocationsKeyName"]
      234 CALL                             R30 0 1
      235 GETTABLEKS                       R31 R29 K50 ["getChinaKeyName"]
      237 CALL                             R31 0 1
      238 GETTABLEKS                       R32 R29 K51 ["getLuobuStudioDevPublishKeyName"]
      240 CALL                             R32 0 1
      241 GETTABLEKS                       R33 R29 K52 ["getSelectedKeyName"]
      243 CALL                             R33 0 1
      244 GETTABLEKS                       R34 R29 K53 ["getCreateNewGameKeyName"]
      246 CALL                             R34 0 1
      247 GETIMPORT                        R35 K39 [game]
      249 LOADK                            R37 K54 ["StudioPublishService"]
      250 NAMECALL                         R35 R35 K55 ["GetService"]
      252 CALL                             R35 2 1
      253 NEWTABLE                         R36 0 1
      255 LOADK                            R37 K24 ["BasicInfo"]
      256 SETLIST                          R36 R37 1 [1]
      258 GETTABLEKS                       R37 R1 K56 ["PureComponent"]
      260 LOADK                            R39 K57 ["ScreenCreateNewGame"]
      261 NAMECALL                         R37 R37 K58 ["extend"]
      263 CALL                             R37 2 1
      264 DUPCLOSURE                       R38 K59 [PROTO_2]
      265 CAPTURE                          VAL R27
      266 CAPTURE                          VAL R1
      267 CAPTURE                          VAL R31
      268 SETTABLEKS                       R38 R37 K60 ["init"]
      270 DUPCLOSURE                       R38 K61 [PROTO_4]
      271 CAPTURE                          VAL R35
      272 CAPTURE                          VAL R26
      273 SETTABLEKS                       R38 R37 K62 ["didMount"]
      275 DUPCLOSURE                       R38 K63 [PROTO_5]
      276 SETTABLEKS                       R38 R37 K64 ["willUnmount"]
      278 DUPCLOSURE                       R38 K65 [PROTO_9]
      279 CAPTURE                          VAL R25
      280 CAPTURE                          VAL R26
      281 CAPTURE                          VAL R1
      282 CAPTURE                          VAL R14
      283 CAPTURE                          VAL R24
      284 CAPTURE                          VAL R11
      285 CAPTURE                          VAL R36
      286 CAPTURE                          VAL R10
      287 CAPTURE                          VAL R12
      288 CAPTURE                          VAL R21
      289 CAPTURE                          VAL R30
      290 CAPTURE                          VAL R31
      291 CAPTURE                          VAL R33
      292 CAPTURE                          VAL R22
      293 CAPTURE                          VAL R32
      294 CAPTURE                          VAL R23
      295 CAPTURE                          VAL R34
      296 CAPTURE                          VAL R8
      297 CAPTURE                          VAL R9
      298 CAPTURE                          VAL R28
      299 CAPTURE                          VAL R7
      300 CAPTURE                          VAL R13
      301 SETTABLEKS                       R38 R37 K66 ["render"]
      303 MOVE                             R38 R5
      304 DUPTABLE                         R39 K70 [{"Stylizer", "Localization", "API"}]
      305 GETTABLEKS                       R40 R4 K67 ["Stylizer"]
      307 SETTABLEKS                       R40 R39 K67 ["Stylizer"]
      309 GETTABLEKS                       R40 R4 K68 ["Localization"]
      311 SETTABLEKS                       R40 R39 K68 ["Localization"]
      313 GETTABLEKS                       R40 R4 K69 ["API"]
      315 SETTABLEKS                       R40 R39 K69 ["API"]
      317 CALL                             R38 1 1
      318 MOVE                             R39 R37
      319 CALL                             R38 1 1
      320 MOVE                             R37 R38
      321 DUPCLOSURE                       R38 K71 [PROTO_10]
      322 DUPCLOSURE                       R39 K72 [PROTO_17]
      323 CAPTURE                          VAL R18
      324 CAPTURE                          VAL R17
      325 CAPTURE                          VAL R9
      326 CAPTURE                          VAL R19
      327 CAPTURE                          VAL R20
      328 CAPTURE                          VAL R16
      329 CAPTURE                          VAL R15
      330 GETTABLEKS                       R40 R2 K73 ["connect"]
      332 MOVE                             R41 R38
      333 MOVE                             R42 R39
      334 CALL                             R40 2 1
      335 MOVE                             R41 R37
      336 CALL                             R40 1 -1
      337 RETURN                           R40 -1
