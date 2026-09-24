PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["isMounted"]
        7 GETTABLEKS                       R1 R0 K2 ["props"]
        9 GETTABLEKS                       R1 R1 K3 ["Id"]
       11 JUMPIFNOTEQKN                    R1 K4 [0] ; [+5]
       13 GETIMPORT                        R2 K6 [game]
       15 GETTABLEKS                       R1 R2 K7 ["GameId"]
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Progress"]
        6 GETTABLEKS                       R2 R2 K2 ["Place"]
        8 GETTABLEKS                       R2 R2 K3 ["name"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K1 ["Progress"]
       15 GETTABLEKS                       R3 R3 K4 ["Universe"]
       17 GETTABLEKS                       R3 R3 K3 ["name"]
       19 NAMECALL                         R0 R0 K5 ["setUploadNames"]
       21 CALL                             R0 3 0
       22 GETUPVAL                         R0 0
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K0 ["props"]
       26 GETTABLEKS                       R2 R2 K1 ["Progress"]
       28 GETTABLEKS                       R2 R2 K4 ["Universe"]
       30 GETTABLEKS                       R2 R2 K6 ["universeId"]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K0 ["props"]
       35 GETTABLEKS                       R3 R3 K1 ["Progress"]
       37 GETTABLEKS                       R3 R3 K2 ["Place"]
       39 GETTABLEKS                       R3 R3 K7 ["placeId"]
       41 LOADN                            R4 0
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K0 ["props"]
       45 GETTABLEKS                       R5 R5 K1 ["Progress"]
       47 GETTABLEKS                       R5 R5 K8 ["IsPublish"]
       49 LOADNIL                          R6
       50 GETUPVAL                         R8 2
       51 GETUPVAL                         R9 3
       52 JUMPIFLT                         R8 R9 ; [+2]
       54 LOADB                            R7 0 +1
       55 LOADB                            R7 1
       56 NAMECALL                         R0 R0 K9 ["publishAs"]
       58 CALL                             R0 7 0
       59 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["Progress"]
        5 GETTABLEKS                       R4 R4 K2 ["FailCount"]
        7 GETIMPORT                        R5 K6 [Enum.StudioPlaceUpdateFailureReason.TeamCreateConflict]
        9 JUMPIFNOTEQ                      R3 R5 ; [+36]
       11 GETUPVAL                         R5 1
       12 GETUPVAL                         R6 2
       13 JUMPIFNOTLT                      R5 R6 ; [+32]
       15 GETUPVAL                         R6 1
       16 ADDK                             R5 R6 K7 [1]
       17 SETUPVAL                         R5 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K8 ["retryThread"]
       21 JUMPIFEQKNIL                     R5 ; [+11]
       23 GETIMPORT                        R5 K11 [task.cancel]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K8 ["retryThread"]
       28 CALL                             R5 1 0
       29 GETUPVAL                         R5 0
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R5 K8 ["retryThread"]
       33 GETUPVAL                         R5 0
       34 GETIMPORT                        R6 K13 [task.delay]
       36 GETUPVAL                         R7 3
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K8 ["retryThread"]
       45 RETURN                           R0 0
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K0 ["props"]
       49 GETTABLEKS                       R5 R5 K14 ["DispatchRequestInFlight"]
       51 LOADB                            R6 0
       52 CALL                             R5 1 0
       53 JUMPIFNOT                        R0 ; [+21]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K0 ["props"]
       57 GETTABLEKS                       R5 R5 K15 ["OpenPublishSuccessfulPage"]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K0 ["props"]
       62 GETTABLEKS                       R6 R6 K1 ["Progress"]
       64 GETTABLEKS                       R6 R6 K16 ["Place"]
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K0 ["props"]
       69 GETTABLEKS                       R7 R7 K1 ["Progress"]
       71 GETTABLEKS                       R7 R7 K17 ["Universe"]
       73 CALL                             R5 2 0
       74 RETURN                           R0 0
       75 GETUPVAL                         R5 0
       76 GETTABLEKS                       R5 R5 K0 ["props"]
       78 GETTABLEKS                       R5 R5 K18 ["OpenPublishFailPage"]
       80 GETUPVAL                         R6 0
       81 GETTABLEKS                       R6 R6 K0 ["props"]
       83 GETTABLEKS                       R6 R6 K1 ["Progress"]
       85 GETTABLEKS                       R6 R6 K16 ["Place"]
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R7 R7 K0 ["props"]
       90 GETTABLEKS                       R7 R7 K1 ["Progress"]
       92 GETTABLEKS                       R7 R7 K17 ["Universe"]
       94 MOVE                             R8 R2
       95 CALL                             R5 3 0
       96 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["WaitForPublish"]
       10 JUMPIFNOT                        R1 ; [+3]
       11 LOADN                            R1 0
       12 SETUPVAL                         R1 1
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K3 ["GamePublishFinished"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U2
       23 NAMECALL                         R1 R1 K4 ["connect"]
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K5 ["finishedConnection"]
       28 LOADN                            R1 0
       29 SETUPVAL                         R1 1
       30 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["retryThread"]
        5 JUMPIFEQKNIL                     R1 ; [+9]
        7 GETIMPORT                        R1 K4 [task.cancel]
        9 GETTABLEKS                       R2 R0 K1 ["retryThread"]
       11 CALL                             R1 1 0
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K1 ["retryThread"]
       15 GETTABLEKS                       R1 R0 K5 ["finishedConnection"]
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETTABLEKS                       R1 R0 K5 ["finishedConnection"]
       20 NAMECALL                         R1 R1 K6 ["disconnect"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClose"]
        8 GETTABLEKS                       R5 R1 K4 ["Name"]
       10 GETTABLEKS                       R6 R1 K5 ["ParentGameName"]
       12 GETUPVAL                         R7 0
       13 CALL                             R7 0 1
       14 JUMPIFNOT                        R7 ; [+3]
       15 GETTABLEKS                       R7 R1 K6 ["WaitForPublish"]
       17 JUMPIF                           R7 ; [+60]
       18 GETTABLEKS                       R7 R1 K7 ["Progress"]
       20 GETTABLEKS                       R7 R7 K8 ["RequestInFlight"]
       22 JUMPIFNOTEQKB                    R7 FALSE ; [+55]
       24 GETTABLEKS                       R7 R1 K7 ["Progress"]
       26 GETTABLEKS                       R7 R7 K9 ["FailCount"]
       28 JUMPIFNOTEQKN                    R7 K10 [0] ; [+49]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R9 R1 K7 ["Progress"]
       33 GETTABLEKS                       R9 R9 K11 ["Place"]
       35 GETTABLEKS                       R9 R9 K12 ["name"]
       37 GETTABLEKS                       R10 R1 K7 ["Progress"]
       39 GETTABLEKS                       R10 R10 K13 ["Universe"]
       41 GETTABLEKS                       R10 R10 K12 ["name"]
       43 NAMECALL                         R7 R7 K14 ["setUploadNames"]
       45 CALL                             R7 3 0
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R9 R1 K7 ["Progress"]
       49 GETTABLEKS                       R9 R9 K13 ["Universe"]
       51 GETTABLEKS                       R9 R9 K15 ["universeId"]
       53 GETTABLEKS                       R10 R1 K7 ["Progress"]
       55 GETTABLEKS                       R10 R10 K11 ["Place"]
       57 GETTABLEKS                       R10 R10 K16 ["placeId"]
       59 LOADN                            R11 0
       60 GETTABLEKS                       R12 R1 K7 ["Progress"]
       62 GETTABLEKS                       R12 R12 K17 ["IsPublish"]
       64 LOADNIL                          R13
       65 GETUPVAL                         R15 2
       66 GETUPVAL                         R16 3
       67 JUMPIFLT                         R15 R16 ; [+2]
       69 LOADB                            R14 0 +1
       70 LOADB                            R14 1
       71 NAMECALL                         R7 R7 K18 ["publishAs"]
       73 CALL                             R7 7 0
       74 GETTABLEKS                       R7 R1 K19 ["DispatchRequestInFlight"]
       76 LOADB                            R8 1
       77 CALL                             R7 1 0
       78 LOADK                            R9 K20 ["General"]
       79 LOADK                            R10 K21 ["UploadInProgressElps"]
       80 NAMECALL                         R7 R3 K22 ["getText"]
       82 CALL                             R7 3 1
       83 LOADK                            R10 K20 ["General"]
       84 LOADK                            R11 K23 ["PleaseWait"]
       85 NAMECALL                         R8 R3 K22 ["getText"]
       87 CALL                             R8 3 1
       88 GETUPVAL                         R9 2
       89 LOADN                            R10 0
       90 JUMPIFNOTLT                      R10 R9 ; [+7]
       92 LOADK                            R11 K20 ["General"]
       93 LOADK                            R12 K24 ["UploadConflictRetry"]
       94 NAMECALL                         R9 R3 K22 ["getText"]
       96 CALL                             R9 3 1
       97 MOVE                             R8 R9
       98 GETUPVAL                         R9 4
       99 GETTABLEKS                       R9 R9 K25 ["createElement"]
      101 LOADK                            R10 K26 ["Frame"]
      102 DUPTABLE                         R11 K30 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      103 GETIMPORT                        R12 K33 [UDim2.new]
      105 LOADN                            R13 1
      106 LOADN                            R14 0
      107 LOADN                            R15 1
      108 LOADN                            R16 0
      109 CALL                             R12 4 1
      110 SETTABLEKS                       R12 R11 K27 ["Size"]
      112 GETTABLEKS                       R12 R2 K34 ["backgroundColor"]
      114 SETTABLEKS                       R12 R11 K28 ["BackgroundColor3"]
      116 DUPTABLE                         R12 K39 [{"Icon", "UploadInProgressLabel", "PleaseWaitLabel", "CancelButton"}]
      117 GETUPVAL                         R13 4
      118 GETTABLEKS                       R13 R13 K25 ["createElement"]
      120 GETUPVAL                         R14 5
      121 DUPTABLE                         R15 K42 [{"Position", "AnchorPoint", "Size"}]
      122 GETIMPORT                        R16 K33 [UDim2.new]
      124 LOADK                            R17 K43 [0.5]
      125 LOADN                            R18 0
      126 LOADK                            R19 K44 [0.3]
      127 LOADN                            R20 0
      128 CALL                             R16 4 1
      129 SETTABLEKS                       R16 R15 K40 ["Position"]
      131 GETIMPORT                        R16 K46 [Vector2.new]
      133 LOADK                            R17 K43 [0.5]
      134 LOADK                            R18 K43 [0.5]
      135 CALL                             R16 2 1
      136 SETTABLEKS                       R16 R15 K41 ["AnchorPoint"]
      138 GETIMPORT                        R16 K33 [UDim2.new]
      140 LOADN                            R17 0
      141 LOADN                            R18 150
      142 LOADN                            R19 0
      143 LOADN                            R20 50
      144 CALL                             R16 4 1
      145 SETTABLEKS                       R16 R15 K27 ["Size"]
      147 CALL                             R13 2 1
      148 SETTABLEKS                       R13 R12 K35 ["Icon"]
      150 GETUPVAL                         R13 4
      151 GETTABLEKS                       R13 R13 K25 ["createElement"]
      153 LOADK                            R14 K47 ["TextLabel"]
      154 DUPTABLE                         R15 K56 [{["Text"], ["Position"], ["TextSize"] = 24, ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextColor3"], ["Font"]}]
      155 SETTABLEKS                       R7 R15 K48 ["Text"]
      157 GETIMPORT                        R16 K33 [UDim2.new]
      159 LOADK                            R17 K43 [0.5]
      160 LOADN                            R18 0
      161 LOADK                            R19 K43 [0.5]
      162 LOADN                            R20 0
      163 CALL                             R16 4 1
      164 SETTABLEKS                       R16 R15 K40 ["Position"]
      166 GETIMPORT                        R16 K59 [Enum.TextXAlignment.Center]
      168 SETTABLEKS                       R16 R15 K53 ["TextXAlignment"]
      170 GETTABLEKS                       R16 R2 K60 ["successText"]
      172 GETTABLEKS                       R16 R16 K61 ["text"]
      174 SETTABLEKS                       R16 R15 K54 ["TextColor3"]
      176 GETTABLEKS                       R16 R2 K60 ["successText"]
      178 GETTABLEKS                       R16 R16 K62 ["font"]
      180 SETTABLEKS                       R16 R15 K55 ["Font"]
      182 CALL                             R13 2 1
      183 SETTABLEKS                       R13 R12 K36 ["UploadInProgressLabel"]
      185 GETUPVAL                         R13 4
      186 GETTABLEKS                       R13 R13 K25 ["createElement"]
      188 LOADK                            R14 K47 ["TextLabel"]
      189 DUPTABLE                         R15 K63 [{["Text"], ["Position"], ["TextSize"] = 24, ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextXAlignment"], ["Font"]}]
      190 SETTABLEKS                       R8 R15 K48 ["Text"]
      192 GETIMPORT                        R16 K33 [UDim2.new]
      194 LOADK                            R17 K43 [0.5]
      195 LOADN                            R18 0
      196 LOADK                            R19 K64 [0.6]
      197 LOADN                            R20 0
      198 CALL                             R16 4 1
      199 SETTABLEKS                       R16 R15 K40 ["Position"]
      201 GETTABLEKS                       R16 R2 K65 ["header"]
      203 GETTABLEKS                       R16 R16 K61 ["text"]
      205 SETTABLEKS                       R16 R15 K54 ["TextColor3"]
      207 GETIMPORT                        R16 K59 [Enum.TextXAlignment.Center]
      209 SETTABLEKS                       R16 R15 K53 ["TextXAlignment"]
      211 GETTABLEKS                       R16 R2 K65 ["header"]
      213 GETTABLEKS                       R16 R16 K62 ["font"]
      215 SETTABLEKS                       R16 R15 K55 ["Font"]
      217 CALL                             R13 2 1
      218 SETTABLEKS                       R13 R12 K37 ["PleaseWaitLabel"]
      220 GETUPVAL                         R14 0
      221 CALL                             R14 0 1
      222 JUMPIFNOT                        R14 ; [+5]
      223 GETTABLEKS                       R14 R1 K6 ["WaitForPublish"]
      225 JUMPIFNOT                        R14 ; [+2]
      226 LOADNIL                          R13
      227 JUMP                             ; [+42]
      228 GETUPVAL                         R13 4
      229 GETTABLEKS                       R13 R13 K25 ["createElement"]
      231 GETUPVAL                         R14 6
      232 DUPTABLE                         R15 K69 [{["AnchorPoint"], ["OnClick"], ["Position"], ["Size"], ["Style"] = "Round", ["Text"]}]
      233 GETIMPORT                        R16 K46 [Vector2.new]
      235 LOADK                            R17 K43 [0.5]
      236 LOADK                            R18 K43 [0.5]
      237 CALL                             R16 2 1
      238 SETTABLEKS                       R16 R15 K41 ["AnchorPoint"]
      240 GETTABLEKS                       R16 R1 K3 ["OnClose"]
      242 SETTABLEKS                       R16 R15 K66 ["OnClick"]
      244 GETIMPORT                        R16 K33 [UDim2.new]
      246 LOADK                            R17 K43 [0.5]
      247 LOADN                            R18 0
      248 LOADK                            R19 K70 [0.9]
      249 LOADN                            R20 0
      250 CALL                             R16 4 1
      251 SETTABLEKS                       R16 R15 K40 ["Position"]
      253 GETIMPORT                        R16 K33 [UDim2.new]
      255 LOADN                            R17 0
      256 LOADN                            R18 150
      257 LOADN                            R19 0
      258 LOADN                            R20 30
      259 CALL                             R16 4 1
      260 SETTABLEKS                       R16 R15 K27 ["Size"]
      262 LOADK                            R18 K71 ["Button"]
      263 LOADK                            R19 K72 ["Cancel"]
      264 NAMECALL                         R16 R3 K22 ["getText"]
      266 CALL                             R16 3 1
      267 SETTABLEKS                       R16 R15 K48 ["Text"]
      269 CALL                             R13 2 1
      270 SETTABLEKS                       R13 R12 K38 ["CancelButton"]
      272 CALL                             R9 3 -1
      273 RETURN                           R9 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["PublishedPlace"]
        2 GETTABLEKS                       R2 R2 K1 ["publishInfo"]
        4 GETTABLEKS                       R3 R0 K2 ["PublishInProgress"]
        6 GETTABLEKS                       R3 R3 K3 ["publishInProgress"]
        8 DUPTABLE                         R4 K8 [{"Id", "Name", "ParentGameName", "Progress"}]
        9 GETTABLEKS                       R5 R2 K9 ["id"]
       11 SETTABLEKS                       R5 R4 K4 ["Id"]
       13 GETTABLEKS                       R5 R2 K10 ["name"]
       15 SETTABLEKS                       R5 R4 K5 ["Name"]
       17 GETTABLEKS                       R5 R2 K11 ["parentGameName"]
       19 SETTABLEKS                       R5 R4 K6 ["ParentGameName"]
       21 DUPTABLE                         R5 K17 [{"Universe", "Place", "IsPublish", "FailCount", "RequestInFlight"}]
       22 GETTABLEKS                       R6 R3 K18 ["universe"]
       24 SETTABLEKS                       R6 R5 K12 ["Universe"]
       26 GETTABLEKS                       R6 R3 K19 ["place"]
       28 SETTABLEKS                       R6 R5 K13 ["Place"]
       30 GETTABLEKS                       R6 R3 K20 ["isPublish"]
       32 SETTABLEKS                       R6 R5 K14 ["IsPublish"]
       34 GETTABLEKS                       R6 R3 K21 ["failCount"]
       36 SETTABLEKS                       R6 R5 K15 ["FailCount"]
       38 GETTABLEKS                       R6 R3 K22 ["requestInFlight"]
       40 SETTABLEKS                       R6 R5 K16 ["RequestInFlight"]
       42 SETTABLEKS                       R5 R4 K7 ["Progress"]
       44 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"requestInFlight"}]
        3 SETTABLEKS                       R0 R3 K0 ["requestInFlight"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 DUPTABLE                         R1 K3 [{"DispatchRequestInFlight", "OpenPublishSuccessfulPage", "OpenPublishFailPage"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["DispatchRequestInFlight"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 SETTABLEKS                       R2 R1 K1 ["OpenPublishSuccessfulPage"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 SETTABLEKS                       R2 R1 K2 ["OpenPublishFailPage"]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["StudioPublishService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["StudioService"]
       18 NAMECALL                         R2 R2 K6 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["Roact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Packages"]
       39 GETTABLEKS                       R6 R6 K13 ["RoactRodux"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K9 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Src"]
       46 GETTABLEKS                       R7 R7 K15 ["Flags"]
       48 GETTABLEKS                       R7 R7 K16 ["getEngineFeatureStudioUnifiedPublishAction"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R3 K17 ["ContextServices"]
       53 GETTABLEKS                       R8 R7 K18 ["withContext"]
       55 GETTABLEKS                       R9 R3 K19 ["UI"]
       57 GETTABLEKS                       R10 R9 K20 ["Button"]
       59 GETTABLEKS                       R11 R9 K21 ["LoadingIndicator"]
       61 GETIMPORT                        R12 K4 [game]
       63 LOADK                            R14 K22 ["ContentProvider"]
       64 NAMECALL                         R12 R12 K6 ["GetService"]
       66 CALL                             R12 2 1
       67 GETIMPORT                        R13 K9 [require]
       69 GETTABLEKS                       R14 R0 K14 ["Src"]
       71 GETTABLEKS                       R14 R14 K23 ["Resources"]
       73 GETTABLEKS                       R14 R14 K24 ["Constants"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K9 [require]
       78 GETTABLEKS                       R15 R0 K14 ["Src"]
       80 GETTABLEKS                       R15 R15 K25 ["Actions"]
       82 GETTABLEKS                       R15 R15 K26 ["SetPublishInfo"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K9 [require]
       87 GETTABLEKS                       R16 R0 K14 ["Src"]
       89 GETTABLEKS                       R16 R16 K25 ["Actions"]
       91 GETTABLEKS                       R16 R16 K27 ["SetPublishInProgress"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K9 [require]
       96 GETTABLEKS                       R17 R0 K14 ["Src"]
       98 GETTABLEKS                       R17 R17 K25 ["Actions"]
      100 GETTABLEKS                       R17 R17 K28 ["SetScreen"]
      102 CALL                             R16 1 1
      103 GETTABLEKS                       R17 R4 K29 ["PureComponent"]
      105 LOADK                            R19 K30 ["ScreenPublishInProgress"]
      106 NAMECALL                         R17 R17 K31 ["extend"]
      108 CALL                             R17 2 1
      109 GETIMPORT                        R18 K4 [game]
      111 LOADK                            R20 K32 ["StudioTeamCreateConflictRetryCount"]
      112 NAMECALL                         R18 R18 K33 ["GetFastInt"]
      114 CALL                             R18 2 1
      115 GETIMPORT                        R19 K4 [game]
      117 LOADK                            R21 K34 ["StudioTeamCreateConflictDelaySec"]
      118 NAMECALL                         R19 R19 K33 ["GetFastInt"]
      120 CALL                             R19 2 1
      121 LOADN                            R20 0
      122 DUPCLOSURE                       R21 K35 [PROTO_0]
      123 SETTABLEKS                       R21 R17 K36 ["init"]
      125 NEWCLOSURE                       R21 P1
      126 CAPTURE                          VAL R6
      127 CAPTURE                          REF R20
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R18
      130 CAPTURE                          VAL R19
      131 SETTABLEKS                       R21 R17 K37 ["didMount"]
      133 DUPCLOSURE                       R21 K38 [PROTO_4]
      134 SETTABLEKS                       R21 R17 K39 ["willUnmount"]
      136 NEWCLOSURE                       R21 P3
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R1
      139 CAPTURE                          REF R20
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R10
      144 SETTABLEKS                       R21 R17 K40 ["render"]
      146 MOVE                             R21 R8
      147 DUPTABLE                         R22 K43 [{"Stylizer", "Localization"}]
      148 GETTABLEKS                       R23 R7 K41 ["Stylizer"]
      150 SETTABLEKS                       R23 R22 K41 ["Stylizer"]
      152 GETTABLEKS                       R23 R7 K42 ["Localization"]
      154 SETTABLEKS                       R23 R22 K42 ["Localization"]
      156 CALL                             R21 1 1
      157 MOVE                             R22 R17
      158 CALL                             R21 1 1
      159 MOVE                             R17 R21
      160 DUPCLOSURE                       R21 K44 [PROTO_6]
      161 DUPCLOSURE                       R22 K45 [PROTO_10]
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R13
      166 GETTABLEKS                       R23 R5 K46 ["connect"]
      168 MOVE                             R24 R21
      169 MOVE                             R25 R22
      170 CALL                             R23 2 1
      171 MOVE                             R24 R17
      172 CALL                             R23 1 -1
      173 CLOSEUPVALS                      R20
      174 RETURN                           R23 -1
