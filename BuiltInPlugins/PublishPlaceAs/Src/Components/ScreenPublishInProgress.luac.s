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
        4 GETTABLEKS                       R1 R1 K1 ["GamePublishFinished"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U0
       12 NAMECALL                         R1 R1 K2 ["connect"]
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K3 ["finishedConnection"]
       17 LOADN                            R1 0
       18 SETUPVAL                         R1 1
       19 RETURN                           R0 0

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
       12 GETTABLEKS                       R7 R1 K6 ["Progress"]
       14 GETTABLEKS                       R7 R7 K7 ["RequestInFlight"]
       16 JUMPIFNOTEQKB                    R7 FALSE ; [+55]
       18 GETTABLEKS                       R7 R1 K6 ["Progress"]
       20 GETTABLEKS                       R7 R7 K8 ["FailCount"]
       22 JUMPIFNOTEQKN                    R7 K9 [0] ; [+49]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R9 R1 K6 ["Progress"]
       27 GETTABLEKS                       R9 R9 K10 ["Place"]
       29 GETTABLEKS                       R9 R9 K11 ["name"]
       31 GETTABLEKS                       R10 R1 K6 ["Progress"]
       33 GETTABLEKS                       R10 R10 K12 ["Universe"]
       35 GETTABLEKS                       R10 R10 K11 ["name"]
       37 NAMECALL                         R7 R7 K13 ["setUploadNames"]
       39 CALL                             R7 3 0
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R9 R1 K6 ["Progress"]
       43 GETTABLEKS                       R9 R9 K12 ["Universe"]
       45 GETTABLEKS                       R9 R9 K14 ["universeId"]
       47 GETTABLEKS                       R10 R1 K6 ["Progress"]
       49 GETTABLEKS                       R10 R10 K10 ["Place"]
       51 GETTABLEKS                       R10 R10 K15 ["placeId"]
       53 LOADN                            R11 0
       54 GETTABLEKS                       R12 R1 K6 ["Progress"]
       56 GETTABLEKS                       R12 R12 K16 ["IsPublish"]
       58 LOADNIL                          R13
       59 GETUPVAL                         R15 1
       60 GETUPVAL                         R16 2
       61 JUMPIFLT                         R15 R16 ; [+2]
       63 LOADB                            R14 0 +1
       64 LOADB                            R14 1
       65 NAMECALL                         R7 R7 K17 ["publishAs"]
       67 CALL                             R7 7 0
       68 GETTABLEKS                       R7 R1 K18 ["DispatchRequestInFlight"]
       70 LOADB                            R8 1
       71 CALL                             R7 1 0
       72 LOADK                            R9 K19 ["General"]
       73 LOADK                            R10 K20 ["UploadInProgressElps"]
       74 NAMECALL                         R7 R3 K21 ["getText"]
       76 CALL                             R7 3 1
       77 LOADK                            R10 K19 ["General"]
       78 LOADK                            R11 K22 ["PleaseWait"]
       79 NAMECALL                         R8 R3 K21 ["getText"]
       81 CALL                             R8 3 1
       82 GETUPVAL                         R9 1
       83 LOADN                            R10 0
       84 JUMPIFNOTLT                      R10 R9 ; [+7]
       86 LOADK                            R11 K19 ["General"]
       87 LOADK                            R12 K23 ["UploadConflictRetry"]
       88 NAMECALL                         R9 R3 K21 ["getText"]
       90 CALL                             R9 3 1
       91 MOVE                             R8 R9
       92 GETUPVAL                         R9 3
       93 GETTABLEKS                       R9 R9 K24 ["createElement"]
       95 LOADK                            R10 K25 ["Frame"]
       96 DUPTABLE                         R11 K29 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
       97 GETIMPORT                        R12 K32 [UDim2.new]
       99 LOADN                            R13 1
      100 LOADN                            R14 0
      101 LOADN                            R15 1
      102 LOADN                            R16 0
      103 CALL                             R12 4 1
      104 SETTABLEKS                       R12 R11 K26 ["Size"]
      106 GETTABLEKS                       R12 R2 K33 ["backgroundColor"]
      108 SETTABLEKS                       R12 R11 K27 ["BackgroundColor3"]
      110 LOADN                            R12 0
      111 SETTABLEKS                       R12 R11 K28 ["BorderSizePixel"]
      113 DUPTABLE                         R12 K38 [{"Icon", "UploadInProgressLabel", "PleaseWaitLabel", "CancelButton"}]
      114 GETUPVAL                         R13 3
      115 GETTABLEKS                       R13 R13 K24 ["createElement"]
      117 GETUPVAL                         R14 4
      118 DUPTABLE                         R15 K41 [{"Position", "AnchorPoint", "Size"}]
      119 GETIMPORT                        R16 K32 [UDim2.new]
      121 LOADK                            R17 K42 [0.5]
      122 LOADN                            R18 0
      123 LOADK                            R19 K43 [0.3]
      124 LOADN                            R20 0
      125 CALL                             R16 4 1
      126 SETTABLEKS                       R16 R15 K39 ["Position"]
      128 GETIMPORT                        R16 K45 [Vector2.new]
      130 LOADK                            R17 K42 [0.5]
      131 LOADK                            R18 K42 [0.5]
      132 CALL                             R16 2 1
      133 SETTABLEKS                       R16 R15 K40 ["AnchorPoint"]
      135 GETIMPORT                        R16 K32 [UDim2.new]
      137 LOADN                            R17 0
      138 LOADN                            R18 150
      139 LOADN                            R19 0
      140 LOADN                            R20 50
      141 CALL                             R16 4 1
      142 SETTABLEKS                       R16 R15 K26 ["Size"]
      144 CALL                             R13 2 1
      145 SETTABLEKS                       R13 R12 K34 ["Icon"]
      147 GETUPVAL                         R13 3
      148 GETTABLEKS                       R13 R13 K24 ["createElement"]
      150 LOADK                            R14 K46 ["TextLabel"]
      151 DUPTABLE                         R15 K53 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Font"}]
      152 SETTABLEKS                       R7 R15 K47 ["Text"]
      154 GETIMPORT                        R16 K32 [UDim2.new]
      156 LOADK                            R17 K42 [0.5]
      157 LOADN                            R18 0
      158 LOADK                            R19 K42 [0.5]
      159 LOADN                            R20 0
      160 CALL                             R16 4 1
      161 SETTABLEKS                       R16 R15 K39 ["Position"]
      163 LOADN                            R16 24
      164 SETTABLEKS                       R16 R15 K48 ["TextSize"]
      166 LOADN                            R16 1
      167 SETTABLEKS                       R16 R15 K49 ["BackgroundTransparency"]
      169 GETIMPORT                        R16 K56 [Enum.TextXAlignment.Center]
      171 SETTABLEKS                       R16 R15 K50 ["TextXAlignment"]
      173 GETTABLEKS                       R16 R2 K57 ["successText"]
      175 GETTABLEKS                       R16 R16 K58 ["text"]
      177 SETTABLEKS                       R16 R15 K51 ["TextColor3"]
      179 GETTABLEKS                       R16 R2 K57 ["successText"]
      181 GETTABLEKS                       R16 R16 K59 ["font"]
      183 SETTABLEKS                       R16 R15 K52 ["Font"]
      185 CALL                             R13 2 1
      186 SETTABLEKS                       R13 R12 K35 ["UploadInProgressLabel"]
      188 GETUPVAL                         R13 3
      189 GETTABLEKS                       R13 R13 K24 ["createElement"]
      191 LOADK                            R14 K46 ["TextLabel"]
      192 DUPTABLE                         R15 K60 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextColor3", "TextXAlignment", "Font"}]
      193 SETTABLEKS                       R8 R15 K47 ["Text"]
      195 GETIMPORT                        R16 K32 [UDim2.new]
      197 LOADK                            R17 K42 [0.5]
      198 LOADN                            R18 0
      199 LOADK                            R19 K61 [0.6]
      200 LOADN                            R20 0
      201 CALL                             R16 4 1
      202 SETTABLEKS                       R16 R15 K39 ["Position"]
      204 LOADN                            R16 24
      205 SETTABLEKS                       R16 R15 K48 ["TextSize"]
      207 LOADN                            R16 1
      208 SETTABLEKS                       R16 R15 K49 ["BackgroundTransparency"]
      210 GETTABLEKS                       R16 R2 K62 ["header"]
      212 GETTABLEKS                       R16 R16 K58 ["text"]
      214 SETTABLEKS                       R16 R15 K51 ["TextColor3"]
      216 GETIMPORT                        R16 K56 [Enum.TextXAlignment.Center]
      218 SETTABLEKS                       R16 R15 K50 ["TextXAlignment"]
      220 GETTABLEKS                       R16 R2 K62 ["header"]
      222 GETTABLEKS                       R16 R16 K59 ["font"]
      224 SETTABLEKS                       R16 R15 K52 ["Font"]
      226 CALL                             R13 2 1
      227 SETTABLEKS                       R13 R12 K36 ["PleaseWaitLabel"]
      229 GETUPVAL                         R13 3
      230 GETTABLEKS                       R13 R13 K24 ["createElement"]
      232 GETUPVAL                         R14 5
      233 DUPTABLE                         R15 K65 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "Text"}]
      234 GETIMPORT                        R16 K45 [Vector2.new]
      236 LOADK                            R17 K42 [0.5]
      237 LOADK                            R18 K42 [0.5]
      238 CALL                             R16 2 1
      239 SETTABLEKS                       R16 R15 K40 ["AnchorPoint"]
      241 GETTABLEKS                       R16 R1 K3 ["OnClose"]
      243 SETTABLEKS                       R16 R15 K63 ["OnClick"]
      245 GETIMPORT                        R16 K32 [UDim2.new]
      247 LOADK                            R17 K42 [0.5]
      248 LOADN                            R18 0
      249 LOADK                            R19 K66 [0.9]
      250 LOADN                            R20 0
      251 CALL                             R16 4 1
      252 SETTABLEKS                       R16 R15 K39 ["Position"]
      254 GETIMPORT                        R16 K32 [UDim2.new]
      256 LOADN                            R17 0
      257 LOADN                            R18 150
      258 LOADN                            R19 0
      259 LOADN                            R20 30
      260 CALL                             R16 4 1
      261 SETTABLEKS                       R16 R15 K26 ["Size"]
      263 LOADK                            R16 K67 ["Round"]
      264 SETTABLEKS                       R16 R15 K64 ["Style"]
      266 LOADK                            R18 K68 ["Button"]
      267 LOADK                            R19 K69 ["Cancel"]
      268 NAMECALL                         R16 R3 K21 ["getText"]
      270 CALL                             R16 3 1
      271 SETTABLEKS                       R16 R15 K47 ["Text"]
      273 CALL                             R13 2 1
      274 SETTABLEKS                       R13 R12 K37 ["CancelButton"]
      276 CALL                             R9 3 -1
      277 RETURN                           R9 -1

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
       42 GETTABLEKS                       R6 R3 K14 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K15 ["withContext"]
       46 GETTABLEKS                       R8 R3 K16 ["UI"]
       48 GETTABLEKS                       R9 R8 K17 ["Button"]
       50 GETTABLEKS                       R10 R8 K18 ["LoadingIndicator"]
       52 GETIMPORT                        R11 K4 [game]
       54 LOADK                            R13 K19 ["ContentProvider"]
       55 NAMECALL                         R11 R11 K6 ["GetService"]
       57 CALL                             R11 2 1
       58 GETIMPORT                        R12 K9 [require]
       60 GETTABLEKS                       R13 R0 K20 ["Src"]
       62 GETTABLEKS                       R13 R13 K21 ["Resources"]
       64 GETTABLEKS                       R13 R13 K22 ["Constants"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K9 [require]
       69 GETTABLEKS                       R14 R0 K20 ["Src"]
       71 GETTABLEKS                       R14 R14 K23 ["Actions"]
       73 GETTABLEKS                       R14 R14 K24 ["SetPublishInfo"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K9 [require]
       78 GETTABLEKS                       R15 R0 K20 ["Src"]
       80 GETTABLEKS                       R15 R15 K23 ["Actions"]
       82 GETTABLEKS                       R15 R15 K25 ["SetPublishInProgress"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K9 [require]
       87 GETTABLEKS                       R16 R0 K20 ["Src"]
       89 GETTABLEKS                       R16 R16 K23 ["Actions"]
       91 GETTABLEKS                       R16 R16 K26 ["SetScreen"]
       93 CALL                             R15 1 1
       94 GETTABLEKS                       R16 R4 K27 ["PureComponent"]
       96 LOADK                            R18 K28 ["ScreenPublishInProgress"]
       97 NAMECALL                         R16 R16 K29 ["extend"]
       99 CALL                             R16 2 1
      100 GETIMPORT                        R17 K4 [game]
      102 LOADK                            R19 K30 ["StudioTeamCreateConflictRetryCount"]
      103 NAMECALL                         R17 R17 K31 ["GetFastInt"]
      105 CALL                             R17 2 1
      106 GETIMPORT                        R18 K4 [game]
      108 LOADK                            R20 K32 ["StudioTeamCreateConflictDelaySec"]
      109 NAMECALL                         R18 R18 K31 ["GetFastInt"]
      111 CALL                             R18 2 1
      112 LOADN                            R19 0
      113 DUPCLOSURE                       R20 K33 [PROTO_0]
      114 SETTABLEKS                       R20 R16 K34 ["init"]
      116 NEWCLOSURE                       R20 P1
      117 CAPTURE                          VAL R1
      118 CAPTURE                          REF R19
      119 CAPTURE                          VAL R17
      120 CAPTURE                          VAL R18
      121 SETTABLEKS                       R20 R16 K35 ["didMount"]
      123 DUPCLOSURE                       R20 K36 [PROTO_4]
      124 SETTABLEKS                       R20 R16 K37 ["willUnmount"]
      126 NEWCLOSURE                       R20 P3
      127 CAPTURE                          VAL R1
      128 CAPTURE                          REF R19
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R9
      133 SETTABLEKS                       R20 R16 K38 ["render"]
      135 MOVE                             R20 R7
      136 DUPTABLE                         R21 K41 [{"Stylizer", "Localization"}]
      137 GETTABLEKS                       R22 R6 K39 ["Stylizer"]
      139 SETTABLEKS                       R22 R21 K39 ["Stylizer"]
      141 GETTABLEKS                       R22 R6 K40 ["Localization"]
      143 SETTABLEKS                       R22 R21 K40 ["Localization"]
      145 CALL                             R20 1 1
      146 MOVE                             R21 R16
      147 CALL                             R20 1 1
      148 MOVE                             R16 R20
      149 DUPCLOSURE                       R20 K42 [PROTO_6]
      150 DUPCLOSURE                       R21 K43 [PROTO_10]
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R12
      155 GETTABLEKS                       R22 R5 K44 ["connect"]
      157 MOVE                             R23 R20
      158 MOVE                             R24 R21
      159 CALL                             R22 2 1
      160 MOVE                             R23 R16
      161 CALL                             R22 1 -1
      162 CLOSEUPVALS                      R19
      163 RETURN                           R22 -1
