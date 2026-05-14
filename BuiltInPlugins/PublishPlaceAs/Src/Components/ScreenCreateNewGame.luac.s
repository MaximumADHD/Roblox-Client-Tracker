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
        0 DUPTABLE                         R1 K3 [{"selected", "showEmailDialog", "bottomText"}]
        1 LOADN                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["selected"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["showEmailDialog"]
        7 LOADK                            R2 K4 [""]
        8 SETTABLEKS                       R2 R1 K2 ["bottomText"]
       10 SETTABLEKS                       R1 R0 K5 ["state"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K6 ["finishedConnection"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K7 ["changeSelection"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K8 ["createRef"]
       22 CALL                             R1 0 1
       23 SETTABLEKS                       R1 R0 K9 ["scrollingFrameRef"]
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U1
       28 SETTABLEKS                       R1 R0 K10 ["shouldShowEmailDialog"]
       30 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+14]
        1 JUMPIFEQKN                       R1 K0 [0] ; [+13]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["OpenPublishSuccessfulPage"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["props"]
       11 GETTABLEKS                       R3 R3 K3 ["Changed"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K1 ["props"]
       18 GETTABLEKS                       R2 R2 K4 ["OpenPublishFailPage"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K1 ["props"]
       23 GETTABLEKS                       R3 R3 K3 ["Changed"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GamePublishFinished"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["connect"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["finishedConnection"]
       10 GETTABLEKS                       R1 R0 K3 ["props"]
       12 GETTABLEKS                       R1 R1 K4 ["DispatchLoadGroups"]
       14 GETTABLEKS                       R2 R0 K3 ["props"]
       16 GETTABLEKS                       R2 R2 K5 ["IsPublish"]
       18 CALL                             R1 1 0
       19 GETTABLEKS                       R1 R0 K3 ["props"]
       21 GETTABLEKS                       R1 R1 K6 ["DispatchDataSharingDefault"]
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

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
        2 JUMPIFNOT                        R0 ; [+14]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["shouldShowEmailDialog"]
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+9]
        8 GETUPVAL                         R0 1
        9 DUPTABLE                         R2 K2 [{"showEmailDialog"}]
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K1 ["showEmailDialog"]
       13 NAMECALL                         R0 R0 K3 ["setState"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 0
       18 CALL                             R0 0 1
       19 JUMPIFNOT                        R0 ; [+14]
       20 NEWTABLE                         R0 2 0
       22 GETUPVAL                         R1 2
       23 GETUPVAL                         R2 3
       24 SETTABLE                         R2 R0 R1
       25 GETUPVAL                         R1 4
       26 LOADB                            R2 0
       27 SETTABLE                         R2 R0 R1
       28 GETUPVAL                         R1 5
       29 GETUPVAL                         R2 6
       30 GETUPVAL                         R3 7
       31 GETUPVAL                         R4 8
       32 MOVE                             R5 R0
       33 CALL                             R1 4 0
       34 GETUPVAL                         R0 9
       35 LOADB                            R1 1
       36 CALL                             R0 1 0
       37 GETUPVAL                         R0 10
       38 GETTABLEKS                       R0 R0 K4 ["saveAll"]
       40 GETUPVAL                         R1 11
       41 GETUPVAL                         R2 12
       42 GETUPVAL                         R3 13
       43 LOADNIL                          R4
       44 GETUPVAL                         R5 14
       45 GETUPVAL                         R6 15
       46 GETTABLEKS                       R6 R6 K5 ["OwnedGroups"]
       48 CALL                             R0 6 0
       49 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"showEmailDialog", "bottomText"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showEmailDialog"]
        5 LOADK                            R3 K3 [""]
        6 SETTABLEKS                       R3 R2 K1 ["bottomText"]
        8 NAMECALL                         R0 R0 K4 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 JUMPIFEQKS                       R0 K0 ["Submit"] ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 JUMPIFNOT                        R3 ; [+57]
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
       19 JUMPIFNOTEQ                      R1 R2 ; [+28]
       21 GETUPVAL                         R5 7
       22 DUPTABLE                         R7 K3 [{"showEmailDialog", "bottomText"}]
       23 LOADB                            R8 0
       24 SETTABLEKS                       R8 R7 K1 ["showEmailDialog"]
       26 LOADK                            R8 K4 [""]
       27 SETTABLEKS                       R8 R7 K2 ["bottomText"]
       29 NAMECALL                         R5 R5 K5 ["setState"]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R5 8
       33 LOADB                            R6 1
       34 CALL                             R5 1 0
       35 GETUPVAL                         R5 9
       36 GETTABLEKS                       R5 R5 K6 ["saveAll"]
       38 GETUPVAL                         R6 10
       39 GETUPVAL                         R7 11
       40 GETUPVAL                         R8 12
       41 MOVE                             R9 R1
       42 GETUPVAL                         R10 13
       43 GETUPVAL                         R11 14
       44 GETTABLEKS                       R11 R11 K7 ["OwnedGroups"]
       46 CALL                             R5 6 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R5 7
       49 DUPTABLE                         R7 K8 [{"bottomText"}]
       50 GETUPVAL                         R8 11
       51 GETUPVAL                         R10 0
       52 LOADK                            R11 K9 ["ErrorEmailNotEqual"]
       53 NAMECALL                         R8 R8 K10 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K2 ["bottomText"]
       58 NAMECALL                         R5 R5 K5 ["setState"]
       60 CALL                             R5 2 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R4 7
       63 DUPTABLE                         R6 K3 [{"showEmailDialog", "bottomText"}]
       64 LOADB                            R7 0
       65 SETTABLEKS                       R7 R6 K1 ["showEmailDialog"]
       67 LOADK                            R7 K4 [""]
       68 SETTABLEKS                       R7 R6 K2 ["bottomText"]
       70 NAMECALL                         R4 R4 K5 ["setState"]
       72 CALL                             R4 2 0
       73 RETURN                           R0 0

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
       27 LOADNIL                          R12
       28 JUMPIFNOT                        R9 ; [+2]
       29 LOADK                            R12 K13 ["Create"]
       30 JUMP                             ; [+1]
       31 LOADK                            R12 K14 ["Save"]
       32 GETUPVAL                         R14 0
       33 JUMPIFNOT                        R14 ; [+2]
       34 LOADK                            R13 K15 ["UpdateExistingExperience"]
       35 JUMP                             ; [+1]
       36 LOADK                            R13 K16 ["UpdateExistingGame"]
       37 DUPTABLE                         R14 K20 [{"MenuBar", "Separator", "Footer"}]
       38 GETUPVAL                         R15 1
       39 GETTABLEKS                       R15 R15 K21 ["createElement"]
       41 GETUPVAL                         R16 2
       42 DUPTABLE                         R17 K25 [{"Entries", "Selected", "SelectionChanged"}]
       43 GETUPVAL                         R18 3
       44 SETTABLEKS                       R18 R17 K22 ["Entries"]
       46 SETTABLEKS                       R11 R17 K23 ["Selected"]
       48 GETTABLEKS                       R18 R0 K26 ["changeSelection"]
       50 SETTABLEKS                       R18 R17 K24 ["SelectionChanged"]
       52 CALL                             R15 2 1
       53 SETTABLEKS                       R15 R14 K17 ["MenuBar"]
       55 GETUPVAL                         R15 1
       56 GETTABLEKS                       R15 R15 K21 ["createElement"]
       58 GETUPVAL                         R16 4
       59 DUPTABLE                         R17 K29 [{"Position", "DominantAxis"}]
       60 GETIMPORT                        R18 K32 [UDim2.new]
       62 LOADN                            R19 0
       63 GETTABLEKS                       R20 R2 K33 ["MENU_BAR_WIDTH"]
       65 LOADK                            R21 K34 [0.5]
       66 LOADN                            R22 0
       67 CALL                             R18 4 1
       68 SETTABLEKS                       R18 R17 K27 ["Position"]
       70 GETIMPORT                        R18 K37 [Enum.DominantAxis.Height]
       72 SETTABLEKS                       R18 R17 K28 ["DominantAxis"]
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K18 ["Separator"]
       77 GETUPVAL                         R15 1
       78 GETTABLEKS                       R15 R15 K21 ["createElement"]
       80 GETUPVAL                         R16 5
       81 DUPTABLE                         R17 K41 [{"MainButton", "OnClose", "NextScreen", "NextScreenText", "IsPublish"}]
       82 DUPTABLE                         R18 K45 [{"Name", "Active", "OnActivated"}]
       83 SETTABLEKS                       R12 R18 K42 ["Name"]
       85 MOVE                             R19 R6
       86 JUMPIFNOT                        R19 ; [+1]
       87 NOT                              R19 R7
       88 SETTABLEKS                       R19 R18 K43 ["Active"]
       90 NEWCLOSURE                       R19 P0
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          UPVAL U9
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          UPVAL U11
       98 CAPTURE                          UPVAL U12
       99 CAPTURE                          UPVAL U13
      100 CAPTURE                          VAL R10
      101 CAPTURE                          UPVAL U14
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R19 R18 K44 ["OnActivated"]
      109 SETTABLEKS                       R18 R17 K38 ["MainButton"]
      111 SETTABLEKS                       R5 R17 K5 ["OnClose"]
      113 GETUPVAL                         R18 15
      114 GETTABLEKS                       R18 R18 K46 ["SCREENS"]
      116 GETTABLEKS                       R18 R18 K47 ["CHOOSE_GAME"]
      118 SETTABLEKS                       R18 R17 K39 ["NextScreen"]
      120 SETTABLEKS                       R13 R17 K40 ["NextScreenText"]
      122 SETTABLEKS                       R9 R17 K9 ["IsPublish"]
      124 DUPTABLE                         R18 K49 [{"EmailDialog"}]
      125 GETUPVAL                         R19 1
      126 GETTABLEKS                       R19 R19 K21 ["createElement"]
      128 GETUPVAL                         R20 16
      129 DUPTABLE                         R21 K59 [{"Enabled", "Size", "Title", "Header", "Buttons", "Body", "Description", "TextInput", "OnClose", "OnButtonPressed"}]
      130 GETTABLEKS                       R22 R0 K11 ["state"]
      132 GETTABLEKS                       R22 R22 K60 ["showEmailDialog"]
      134 SETTABLEKS                       R22 R21 K50 ["Enabled"]
      136 GETIMPORT                        R22 K62 [Vector2.new]
      138 GETTABLEKS                       R23 R2 K63 ["emailDialog"]
      140 GETTABLEKS                       R23 R23 K51 ["Size"]
      142 GETTABLEKS                       R23 R23 K64 ["X"]
      144 GETTABLEKS                       R24 R2 K63 ["emailDialog"]
      146 GETTABLEKS                       R24 R24 K51 ["Size"]
      148 GETTABLEKS                       R24 R24 K65 ["Y"]
      150 CALL                             R22 2 1
      151 SETTABLEKS                       R22 R21 K51 ["Size"]
      153 GETUPVAL                         R24 7
      154 LOADK                            R25 K66 ["EmailDialogHeader"]
      155 NAMECALL                         R22 R3 K67 ["getText"]
      157 CALL                             R22 3 1
      158 SETTABLEKS                       R22 R21 K52 ["Title"]
      160 GETUPVAL                         R24 7
      161 LOADK                            R25 K66 ["EmailDialogHeader"]
      162 NAMECALL                         R22 R3 K67 ["getText"]
      164 CALL                             R22 3 1
      165 SETTABLEKS                       R22 R21 K53 ["Header"]
      167 NEWTABLE                         R22 0 2
      169 DUPTABLE                         R23 K70 [{"Key", "Text"}]
      170 LOADK                            R24 K71 ["Submit"]
      171 SETTABLEKS                       R24 R23 K68 ["Key"]
      173 LOADK                            R26 K72 ["Button"]
      174 LOADK                            R27 K71 ["Submit"]
      175 NAMECALL                         R24 R3 K67 ["getText"]
      177 CALL                             R24 3 1
      178 SETTABLEKS                       R24 R23 K69 ["Text"]
      180 DUPTABLE                         R24 K70 [{"Key", "Text"}]
      181 LOADK                            R25 K73 ["Cancel"]
      182 SETTABLEKS                       R25 R24 K68 ["Key"]
      184 LOADK                            R27 K72 ["Button"]
      185 LOADK                            R28 K73 ["Cancel"]
      186 NAMECALL                         R25 R3 K67 ["getText"]
      188 CALL                             R25 3 1
      189 SETTABLEKS                       R25 R24 K69 ["Text"]
      191 SETLIST                          R22 R23 2 [1]
      193 SETTABLEKS                       R22 R21 K54 ["Buttons"]
      195 GETUPVAL                         R24 7
      196 LOADK                            R25 K74 ["EmailDialogBody"]
      197 NAMECALL                         R22 R3 K67 ["getText"]
      199 CALL                             R22 3 1
      200 SETTABLEKS                       R22 R21 K55 ["Body"]
      202 GETUPVAL                         R24 7
      203 LOADK                            R25 K75 ["EmailDialogDescription"]
      204 NAMECALL                         R22 R3 K67 ["getText"]
      206 CALL                             R22 3 1
      207 SETTABLEKS                       R22 R21 K56 ["Description"]
      209 NEWTABLE                         R22 0 2
      211 DUPTABLE                         R23 K77 [{"PlaceholderText"}]
      212 GETUPVAL                         R26 7
      213 LOADK                            R27 K78 ["EmailAddress"]
      214 NAMECALL                         R24 R3 K67 ["getText"]
      216 CALL                             R24 3 1
      217 SETTABLEKS                       R24 R23 K76 ["PlaceholderText"]
      219 DUPTABLE                         R24 K80 [{"PlaceholderText", "BottomText"}]
      220 GETUPVAL                         R27 7
      221 LOADK                            R28 K81 ["ConfirmEmailAddress"]
      222 NAMECALL                         R25 R3 K67 ["getText"]
      224 CALL                             R25 3 1
      225 SETTABLEKS                       R25 R24 K76 ["PlaceholderText"]
      227 GETTABLEKS                       R25 R0 K11 ["state"]
      229 GETTABLEKS                       R25 R25 K82 ["bottomText"]
      231 SETTABLEKS                       R25 R24 K79 ["BottomText"]
      233 SETLIST                          R22 R23 2 [1]
      235 SETTABLEKS                       R22 R21 K57 ["TextInput"]
      237 NEWCLOSURE                       R22 P1
      238 CAPTURE                          VAL R0
      239 SETTABLEKS                       R22 R21 K5 ["OnClose"]
      241 NEWCLOSURE                       R22 P2
      242 CAPTURE                          UPVAL U7
      243 CAPTURE                          UPVAL U8
      244 CAPTURE                          UPVAL U9
      245 CAPTURE                          UPVAL U10
      246 CAPTURE                          UPVAL U11
      247 CAPTURE                          UPVAL U12
      248 CAPTURE                          UPVAL U13
      249 CAPTURE                          VAL R0
      250 CAPTURE                          VAL R10
      251 CAPTURE                          UPVAL U14
      252 CAPTURE                          VAL R8
      253 CAPTURE                          VAL R3
      254 CAPTURE                          VAL R4
      255 CAPTURE                          VAL R9
      256 CAPTURE                          VAL R1
      257 SETTABLEKS                       R22 R21 K58 ["OnButtonPressed"]
      259 CALL                             R19 2 1
      260 SETTABLEKS                       R19 R18 K48 ["EmailDialog"]
      262 CALL                             R15 3 1
      263 SETTABLEKS                       R15 R14 K19 ["Footer"]
      265 GETUPVAL                         R15 1
      266 GETTABLEKS                       R15 R15 K21 ["createElement"]
      268 GETUPVAL                         R16 17
      269 NEWTABLE                         R17 8 0
      271 LOADN                            R18 1
      272 SETTABLEKS                       R18 R17 K83 ["BackgroundTransparency"]
      274 GETIMPORT                        R18 K32 [UDim2.new]
      276 LOADN                            R19 0
      277 GETTABLEKS                       R20 R2 K33 ["MENU_BAR_WIDTH"]
      279 LOADN                            R21 0
      280 LOADN                            R22 0
      281 CALL                             R18 4 1
      282 SETTABLEKS                       R18 R17 K27 ["Position"]
      284 GETIMPORT                        R18 K32 [UDim2.new]
      286 LOADN                            R19 1
      287 GETTABLEKS                       R21 R2 K33 ["MENU_BAR_WIDTH"]
      289 MINUS                            R20 R21
      290 LOADN                            R21 1
      291 GETTABLEKS                       R23 R2 K84 ["FOOTER_HEIGHT"]
      293 MINUS                            R22 R23
      294 CALL                             R18 4 1
      295 SETTABLEKS                       R18 R17 K51 ["Size"]
      297 GETIMPORT                        R18 K32 [UDim2.new]
      299 LOADN                            R19 1
      300 GETTABLEKS                       R21 R2 K33 ["MENU_BAR_WIDTH"]
      302 MINUS                            R20 R21
      303 LOADN                            R21 0
      304 LOADN                            R22 0
      305 CALL                             R18 4 1
      306 SETTABLEKS                       R18 R17 K85 ["CanvasSize"]
      308 GETIMPORT                        R18 K87 [Enum.AutomaticSize.Y]
      310 SETTABLEKS                       R18 R17 K88 ["AutomaticCanvasSize"]
      312 GETUPVAL                         R18 1
      313 GETTABLEKS                       R18 R18 K89 ["Ref"]
      315 GETTABLEKS                       R19 R0 K90 ["scrollingFrameRef"]
      317 SETTABLE                         R19 R17 R18
      318 NEWTABLE                         R18 0 1
      320 GETUPVAL                         R19 1
      321 GETTABLEKS                       R19 R19 K21 ["createElement"]
      323 GETUPVAL                         R20 18
      324 DUPTABLE                         R21 K91 [{"IsPublish"}]
      325 SETTABLEKS                       R9 R21 K9 ["IsPublish"]
      327 CALL                             R19 2 -1
      328 SETLIST                          R18 R19 -1 [1]
      330 CALL                             R15 3 1
      331 SETTABLEKS                       R15 R14 K92 ["Page"]
      333 GETUPVAL                         R15 1
      334 GETTABLEKS                       R15 R15 K21 ["createElement"]
      336 LOADK                            R16 K93 ["Frame"]
      337 DUPTABLE                         R17 K95 [{"Size", "BackgroundColor3"}]
      338 GETIMPORT                        R18 K32 [UDim2.new]
      340 LOADN                            R19 1
      341 LOADN                            R20 0
      342 LOADN                            R21 1
      343 LOADN                            R22 0
      344 CALL                             R18 4 1
      345 SETTABLEKS                       R18 R17 K51 ["Size"]
      347 GETTABLEKS                       R18 R2 K96 ["backgroundColor"]
      349 SETTABLEKS                       R18 R17 K94 ["BackgroundColor3"]
      351 MOVE                             R18 R14
      352 CALL                             R15 3 -1
      353 RETURN                           R15 -1

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
        2 DUPTABLE                         R3 K6 [{"id", "name", "parentGameName", "parentGameId", "settings", "failed"}]
        3 GETIMPORT                        R4 K8 [game]
        5 GETTABLEKS                       R4 R4 K9 ["GameId"]
        7 SETTABLEKS                       R4 R3 K0 ["id"]
        9 GETTABLEKS                       R4 R0 K1 ["name"]
       11 SETTABLEKS                       R4 R3 K1 ["name"]
       13 GETTABLEKS                       R4 R0 K1 ["name"]
       15 SETTABLEKS                       R4 R3 K2 ["parentGameName"]
       17 LOADN                            R4 0
       18 SETTABLEKS                       R4 R3 K3 ["parentGameId"]
       20 SETTABLEKS                       R0 R3 K4 ["settings"]
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K5 ["failed"]
       25 CALL                             R2 1 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R1 0
       28 GETUPVAL                         R2 2
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K10 ["SCREENS"]
       32 GETTABLEKS                       R3 R3 K11 ["PUBLISH_FAIL"]
       34 CALL                             R2 1 -1
       35 CALL                             R1 -1 0
       36 RETURN                           R0 0

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
       95 GETTABLEKS                       R15 R15 K25 ["Actions"]
       97 GETTABLEKS                       R15 R15 K26 ["AddChange"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K4 [require]
      102 GETTABLEKS                       R16 R0 K13 ["Src"]
      104 GETTABLEKS                       R16 R16 K25 ["Actions"]
      106 GETTABLEKS                       R16 R16 K27 ["SetIsPublishing"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K4 [require]
      111 GETTABLEKS                       R17 R0 K13 ["Src"]
      113 GETTABLEKS                       R17 R17 K25 ["Actions"]
      115 GETTABLEKS                       R17 R17 K28 ["SetScreen"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K4 [require]
      120 GETTABLEKS                       R18 R0 K13 ["Src"]
      122 GETTABLEKS                       R18 R18 K25 ["Actions"]
      124 GETTABLEKS                       R18 R18 K29 ["SetPublishInfo"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K4 [require]
      129 GETTABLEKS                       R19 R0 K13 ["Src"]
      131 GETTABLEKS                       R19 R19 K30 ["Thunks"]
      133 GETTABLEKS                       R19 R19 K31 ["LoadGroups"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K4 [require]
      138 GETTABLEKS                       R20 R0 K13 ["Src"]
      140 GETTABLEKS                       R20 R20 K30 ["Thunks"]
      142 GETTABLEKS                       R20 R20 K32 ["LoadDataSharingDefault"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K4 [require]
      147 GETTABLEKS                       R21 R0 K13 ["Src"]
      149 GETTABLEKS                       R21 R21 K33 ["Util"]
      151 GETTABLEKS                       R21 R21 K34 ["PublishPlaceAsUtilities"]
      153 CALL                             R20 1 1
      154 GETTABLEKS                       R20 R20 K35 ["shouldShowDevPublishLocations"]
      156 GETIMPORT                        R21 K4 [require]
      158 GETTABLEKS                       R22 R0 K13 ["Src"]
      160 GETTABLEKS                       R22 R22 K33 ["Util"]
      162 GETTABLEKS                       R22 R22 K34 ["PublishPlaceAsUtilities"]
      164 CALL                             R21 1 1
      165 GETTABLEKS                       R21 R21 K36 ["sendAnalyticsToKibana"]
      167 GETIMPORT                        R22 K38 [game]
      169 LOADK                            R24 K39 ["LuobuDevPublishAnalyticsHundredthsPercentage"]
      170 NAMECALL                         R22 R22 K40 ["GetFastInt"]
      172 CALL                             R22 2 1
      173 GETIMPORT                        R23 K4 [require]
      175 GETTABLEKS                       R24 R0 K13 ["Src"]
      177 GETTABLEKS                       R24 R24 K41 ["Flags"]
      179 GETTABLEKS                       R24 R24 K42 ["getFFlagPublishPlaceAsGameToExperience"]
      181 CALL                             R23 1 1
      182 CALL                             R23 0 1
      183 GETTABLEKS                       R24 R3 K11 ["UI"]
      185 GETTABLEKS                       R24 R24 K43 ["TextInputDialog"]
      187 GETIMPORT                        R25 K4 [require]
      189 GETTABLEKS                       R26 R0 K13 ["Src"]
      191 GETTABLEKS                       R26 R26 K33 ["Util"]
      193 GETTABLEKS                       R26 R26 K44 ["KeyProvider"]
      195 CALL                             R25 1 1
      196 GETTABLEKS                       R26 R25 K45 ["getOptInLocationsKeyName"]
      198 CALL                             R26 0 1
      199 GETTABLEKS                       R27 R25 K46 ["getChinaKeyName"]
      201 CALL                             R27 0 1
      202 GETTABLEKS                       R28 R25 K47 ["getLuobuStudioDevPublishKeyName"]
      204 CALL                             R28 0 1
      205 GETTABLEKS                       R29 R25 K48 ["getSelectedKeyName"]
      207 CALL                             R29 0 1
      208 GETTABLEKS                       R30 R25 K49 ["getCreateNewGameKeyName"]
      210 CALL                             R30 0 1
      211 GETIMPORT                        R31 K38 [game]
      213 LOADK                            R33 K50 ["StudioPublishService"]
      214 NAMECALL                         R31 R31 K51 ["GetService"]
      216 CALL                             R31 2 1
      217 NEWTABLE                         R32 0 1
      219 LOADK                            R33 K24 ["BasicInfo"]
      220 SETLIST                          R32 R33 1 [1]
      222 GETTABLEKS                       R33 R1 K52 ["PureComponent"]
      224 LOADK                            R35 K53 ["ScreenCreateNewGame"]
      225 NAMECALL                         R33 R33 K54 ["extend"]
      227 CALL                             R33 2 1
      228 DUPCLOSURE                       R34 K55 [PROTO_2]
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R27
      231 SETTABLEKS                       R34 R33 K56 ["init"]
      233 DUPCLOSURE                       R34 K57 [PROTO_4]
      234 CAPTURE                          VAL R31
      235 SETTABLEKS                       R34 R33 K58 ["didMount"]
      237 DUPCLOSURE                       R34 K59 [PROTO_5]
      238 SETTABLEKS                       R34 R33 K60 ["willUnmount"]
      240 DUPCLOSURE                       R34 K61 [PROTO_9]
      241 CAPTURE                          VAL R23
      242 CAPTURE                          VAL R1
      243 CAPTURE                          VAL R11
      244 CAPTURE                          VAL R32
      245 CAPTURE                          VAL R10
      246 CAPTURE                          VAL R12
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R26
      249 CAPTURE                          VAL R27
      250 CAPTURE                          VAL R29
      251 CAPTURE                          VAL R21
      252 CAPTURE                          VAL R28
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R30
      255 CAPTURE                          VAL R8
      256 CAPTURE                          VAL R9
      257 CAPTURE                          VAL R24
      258 CAPTURE                          VAL R7
      259 CAPTURE                          VAL R13
      260 SETTABLEKS                       R34 R33 K62 ["render"]
      262 MOVE                             R34 R5
      263 DUPTABLE                         R35 K66 [{"Stylizer", "Localization", "API"}]
      264 GETTABLEKS                       R36 R4 K63 ["Stylizer"]
      266 SETTABLEKS                       R36 R35 K63 ["Stylizer"]
      268 GETTABLEKS                       R36 R4 K64 ["Localization"]
      270 SETTABLEKS                       R36 R35 K64 ["Localization"]
      272 GETTABLEKS                       R36 R4 K65 ["API"]
      274 SETTABLEKS                       R36 R35 K65 ["API"]
      276 CALL                             R34 1 1
      277 MOVE                             R35 R33
      278 CALL                             R34 1 1
      279 MOVE                             R33 R34
      280 DUPCLOSURE                       R34 K67 [PROTO_10]
      281 DUPCLOSURE                       R35 K68 [PROTO_17]
      282 CAPTURE                          VAL R17
      283 CAPTURE                          VAL R16
      284 CAPTURE                          VAL R9
      285 CAPTURE                          VAL R18
      286 CAPTURE                          VAL R19
      287 CAPTURE                          VAL R15
      288 CAPTURE                          VAL R14
      289 GETTABLEKS                       R36 R2 K69 ["connect"]
      291 MOVE                             R37 R34
      292 MOVE                             R38 R35
      293 CALL                             R36 2 1
      294 MOVE                             R37 R33
      295 CALL                             R36 1 -1
      296 RETURN                           R36 -1
