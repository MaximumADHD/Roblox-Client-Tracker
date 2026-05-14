PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"searchTerm"}]
        2 SETTABLEKS                       R0 R3 K0 ["searchTerm"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"searchTerm"}]
        1 LOADK                            R2 K2 [""]
        2 SETTABLEKS                       R2 R1 K0 ["searchTerm"]
        4 SETTABLEKS                       R1 R0 K3 ["state"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K4 ["finishedConnection"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K5 ["createRef"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K6 ["layoutRef"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K7 ["OnSearchRequested"]
       19 RETURN                           R0 0

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
        2 DUPTABLE                         R3 K4 [{"placeId", "name"}]
        3 LOADN                            R4 0
        4 SETTABLEKS                       R4 R3 K2 ["placeId"]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K3 ["name"]
        9 SETTABLEKS                       R3 R2 K0 ["selectedPlace"]
       11 NAMECALL                         R0 R0 K5 ["setState"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

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
      143 JUMPIFNOTEQ                      R19 R20 ; [+99]
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
      165 JUMPIFNOT                        R24 ; [+50]
      166 GETUPVAL                         R24 2
      167 GETTABLEKS                       R24 R24 K27 ["createElement"]
      169 GETUPVAL                         R25 3
      170 DUPTABLE                         R26 K63 [{"Name", "Id", "LayoutOrder", "Selected", "LastItem", "OnActivated"}]
      171 GETTABLEKS                       R27 R23 K19 ["name"]
      173 SETTABLEKS                       R27 R26 K58 ["Name"]
      175 GETTABLEKS                       R27 R23 K17 ["placeId"]
      177 SETTABLEKS                       R27 R26 K59 ["Id"]
      179 LENGTH                           R28 R18
      180 ADDK                             R27 R28 K64 [1]
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
      204 LOADB                            R27 0
      205 SETTABLEKS                       R27 R26 K61 ["LastItem"]
      207 NEWCLOSURE                       R27 P0
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R23
      210 SETTABLEKS                       R27 R26 K62 ["OnActivated"]
      212 CALL                             R24 2 1
      213 LENGTH                           R26 R18
      214 ADDK                             R25 R26 K64 [1]
      215 SETTABLE                         R24 R18 R25
      216 FORGLOOP                         R19 2 ; [-67]
      218 LOADN                            R19 0
      219 GETUPVAL                         R20 2
      220 GETTABLEKS                       R20 R20 K27 ["createElement"]
      222 GETUPVAL                         R21 3
      223 DUPTABLE                         R22 K65 [{"Name", "LayoutOrder", "Selected", "OnActivated"}]
      224 LOADK                            R25 K66 ["Button"]
      225 LOADK                            R26 K67 ["AddNewPlaceToGame"]
      226 NAMECALL                         R23 R3 K23 ["getText"]
      228 CALL                             R23 3 1
      229 SETTABLEKS                       R23 R22 K58 ["Name"]
      231 LOADN                            R23 1
      232 SETTABLEKS                       R23 R22 K40 ["LayoutOrder"]
      234 SETTABLEKS                       R14 R22 K60 ["Selected"]
      236 NEWCLOSURE                       R23 P1
      237 CAPTURE                          VAL R0
      238 CAPTURE                          VAL R17
      239 SETTABLEKS                       R23 R22 K62 ["OnActivated"]
      241 CALL                             R20 2 1
      242 SETTABLE                         R20 R18 R19
      243 JUMPIFNOT                        R14 ; [+2]
      244 LOADK                            R19 K68 ["Create"]
      245 JUMP                             ; [+1]
      246 LOADK                            R19 K69 ["Overwrite"]
      247 LOADN                            R20 200
      248 JUMPIFNOT                        R18 ; [+7]
      249 LENGTH                           R23 R18
      250 MULK                             R22 R23 K70 [80]
      251 FASTCALL1                        MATH_CEIL R22 ; [+2]
      252 GETIMPORT                        R21 K73 [math.ceil]
      254 CALL                             R21 1 1
      255 JUMPIF                           R21 ; [+1]
      256 LOADN                            R21 200
      257 MOVE                             R20 R21
      258 LOADN                            R21 48
      259 JUMPIFNOTLT                      R20 R21 ; [+6]
      261 JUMPIFNOT                        R5 ; [+4]
      262 MOVE                             R21 R10
      263 MOVE                             R22 R7
      264 MOVE                             R23 R5
      265 CALL                             R21 2 0
      266 GETUPVAL                         R21 2
      267 GETTABLEKS                       R21 R21 K27 ["createElement"]
      269 LOADK                            R22 K74 ["Frame"]
      270 DUPTABLE                         R23 K78 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
      271 GETIMPORT                        R24 K80 [UDim2.new]
      273 LOADN                            R25 1
      274 LOADN                            R26 0
      275 LOADN                            R27 1
      276 LOADN                            R28 0
      277 CALL                             R24 4 1
      278 SETTABLEKS                       R24 R23 K75 ["Size"]
      280 GETTABLEKS                       R24 R2 K81 ["backgroundColor"]
      282 SETTABLEKS                       R24 R23 K76 ["BackgroundColor3"]
      284 LOADN                            R24 0
      285 SETTABLEKS                       R24 R23 K77 ["BorderSizePixel"]
      287 DUPTABLE                         R24 K92 [{"Back", "Sep1", "Header", "Warning17PlusFrame", "WarningDataSharingFrame", "SearchBar", "MainContentsSuccess", "MainContentsQuerying", "MainContentsFailed", "Footer"}]
      288 GETUPVAL                         R25 2
      289 GETTABLEKS                       R25 R25 K27 ["createElement"]
      291 LOADK                            R26 K93 ["ImageButton"]
      292 NEWTABLE                         R27 8 0
      294 GETTABLEKS                       R28 R2 K94 ["icons"]
      296 GETTABLEKS                       R28 R28 K95 ["backArrow"]
      298 SETTABLEKS                       R28 R27 K96 ["Image"]
      300 GETIMPORT                        R28 K80 [UDim2.new]
      302 LOADN                            R29 0
      303 LOADN                            R30 20
      304 LOADN                            R31 0
      305 LOADN                            R32 20
      306 CALL                             R28 4 1
      307 SETTABLEKS                       R28 R27 K75 ["Size"]
      309 GETIMPORT                        R28 K80 [UDim2.new]
      311 LOADN                            R29 0
      312 LOADN                            R30 30
      313 LOADN                            R31 0
      314 LOADN                            R32 10
      315 CALL                             R28 4 1
      316 SETTABLEKS                       R28 R27 K97 ["Position"]
      318 LOADN                            R28 0
      319 SETTABLEKS                       R28 R27 K98 ["Style"]
      321 LOADN                            R28 0
      322 SETTABLEKS                       R28 R27 K77 ["BorderSizePixel"]
      324 LOADN                            R28 1
      325 SETTABLEKS                       R28 R27 K99 ["BackgroundTransparency"]
      327 GETUPVAL                         R28 2
      328 GETTABLEKS                       R28 R28 K100 ["Event"]
      330 GETTABLEKS                       R28 R28 K101 ["Activated"]
      332 NEWCLOSURE                       R29 P2
      333 CAPTURE                          VAL R12
      334 SETTABLE                         R29 R27 R28
      335 CALL                             R25 2 1
      336 SETTABLEKS                       R25 R24 K82 ["Back"]
      338 GETUPVAL                         R25 2
      339 GETTABLEKS                       R25 R25 K27 ["createElement"]
      341 GETUPVAL                         R26 4
      342 DUPTABLE                         R27 K102 [{"Position"}]
      343 GETIMPORT                        R28 K80 [UDim2.new]
      345 LOADK                            R29 K103 [0.5]
      346 LOADN                            R30 0
      347 LOADN                            R31 0
      348 LOADN                            R32 50
      349 CALL                             R28 4 1
      350 SETTABLEKS                       R28 R27 K97 ["Position"]
      352 CALL                             R25 2 1
      353 SETTABLEKS                       R25 R24 K83 ["Sep1"]
      355 GETUPVAL                         R25 2
      356 GETTABLEKS                       R25 R25 K27 ["createElement"]
      358 LOADK                            R26 K104 ["TextLabel"]
      359 DUPTABLE                         R27 K110 [{"Text", "Position", "TextXAlignment", "TextSize", "BackgroundTransparency", "Font", "TextColor3"}]
      360 SETTABLEKS                       R16 R27 K105 ["Text"]
      362 GETIMPORT                        R28 K80 [UDim2.new]
      364 LOADN                            R29 0
      365 LOADN                            R30 30
      366 LOADN                            R31 0
      367 LOADN                            R32 80
      368 CALL                             R28 4 1
      369 SETTABLEKS                       R28 R27 K97 ["Position"]
      371 GETIMPORT                        R28 K112 [Enum.TextXAlignment.Left]
      373 SETTABLEKS                       R28 R27 K106 ["TextXAlignment"]
      375 LOADN                            R28 20
      376 SETTABLEKS                       R28 R27 K107 ["TextSize"]
      378 LOADN                            R28 1
      379 SETTABLEKS                       R28 R27 K99 ["BackgroundTransparency"]
      381 GETTABLEKS                       R28 R2 K113 ["header"]
      383 GETTABLEKS                       R28 R28 K114 ["font"]
      385 SETTABLEKS                       R28 R27 K108 ["Font"]
      387 GETTABLEKS                       R28 R2 K115 ["textColor"]
      389 SETTABLEKS                       R28 R27 K109 ["TextColor3"]
      391 CALL                             R25 2 1
      392 SETTABLEKS                       R25 R24 K84 ["Header"]
      394 JUMPIFNOT                        R9 ; [+127]
      395 GETUPVAL                         R25 2
      396 GETTABLEKS                       R25 R25 K27 ["createElement"]
      398 LOADK                            R26 K74 ["Frame"]
      399 DUPTABLE                         R27 K116 [{"Position", "Size", "BackgroundTransparency"}]
      400 GETIMPORT                        R28 K80 [UDim2.new]
      402 LOADN                            R29 0
      403 LOADN                            R30 30
      404 LOADN                            R31 0
      405 LOADN                            R32 105
      406 CALL                             R28 4 1
      407 SETTABLEKS                       R28 R27 K97 ["Position"]
      409 GETIMPORT                        R28 K80 [UDim2.new]
      411 LOADN                            R29 1
      412 LOADN                            R30 196
      413 LOADN                            R31 0
      414 LOADN                            R32 40
      415 CALL                             R28 4 1
      416 SETTABLEKS                       R28 R27 K75 ["Size"]
      418 LOADN                            R28 1
      419 SETTABLEKS                       R28 R27 K99 ["BackgroundTransparency"]
      421 DUPTABLE                         R28 K119 [{"WarningIcon", "WarningText"}]
      422 GETUPVAL                         R29 2
      423 GETTABLEKS                       R29 R29 K27 ["createElement"]
      425 LOADK                            R30 K120 ["ImageLabel"]
      426 DUPTABLE                         R31 K122 [{"Size", "Position", "AnchorPoint", "Image", "BackgroundTransparency"}]
      427 GETIMPORT                        R32 K124 [UDim2.fromOffset]
      429 LOADN                            R33 20
      430 LOADN                            R34 20
      431 CALL                             R32 2 1
      432 SETTABLEKS                       R32 R31 K75 ["Size"]
      434 GETIMPORT                        R32 K80 [UDim2.new]
      436 LOADN                            R33 0
      437 LOADN                            R34 0
      438 LOADN                            R35 0
      439 LOADN                            R36 10
      440 CALL                             R32 4 1
      441 SETTABLEKS                       R32 R31 K97 ["Position"]
      443 GETIMPORT                        R32 K126 [Vector2.new]
      445 LOADN                            R33 0
      446 LOADK                            R34 K103 [0.5]
      447 CALL                             R32 2 1
      448 SETTABLEKS                       R32 R31 K121 ["AnchorPoint"]
      450 GETTABLEKS                       R32 R2 K94 ["icons"]
      452 GETTABLEKS                       R32 R32 K127 ["warning"]
      454 SETTABLEKS                       R32 R31 K96 ["Image"]
      456 LOADN                            R32 1
      457 SETTABLEKS                       R32 R31 K99 ["BackgroundTransparency"]
      459 CALL                             R29 2 1
      460 SETTABLEKS                       R29 R28 K117 ["WarningIcon"]
      462 GETUPVAL                         R29 2
      463 GETTABLEKS                       R29 R29 K27 ["createElement"]
      465 LOADK                            R30 K104 ["TextLabel"]
      466 DUPTABLE                         R31 K130 [{"Position", "Size", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "BackgroundTransparency", "Font", "TextColor3", "TextWrapped"}]
      467 GETIMPORT                        R32 K124 [UDim2.fromOffset]
      469 LOADN                            R33 25
      470 LOADN                            R34 0
      471 CALL                             R32 2 1
      472 SETTABLEKS                       R32 R31 K97 ["Position"]
      474 GETIMPORT                        R32 K80 [UDim2.new]
      476 LOADN                            R33 1
      477 LOADN                            R34 0
      478 LOADN                            R35 1
      479 LOADN                            R36 0
      480 CALL                             R32 4 1
      481 SETTABLEKS                       R32 R31 K75 ["Size"]
      483 LOADK                            R34 K21 ["ScreenHeader"]
      484 LOADK                            R35 K131 ["RestrictedContentWarning"]
      485 NAMECALL                         R32 R3 K23 ["getText"]
      487 CALL                             R32 3 1
      488 SETTABLEKS                       R32 R31 K105 ["Text"]
      490 GETIMPORT                        R32 K112 [Enum.TextXAlignment.Left]
      492 SETTABLEKS                       R32 R31 K106 ["TextXAlignment"]
      494 GETIMPORT                        R32 K132 [Enum.TextYAlignment.Top]
      496 SETTABLEKS                       R32 R31 K128 ["TextYAlignment"]
      498 LOADN                            R32 20
      499 SETTABLEKS                       R32 R31 K107 ["TextSize"]
      501 LOADN                            R32 1
      502 SETTABLEKS                       R32 R31 K99 ["BackgroundTransparency"]
      504 GETTABLEKS                       R32 R2 K113 ["header"]
      506 GETTABLEKS                       R32 R32 K114 ["font"]
      508 SETTABLEKS                       R32 R31 K108 ["Font"]
      510 GETTABLEKS                       R32 R2 K133 ["warningTextColor"]
      512 SETTABLEKS                       R32 R31 K109 ["TextColor3"]
      514 LOADB                            R32 1
      515 SETTABLEKS                       R32 R31 K129 ["TextWrapped"]
      517 CALL                             R29 2 1
      518 SETTABLEKS                       R29 R28 K118 ["WarningText"]
      520 CALL                             R25 3 1
      521 JUMP                             ; [+1]
      522 LOADNIL                          R25
      523 SETTABLEKS                       R25 R24 K85 ["Warning17PlusFrame"]
      525 GETUPVAL                         R26 5
      526 CALL                             R26 0 1
      527 JUMPIFNOT                        R26 ; [+214]
      528 GETIMPORT                        R26 K135 [game]
      530 GETTABLEKS                       R26 R26 K136 ["GameId"]
      532 JUMPIFEQKN                       R26 K18 [0] ; [+209]
      534 GETUPVAL                         R25 2
      535 GETTABLEKS                       R25 R25 K27 ["createElement"]
      537 GETUPVAL                         R26 6
      538 DUPTABLE                         R27 K140 [{"Position", "BackgroundTransparency", "Size", "AutomaticSize", "Layout", "VerticalAlignment", "HorizontalAlignment", "Spacing"}]
      539 GETIMPORT                        R28 K80 [UDim2.new]
      541 LOADN                            R29 0
      542 LOADN                            R30 30
      543 LOADN                            R31 0
      544 LOADN                            R32 125
      545 CALL                             R28 4 1
      546 SETTABLEKS                       R28 R27 K97 ["Position"]
      548 LOADN                            R28 1
      549 SETTABLEKS                       R28 R27 K99 ["BackgroundTransparency"]
      551 GETIMPORT                        R28 K80 [UDim2.new]
      553 LOADN                            R29 0
      554 LOADN                            R30 32
      555 LOADN                            R31 0
      556 LOADN                            R32 50
      557 CALL                             R28 4 1
      558 SETTABLEKS                       R28 R27 K75 ["Size"]
      560 GETIMPORT                        R28 K142 [Enum.AutomaticSize.Y]
      562 SETTABLEKS                       R28 R27 K137 ["AutomaticSize"]
      564 GETIMPORT                        R28 K144 [Enum.FillDirection.Horizontal]
      566 SETTABLEKS                       R28 R27 K138 ["Layout"]
      568 GETIMPORT                        R28 K38 [Enum.VerticalAlignment.Top]
      570 SETTABLEKS                       R28 R27 K36 ["VerticalAlignment"]
      572 GETIMPORT                        R28 K145 [Enum.HorizontalAlignment.Left]
      574 SETTABLEKS                       R28 R27 K33 ["HorizontalAlignment"]
      576 LOADN                            R28 10
      577 SETTABLEKS                       R28 R27 K139 ["Spacing"]
      579 DUPTABLE                         R28 K147 [{"WarningIcon", "Warning"}]
      580 GETUPVAL                         R29 2
      581 GETTABLEKS                       R29 R29 K27 ["createElement"]
      583 LOADK                            R30 K120 ["ImageLabel"]
      584 DUPTABLE                         R31 K148 [{"Size", "AnchorPoint", "Image", "BackgroundTransparency", "LayoutOrder"}]
      585 GETIMPORT                        R32 K124 [UDim2.fromOffset]
      587 LOADN                            R33 20
      588 LOADN                            R34 20
      589 CALL                             R32 2 1
      590 SETTABLEKS                       R32 R31 K75 ["Size"]
      592 GETIMPORT                        R32 K126 [Vector2.new]
      594 LOADN                            R33 0
      595 LOADK                            R34 K103 [0.5]
      596 CALL                             R32 2 1
      597 SETTABLEKS                       R32 R31 K121 ["AnchorPoint"]
      599 GETTABLEKS                       R32 R2 K94 ["icons"]
      601 GETTABLEKS                       R32 R32 K127 ["warning"]
      603 SETTABLEKS                       R32 R31 K96 ["Image"]
      605 LOADN                            R32 1
      606 SETTABLEKS                       R32 R31 K99 ["BackgroundTransparency"]
      608 LOADN                            R32 1
      609 SETTABLEKS                       R32 R31 K40 ["LayoutOrder"]
      611 CALL                             R29 2 1
      612 SETTABLEKS                       R29 R28 K117 ["WarningIcon"]
      614 GETUPVAL                         R29 2
      615 GETTABLEKS                       R29 R29 K27 ["createElement"]
      617 GETUPVAL                         R30 6
      618 DUPTABLE                         R31 K149 [{"BackgroundTransparency", "Layout", "HorizontalAlignment", "Spacing", "LayoutOrder"}]
      619 LOADN                            R32 1
      620 SETTABLEKS                       R32 R31 K99 ["BackgroundTransparency"]
      622 GETIMPORT                        R32 K32 [Enum.FillDirection.Vertical]
      624 SETTABLEKS                       R32 R31 K138 ["Layout"]
      626 GETIMPORT                        R32 K145 [Enum.HorizontalAlignment.Left]
      628 SETTABLEKS                       R32 R31 K33 ["HorizontalAlignment"]
      630 LOADN                            R32 10
      631 SETTABLEKS                       R32 R31 K139 ["Spacing"]
      633 LOADN                            R32 2
      634 SETTABLEKS                       R32 R31 K40 ["LayoutOrder"]
      636 DUPTABLE                         R32 K151 [{"WarningText", "WarningLink"}]
      637 GETUPVAL                         R33 2
      638 GETTABLEKS                       R33 R33 K27 ["createElement"]
      640 LOADK                            R34 K104 ["TextLabel"]
      641 DUPTABLE                         R35 K152 [{"Text", "TextXAlignment", "TextSize", "BackgroundTransparency", "Font", "TextColor3", "LayoutOrder"}]
      642 LOADK                            R38 K153 ["DataSharing"]
      643 LOADK                            R39 K154 ["ChoosePlaceWarning"]
      644 NAMECALL                         R36 R3 K23 ["getText"]
      646 CALL                             R36 3 1
      647 SETTABLEKS                       R36 R35 K105 ["Text"]
      649 GETIMPORT                        R36 K112 [Enum.TextXAlignment.Left]
      651 SETTABLEKS                       R36 R35 K106 ["TextXAlignment"]
      653 LOADN                            R36 20
      654 SETTABLEKS                       R36 R35 K107 ["TextSize"]
      656 LOADN                            R36 1
      657 SETTABLEKS                       R36 R35 K99 ["BackgroundTransparency"]
      659 GETTABLEKS                       R36 R2 K113 ["header"]
      661 GETTABLEKS                       R36 R36 K114 ["font"]
      663 SETTABLEKS                       R36 R35 K108 ["Font"]
      665 GETTABLEKS                       R36 R2 K133 ["warningTextColor"]
      667 SETTABLEKS                       R36 R35 K109 ["TextColor3"]
      669 LOADN                            R36 1
      670 SETTABLEKS                       R36 R35 K40 ["LayoutOrder"]
      672 CALL                             R33 2 1
      673 SETTABLEKS                       R33 R32 K118 ["WarningText"]
      675 GETUPVAL                         R33 2
      676 GETTABLEKS                       R33 R33 K27 ["createElement"]
      678 GETUPVAL                         R34 7
      679 DUPTABLE                         R35 K157 [{"Text", "TextProps", "LinkMap", "HorizontalAlignment", "LayoutOrder"}]
      680 LOADK                            R38 K153 ["DataSharing"]
      681 LOADK                            R39 K158 ["ChoosePlaceWarning2"]
      682 NAMECALL                         R36 R3 K23 ["getText"]
      684 CALL                             R36 3 1
      685 SETTABLEKS                       R36 R35 K105 ["Text"]
      687 DUPTABLE                         R36 K160 [{"Font", "TextSize", "TextXAlignment", "TextColor"}]
      688 GETTABLEKS                       R37 R2 K113 ["header"]
      690 GETTABLEKS                       R37 R37 K114 ["font"]
      692 SETTABLEKS                       R37 R36 K108 ["Font"]
      694 LOADN                            R37 20
      695 SETTABLEKS                       R37 R36 K107 ["TextSize"]
      697 GETIMPORT                        R37 K112 [Enum.TextXAlignment.Left]
      699 SETTABLEKS                       R37 R36 K106 ["TextXAlignment"]
      701 GETTABLEKS                       R37 R2 K133 ["warningTextColor"]
      703 SETTABLEKS                       R37 R36 K159 ["TextColor"]
      705 SETTABLEKS                       R36 R35 K155 ["TextProps"]
      707 NEWTABLE                         R36 1 0
      709 DUPTABLE                         R37 K163 [{"LinkText", "LinkCallback"}]
      710 LOADK                            R40 K153 ["DataSharing"]
      711 LOADK                            R41 K164 ["SettingsPage"]
      712 NAMECALL                         R38 R3 K23 ["getText"]
      714 CALL                             R38 3 1
      715 SETTABLEKS                       R38 R37 K161 ["LinkText"]
      717 DUPCLOSURE                       R38 K165 [PROTO_8]
      718 CAPTURE                          UPVAL U8
      719 CAPTURE                          UPVAL U9
      720 CAPTURE                          UPVAL U10
      721 SETTABLEKS                       R38 R37 K162 ["LinkCallback"]
      723 SETTABLEKS                       R37 R36 K166 ["[hereLink]"]
      725 SETTABLEKS                       R36 R35 K156 ["LinkMap"]
      727 GETIMPORT                        R36 K145 [Enum.HorizontalAlignment.Left]
      729 SETTABLEKS                       R36 R35 K33 ["HorizontalAlignment"]
      731 LOADN                            R36 2
      732 SETTABLEKS                       R36 R35 K40 ["LayoutOrder"]
      734 CALL                             R33 2 1
      735 SETTABLEKS                       R33 R32 K150 ["WarningLink"]
      737 CALL                             R29 3 1
      738 SETTABLEKS                       R29 R28 K146 ["Warning"]
      740 CALL                             R25 3 1
      741 JUMP                             ; [+1]
      742 LOADNIL                          R25
      743 SETTABLEKS                       R25 R24 K86 ["WarningDataSharingFrame"]
      745 GETUPVAL                         R25 2
      746 GETTABLEKS                       R25 R25 K27 ["createElement"]
      748 LOADK                            R26 K74 ["Frame"]
      749 DUPTABLE                         R27 K116 [{"Position", "Size", "BackgroundTransparency"}]
      750 GETIMPORT                        R28 K80 [UDim2.new]
      752 LOADK                            R29 K167 [0.7]
      753 LOADN                            R30 4
      754 LOADN                            R31 0
      755 LOADN                            R32 62
      756 CALL                             R28 4 1
      757 SETTABLEKS                       R28 R27 K97 ["Position"]
      759 GETIMPORT                        R28 K80 [UDim2.new]
      761 LOADN                            R29 0
      762 GETTABLEKS                       R31 R2 K169 ["DROPDOWN_WIDTH"]
      764 ADDK                             R30 R31 K168 [20]
      765 LOADN                            R31 0
      766 GETTABLEKS                       R32 R2 K170 ["DROPDOWN_HEIGHT"]
      768 CALL                             R28 4 1
      769 SETTABLEKS                       R28 R27 K75 ["Size"]
      771 LOADN                            R28 1
      772 SETTABLEKS                       R28 R27 K99 ["BackgroundTransparency"]
      774 NEWTABLE                         R28 0 1
      776 GETUPVAL                         R29 2
      777 GETTABLEKS                       R29 R29 K27 ["createElement"]
      779 GETUPVAL                         R30 11
      780 DUPTABLE                         R31 K175 [{"Size", "ShowSearchIcon", "ShowSearchButton", "IncrementalTextSearch", "OnSearchRequested"}]
      781 GETIMPORT                        R32 K80 [UDim2.new]
      783 LOADK                            R33 K167 [0.7]
      784 LOADN                            R34 0
      785 LOADN                            R35 1
      786 LOADN                            R36 0
      787 CALL                             R32 4 1
      788 SETTABLEKS                       R32 R31 K75 ["Size"]
      790 LOADB                            R32 1
      791 SETTABLEKS                       R32 R31 K171 ["ShowSearchIcon"]
      793 LOADB                            R32 0
      794 SETTABLEKS                       R32 R31 K172 ["ShowSearchButton"]
      796 LOADB                            R32 1
      797 SETTABLEKS                       R32 R31 K173 ["IncrementalTextSearch"]
      799 GETTABLEKS                       R32 R0 K174 ["OnSearchRequested"]
      801 SETTABLEKS                       R32 R31 K174 ["OnSearchRequested"]
      803 CALL                             R29 2 -1
      804 SETLIST                          R28 R29 -1 [1]
      806 CALL                             R25 3 1
      807 SETTABLEKS                       R25 R24 K87 ["SearchBar"]
      809 LOADB                            R25 0
      810 GETTABLEKS                       R26 R1 K48 ["PlacesQueryState"]
      812 GETUPVAL                         R27 0
      813 GETTABLEKS                       R27 R27 K49 ["QUERY_STATE"]
      815 GETTABLEKS                       R27 R27 K50 ["QUERY_STATE_SUCCESS"]
      817 JUMPIFNOTEQ                      R26 R27 ; [+46]
      819 GETUPVAL                         R25 2
      820 GETTABLEKS                       R25 R25 K27 ["createElement"]
      822 GETUPVAL                         R26 12
      823 DUPTABLE                         R27 K179 [{"AutomaticCanvasSize", "Size", "Position", "NextPageRequestDistance", "NextPageFunc"}]
      824 GETIMPORT                        R28 K142 [Enum.AutomaticSize.Y]
      826 SETTABLEKS                       R28 R27 K176 ["AutomaticCanvasSize"]
      828 GETIMPORT                        R28 K80 [UDim2.new]
      830 LOADN                            R29 1
      831 LOADN                            R30 0
      832 LOADK                            R31 K103 [0.5]
      833 GETTABLEKS                       R33 R2 K181 ["FOOTER_HEIGHT"]
      835 MULK                             R32 R33 K180 [2]
      836 CALL                             R28 4 1
      837 SETTABLEKS                       R28 R27 K75 ["Size"]
      839 GETIMPORT                        R28 K80 [UDim2.new]
      841 LOADN                            R29 0
      842 LOADN                            R30 0
      843 LOADN                            R31 0
      844 GETUPVAL                         R33 5
      845 CALL                             R33 0 1
      846 JUMPIFNOT                        R33 ; [+2]
      847 LOADN                            R32 175
      848 JUMP                             ; [+1]
      849 LOADN                            R32 135
      850 CALL                             R28 4 1
      851 SETTABLEKS                       R28 R27 K97 ["Position"]
      853 LOADN                            R28 100
      854 SETTABLEKS                       R28 R27 K177 ["NextPageRequestDistance"]
      856 NEWCLOSURE                       R28 P4
      857 CAPTURE                          VAL R5
      858 CAPTURE                          VAL R10
      859 CAPTURE                          VAL R7
      860 SETTABLEKS                       R28 R27 K178 ["NextPageFunc"]
      862 MOVE                             R28 R18
      863 CALL                             R25 3 1
      864 SETTABLEKS                       R25 R24 K88 ["MainContentsSuccess"]
      866 LOADB                            R25 0
      867 GETTABLEKS                       R26 R1 K48 ["PlacesQueryState"]
      869 GETUPVAL                         R27 0
      870 GETTABLEKS                       R27 R27 K49 ["QUERY_STATE"]
      872 GETTABLEKS                       R27 R27 K182 ["QUERY_STATE_QUERYING"]
      874 JUMPIFNOTEQ                      R26 R27 ; [+57]
      876 GETUPVAL                         R25 2
      877 GETTABLEKS                       R25 R25 K27 ["createElement"]
      879 LOADK                            R26 K74 ["Frame"]
      880 DUPTABLE                         R27 K183 [{"Position", "Size", "BackgroundColor3"}]
      881 GETIMPORT                        R28 K80 [UDim2.new]
      883 LOADN                            R29 0
      884 LOADN                            R30 30
      885 LOADN                            R31 0
      886 LOADN                            R32 115
      887 CALL                             R28 4 1
      888 SETTABLEKS                       R28 R27 K97 ["Position"]
      890 GETIMPORT                        R28 K80 [UDim2.new]
      892 LOADK                            R29 K184 [0.95]
      893 LOADN                            R30 0
      894 LOADK                            R31 K167 [0.7]
      895 LOADN                            R32 0
      896 CALL                             R28 4 1
      897 SETTABLEKS                       R28 R27 K75 ["Size"]
      899 GETTABLEKS                       R28 R2 K81 ["backgroundColor"]
      901 SETTABLEKS                       R28 R27 K76 ["BackgroundColor3"]
      903 NEWTABLE                         R28 0 1
      905 GETUPVAL                         R29 2
      906 GETTABLEKS                       R29 R29 K27 ["createElement"]
      908 GETUPVAL                         R30 13
      909 DUPTABLE                         R31 K185 [{"Position", "Size"}]
      910 GETIMPORT                        R32 K80 [UDim2.new]
      912 LOADK                            R33 K103 [0.5]
      913 LOADN                            R34 156
      914 LOADN                            R35 0
      915 LOADN                            R36 115
      916 CALL                             R32 4 1
      917 SETTABLEKS                       R32 R31 K97 ["Position"]
      919 GETIMPORT                        R32 K80 [UDim2.new]
      921 LOADN                            R33 0
      922 LOADN                            R34 200
      923 LOADN                            R35 0
      924 LOADN                            R36 50
      925 CALL                             R32 4 1
      926 SETTABLEKS                       R32 R31 K75 ["Size"]
      928 CALL                             R29 2 -1
      929 SETLIST                          R28 R29 -1 [1]
      931 CALL                             R25 3 1
      932 SETTABLEKS                       R25 R24 K89 ["MainContentsQuerying"]
      934 LOADB                            R25 0
      935 GETTABLEKS                       R26 R1 K48 ["PlacesQueryState"]
      937 GETUPVAL                         R27 0
      938 GETTABLEKS                       R27 R27 K49 ["QUERY_STATE"]
      940 GETTABLEKS                       R27 R27 K186 ["QUERY_STATE_FAILED"]
      942 JUMPIFNOTEQ                      R26 R27 ; [+123]
      944 GETUPVAL                         R25 2
      945 GETTABLEKS                       R25 R25 K27 ["createElement"]
      947 LOADK                            R26 K74 ["Frame"]
      948 DUPTABLE                         R27 K183 [{"Position", "Size", "BackgroundColor3"}]
      949 GETIMPORT                        R28 K80 [UDim2.new]
      951 LOADN                            R29 0
      952 LOADN                            R30 30
      953 LOADN                            R31 0
      954 LOADN                            R32 115
      955 CALL                             R28 4 1
      956 SETTABLEKS                       R28 R27 K97 ["Position"]
      958 GETIMPORT                        R28 K80 [UDim2.new]
      960 LOADK                            R29 K184 [0.95]
      961 LOADN                            R30 0
      962 LOADK                            R31 K167 [0.7]
      963 LOADN                            R32 0
      964 CALL                             R28 4 1
      965 SETTABLEKS                       R28 R27 K75 ["Size"]
      967 GETTABLEKS                       R28 R2 K81 ["backgroundColor"]
      969 SETTABLEKS                       R28 R27 K76 ["BackgroundColor3"]
      971 NEWTABLE                         R28 0 2
      973 GETUPVAL                         R29 2
      974 GETTABLEKS                       R29 R29 K27 ["createElement"]
      976 LOADK                            R30 K104 ["TextLabel"]
      977 DUPTABLE                         R31 K187 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Font"}]
      978 LOADK                            R34 K24 ["General"]
      979 LOADK                            R35 K188 ["FetchFailed"]
      980 NAMECALL                         R32 R3 K23 ["getText"]
      982 CALL                             R32 3 1
      983 SETTABLEKS                       R32 R31 K105 ["Text"]
      985 GETIMPORT                        R32 K80 [UDim2.new]
      987 LOADK                            R33 K103 [0.5]
      988 LOADN                            R34 0
      989 LOADN                            R35 0
      990 LOADN                            R36 50
      991 CALL                             R32 4 1
      992 SETTABLEKS                       R32 R31 K97 ["Position"]
      994 LOADN                            R32 24
      995 SETTABLEKS                       R32 R31 K107 ["TextSize"]
      997 LOADN                            R32 1
      998 SETTABLEKS                       R32 R31 K99 ["BackgroundTransparency"]
     1000 GETIMPORT                        R32 K189 [Enum.TextXAlignment.Center]
     1002 SETTABLEKS                       R32 R31 K106 ["TextXAlignment"]
     1004 GETTABLEKS                       R32 R2 K190 ["failText"]
     1006 GETTABLEKS                       R32 R32 K191 ["text"]
     1008 SETTABLEKS                       R32 R31 K109 ["TextColor3"]
     1010 GETTABLEKS                       R32 R2 K190 ["failText"]
     1012 GETTABLEKS                       R32 R32 K114 ["font"]
     1014 SETTABLEKS                       R32 R31 K108 ["Font"]
     1016 CALL                             R29 2 1
     1017 GETUPVAL                         R30 2
     1018 GETTABLEKS                       R30 R30 K27 ["createElement"]
     1020 GETUPVAL                         R31 14
     1021 DUPTABLE                         R32 K193 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "Text"}]
     1022 GETIMPORT                        R33 K126 [Vector2.new]
     1024 LOADK                            R34 K103 [0.5]
     1025 LOADK                            R35 K103 [0.5]
     1026 CALL                             R33 2 1
     1027 SETTABLEKS                       R33 R32 K121 ["AnchorPoint"]
     1029 NEWCLOSURE                       R33 P5
     1030 CAPTURE                          VAL R10
     1031 CAPTURE                          VAL R7
     1032 SETTABLEKS                       R33 R32 K192 ["OnClick"]
     1034 GETIMPORT                        R33 K80 [UDim2.new]
     1036 LOADK                            R34 K103 [0.5]
     1037 LOADN                            R35 0
     1038 LOADN                            R36 0
     1039 LOADN                            R37 100
     1040 CALL                             R33 4 1
     1041 SETTABLEKS                       R33 R32 K97 ["Position"]
     1043 GETIMPORT                        R33 K80 [UDim2.new]
     1045 LOADN                            R34 0
     1046 LOADN                            R35 150
     1047 LOADN                            R36 0
     1048 LOADN                            R37 75
     1049 CALL                             R33 4 1
     1050 SETTABLEKS                       R33 R32 K75 ["Size"]
     1052 LOADK                            R33 K194 ["Round"]
     1053 SETTABLEKS                       R33 R32 K98 ["Style"]
     1055 LOADK                            R35 K66 ["Button"]
     1056 LOADK                            R36 K195 ["Retry"]
     1057 NAMECALL                         R33 R3 K23 ["getText"]
     1059 CALL                             R33 3 1
     1060 SETTABLEKS                       R33 R32 K105 ["Text"]
     1062 CALL                             R30 2 -1
     1063 SETLIST                          R28 R29 -1 [1]
     1065 CALL                             R25 3 1
     1066 SETTABLEKS                       R25 R24 K90 ["MainContentsFailed"]
     1068 GETUPVAL                         R25 2
     1069 GETTABLEKS                       R25 R25 K27 ["createElement"]
     1071 GETUPVAL                         R26 15
     1072 DUPTABLE                         R27 K197 [{"MainButton", "OnClose"}]
     1073 DUPTABLE                         R28 K199 [{"Name", "Active", "OnActivated"}]
     1074 SETTABLEKS                       R19 R28 K58 ["Name"]
     1076 MOVE                             R29 R7
     1077 JUMPIFNOT                        R29 ; [+8]
     1078 LOADB                            R29 0
     1079 GETTABLEKS                       R30 R0 K15 ["state"]
     1081 GETTABLEKS                       R30 R30 K16 ["selectedPlace"]
     1083 JUMPIFEQKNIL                     R30 ; [+2]
     1085 NOT                              R29 R8
     1086 SETTABLEKS                       R29 R28 K198 ["Active"]
     1088 NEWCLOSURE                       R29 P6
     1089 CAPTURE                          UPVAL U16
     1090 CAPTURE                          VAL R0
     1091 CAPTURE                          VAL R13
     1092 CAPTURE                          VAL R7
     1093 CAPTURE                          VAL R1
     1094 CAPTURE                          UPVAL U17
     1095 CAPTURE                          VAL R11
     1096 SETTABLEKS                       R29 R28 K62 ["OnActivated"]
     1098 SETTABLEKS                       R28 R27 K196 ["MainButton"]
     1100 SETTABLEKS                       R4 R27 K3 ["OnClose"]
     1102 CALL                             R25 2 1
     1103 SETTABLEKS                       R25 R24 K91 ["Footer"]
     1105 CALL                             R21 3 -1
     1106 RETURN                           R21 -1

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
        2 DUPTABLE                         R5 K5 [{"universe", "place", "isPublish", "failCount", "requestInFlight"}]
        3 SETTABLEKS                       R0 R5 K0 ["universe"]
        5 SETTABLEKS                       R1 R5 K1 ["place"]
        7 SETTABLEKS                       R2 R5 K2 ["isPublish"]
        9 LOADN                            R6 0
       10 SETTABLEKS                       R6 R5 K3 ["failCount"]
       12 LOADB                            R6 0
       13 SETTABLEKS                       R6 R5 K4 ["requestInFlight"]
       15 CALL                             R4 1 -1
       16 CALL                             R3 -1 0
       17 GETUPVAL                         R3 0
       18 GETUPVAL                         R4 2
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K6 ["SCREENS"]
       22 GETTABLEKS                       R5 R5 K7 ["PUBLISH_IN_PROGRESS"]
       24 CALL                             R4 1 -1
       25 CALL                             R3 -1 0
       26 RETURN                           R0 0

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
        2 DUPTABLE                         R5 K6 [{"id", "name", "parentGameName", "parentGameId", "failed", "message"}]
        3 GETTABLEKS                       R6 R0 K7 ["placeId"]
        5 SETTABLEKS                       R6 R5 K0 ["id"]
        7 GETTABLEKS                       R6 R0 K1 ["name"]
        9 SETTABLEKS                       R6 R5 K1 ["name"]
       11 GETTABLEKS                       R6 R1 K1 ["name"]
       13 SETTABLEKS                       R6 R5 K2 ["parentGameName"]
       15 GETTABLEKS                       R6 R1 K8 ["universeId"]
       17 SETTABLEKS                       R6 R5 K3 ["parentGameId"]
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K4 ["failed"]
       22 SETTABLEKS                       R2 R5 K5 ["message"]
       24 CALL                             R4 1 -1
       25 CALL                             R3 -1 0
       26 GETUPVAL                         R3 0
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K9 ["SCREENS"]
       31 GETTABLEKS                       R5 R5 K10 ["PUBLISH_FAIL"]
       33 CALL                             R4 1 -1
       34 CALL                             R3 -1 0
       35 RETURN                           R0 0

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
