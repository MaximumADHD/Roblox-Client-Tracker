PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K1 ["finishedConnection"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["isMounted"]
       10 GETIMPORT                        R1 K5 [string.format]
       12 LOADK                            R2 K6 ["rbxthumb://type=Asset&id=%i&w=%i&h=%i"]
       13 GETTABLEKS                       R4 R0 K7 ["props"]
       15 GETTABLEKS                       R3 R4 K8 ["Id"]
       17 LOADN                            R4 150
       18 LOADN                            R5 150
       19 CALL                             R1 4 1
       20 SETTABLEKS                       R1 R0 K9 ["thumbnailUrl"]
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isMounted"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K2 [{"assetFetchStatus"}]
        6 SETTABLEKS                       R1 R4 K1 ["assetFetchStatus"]
        8 NAMECALL                         R2 R2 K3 ["setState"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["thumbnailUrl"]
        5 SETLIST                          R0 R1 1 [1]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 GETUPVAL                         R2 1
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R2 K1 ["PreloadAsync"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+21]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["props"]
        4 GETTABLEKS                       R1 R2 K1 ["OpenPublishSuccessfulPage"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["props"]
        9 GETTABLEKS                       R2 R3 K2 ["Id"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K0 ["props"]
       14 GETTABLEKS                       R3 R4 K3 ["Name"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["props"]
       19 GETTABLEKS                       R4 R5 K4 ["ParentGameName"]
       21 CALL                             R1 3 0
       22 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETIMPORT                        R1 K2 [spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["GamePublishFinished"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          VAL R0
       14 NAMECALL                         R1 R1 K4 ["connect"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K5 ["finishedConnection"]
       19 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["finishedConnection"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K1 ["finishedConnection"]
        8 NAMECALL                         R1 R1 K2 ["disconnect"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+29]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKN                    R0 K0 [0] ; [+16]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K1 ["saveAll"]
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 4
       10 GETUPVAL                         R3 5
       11 LOADNIL                          R4
       12 GETUPVAL                         R6 6
       13 GETTABLEKS                       R5 R6 K2 ["IsPublish"]
       15 GETUPVAL                         R7 6
       16 GETTABLEKS                       R6 R7 K3 ["OwnedGroups"]
       18 CALL                             R0 6 0
       19 JUMP                             ; [+11]
       20 GETUPVAL                         R0 7
       21 GETUPVAL                         R2 1
       22 GETUPVAL                         R3 8
       23 LOADN                            R4 0
       24 GETUPVAL                         R6 6
       25 GETTABLEKS                       R5 R6 K2 ["IsPublish"]
       27 LOADNIL                          R6
       28 NAMECALL                         R0 R0 K4 ["publishAs"]
       30 CALL                             R0 6 0
       31 GETUPVAL                         R0 9
       32 LOADB                            R1 1
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R5 R1 K3 ["Id"]
        9 GETTABLEKS                       R6 R1 K4 ["Name"]
       11 GETTABLEKS                       R7 R1 K5 ["ParentGameId"]
       13 GETTABLEKS                       R8 R1 K6 ["Settings"]
       15 GETTABLEKS                       R9 R1 K7 ["IsPublishing"]
       17 GETTABLEKS                       R10 R1 K8 ["dispatchSetIsPublishing"]
       19 LOADNIL                          R11
       20 JUMPIFNOT                        R9 ; [+7]
       21 LOADK                            R14 K9 ["PublishFail"]
       22 LOADK                            R15 K10 ["Fail"]
       23 NAMECALL                         R12 R3 K11 ["getText"]
       25 CALL                             R12 3 1
       26 MOVE                             R11 R12
       27 JUMP                             ; [+6]
       28 LOADK                            R14 K9 ["PublishFail"]
       29 LOADK                            R15 K12 ["SaveFail"]
       30 NAMECALL                         R12 R3 K11 ["getText"]
       32 CALL                             R12 3 1
       33 MOVE                             R11 R12
       34 GETTABLEKS                       R13 R1 K13 ["Message"]
       36 JUMPIFNOTEQKNIL                  R13 ; [+2]
       38 LOADB                            R12 0 +1
       39 LOADB                            R12 1
       40 NEWCLOSURE                       R13 P0
       41 CAPTURE                          VAL R9
       42 CAPTURE                          VAL R7
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R10
       51 DUPTABLE                         R14 K16 [{"Icon", "Name", "Fail", "Retry"}]
       52 GETUPVAL                         R16 3
       53 GETTABLEKS                       R15 R16 K17 ["createElement"]
       55 LOADK                            R16 K18 ["ImageLabel"]
       56 DUPTABLE                         R17 K24 [{"Position", "AnchorPoint", "Size", "Image", "BorderSizePixel"}]
       57 GETIMPORT                        R18 K27 [UDim2.new]
       59 LOADK                            R19 K28 [0.5]
       60 LOADN                            R20 0
       61 LOADK                            R21 K29 [0.2]
       62 LOADN                            R22 0
       63 CALL                             R18 4 1
       64 SETTABLEKS                       R18 R17 K19 ["Position"]
       66 GETIMPORT                        R18 K31 [Vector2.new]
       68 LOADK                            R19 K28 [0.5]
       69 LOADK                            R20 K28 [0.5]
       70 CALL                             R18 2 1
       71 SETTABLEKS                       R18 R17 K20 ["AnchorPoint"]
       73 GETIMPORT                        R18 K27 [UDim2.new]
       75 LOADN                            R19 0
       76 LOADN                            R20 150
       77 LOADN                            R21 0
       78 LOADN                            R22 150
       79 CALL                             R18 4 1
       80 SETTABLEKS                       R18 R17 K21 ["Size"]
       82 GETTABLEKS                       R20 R0 K32 ["state"]
       84 GETTABLEKS                       R19 R20 K33 ["assetFetchStatus"]
       86 GETIMPORT                        R20 K37 [Enum.AssetFetchStatus.Success]
       88 JUMPIFNOTEQ                      R19 R20 ; [+4]
       90 GETTABLEKS                       R18 R0 K38 ["thumbnailUrl"]
       92 JUMPIF                           R18 ; [+4]
       93 GETTABLEKS                       R19 R2 K39 ["icons"]
       95 GETTABLEKS                       R18 R19 K40 ["thumbnailPlaceHolder"]
       97 SETTABLEKS                       R18 R17 K22 ["Image"]
       99 LOADN                            R18 0
      100 SETTABLEKS                       R18 R17 K23 ["BorderSizePixel"]
      102 CALL                             R15 2 1
      103 SETTABLEKS                       R15 R14 K14 ["Icon"]
      105 GETUPVAL                         R16 3
      106 GETTABLEKS                       R15 R16 K17 ["createElement"]
      108 LOADK                            R16 K41 ["TextLabel"]
      109 DUPTABLE                         R17 K48 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextColor3", "TextXAlignment", "Font"}]
      110 SETTABLEKS                       R6 R17 K42 ["Text"]
      112 GETIMPORT                        R18 K27 [UDim2.new]
      114 LOADK                            R19 K28 [0.5]
      115 LOADN                            R20 0
      116 LOADK                            R21 K49 [0.35]
      117 LOADN                            R22 0
      118 CALL                             R18 4 1
      119 SETTABLEKS                       R18 R17 K19 ["Position"]
      121 LOADN                            R18 20
      122 SETTABLEKS                       R18 R17 K43 ["TextSize"]
      124 LOADN                            R18 1
      125 SETTABLEKS                       R18 R17 K44 ["BackgroundTransparency"]
      127 GETTABLEKS                       R19 R2 K50 ["header"]
      129 GETTABLEKS                       R18 R19 K51 ["text"]
      131 SETTABLEKS                       R18 R17 K45 ["TextColor3"]
      133 GETIMPORT                        R18 K53 [Enum.TextXAlignment.Center]
      135 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      137 GETTABLEKS                       R19 R2 K50 ["header"]
      139 GETTABLEKS                       R18 R19 K54 ["font"]
      141 SETTABLEKS                       R18 R17 K47 ["Font"]
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K4 ["Name"]
      146 GETUPVAL                         R16 3
      147 GETTABLEKS                       R15 R16 K17 ["createElement"]
      149 LOADK                            R16 K41 ["TextLabel"]
      150 DUPTABLE                         R17 K55 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Font"}]
      151 SETTABLEKS                       R11 R17 K42 ["Text"]
      153 GETIMPORT                        R18 K27 [UDim2.new]
      155 LOADK                            R19 K28 [0.5]
      156 LOADN                            R20 0
      157 LOADK                            R21 K28 [0.5]
      158 LOADN                            R22 0
      159 CALL                             R18 4 1
      160 SETTABLEKS                       R18 R17 K19 ["Position"]
      162 LOADN                            R18 24
      163 SETTABLEKS                       R18 R17 K43 ["TextSize"]
      165 LOADN                            R18 1
      166 SETTABLEKS                       R18 R17 K44 ["BackgroundTransparency"]
      168 GETIMPORT                        R18 K53 [Enum.TextXAlignment.Center]
      170 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      172 GETTABLEKS                       R19 R2 K56 ["failText"]
      174 GETTABLEKS                       R18 R19 K51 ["text"]
      176 SETTABLEKS                       R18 R17 K45 ["TextColor3"]
      178 GETTABLEKS                       R19 R2 K56 ["failText"]
      180 GETTABLEKS                       R18 R19 K54 ["font"]
      182 SETTABLEKS                       R18 R17 K47 ["Font"]
      184 CALL                             R15 2 1
      185 SETTABLEKS                       R15 R14 K10 ["Fail"]
      187 GETUPVAL                         R16 3
      188 GETTABLEKS                       R15 R16 K17 ["createElement"]
      190 GETUPVAL                         R16 4
      191 DUPTABLE                         R17 K60 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "StyleModifier", "Text"}]
      192 GETIMPORT                        R18 K31 [Vector2.new]
      194 LOADK                            R19 K28 [0.5]
      195 LOADK                            R20 K28 [0.5]
      196 CALL                             R18 2 1
      197 SETTABLEKS                       R18 R17 K20 ["AnchorPoint"]
      199 SETTABLEKS                       R13 R17 K57 ["OnClick"]
      201 GETIMPORT                        R18 K27 [UDim2.new]
      203 LOADK                            R19 K28 [0.5]
      204 LOADN                            R20 0
      205 LOADK                            R21 K61 [0.8]
      206 LOADN                            R22 0
      207 CALL                             R18 4 1
      208 SETTABLEKS                       R18 R17 K19 ["Position"]
      210 GETIMPORT                        R18 K27 [UDim2.new]
      212 LOADN                            R19 0
      213 LOADN                            R20 150
      214 LOADN                            R21 0
      215 LOADN                            R22 40
      216 CALL                             R18 4 1
      217 SETTABLEKS                       R18 R17 K21 ["Size"]
      219 LOADK                            R18 K62 ["Round"]
      220 SETTABLEKS                       R18 R17 K58 ["Style"]
      222 JUMPIFNOT                        R9 ; [+4]
      223 GETUPVAL                         R19 5
      224 GETTABLEKS                       R18 R19 K63 ["Disabled"]
      226 JUMP                             ; [+1]
      227 LOADNIL                          R18
      228 SETTABLEKS                       R18 R17 K59 ["StyleModifier"]
      230 LOADK                            R20 K64 ["Button"]
      231 LOADK                            R21 K15 ["Retry"]
      232 NAMECALL                         R18 R3 K11 ["getText"]
      234 CALL                             R18 3 1
      235 SETTABLEKS                       R18 R17 K42 ["Text"]
      237 CALL                             R15 2 1
      238 SETTABLEKS                       R15 R14 K15 ["Retry"]
      240 GETUPVAL                         R16 3
      241 GETTABLEKS                       R15 R16 K17 ["createElement"]
      243 LOADK                            R16 K41 ["TextLabel"]
      244 DUPTABLE                         R17 K65 [{"Text", "TextSize", "Position", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Font"}]
      245 JUMPIFNOT                        R12 ; [+3]
      246 GETTABLEKS                       R18 R1 K13 ["Message"]
      248 JUMP                             ; [+1]
      249 LOADK                            R18 K66 [""]
      250 SETTABLEKS                       R18 R17 K42 ["Text"]
      252 LOADN                            R18 24
      253 SETTABLEKS                       R18 R17 K43 ["TextSize"]
      255 GETIMPORT                        R18 K27 [UDim2.new]
      257 LOADK                            R19 K28 [0.5]
      258 LOADN                            R20 0
      259 LOADK                            R21 K28 [0.5]
      260 LOADN                            R22 32
      261 CALL                             R18 4 1
      262 SETTABLEKS                       R18 R17 K19 ["Position"]
      264 LOADN                            R18 1
      265 SETTABLEKS                       R18 R17 K44 ["BackgroundTransparency"]
      267 GETIMPORT                        R18 K53 [Enum.TextXAlignment.Center]
      269 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      271 GETTABLEKS                       R19 R2 K56 ["failText"]
      273 GETTABLEKS                       R18 R19 K51 ["text"]
      275 SETTABLEKS                       R18 R17 K45 ["TextColor3"]
      277 GETTABLEKS                       R19 R2 K56 ["failText"]
      279 GETTABLEKS                       R18 R19 K54 ["font"]
      281 SETTABLEKS                       R18 R17 K47 ["Font"]
      283 CALL                             R15 2 1
      284 SETTABLEKS                       R15 R14 K13 ["Message"]
      286 GETUPVAL                         R16 3
      287 GETTABLEKS                       R15 R16 K17 ["createElement"]
      289 LOADK                            R16 K67 ["Frame"]
      290 DUPTABLE                         R17 K69 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
      291 GETIMPORT                        R18 K27 [UDim2.new]
      293 LOADN                            R19 1
      294 LOADN                            R20 0
      295 LOADN                            R21 1
      296 LOADN                            R22 0
      297 CALL                             R18 4 1
      298 SETTABLEKS                       R18 R17 K21 ["Size"]
      300 GETTABLEKS                       R18 R2 K70 ["backgroundColor"]
      302 SETTABLEKS                       R18 R17 K68 ["BackgroundColor3"]
      304 LOADN                            R18 0
      305 SETTABLEKS                       R18 R17 K23 ["BorderSizePixel"]
      307 MOVE                             R18 R14
      308 CALL                             R15 3 -1
      309 RETURN                           R15 -1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["PublishedPlace"]
        2 GETTABLEKS                       R2 R3 K1 ["publishInfo"]
        4 GETTABLEKS                       R5 R0 K2 ["GroupsHavePermission"]
        6 GETTABLEKS                       R4 R5 K3 ["groupInfo"]
        8 GETTABLEKS                       R3 R4 K4 ["ownedGroups"]
       10 DUPTABLE                         R4 K13 [{"Id", "Name", "ParentGameName", "ParentGameId", "Settings", "IsPublishing", "Message", "OwnedGroups"}]
       11 GETTABLEKS                       R5 R2 K14 ["id"]
       13 SETTABLEKS                       R5 R4 K5 ["Id"]
       15 GETTABLEKS                       R5 R2 K15 ["name"]
       17 SETTABLEKS                       R5 R4 K6 ["Name"]
       19 GETTABLEKS                       R5 R2 K16 ["parentGameName"]
       21 SETTABLEKS                       R5 R4 K7 ["ParentGameName"]
       23 GETTABLEKS                       R5 R2 K17 ["parentGameId"]
       25 SETTABLEKS                       R5 R4 K8 ["ParentGameId"]
       27 GETTABLEKS                       R5 R2 K18 ["settings"]
       29 SETTABLEKS                       R5 R4 K9 ["Settings"]
       31 GETTABLEKS                       R6 R0 K0 ["PublishedPlace"]
       33 GETTABLEKS                       R5 R6 K19 ["isPublishing"]
       35 SETTABLEKS                       R5 R4 K10 ["IsPublishing"]
       37 GETTABLEKS                       R5 R2 K20 ["message"]
       39 SETTABLEKS                       R5 R4 K11 ["Message"]
       41 SETTABLEKS                       R3 R4 K12 ["OwnedGroups"]
       43 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R5 K3 [{"id", "name", "parentGameName"}]
        3 SETTABLEKS                       R0 R5 K0 ["id"]
        5 SETTABLEKS                       R1 R5 K1 ["name"]
        7 SETTABLEKS                       R2 R5 K2 ["parentGameName"]
        9 CALL                             R4 1 -1
       10 CALL                             R3 -1 0
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K4 ["SCREENS"]
       16 GETTABLEKS                       R5 R6 K5 ["PUBLISH_SUCCESSFUL"]
       18 CALL                             R4 1 -1
       19 CALL                             R3 -1 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"OpenPublishSuccessfulPage", "dispatchSetIsPublishing"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 SETTABLEKS                       R2 R1 K0 ["OpenPublishSuccessfulPage"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 SETTABLEKS                       R2 R1 K1 ["dispatchSetIsPublishing"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["RobloxAPI"]
       36 GETTABLEKS                       R7 R6 K12 ["new"]
       38 CALL                             R7 0 1
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R11 R0 K13 ["Src"]
       43 GETTABLEKS                       R10 R11 K14 ["Actions"]
       45 GETTABLEKS                       R9 R10 K15 ["SetPublishInfo"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K4 [require]
       50 GETTABLEKS                       R12 R0 K13 ["Src"]
       52 GETTABLEKS                       R11 R12 K14 ["Actions"]
       54 GETTABLEKS                       R10 R11 K16 ["SetScreen"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K4 [require]
       59 GETTABLEKS                       R13 R0 K13 ["Src"]
       61 GETTABLEKS                       R12 R13 K14 ["Actions"]
       63 GETTABLEKS                       R11 R12 K17 ["SetIsPublishing"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K4 [require]
       68 GETTABLEKS                       R14 R0 K13 ["Src"]
       70 GETTABLEKS                       R13 R14 K18 ["Resources"]
       72 GETTABLEKS                       R12 R13 K19 ["Constants"]
       74 CALL                             R11 1 1
       75 GETTABLEKS                       R12 R3 K20 ["Util"]
       77 GETTABLEKS                       R13 R12 K21 ["StyleModifier"]
       79 GETTABLEKS                       R14 R3 K22 ["UI"]
       81 GETTABLEKS                       R15 R14 K23 ["Button"]
       83 GETIMPORT                        R16 K4 [require]
       85 GETTABLEKS                       R20 R0 K13 ["Src"]
       87 GETTABLEKS                       R19 R20 K24 ["Network"]
       89 GETTABLEKS                       R18 R19 K25 ["Requests"]
       91 GETTABLEKS                       R17 R18 K26 ["SettingsImpl"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K28 [game]
       96 LOADK                            R19 K29 ["StudioPublishService"]
       97 NAMECALL                         R17 R17 K30 ["GetService"]
       99 CALL                             R17 2 1
      100 GETIMPORT                        R18 K28 [game]
      102 LOADK                            R20 K31 ["ContentProvider"]
      103 NAMECALL                         R18 R18 K30 ["GetService"]
      105 CALL                             R18 2 1
      106 GETTABLEKS                       R19 R1 K32 ["PureComponent"]
      108 LOADK                            R21 K33 ["ScreenPublishFail"]
      109 NAMECALL                         R19 R19 K34 ["extend"]
      111 CALL                             R19 2 1
      112 DUPCLOSURE                       R20 K35 [PROTO_0]
      113 SETTABLEKS                       R20 R19 K36 ["init"]
      115 DUPCLOSURE                       R20 K37 [PROTO_4]
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R17
      118 SETTABLEKS                       R20 R19 K38 ["didMount"]
      120 DUPCLOSURE                       R20 K39 [PROTO_5]
      121 SETTABLEKS                       R20 R19 K40 ["willUnmount"]
      123 DUPCLOSURE                       R20 K41 [PROTO_7]
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R13
      130 SETTABLEKS                       R20 R19 K42 ["render"]
      132 MOVE                             R20 R5
      133 DUPTABLE                         R21 K46 [{"Stylizer", "Localization", "API"}]
      134 GETTABLEKS                       R22 R4 K43 ["Stylizer"]
      136 SETTABLEKS                       R22 R21 K43 ["Stylizer"]
      138 GETTABLEKS                       R22 R4 K44 ["Localization"]
      140 SETTABLEKS                       R22 R21 K44 ["Localization"]
      142 GETTABLEKS                       R22 R4 K45 ["API"]
      144 SETTABLEKS                       R22 R21 K45 ["API"]
      146 CALL                             R20 1 1
      147 MOVE                             R21 R19
      148 CALL                             R20 1 1
      149 MOVE                             R19 R20
      150 DUPCLOSURE                       R20 K47 [PROTO_8]
      151 DUPCLOSURE                       R21 K48 [PROTO_11]
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R10
      156 GETTABLEKS                       R22 R2 K49 ["connect"]
      158 MOVE                             R23 R20
      159 MOVE                             R24 R21
      160 CALL                             R22 2 1
      161 MOVE                             R23 R19
      162 CALL                             R22 1 -1
      163 RETURN                           R22 -1
