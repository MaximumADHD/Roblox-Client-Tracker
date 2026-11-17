PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"searchTerm"}]
        2 SETTABLEKS                       R0 R3 K0 ["searchTerm"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = ""}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K4 ["finishedConnection"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K5 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K6 ["layoutRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K7 ["OnSearchRequested"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["state"]
        3 GETTABLEKS                       R3 R3 K1 ["selectedPlace"]
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 RETURN                           R0 0
        8 JUMPIFNOT                        R0 ; [+17]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["props"]
       12 GETTABLEKS                       R3 R3 K3 ["OpenPublishSuccessfulPage"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["state"]
       17 GETTABLEKS                       R4 R4 K1 ["selectedPlace"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["props"]
       22 GETTABLEKS                       R5 R5 K4 ["ParentGame"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K2 ["props"]
       29 GETTABLEKS                       R3 R3 K5 ["OpenPublishFailPage"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K0 ["state"]
       34 GETTABLEKS                       R4 R4 K1 ["selectedPlace"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K2 ["props"]
       39 GETTABLEKS                       R5 R5 K4 ["ParentGame"]
       41 MOVE                             R6 R2
       42 CALL                             R3 3 0
       43 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GamePublishFinished"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["connect"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["finishedConnection"]
       10 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["props"]
        4 GETTABLEKS                       R2 R2 K3 ["Places"]
        6 CALL                             R1 1 3
        7 FORGPREP_NEXT                    R1
        8 GETTABLEKS                       R6 R0 K2 ["props"]
       10 GETTABLEKS                       R6 R6 K3 ["Places"]
       12 LOADNIL                          R7
       13 SETTABLE                         R7 R6 R4
       14 FORGLOOP                         R1 2 ; [-7]
       16 GETTABLEKS                       R1 R0 K4 ["finishedConnection"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K4 ["finishedConnection"]
       21 NAMECALL                         R1 R1 K5 ["disconnect"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"selectedPlace"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["selectedPlace"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"selectedPlace"}]
        2 DUPTABLE                         R3 K5 [{["placeId"] = 0, ["name"]}]
        3 GETUPVAL                         R4 1
        4 SETTABLEKS                       R4 R3 K4 ["name"]
        6 SETTABLEKS                       R3 R2 K0 ["selectedPlace"]
        8 NAMECALL                         R0 R0 K6 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildRobloxUrl"]
        3 LOADK                            R1 K1 ["create"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 -1
        6 CALL                             R0 -1 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["state"]
        5 GETTABLEKS                       R0 R0 K1 ["selectedPlace"]
        7 GETTABLEKS                       R0 R0 K2 ["placeId"]
        9 JUMPIFEQKN                       R0 K3 [0] ; [+13]
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 3
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K0 ["state"]
       16 GETTABLEKS                       R2 R2 K1 ["selectedPlace"]
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K4 ["IsPublish"]
       21 CALL                             R0 3 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R0 K6 [game]
       25 LOADK                            R2 K7 ["StudioPublishService"]
       26 NAMECALL                         R0 R0 K8 ["GetService"]
       28 CALL                             R0 2 1
       29 LOADB                            R2 0
       30 LOADK                            R3 K9 [""]
       31 NAMECALL                         R0 R0 K10 ["SetTeamCreateOnPublishInfo"]
       33 CALL                             R0 3 0
       34 GETUPVAL                         R0 1
       35 GETTABLEKS                       R0 R0 K0 ["state"]
       37 GETTABLEKS                       R0 R0 K1 ["selectedPlace"]
       39 GETTABLEKS                       R0 R0 K2 ["placeId"]
       41 JUMPIFNOTEQKN                    R0 K3 [0] ; [+10]
       43 GETUPVAL                         R0 5
       44 LOADK                            R2 K11 ["New Place"]
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R3 R3 K12 ["name"]
       48 NAMECALL                         R0 R0 K13 ["setUploadNames"]
       50 CALL                             R0 3 0
       51 JUMP                             ; [+14]
       52 GETUPVAL                         R0 5
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K0 ["state"]
       56 GETTABLEKS                       R2 R2 K1 ["selectedPlace"]
       58 GETTABLEKS                       R2 R2 K12 ["name"]
       60 GETUPVAL                         R3 3
       61 GETTABLEKS                       R3 R3 K12 ["name"]
       63 NAMECALL                         R0 R0 K13 ["setUploadNames"]
       65 CALL                             R0 3 0
       66 GETUPVAL                         R0 5
       67 GETUPVAL                         R2 3
       68 GETTABLEKS                       R2 R2 K14 ["universeId"]
       70 GETUPVAL                         R3 1
       71 GETTABLEKS                       R3 R3 K0 ["state"]
       73 GETTABLEKS                       R3 R3 K1 ["selectedPlace"]
       75 GETTABLEKS                       R3 R3 K2 ["placeId"]
       77 LOADN                            R4 0
       78 GETUPVAL                         R5 4
       79 GETTABLEKS                       R5 R5 K4 ["IsPublish"]
       81 LOADNIL                          R6
       82 NAMECALL                         R0 R0 K15 ["publishAs"]
       84 CALL                             R0 6 0
       85 GETUPVAL                         R0 6
       86 LOADB                            R1 1
       87 CALL                             R0 1 0
       88 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClose"]
        8 GETTABLEKS                       R5 R1 K4 ["NextPageCursor"]
       10 GETTABLEKS                       R6 R1 K5 ["Places"]
       12 GETTABLEKS                       R7 R1 K6 ["ParentGame"]
       14 GETTABLEKS                       R8 R1 K7 ["IsPublishing"]
       16 GETTABLEKS                       R9 R1 K8 ["SourceGameMinAge"]
       18 JUMPIFNOT                        R9 ; [+24]
       19 LOADB                            R9 0
       20 GETTABLEKS                       R10 R1 K8 ["SourceGameMinAge"]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K9 ["MINIMUM_AGE"]
       25 JUMPIFNOTLE                      R11 R10 ; [+17]
       27 GETTABLEKS                       R9 R1 K6 ["ParentGame"]
       29 GETTABLEKS                       R9 R9 K10 ["minimumAge"]
       31 JUMPIFNOT                        R9 ; [+11]
       32 GETTABLEKS                       R10 R1 K6 ["ParentGame"]
       34 GETTABLEKS                       R10 R10 K10 ["minimumAge"]
       36 GETUPVAL                         R11 0
       37 GETTABLEKS                       R11 R11 K9 ["MINIMUM_AGE"]
       39 JUMPIFLT                         R10 R11 ; [+2]
       41 LOADB                            R9 0 +1
       42 LOADB                            R9 1
       43 GETTABLEKS                       R10 R1 K11 ["DispatchLoadExistingPlaces"]
       45 GETTABLEKS                       R11 R1 K12 ["dispatchSetIsPublishing"]
       47 GETTABLEKS                       R12 R1 K13 ["OpenChooseGamePage"]
       49 GETTABLEKS                       R13 R1 K14 ["OpenPublishInProgressPage"]
       51 LOADB                            R14 0
       52 GETTABLEKS                       R15 R0 K15 ["state"]
       54 GETTABLEKS                       R15 R15 K16 ["selectedPlace"]
       56 JUMPIFEQKNIL                     R15 ; [+11]
       58 GETTABLEKS                       R15 R0 K15 ["state"]
       60 GETTABLEKS                       R15 R15 K16 ["selectedPlace"]
       62 GETTABLEKS                       R15 R15 K17 ["placeId"]
       64 JUMPIFEQKN                       R15 K18 [0] ; [+2]
       66 LOADB                            R14 0 +1
       67 LOADB                            R14 1
       68 JUMPIFNOT                        R7 ; [+3]
       69 GETTABLEKS                       R15 R7 K19 ["name"]
       71 JUMPIF                           R15 ; [+1]
       72 LOADK                            R15 K20 [""]
       73 LOADK                            R18 K21 ["ScreenHeader"]
       74 LOADK                            R19 K22 ["ChoosePlace"]
       75 NEWTABLE                         R20 0 1
       77 MOVE                             R21 R15
       78 SETLIST                          R20 R21 1 [1]
       80 NAMECALL                         R16 R3 K23 ["getText"]
       82 CALL                             R16 4 1
       83 GETUPVAL                         R18 1
       84 JUMPIFNOT                        R18 ; [+6]
       85 LOADK                            R19 K24 ["General"]
       86 LOADK                            R20 K25 ["UntitledExperience"]
       87 NAMECALL                         R17 R3 K23 ["getText"]
       89 CALL                             R17 3 1
       90 JUMP                             ; [+5]
       91 LOADK                            R19 K24 ["General"]
       92 LOADK                            R20 K26 ["UntitledGame"]
       93 NAMECALL                         R17 R3 K23 ["getText"]
       95 CALL                             R17 3 1
       96 NEWTABLE                         R18 0 1
       98 GETUPVAL                         R19 2
       99 GETTABLEKS                       R19 R19 K27 ["createElement"]
      101 LOADK                            R20 K28 ["UIListLayout"]
      102 NEWTABLE                         R21 8 0
      104 GETIMPORT                        R22 K32 [Enum.FillDirection.Vertical]
      106 SETTABLEKS                       R22 R21 K30 ["FillDirection"]
      108 GETIMPORT                        R22 K35 [Enum.HorizontalAlignment.Center]
      110 SETTABLEKS                       R22 R21 K33 ["HorizontalAlignment"]
      112 GETIMPORT                        R22 K38 [Enum.VerticalAlignment.Top]
      114 SETTABLEKS                       R22 R21 K36 ["VerticalAlignment"]
      116 GETIMPORT                        R22 K41 [Enum.SortOrder.LayoutOrder]
      118 SETTABLEKS                       R22 R21 K39 ["SortOrder"]
      120 GETIMPORT                        R22 K44 [UDim.new]
      122 LOADN                            R23 0
      123 LOADN                            R24 0
      124 CALL                             R22 2 1
      125 SETTABLEKS                       R22 R21 K45 ["Padding"]
      127 GETUPVAL                         R22 2
      128 GETTABLEKS                       R22 R22 K46 ["Ref"]
      130 GETTABLEKS                       R23 R0 K47 ["layoutRef"]
      132 SETTABLE                         R23 R21 R22
      133 CALL                             R19 2 -1
      134 SETLIST                          R18 R19 -1 [1]
      136 GETTABLEKS                       R19 R1 K48 ["PlacesQueryState"]
      138 GETUPVAL                         R20 0
      139 GETTABLEKS                       R20 R20 K49 ["QUERY_STATE"]
      141 GETTABLEKS                       R20 R20 K50 ["QUERY_STATE_SUCCESS"]
      143 JUMPIFNOTEQ                      R19 R20 ; [+93]
      145 GETIMPORT                        R19 K52 [pairs]
      147 MOVE                             R20 R6
      148 CALL                             R19 1 3
      149 FORGPREP_NEXT                    R19
      150 GETIMPORT                        R24 K55 [string.find]
      152 GETTABLEKS                       R25 R23 K19 ["name"]
      154 NAMECALL                         R25 R25 K56 ["lower"]
      156 CALL                             R25 1 1
      157 GETTABLEKS                       R26 R0 K15 ["state"]
      159 GETTABLEKS                       R26 R26 K57 ["searchTerm"]
      161 NAMECALL                         R26 R26 K56 ["lower"]
      163 CALL                             R26 1 -1
      164 CALL                             R24 -1 1
      165 JUMPIFNOT                        R24 ; [+47]
      166 GETUPVAL                         R24 2
      167 GETTABLEKS                       R24 R24 K27 ["createElement"]
      169 GETUPVAL                         R25 3
      170 DUPTABLE                         R26 K64 [{["Name"], ["Id"], ["LayoutOrder"], ["Selected"], ["LastItem"] = False, ["OnActivated"]}]
      171 GETTABLEKS                       R27 R23 K19 ["name"]
      173 SETTABLEKS                       R27 R26 K58 ["Name"]
      175 GETTABLEKS                       R27 R23 K17 ["placeId"]
      177 SETTABLEKS                       R27 R26 K59 ["Id"]
      179 LENGTH                           R28 R18
      180 ADDK                             R27 R28 K65 [1]
      181 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      183 LOADB                            R27 0
      184 GETTABLEKS                       R28 R0 K15 ["state"]
      186 GETTABLEKS                       R28 R28 K16 ["selectedPlace"]
      188 JUMPIFEQKNIL                     R28 ; [+13]
      190 GETTABLEKS                       R28 R0 K15 ["state"]
      192 GETTABLEKS                       R28 R28 K16 ["selectedPlace"]
      194 GETTABLEKS                       R28 R28 K17 ["placeId"]
      196 GETTABLEKS                       R29 R23 K17 ["placeId"]
      198 JUMPIFEQ                         R28 R29 ; [+2]
      200 LOADB                            R27 0 +1
      201 LOADB                            R27 1
      202 SETTABLEKS                       R27 R26 K60 ["Selected"]
      204 NEWCLOSURE                       R27 P0
      205 CAPTURE                          VAL R0
      206 CAPTURE                          VAL R23
      207 SETTABLEKS                       R27 R26 K63 ["OnActivated"]
      209 CALL                             R24 2 1
      210 LENGTH                           R26 R18
      211 ADDK                             R25 R26 K65 [1]
      212 SETTABLE                         R24 R18 R25
      213 FORGLOOP                         R19 2 ; [-64]
      215 LOADN                            R19 0
      216 GETUPVAL                         R20 2
      217 GETTABLEKS                       R20 R20 K27 ["createElement"]
      219 GETUPVAL                         R21 3
      220 DUPTABLE                         R22 K66 [{["Name"], ["LayoutOrder"] = 1, ["Selected"], ["OnActivated"]}]
      221 LOADK                            R25 K67 ["Button"]
      222 LOADK                            R26 K68 ["AddNewPlaceToGame"]
      223 NAMECALL                         R23 R3 K23 ["getText"]
      225 CALL                             R23 3 1
      226 SETTABLEKS                       R23 R22 K58 ["Name"]
      228 SETTABLEKS                       R14 R22 K60 ["Selected"]
      230 NEWCLOSURE                       R23 P1
      231 CAPTURE                          VAL R0
      232 CAPTURE                          VAL R17
      233 SETTABLEKS                       R23 R22 K63 ["OnActivated"]
      235 CALL                             R20 2 1
      236 SETTABLE                         R20 R18 R19
      237 JUMPIFNOT                        R14 ; [+2]
      238 LOADK                            R19 K69 ["Create"]
      239 JUMP                             ; [+1]
      240 LOADK                            R19 K70 ["Overwrite"]
      241 LOADN                            R20 200
      242 JUMPIFNOT                        R18 ; [+7]
      243 LENGTH                           R23 R18
      244 MULK                             R22 R23 K71 [80]
      245 FASTCALL1                        MATH_CEIL R22 ; [+2]
      246 GETIMPORT                        R21 K74 [math.ceil]
      248 CALL                             R21 1 1
      249 JUMPIF                           R21 ; [+1]
      250 LOADN                            R21 200
      251 MOVE                             R20 R21
      252 LOADN                            R21 560
      253 JUMPIFNOTLT                      R20 R21 ; [+6]
      255 JUMPIFNOT                        R5 ; [+4]
      256 MOVE                             R21 R10
      257 MOVE                             R22 R7
      258 MOVE                             R23 R5
      259 CALL                             R21 2 0
      260 GETUPVAL                         R21 2
      261 GETTABLEKS                       R21 R21 K27 ["createElement"]
      263 LOADK                            R22 K75 ["Frame"]
      264 DUPTABLE                         R23 K79 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      265 GETIMPORT                        R24 K81 [UDim2.new]
      267 LOADN                            R25 1
      268 LOADN                            R26 0
      269 LOADN                            R27 1
      270 LOADN                            R28 0
      271 CALL                             R24 4 1
      272 SETTABLEKS                       R24 R23 K76 ["Size"]
      274 GETTABLEKS                       R24 R2 K82 ["backgroundColor"]
      276 SETTABLEKS                       R24 R23 K77 ["BackgroundColor3"]
      278 DUPTABLE                         R24 K93 [{"Back", "Sep1", "Header", "Warning17PlusFrame", "WarningDataSharingFrame", "SearchBar", "MainContentsSuccess", "MainContentsQuerying", "MainContentsFailed", "Footer"}]
      279 GETUPVAL                         R25 2
      280 GETTABLEKS                       R25 R25 K27 ["createElement"]
      282 LOADK                            R26 K94 ["ImageButton"]
      283 NEWTABLE                         R27 8 0
      285 GETTABLEKS                       R28 R2 K95 ["icons"]
      287 GETTABLEKS                       R28 R28 K96 ["backArrow"]
      289 SETTABLEKS                       R28 R27 K97 ["Image"]
      291 GETIMPORT                        R28 K81 [UDim2.new]
      293 LOADN                            R29 0
      294 LOADN                            R30 20
      295 LOADN                            R31 0
      296 LOADN                            R32 20
      297 CALL                             R28 4 1
      298 SETTABLEKS                       R28 R27 K76 ["Size"]
      300 GETIMPORT                        R28 K81 [UDim2.new]
      302 LOADN                            R29 0
      303 LOADN                            R30 30
      304 LOADN                            R31 0
      305 LOADN                            R32 10
      306 CALL                             R28 4 1
      307 SETTABLEKS                       R28 R27 K98 ["Position"]
      309 LOADN                            R28 0
      310 SETTABLEKS                       R28 R27 K99 ["Style"]
      312 LOADN                            R28 0
      313 SETTABLEKS                       R28 R27 K78 ["BorderSizePixel"]
      315 LOADN                            R28 1
      316 SETTABLEKS                       R28 R27 K100 ["BackgroundTransparency"]
      318 GETUPVAL                         R28 2
      319 GETTABLEKS                       R28 R28 K101 ["Event"]
      321 GETTABLEKS                       R28 R28 K102 ["Activated"]
      323 NEWCLOSURE                       R29 P2
      324 CAPTURE                          VAL R12
      325 SETTABLE                         R29 R27 R28
      326 CALL                             R25 2 1
      327 SETTABLEKS                       R25 R24 K83 ["Back"]
      329 GETUPVAL                         R25 2
      330 GETTABLEKS                       R25 R25 K27 ["createElement"]
      332 GETUPVAL                         R26 4
      333 DUPTABLE                         R27 K103 [{"Position"}]
      334 GETIMPORT                        R28 K81 [UDim2.new]
      336 LOADK                            R29 K104 [0.5]
      337 LOADN                            R30 0
      338 LOADN                            R31 0
      339 LOADN                            R32 50
      340 CALL                             R28 4 1
      341 SETTABLEKS                       R28 R27 K98 ["Position"]
      343 CALL                             R25 2 1
      344 SETTABLEKS                       R25 R24 K84 ["Sep1"]
      346 GETUPVAL                         R25 2
      347 GETTABLEKS                       R25 R25 K27 ["createElement"]
      349 LOADK                            R26 K105 ["TextLabel"]
      350 DUPTABLE                         R27 K112 [{["Text"], ["Position"], ["TextXAlignment"], ["TextSize"] = 20, ["BackgroundTransparency"] = 1, ["Font"], ["TextColor3"]}]
      351 SETTABLEKS                       R16 R27 K106 ["Text"]
      353 GETIMPORT                        R28 K81 [UDim2.new]
      355 LOADN                            R29 0
      356 LOADN                            R30 30
      357 LOADN                            R31 0
      358 LOADN                            R32 80
      359 CALL                             R28 4 1
      360 SETTABLEKS                       R28 R27 K98 ["Position"]
      362 GETIMPORT                        R28 K114 [Enum.TextXAlignment.Left]
      364 SETTABLEKS                       R28 R27 K107 ["TextXAlignment"]
      366 GETTABLEKS                       R28 R2 K115 ["header"]
      368 GETTABLEKS                       R28 R28 K116 ["font"]
      370 SETTABLEKS                       R28 R27 K110 ["Font"]
      372 GETTABLEKS                       R28 R2 K117 ["textColor"]
      374 SETTABLEKS                       R28 R27 K111 ["TextColor3"]
      376 CALL                             R25 2 1
      377 SETTABLEKS                       R25 R24 K85 ["Header"]
      379 JUMPIFNOT                        R9 ; [+112]
      380 GETUPVAL                         R25 2
      381 GETTABLEKS                       R25 R25 K27 ["createElement"]
      383 LOADK                            R26 K75 ["Frame"]
      384 DUPTABLE                         R27 K118 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      385 GETIMPORT                        R28 K81 [UDim2.new]
      387 LOADN                            R29 0
      388 LOADN                            R30 30
      389 LOADN                            R31 0
      390 LOADN                            R32 105
      391 CALL                             R28 4 1
      392 SETTABLEKS                       R28 R27 K98 ["Position"]
      394 GETIMPORT                        R28 K81 [UDim2.new]
      396 LOADN                            R29 1
      397 LOADN                            R30 -60
      398 LOADN                            R31 0
      399 LOADN                            R32 40
      400 CALL                             R28 4 1
      401 SETTABLEKS                       R28 R27 K76 ["Size"]
      403 DUPTABLE                         R28 K121 [{"WarningIcon", "WarningText"}]
      404 GETUPVAL                         R29 2
      405 GETTABLEKS                       R29 R29 K27 ["createElement"]
      407 LOADK                            R30 K122 ["ImageLabel"]
      408 DUPTABLE                         R31 K124 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"], ["BackgroundTransparency"] = 1}]
      409 GETIMPORT                        R32 K126 [UDim2.fromOffset]
      411 LOADN                            R33 20
      412 LOADN                            R34 20
      413 CALL                             R32 2 1
      414 SETTABLEKS                       R32 R31 K76 ["Size"]
      416 GETIMPORT                        R32 K81 [UDim2.new]
      418 LOADN                            R33 0
      419 LOADN                            R34 0
      420 LOADN                            R35 0
      421 LOADN                            R36 10
      422 CALL                             R32 4 1
      423 SETTABLEKS                       R32 R31 K98 ["Position"]
      425 GETIMPORT                        R32 K128 [Vector2.new]
      427 LOADN                            R33 0
      428 LOADK                            R34 K104 [0.5]
      429 CALL                             R32 2 1
      430 SETTABLEKS                       R32 R31 K123 ["AnchorPoint"]
      432 GETTABLEKS                       R32 R2 K95 ["icons"]
      434 GETTABLEKS                       R32 R32 K129 ["warning"]
      436 SETTABLEKS                       R32 R31 K97 ["Image"]
      438 CALL                             R29 2 1
      439 SETTABLEKS                       R29 R28 K119 ["WarningIcon"]
      441 GETUPVAL                         R29 2
      442 GETTABLEKS                       R29 R29 K27 ["createElement"]
      444 LOADK                            R30 K105 ["TextLabel"]
      445 DUPTABLE                         R31 K133 [{["Position"], ["Size"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"] = 20, ["BackgroundTransparency"] = 1, ["Font"], ["TextColor3"], ["TextWrapped"] = True}]
      446 GETIMPORT                        R32 K126 [UDim2.fromOffset]
      448 LOADN                            R33 25
      449 LOADN                            R34 0
      450 CALL                             R32 2 1
      451 SETTABLEKS                       R32 R31 K98 ["Position"]
      453 GETIMPORT                        R32 K81 [UDim2.new]
      455 LOADN                            R33 1
      456 LOADN                            R34 0
      457 LOADN                            R35 1
      458 LOADN                            R36 0
      459 CALL                             R32 4 1
      460 SETTABLEKS                       R32 R31 K76 ["Size"]
      462 LOADK                            R34 K21 ["ScreenHeader"]
      463 LOADK                            R35 K134 ["RestrictedContentWarning"]
      464 NAMECALL                         R32 R3 K23 ["getText"]
      466 CALL                             R32 3 1
      467 SETTABLEKS                       R32 R31 K106 ["Text"]
      469 GETIMPORT                        R32 K114 [Enum.TextXAlignment.Left]
      471 SETTABLEKS                       R32 R31 K107 ["TextXAlignment"]
      473 GETIMPORT                        R32 K135 [Enum.TextYAlignment.Top]
      475 SETTABLEKS                       R32 R31 K130 ["TextYAlignment"]
      477 GETTABLEKS                       R32 R2 K115 ["header"]
      479 GETTABLEKS                       R32 R32 K116 ["font"]
      481 SETTABLEKS                       R32 R31 K110 ["Font"]
      483 GETTABLEKS                       R32 R2 K136 ["warningTextColor"]
      485 SETTABLEKS                       R32 R31 K111 ["TextColor3"]
      487 CALL                             R29 2 1
      488 SETTABLEKS                       R29 R28 K120 ["WarningText"]
      490 CALL                             R25 3 1
      491 JUMP                             ; [+1]
      492 LOADNIL                          R25
      493 SETTABLEKS                       R25 R24 K86 ["Warning17PlusFrame"]
      495 GETUPVAL                         R26 5
      496 CALL                             R26 0 1
      497 JUMPIFNOT                        R26 ; [+178]
      498 GETIMPORT                        R26 K138 [game]
      500 GETTABLEKS                       R26 R26 K139 ["GameId"]
      502 JUMPIFEQKN                       R26 K18 [0] ; [+173]
      504 GETUPVAL                         R25 2
      505 GETTABLEKS                       R25 R25 K27 ["createElement"]
      507 GETUPVAL                         R26 6
      508 DUPTABLE                         R27 K144 [{["Position"], ["BackgroundTransparency"] = 1, ["Size"], ["AutomaticSize"], ["Layout"], ["VerticalAlignment"], ["HorizontalAlignment"], ["Spacing"] = 10}]
      509 GETIMPORT                        R28 K81 [UDim2.new]
      511 LOADN                            R29 0
      512 LOADN                            R30 30
      513 LOADN                            R31 0
      514 LOADN                            R32 125
      515 CALL                             R28 4 1
      516 SETTABLEKS                       R28 R27 K98 ["Position"]
      518 GETIMPORT                        R28 K81 [UDim2.new]
      520 LOADN                            R29 0
      521 LOADN                            R30 800
      522 LOADN                            R31 0
      523 LOADN                            R32 50
      524 CALL                             R28 4 1
      525 SETTABLEKS                       R28 R27 K76 ["Size"]
      527 GETIMPORT                        R28 K146 [Enum.AutomaticSize.Y]
      529 SETTABLEKS                       R28 R27 K140 ["AutomaticSize"]
      531 GETIMPORT                        R28 K148 [Enum.FillDirection.Horizontal]
      533 SETTABLEKS                       R28 R27 K141 ["Layout"]
      535 GETIMPORT                        R28 K38 [Enum.VerticalAlignment.Top]
      537 SETTABLEKS                       R28 R27 K36 ["VerticalAlignment"]
      539 GETIMPORT                        R28 K149 [Enum.HorizontalAlignment.Left]
      541 SETTABLEKS                       R28 R27 K33 ["HorizontalAlignment"]
      543 DUPTABLE                         R28 K151 [{"WarningIcon", "Warning"}]
      544 GETUPVAL                         R29 2
      545 GETTABLEKS                       R29 R29 K27 ["createElement"]
      547 LOADK                            R30 K122 ["ImageLabel"]
      548 DUPTABLE                         R31 K152 [{["Size"], ["AnchorPoint"], ["Image"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      549 GETIMPORT                        R32 K126 [UDim2.fromOffset]
      551 LOADN                            R33 20
      552 LOADN                            R34 20
      553 CALL                             R32 2 1
      554 SETTABLEKS                       R32 R31 K76 ["Size"]
      556 GETIMPORT                        R32 K128 [Vector2.new]
      558 LOADN                            R33 0
      559 LOADK                            R34 K104 [0.5]
      560 CALL                             R32 2 1
      561 SETTABLEKS                       R32 R31 K123 ["AnchorPoint"]
      563 GETTABLEKS                       R32 R2 K95 ["icons"]
      565 GETTABLEKS                       R32 R32 K129 ["warning"]
      567 SETTABLEKS                       R32 R31 K97 ["Image"]
      569 CALL                             R29 2 1
      570 SETTABLEKS                       R29 R28 K119 ["WarningIcon"]
      572 GETUPVAL                         R29 2
      573 GETTABLEKS                       R29 R29 K27 ["createElement"]
      575 GETUPVAL                         R30 6
      576 DUPTABLE                         R31 K154 [{["BackgroundTransparency"] = 1, ["Layout"], ["HorizontalAlignment"], ["Spacing"] = 10, ["LayoutOrder"] = 2}]
      577 GETIMPORT                        R32 K32 [Enum.FillDirection.Vertical]
      579 SETTABLEKS                       R32 R31 K141 ["Layout"]
      581 GETIMPORT                        R32 K149 [Enum.HorizontalAlignment.Left]
      583 SETTABLEKS                       R32 R31 K33 ["HorizontalAlignment"]
      585 DUPTABLE                         R32 K156 [{"WarningText", "WarningLink"}]
      586 GETUPVAL                         R33 2
      587 GETTABLEKS                       R33 R33 K27 ["createElement"]
      589 LOADK                            R34 K105 ["TextLabel"]
      590 DUPTABLE                         R35 K157 [{["Text"], ["TextXAlignment"], ["TextSize"] = 20, ["BackgroundTransparency"] = 1, ["Font"], ["TextColor3"], ["LayoutOrder"] = 1}]
      591 LOADK                            R38 K158 ["DataSharing"]
      592 LOADK                            R39 K159 ["ChoosePlaceWarning"]
      593 NAMECALL                         R36 R3 K23 ["getText"]
      595 CALL                             R36 3 1
      596 SETTABLEKS                       R36 R35 K106 ["Text"]
      598 GETIMPORT                        R36 K114 [Enum.TextXAlignment.Left]
      600 SETTABLEKS                       R36 R35 K107 ["TextXAlignment"]
      602 GETTABLEKS                       R36 R2 K115 ["header"]
      604 GETTABLEKS                       R36 R36 K116 ["font"]
      606 SETTABLEKS                       R36 R35 K110 ["Font"]
      608 GETTABLEKS                       R36 R2 K136 ["warningTextColor"]
      610 SETTABLEKS                       R36 R35 K111 ["TextColor3"]
      612 CALL                             R33 2 1
      613 SETTABLEKS                       R33 R32 K120 ["WarningText"]
      615 GETUPVAL                         R33 2
      616 GETTABLEKS                       R33 R33 K27 ["createElement"]
      618 GETUPVAL                         R34 7
      619 DUPTABLE                         R35 K162 [{["Text"], ["TextProps"], ["LinkMap"], ["HorizontalAlignment"], ["LayoutOrder"] = 2}]
      620 LOADK                            R38 K158 ["DataSharing"]
      621 LOADK                            R39 K163 ["ChoosePlaceWarning2"]
      622 NAMECALL                         R36 R3 K23 ["getText"]
      624 CALL                             R36 3 1
      625 SETTABLEKS                       R36 R35 K106 ["Text"]
      627 DUPTABLE                         R36 K165 [{["Font"], ["TextSize"] = 20, ["TextXAlignment"], ["TextColor"]}]
      628 GETTABLEKS                       R37 R2 K115 ["header"]
      630 GETTABLEKS                       R37 R37 K116 ["font"]
      632 SETTABLEKS                       R37 R36 K110 ["Font"]
      634 GETIMPORT                        R37 K114 [Enum.TextXAlignment.Left]
      636 SETTABLEKS                       R37 R36 K107 ["TextXAlignment"]
      638 GETTABLEKS                       R37 R2 K136 ["warningTextColor"]
      640 SETTABLEKS                       R37 R36 K164 ["TextColor"]
      642 SETTABLEKS                       R36 R35 K160 ["TextProps"]
      644 NEWTABLE                         R36 1 0
      646 DUPTABLE                         R37 K168 [{"LinkText", "LinkCallback"}]
      647 LOADK                            R40 K158 ["DataSharing"]
      648 LOADK                            R41 K169 ["SettingsPage"]
      649 NAMECALL                         R38 R3 K23 ["getText"]
      651 CALL                             R38 3 1
      652 SETTABLEKS                       R38 R37 K166 ["LinkText"]
      654 DUPCLOSURE                       R38 K170 [PROTO_8]
      655 CAPTURE                          UPVAL U8
      656 CAPTURE                          UPVAL U9
      657 CAPTURE                          UPVAL U10
      658 SETTABLEKS                       R38 R37 K167 ["LinkCallback"]
      660 SETTABLEKS                       R37 R36 K171 ["[hereLink]"]
      662 SETTABLEKS                       R36 R35 K161 ["LinkMap"]
      664 GETIMPORT                        R36 K149 [Enum.HorizontalAlignment.Left]
      666 SETTABLEKS                       R36 R35 K33 ["HorizontalAlignment"]
      668 CALL                             R33 2 1
      669 SETTABLEKS                       R33 R32 K155 ["WarningLink"]
      671 CALL                             R29 3 1
      672 SETTABLEKS                       R29 R28 K150 ["Warning"]
      674 CALL                             R25 3 1
      675 JUMP                             ; [+1]
      676 LOADNIL                          R25
      677 SETTABLEKS                       R25 R24 K87 ["WarningDataSharingFrame"]
      679 GETUPVAL                         R25 2
      680 GETTABLEKS                       R25 R25 K27 ["createElement"]
      682 LOADK                            R26 K75 ["Frame"]
      683 DUPTABLE                         R27 K118 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      684 GETIMPORT                        R28 K81 [UDim2.new]
      686 LOADK                            R29 K172 [0.7]
      687 LOADN                            R30 4
      688 LOADN                            R31 0
      689 LOADN                            R32 62
      690 CALL                             R28 4 1
      691 SETTABLEKS                       R28 R27 K98 ["Position"]
      693 GETIMPORT                        R28 K81 [UDim2.new]
      695 LOADN                            R29 0
      696 GETTABLEKS                       R31 R2 K173 ["DROPDOWN_WIDTH"]
      698 ADDK                             R30 R31 K109 [20]
      699 LOADN                            R31 0
      700 GETTABLEKS                       R32 R2 K174 ["DROPDOWN_HEIGHT"]
      702 CALL                             R28 4 1
      703 SETTABLEKS                       R28 R27 K76 ["Size"]
      705 NEWTABLE                         R28 0 1
      707 GETUPVAL                         R29 2
      708 GETTABLEKS                       R29 R29 K27 ["createElement"]
      710 GETUPVAL                         R30 11
      711 DUPTABLE                         R31 K179 [{["Size"], ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["IncrementalTextSearch"] = True, ["OnSearchRequested"]}]
      712 GETIMPORT                        R32 K81 [UDim2.new]
      714 LOADK                            R33 K172 [0.7]
      715 LOADN                            R34 0
      716 LOADN                            R35 1
      717 LOADN                            R36 0
      718 CALL                             R32 4 1
      719 SETTABLEKS                       R32 R31 K76 ["Size"]
      721 GETTABLEKS                       R32 R0 K178 ["OnSearchRequested"]
      723 SETTABLEKS                       R32 R31 K178 ["OnSearchRequested"]
      725 CALL                             R29 2 -1
      726 SETLIST                          R28 R29 -1 [1]
      728 CALL                             R25 3 1
      729 SETTABLEKS                       R25 R24 K88 ["SearchBar"]
      731 LOADB                            R25 0
      732 GETTABLEKS                       R26 R1 K48 ["PlacesQueryState"]
      734 GETUPVAL                         R27 0
      735 GETTABLEKS                       R27 R27 K49 ["QUERY_STATE"]
      737 GETTABLEKS                       R27 R27 K50 ["QUERY_STATE_SUCCESS"]
      739 JUMPIFNOTEQ                      R26 R27 ; [+43]
      741 GETUPVAL                         R25 2
      742 GETTABLEKS                       R25 R25 K27 ["createElement"]
      744 GETUPVAL                         R26 12
      745 DUPTABLE                         R27 K184 [{["AutomaticCanvasSize"], ["Size"], ["Position"], ["NextPageRequestDistance"] = 100, ["NextPageFunc"]}]
      746 GETIMPORT                        R28 K146 [Enum.AutomaticSize.Y]
      748 SETTABLEKS                       R28 R27 K180 ["AutomaticCanvasSize"]
      750 GETIMPORT                        R28 K81 [UDim2.new]
      752 LOADN                            R29 1
      753 LOADN                            R30 0
      754 LOADK                            R31 K104 [0.5]
      755 GETTABLEKS                       R33 R2 K185 ["FOOTER_HEIGHT"]
      757 MULK                             R32 R33 K153 [2]
      758 CALL                             R28 4 1
      759 SETTABLEKS                       R28 R27 K76 ["Size"]
      761 GETIMPORT                        R28 K81 [UDim2.new]
      763 LOADN                            R29 0
      764 LOADN                            R30 0
      765 LOADN                            R31 0
      766 GETUPVAL                         R33 5
      767 CALL                             R33 0 1
      768 JUMPIFNOT                        R33 ; [+2]
      769 LOADN                            R32 175
      770 JUMP                             ; [+1]
      771 LOADN                            R32 135
      772 CALL                             R28 4 1
      773 SETTABLEKS                       R28 R27 K98 ["Position"]
      775 NEWCLOSURE                       R28 P4
      776 CAPTURE                          VAL R5
      777 CAPTURE                          VAL R10
      778 CAPTURE                          VAL R7
      779 SETTABLEKS                       R28 R27 K183 ["NextPageFunc"]
      781 MOVE                             R28 R18
      782 CALL                             R25 3 1
      783 SETTABLEKS                       R25 R24 K89 ["MainContentsSuccess"]
      785 LOADB                            R25 0
      786 GETTABLEKS                       R26 R1 K48 ["PlacesQueryState"]
      788 GETUPVAL                         R27 0
      789 GETTABLEKS                       R27 R27 K49 ["QUERY_STATE"]
      791 GETTABLEKS                       R27 R27 K186 ["QUERY_STATE_QUERYING"]
      793 JUMPIFNOTEQ                      R26 R27 ; [+57]
      795 GETUPVAL                         R25 2
      796 GETTABLEKS                       R25 R25 K27 ["createElement"]
      798 LOADK                            R26 K75 ["Frame"]
      799 DUPTABLE                         R27 K187 [{"Position", "Size", "BackgroundColor3"}]
      800 GETIMPORT                        R28 K81 [UDim2.new]
      802 LOADN                            R29 0
      803 LOADN                            R30 30
      804 LOADN                            R31 0
      805 LOADN                            R32 115
      806 CALL                             R28 4 1
      807 SETTABLEKS                       R28 R27 K98 ["Position"]
      809 GETIMPORT                        R28 K81 [UDim2.new]
      811 LOADK                            R29 K188 [0.95]
      812 LOADN                            R30 0
      813 LOADK                            R31 K172 [0.7]
      814 LOADN                            R32 0
      815 CALL                             R28 4 1
      816 SETTABLEKS                       R28 R27 K76 ["Size"]
      818 GETTABLEKS                       R28 R2 K82 ["backgroundColor"]
      820 SETTABLEKS                       R28 R27 K77 ["BackgroundColor3"]
      822 NEWTABLE                         R28 0 1
      824 GETUPVAL                         R29 2
      825 GETTABLEKS                       R29 R29 K27 ["createElement"]
      827 GETUPVAL                         R30 13
      828 DUPTABLE                         R31 K189 [{"Position", "Size"}]
      829 GETIMPORT                        R32 K81 [UDim2.new]
      831 LOADK                            R33 K104 [0.5]
      832 LOADN                            R34 -100
      833 LOADN                            R35 0
      834 LOADN                            R36 115
      835 CALL                             R32 4 1
      836 SETTABLEKS                       R32 R31 K98 ["Position"]
      838 GETIMPORT                        R32 K81 [UDim2.new]
      840 LOADN                            R33 0
      841 LOADN                            R34 200
      842 LOADN                            R35 0
      843 LOADN                            R36 50
      844 CALL                             R32 4 1
      845 SETTABLEKS                       R32 R31 K76 ["Size"]
      847 CALL                             R29 2 -1
      848 SETLIST                          R28 R29 -1 [1]
      850 CALL                             R25 3 1
      851 SETTABLEKS                       R25 R24 K90 ["MainContentsQuerying"]
      853 LOADB                            R25 0
      854 GETTABLEKS                       R26 R1 K48 ["PlacesQueryState"]
      856 GETUPVAL                         R27 0
      857 GETTABLEKS                       R27 R27 K49 ["QUERY_STATE"]
      859 GETTABLEKS                       R27 R27 K190 ["QUERY_STATE_FAILED"]
      861 JUMPIFNOTEQ                      R26 R27 ; [+114]
      863 GETUPVAL                         R25 2
      864 GETTABLEKS                       R25 R25 K27 ["createElement"]
      866 LOADK                            R26 K75 ["Frame"]
      867 DUPTABLE                         R27 K187 [{"Position", "Size", "BackgroundColor3"}]
      868 GETIMPORT                        R28 K81 [UDim2.new]
      870 LOADN                            R29 0
      871 LOADN                            R30 30
      872 LOADN                            R31 0
      873 LOADN                            R32 115
      874 CALL                             R28 4 1
      875 SETTABLEKS                       R28 R27 K98 ["Position"]
      877 GETIMPORT                        R28 K81 [UDim2.new]
      879 LOADK                            R29 K188 [0.95]
      880 LOADN                            R30 0
      881 LOADK                            R31 K172 [0.7]
      882 LOADN                            R32 0
      883 CALL                             R28 4 1
      884 SETTABLEKS                       R28 R27 K76 ["Size"]
      886 GETTABLEKS                       R28 R2 K82 ["backgroundColor"]
      888 SETTABLEKS                       R28 R27 K77 ["BackgroundColor3"]
      890 NEWTABLE                         R28 0 2
      892 GETUPVAL                         R29 2
      893 GETTABLEKS                       R29 R29 K27 ["createElement"]
      895 LOADK                            R30 K105 ["TextLabel"]
      896 DUPTABLE                         R31 K192 [{["Text"], ["Position"], ["TextSize"] = 24, ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextColor3"], ["Font"]}]
      897 LOADK                            R34 K24 ["General"]
      898 LOADK                            R35 K193 ["FetchFailed"]
      899 NAMECALL                         R32 R3 K23 ["getText"]
      901 CALL                             R32 3 1
      902 SETTABLEKS                       R32 R31 K106 ["Text"]
      904 GETIMPORT                        R32 K81 [UDim2.new]
      906 LOADK                            R33 K104 [0.5]
      907 LOADN                            R34 0
      908 LOADN                            R35 0
      909 LOADN                            R36 50
      910 CALL                             R32 4 1
      911 SETTABLEKS                       R32 R31 K98 ["Position"]
      913 GETIMPORT                        R32 K194 [Enum.TextXAlignment.Center]
      915 SETTABLEKS                       R32 R31 K107 ["TextXAlignment"]
      917 GETTABLEKS                       R32 R2 K195 ["failText"]
      919 GETTABLEKS                       R32 R32 K196 ["text"]
      921 SETTABLEKS                       R32 R31 K111 ["TextColor3"]
      923 GETTABLEKS                       R32 R2 K195 ["failText"]
      925 GETTABLEKS                       R32 R32 K116 ["font"]
      927 SETTABLEKS                       R32 R31 K110 ["Font"]
      929 CALL                             R29 2 1
      930 GETUPVAL                         R30 2
      931 GETTABLEKS                       R30 R30 K27 ["createElement"]
      933 GETUPVAL                         R31 14
      934 DUPTABLE                         R32 K199 [{["AnchorPoint"], ["OnClick"], ["Position"], ["Size"], ["Style"] = "Round", ["Text"]}]
      935 GETIMPORT                        R33 K128 [Vector2.new]
      937 LOADK                            R34 K104 [0.5]
      938 LOADK                            R35 K104 [0.5]
      939 CALL                             R33 2 1
      940 SETTABLEKS                       R33 R32 K123 ["AnchorPoint"]
      942 NEWCLOSURE                       R33 P5
      943 CAPTURE                          VAL R10
      944 CAPTURE                          VAL R7
      945 SETTABLEKS                       R33 R32 K197 ["OnClick"]
      947 GETIMPORT                        R33 K81 [UDim2.new]
      949 LOADK                            R34 K104 [0.5]
      950 LOADN                            R35 0
      951 LOADN                            R36 0
      952 LOADN                            R37 100
      953 CALL                             R33 4 1
      954 SETTABLEKS                       R33 R32 K98 ["Position"]
      956 GETIMPORT                        R33 K81 [UDim2.new]
      958 LOADN                            R34 0
      959 LOADN                            R35 150
      960 LOADN                            R36 0
      961 LOADN                            R37 75
      962 CALL                             R33 4 1
      963 SETTABLEKS                       R33 R32 K76 ["Size"]
      965 LOADK                            R35 K67 ["Button"]
      966 LOADK                            R36 K200 ["Retry"]
      967 NAMECALL                         R33 R3 K23 ["getText"]
      969 CALL                             R33 3 1
      970 SETTABLEKS                       R33 R32 K106 ["Text"]
      972 CALL                             R30 2 -1
      973 SETLIST                          R28 R29 -1 [1]
      975 CALL                             R25 3 1
      976 SETTABLEKS                       R25 R24 K91 ["MainContentsFailed"]
      978 GETUPVAL                         R25 2
      979 GETTABLEKS                       R25 R25 K27 ["createElement"]
      981 GETUPVAL                         R26 15
      982 DUPTABLE                         R27 K202 [{"MainButton", "OnClose"}]
      983 DUPTABLE                         R28 K204 [{"Name", "Active", "OnActivated"}]
      984 SETTABLEKS                       R19 R28 K58 ["Name"]
      986 MOVE                             R29 R7
      987 JUMPIFNOT                        R29 ; [+8]
      988 LOADB                            R29 0
      989 GETTABLEKS                       R30 R0 K15 ["state"]
      991 GETTABLEKS                       R30 R30 K16 ["selectedPlace"]
      993 JUMPIFEQKNIL                     R30 ; [+2]
      995 NOT                              R29 R8
      996 SETTABLEKS                       R29 R28 K203 ["Active"]
      998 NEWCLOSURE                       R29 P6
      999 CAPTURE                          UPVAL U16
     1000 CAPTURE                          VAL R0
     1001 CAPTURE                          VAL R13
     1002 CAPTURE                          VAL R7
     1003 CAPTURE                          VAL R1
     1004 CAPTURE                          UPVAL U17
     1005 CAPTURE                          VAL R11
     1006 SETTABLEKS                       R29 R28 K63 ["OnActivated"]
     1008 SETTABLEKS                       R28 R27 K201 ["MainButton"]
     1010 SETTABLEKS                       R4 R27 K3 ["OnClose"]
     1012 CALL                             R25 2 1
     1013 SETTABLEKS                       R25 R24 K92 ["Footer"]
     1015 CALL                             R21 3 -1
     1016 RETURN                           R21 -1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["ExistingGame"]
        2 GETTABLEKS                       R2 R2 K1 ["placeInfo"]
        4 GETTABLEKS                       R3 R0 K0 ["ExistingGame"]
        6 GETTABLEKS                       R3 R3 K2 ["selectedGame"]
        8 GETTABLEKS                       R4 R0 K0 ["ExistingGame"]
       10 GETTABLEKS                       R4 R4 K3 ["gameConfiguration"]
       12 GETTABLEKS                       R5 R0 K0 ["ExistingGame"]
       14 GETTABLEKS                       R5 R5 K4 ["gameInfo"]
       16 DUPTABLE                         R6 K11 [{"NextPageCursor", "Places", "ParentGame", "IsPublishing", "PlacesQueryState", "SourceGameMinAge"}]
       17 GETTABLEKS                       R7 R2 K12 ["nextPageCursor"]
       19 SETTABLEKS                       R7 R6 K5 ["NextPageCursor"]
       21 GETTABLEKS                       R7 R2 K13 ["places"]
       23 SETTABLEKS                       R7 R6 K6 ["Places"]
       25 SETTABLEKS                       R3 R6 K7 ["ParentGame"]
       27 GETTABLEKS                       R7 R0 K14 ["PublishedPlace"]
       29 GETTABLEKS                       R7 R7 K15 ["isPublishing"]
       31 SETTABLEKS                       R7 R6 K8 ["IsPublishing"]
       33 GETTABLEKS                       R7 R2 K16 ["queryState"]
       35 SETTABLEKS                       R7 R6 K9 ["PlacesQueryState"]
       37 GETTABLEKS                       R7 R5 K17 ["minimumAge"]
       39 SETTABLEKS                       R7 R6 K10 ["SourceGameMinAge"]
       41 RETURN                           R6 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K1 [{"places"}]
        3 NEWTABLE                         R3 0 0
        5 SETTABLEKS                       R3 R2 K0 ["places"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K2 ["SCREENS"]
       14 GETTABLEKS                       R2 R2 K3 ["CHOOSE_GAME"]
       16 CALL                             R1 1 -1
       17 CALL                             R0 -1 0
       18 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R5 K7 [{[1], ["place"], ["isPublish"], ["failCount"] = 0, ["requestInFlight"] = False}]
        3 SETTABLEKS                       R0 R5 K0 ["universe"]
        5 SETTABLEKS                       R1 R5 K1 ["place"]
        7 SETTABLEKS                       R2 R5 K2 ["isPublish"]
        9 CALL                             R4 1 -1
       10 CALL                             R3 -1 0
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K8 ["SCREENS"]
       16 GETTABLEKS                       R5 R5 K9 ["PUBLISH_IN_PROGRESS"]
       18 CALL                             R4 1 -1
       19 CALL                             R3 -1 0
       20 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K3 [{"id", "name", "parentGameName"}]
        3 GETTABLEKS                       R5 R1 K4 ["universeId"]
        5 SETTABLEKS                       R5 R4 K0 ["id"]
        7 GETTABLEKS                       R5 R0 K1 ["name"]
        9 SETTABLEKS                       R5 R4 K1 ["name"]
       11 GETTABLEKS                       R5 R1 K1 ["name"]
       13 SETTABLEKS                       R5 R4 K2 ["parentGameName"]
       15 CALL                             R3 1 -1
       16 CALL                             R2 -1 0
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R3 2
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K5 ["SCREENS"]
       22 GETTABLEKS                       R4 R4 K6 ["PUBLISH_SUCCESSFUL"]
       24 CALL                             R3 1 -1
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R5 K7 [{[1], ["name"], ["parentGameName"], ["parentGameId"], ["failed"] = True, ["message"]}]
        3 GETTABLEKS                       R6 R0 K8 ["placeId"]
        5 SETTABLEKS                       R6 R5 K0 ["id"]
        7 GETTABLEKS                       R6 R0 K1 ["name"]
        9 SETTABLEKS                       R6 R5 K1 ["name"]
       11 GETTABLEKS                       R6 R1 K1 ["name"]
       13 SETTABLEKS                       R6 R5 K2 ["parentGameName"]
       15 GETTABLEKS                       R6 R1 K9 ["universeId"]
       17 SETTABLEKS                       R6 R5 K3 ["parentGameId"]
       19 SETTABLEKS                       R2 R5 K6 ["message"]
       21 CALL                             R4 1 -1
       22 CALL                             R3 -1 0
       23 GETUPVAL                         R3 0
       24 GETUPVAL                         R4 2
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K10 ["SCREENS"]
       28 GETTABLEKS                       R5 R5 K11 ["PUBLISH_FAIL"]
       30 CALL                             R4 1 -1
       31 CALL                             R3 -1 0
       32 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K1 [{"places"}]
        3 NEWTABLE                         R3 0 0
        5 SETTABLEKS                       R3 R2 K0 ["places"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K7 [{"DispatchLoadExistingPlaces", "dispatchSetIsPublishing", "OpenChooseGamePage", "OpenPublishInProgressPage", "OpenPublishSuccessfulPage", "OpenPublishFailPage", "ClearPlaces"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["DispatchLoadExistingPlaces"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchSetIsPublishing"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 SETTABLEKS                       R2 R1 K2 ["OpenChooseGamePage"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 SETTABLEKS                       R2 R1 K3 ["OpenPublishInProgressPage"]
       25 NEWCLOSURE                       R2 P4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 SETTABLEKS                       R2 R1 K4 ["OpenPublishSuccessfulPage"]
       32 NEWCLOSURE                       R2 P5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 SETTABLEKS                       R2 R1 K5 ["OpenPublishFailPage"]
       39 NEWCLOSURE                       R2 P6
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U2
       42 SETTABLEKS                       R2 R1 K6 ["ClearPlaces"]
       44 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioPublishService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["BrowserService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R2 K10 ["Packages"]
       39 GETTABLEKS                       R6 R6 K13 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K15 ["withContext"]
       46 GETIMPORT                        R8 K9 [require]
       48 GETTABLEKS                       R9 R2 K16 ["Src"]
       50 GETTABLEKS                       R9 R9 K17 ["Resources"]
       52 GETTABLEKS                       R9 R9 K18 ["Constants"]
       54 CALL                             R8 1 1
       55 GETTABLEKS                       R9 R5 K19 ["UI"]
       57 GETTABLEKS                       R10 R9 K20 ["Button"]
       59 GETTABLEKS                       R11 R9 K21 ["ScrollingFrame"]
       61 GETTABLEKS                       R12 R9 K22 ["LoadingIndicator"]
       63 GETTABLEKS                       R13 R9 K23 ["SearchBar"]
       65 GETTABLEKS                       R14 R9 K24 ["Separator"]
       67 GETTABLEKS                       R15 R9 K25 ["TextWithLinks"]
       69 GETTABLEKS                       R16 R9 K26 ["Pane"]
       71 GETIMPORT                        R17 K9 [require]
       73 GETTABLEKS                       R18 R2 K16 ["Src"]
       75 GETTABLEKS                       R18 R18 K27 ["Actions"]
       77 GETTABLEKS                       R18 R18 K28 ["SetIsPublishing"]
       79 CALL                             R17 1 1
       80 GETIMPORT                        R18 K9 [require]
       82 GETTABLEKS                       R19 R2 K16 ["Src"]
       84 GETTABLEKS                       R19 R19 K27 ["Actions"]
       86 GETTABLEKS                       R19 R19 K29 ["SetScreen"]
       88 CALL                             R18 1 1
       89 GETIMPORT                        R19 K9 [require]
       91 GETTABLEKS                       R20 R2 K16 ["Src"]
       93 GETTABLEKS                       R20 R20 K27 ["Actions"]
       95 GETTABLEKS                       R20 R20 K30 ["SetPlaceInfo"]
       97 CALL                             R19 1 1
       98 GETIMPORT                        R20 K9 [require]
      100 GETTABLEKS                       R21 R2 K16 ["Src"]
      102 GETTABLEKS                       R21 R21 K27 ["Actions"]
      104 GETTABLEKS                       R21 R21 K31 ["SetPublishInfo"]
      106 CALL                             R20 1 1
      107 GETIMPORT                        R21 K9 [require]
      109 GETTABLEKS                       R22 R2 K16 ["Src"]
      111 GETTABLEKS                       R22 R22 K27 ["Actions"]
      113 GETTABLEKS                       R22 R22 K32 ["SetPublishInProgress"]
      115 CALL                             R21 1 1
      116 GETIMPORT                        R22 K9 [require]
      118 GETTABLEKS                       R23 R2 K16 ["Src"]
      120 GETTABLEKS                       R23 R23 K33 ["Thunks"]
      122 GETTABLEKS                       R23 R23 K34 ["LoadExistingPlaces"]
      124 CALL                             R22 1 1
      125 GETIMPORT                        R23 K9 [require]
      127 GETTABLEKS                       R24 R2 K16 ["Src"]
      129 GETTABLEKS                       R24 R24 K35 ["Components"]
      131 GETTABLEKS                       R24 R24 K36 ["Footer"]
      133 CALL                             R23 1 1
      134 GETIMPORT                        R24 K9 [require]
      136 GETTABLEKS                       R25 R2 K16 ["Src"]
      138 GETTABLEKS                       R25 R25 K35 ["Components"]
      140 GETTABLEKS                       R25 R25 K37 ["TilePlace"]
      142 CALL                             R24 1 1
      143 GETIMPORT                        R25 K9 [require]
      145 GETTABLEKS                       R26 R2 K16 ["Src"]
      147 GETTABLEKS                       R26 R26 K38 ["Network"]
      149 GETTABLEKS                       R26 R26 K39 ["Http"]
      151 CALL                             R25 1 1
      152 GETTABLEKS                       R26 R3 K40 ["PureComponent"]
      154 LOADK                            R28 K41 ["ScreenChoosePlace"]
      155 NAMECALL                         R26 R26 K42 ["extend"]
      157 CALL                             R26 2 1
      158 GETIMPORT                        R27 K9 [require]
      160 GETTABLEKS                       R28 R2 K16 ["Src"]
      162 GETTABLEKS                       R28 R28 K43 ["Flags"]
      164 GETTABLEKS                       R28 R28 K44 ["getFFlagCAP1481Warning"]
      166 CALL                             R27 1 1
      167 GETIMPORT                        R28 K9 [require]
      169 GETTABLEKS                       R29 R2 K16 ["Src"]
      171 GETTABLEKS                       R29 R29 K43 ["Flags"]
      173 GETTABLEKS                       R29 R29 K45 ["getFStringCAP1107SettingsUrl"]
      175 CALL                             R28 1 1
      176 GETIMPORT                        R29 K9 [require]
      178 GETTABLEKS                       R30 R2 K16 ["Src"]
      180 GETTABLEKS                       R30 R30 K43 ["Flags"]
      182 GETTABLEKS                       R30 R30 K46 ["getFFlagPublishPlaceAsGameToExperience"]
      184 CALL                             R29 1 1
      185 CALL                             R29 0 1
      186 GETIMPORT                        R30 K1 [game]
      188 LOADK                            R32 K47 ["StudioUsePublishInProgressScreen2"]
      189 NAMECALL                         R30 R30 K48 ["GetFastFlag"]
      191 CALL                             R30 2 1
      192 DUPCLOSURE                       R31 K49 [PROTO_1]
      193 CAPTURE                          VAL R3
      194 SETTABLEKS                       R31 R26 K50 ["init"]
      196 DUPCLOSURE                       R31 K51 [PROTO_3]
      197 CAPTURE                          VAL R0
      198 SETTABLEKS                       R31 R26 K52 ["didMount"]
      200 DUPCLOSURE                       R31 K53 [PROTO_4]
      201 SETTABLEKS                       R31 R26 K54 ["willUnmount"]
      203 DUPCLOSURE                       R31 K55 [PROTO_12]
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R29
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R27
      210 CAPTURE                          VAL R16
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R25
      213 CAPTURE                          VAL R28
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R10
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R30
      221 CAPTURE                          VAL R0
      222 SETTABLEKS                       R31 R26 K56 ["render"]
      224 MOVE                             R31 R7
      225 DUPTABLE                         R32 K59 [{"Stylizer", "Localization"}]
      226 GETTABLEKS                       R33 R6 K57 ["Stylizer"]
      228 SETTABLEKS                       R33 R32 K57 ["Stylizer"]
      230 GETTABLEKS                       R33 R6 K58 ["Localization"]
      232 SETTABLEKS                       R33 R32 K58 ["Localization"]
      234 CALL                             R31 1 1
      235 MOVE                             R32 R26
      236 CALL                             R31 1 1
      237 MOVE                             R26 R31
      238 DUPCLOSURE                       R31 K60 [PROTO_13]
      239 DUPCLOSURE                       R32 K61 [PROTO_21]
      240 CAPTURE                          VAL R22
      241 CAPTURE                          VAL R17
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R18
      244 CAPTURE                          VAL R8
      245 CAPTURE                          VAL R21
      246 CAPTURE                          VAL R20
      247 GETTABLEKS                       R33 R4 K62 ["connect"]
      249 MOVE                             R34 R31
      250 MOVE                             R35 R32
      251 CALL                             R33 2 1
      252 MOVE                             R34 R26
      253 CALL                             R33 1 -1
      254 RETURN                           R33 -1
