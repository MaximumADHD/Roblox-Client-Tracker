PROTO_0:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R4 R4 K1 ["Y"]
        5 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R5 K1 ["Y"]
        9 SUB                              R3 R4 R5
       10 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [math.max]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 LOADN                            R2 0
        3 LOADN                            R4 0
        4 GETTABLEKS                       R6 R0 K3 ["AbsoluteCanvasSize"]
        6 GETTABLEKS                       R6 R6 K4 ["Y"]
        8 GETTABLEKS                       R7 R0 K5 ["AbsoluteSize"]
       10 GETTABLEKS                       R7 R7 K4 ["Y"]
       12 SUB                              R5 R6 R7
       13 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       15 GETIMPORT                        R3 K8 [math.max]
       17 CALL                             R3 2 1
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K9 ["CanvasPosition"]
       21 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETTABLEKS                       R3 R0 K0 ["threads"]
        4 GETTABLE                         R2 R3 R1
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETTABLEKS                       R3 R2 K1 ["messages"]
       10 RETURN                           R3 1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 MOVE                             R3 R0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K0 ["isDeleted"]
       11 JUMPIF                           R8 ; [+20]
       12 GETTABLEKS                       R8 R7 K1 ["role"]
       14 JUMPIFNOTEQKS                    R8 K2 ["assistant"] ; [+9]
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       19 GETTABLEKS                       R9 R1 K3 ["LayoutOrder"]
       21 JUMPIFNOTLT                      R9 R8 ; [+2]
       23 MOVE                             R1 R7
       24 JUMPIFNOT                        R2 ; [+6]
       25 GETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       27 GETTABLEKS                       R9 R2 K3 ["LayoutOrder"]
       29 JUMPIFNOTLT                      R9 R8 ; [+2]
       31 MOVE                             R2 R7
       32 FORGLOOP                         R3 2 ; [-24]
       34 JUMPIFNOT                        R1 ; [+10]
       35 JUMPIFNOT                        R2 ; [+9]
       36 GETTABLEKS                       R3 R1 K4 ["messageId"]
       38 GETTABLEKS                       R4 R2 K4 ["messageId"]
       40 JUMPIFNOTEQ                      R3 R4 ; [+4]
       42 GETTABLEKS                       R3 R1 K4 ["messageId"]
       44 RETURN                           R3 1
       45 LOADNIL                          R3
       46 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"MessagesLoadError"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["ChatHistory"]
        3 LOADK                            R4 K0 ["MessagesLoadError"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["MessagesLoadError"]
        9 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 LOADN                            R2 0
        7 LOADN                            R4 0
        8 GETTABLEKS                       R6 R0 K4 ["AbsoluteCanvasSize"]
       10 GETTABLEKS                       R6 R6 K5 ["Y"]
       12 GETTABLEKS                       R7 R0 K6 ["AbsoluteSize"]
       14 GETTABLEKS                       R7 R7 K5 ["Y"]
       16 SUB                              R5 R6 R7
       17 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       19 GETIMPORT                        R3 K9 [math.max]
       21 CALL                             R3 2 1
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K10 ["CanvasPosition"]
       25 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 DUPTABLE                         R1 K1 [{"scrollToBottom"}]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R2 R1 K0 ["scrollToBottom"]
        9 SETTABLEKS                       R1 R0 K2 ["current"]
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadOlderMessages"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R4 R4 K1 ["Y"]
        5 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R5 K1 ["Y"]
        9 SUB                              R3 R4 R5
       10 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [math.max]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R6 R0 K6 ["CanvasPosition"]
       18 GETTABLEKS                       R6 R6 K1 ["Y"]
       20 SUB                              R5 R6 R1
       21 FASTCALL1                        MATH_ABS R5 ; [+2]
       22 GETIMPORT                        R4 K8 [math.abs]
       24 CALL                             R4 1 1
       25 LOADN                            R5 1
       26 JUMPIFLE                         R4 R5 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 SETTABLEKS                       R3 R2 K9 ["current"]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K10 ["onCanvasPositionChanged"]
       35 MOVE                             R3 R0
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+21]
        4 GETIMPORT                        R1 K3 [Vector2.new]
        6 LOADN                            R2 0
        7 LOADN                            R4 0
        8 GETTABLEKS                       R6 R0 K4 ["AbsoluteCanvasSize"]
       10 GETTABLEKS                       R6 R6 K5 ["Y"]
       12 GETTABLEKS                       R7 R0 K6 ["AbsoluteSize"]
       14 GETTABLEKS                       R7 R7 K5 ["Y"]
       16 SUB                              R5 R6 R7
       17 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       19 GETIMPORT                        R3 K9 [math.max]
       21 CALL                             R3 2 1
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K10 ["CanvasPosition"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K11 ["onAbsoluteWindowSizeChanged"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+25]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 JUMPIFNOT                        R1 ; [+21]
        8 GETIMPORT                        R2 K3 [Vector2.new]
       10 LOADN                            R3 0
       11 LOADN                            R5 0
       12 GETTABLEKS                       R7 R1 K4 ["AbsoluteCanvasSize"]
       14 GETTABLEKS                       R7 R7 K5 ["Y"]
       16 GETTABLEKS                       R8 R1 K6 ["AbsoluteSize"]
       18 GETTABLEKS                       R8 R8 K5 ["Y"]
       20 SUB                              R6 R7 R8
       21 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       23 GETIMPORT                        R4 K9 [math.max]
       25 CALL                             R4 2 1
       26 CALL                             R2 2 1
       27 SETTABLEKS                       R2 R1 K10 ["CanvasPosition"]
       29 GETUPVAL                         R1 2
       30 GETTABLEKS                       R1 R1 K11 ["onAbsoluteContentSizeChanged"]
       32 MOVE                             R2 R0
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["threadId"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["useRef"]
       14 LOADNIL                          R5
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 3
       17 CALL                             R5 0 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R8 0 2
       26 MOVE                             R9 R3
       27 MOVE                             R10 R5
       28 SETLIST                          R8 R9 2 [1]
       30 CALL                             R6 2 0
       31 GETUPVAL                         R6 4
       32 MOVE                             R7 R1
       33 MOVE                             R8 R3
       34 CALL                             R6 2 0
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K0 ["useContext"]
       38 GETUPVAL                         R7 5
       39 GETTABLEKS                       R7 R7 K1 ["Context"]
       41 CALL                             R6 1 1
       42 GETUPVAL                         R7 6
       43 DUPTABLE                         R8 K6 [{"setInputEnabled"}]
       44 GETUPVAL                         R9 7
       45 MOVE                             R10 R6
       46 CALL                             R9 1 1
       47 SETTABLEKS                       R9 R8 K5 ["setInputEnabled"]
       49 CALL                             R7 1 1
       50 GETUPVAL                         R8 8
       51 CALL                             R8 0 1
       52 DUPTABLE                         R9 K8 [{"UIPadding"}]
       53 GETUPVAL                         R10 9
       54 LOADK                            R11 K7 ["UIPadding"]
       55 DUPTABLE                         R12 K13 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       56 GETIMPORT                        R13 K16 [UDim.new]
       58 LOADN                            R14 0
       59 LOADN                            R15 20
       60 CALL                             R13 2 1
       61 SETTABLEKS                       R13 R12 K9 ["PaddingTop"]
       63 GETIMPORT                        R13 K16 [UDim.new]
       65 LOADN                            R14 0
       66 LOADN                            R15 20
       67 CALL                             R13 2 1
       68 SETTABLEKS                       R13 R12 K10 ["PaddingBottom"]
       70 GETIMPORT                        R13 K16 [UDim.new]
       72 LOADN                            R14 0
       73 LOADN                            R15 20
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K11 ["PaddingLeft"]
       77 GETIMPORT                        R13 K16 [UDim.new]
       79 LOADN                            R14 0
       80 LOADN                            R15 20
       81 CALL                             R13 2 1
       82 SETTABLEKS                       R13 R12 K12 ["PaddingRight"]
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K7 ["UIPadding"]
       87 MOVE                             R11 R3
       88 JUMPIFNOT                        R11 ; [+3]
       89 GETTABLEKS                       R12 R1 K17 ["threads"]
       91 GETTABLE                         R11 R12 R3
       92 JUMPIF                           R11 ; [+2]
       93 LOADNIL                          R10
       94 JUMP                             ; [+2]
       95 GETTABLEKS                       R10 R11 K18 ["messages"]
       97 LOADN                            R11 0
       98 JUMPIFNOT                        R10 ; [+69]
       99 GETUPVAL                         R12 10
      100 MOVE                             R13 R10
      101 CALL                             R12 1 1
      102 MOVE                             R13 R10
      103 LOADNIL                          R14
      104 LOADNIL                          R15
      105 FORGPREP                         R13
      106 GETTABLEKS                       R18 R17 K19 ["hidden"]
      108 JUMPIF                           R18 ; [+13]
      109 GETTABLEKS                       R18 R17 K20 ["isDeleted"]
      111 JUMPIF                           R18 ; [+10]
      112 GETTABLEKS                       R21 R17 K22 ["LayoutOrder"]
      114 ORK                              R20 R21 K21 [0]
      115 FASTCALL2                        MATH_MIN R11 R20 ; [+4]
      117 MOVE                             R19 R11
      118 GETIMPORT                        R18 K25 [math.min]
      120 CALL                             R18 2 1
      121 MOVE                             R11 R18
      122 FORGLOOP                         R13 2 ; [-17]
      124 MOVE                             R13 R10
      125 LOADNIL                          R14
      126 LOADNIL                          R15
      127 FORGPREP                         R13
      128 GETTABLEKS                       R18 R17 K19 ["hidden"]
      130 JUMPIF                           R18 ; [+35]
      131 GETTABLEKS                       R18 R17 K20 ["isDeleted"]
      133 JUMPIF                           R18 ; [+32]
      134 GETTABLEKS                       R19 R17 K22 ["LayoutOrder"]
      136 ORK                              R18 R19 K21 [0]
      137 GETUPVAL                         R19 11
      138 GETTABLEKS                       R19 R19 K26 ["Dictionary"]
      140 GETTABLEKS                       R19 R19 K27 ["join"]
      142 MOVE                             R20 R17
      143 DUPTABLE                         R21 K31 [{"retryMessage", "sendMessage", "isLatestAssistantAndMostRecent"}]
      144 SETTABLEKS                       R8 R21 K28 ["retryMessage"]
      146 SETTABLEKS                       R7 R21 K29 ["sendMessage"]
      148 JUMPIFEQ                         R16 R12 ; [+2]
      150 LOADB                            R22 0 +1
      151 LOADB                            R22 1
      152 SETTABLEKS                       R22 R21 K30 ["isLatestAssistantAndMostRecent"]
      154 CALL                             R19 2 1
      155 GETIMPORT                        R20 K34 [string.format]
      157 LOADK                            R21 K35 ["Message-%04i-%s"]
      158 MOVE                             R22 R18
      159 MOVE                             R23 R16
      160 CALL                             R20 3 1
      161 GETUPVAL                         R21 9
      162 GETUPVAL                         R22 12
      163 MOVE                             R23 R19
      164 CALL                             R21 2 1
      165 SETTABLE                         R21 R9 R20
      166 FORGLOOP                         R13 2 ; [-39]
      168 GETUPVAL                         R12 13
      169 GETTABLEKS                       R12 R12 K36 ["Hooks"]
      171 GETTABLEKS                       R12 R12 K37 ["useTokens"]
      173 CALL                             R12 0 1
      174 GETUPVAL                         R13 1
      175 GETTABLEKS                       R13 R13 K38 ["useMemo"]
      177 DUPCLOSURE                       R14 K39 [PROTO_5]
      178 CAPTURE                          UPVAL U14
      179 NEWTABLE                         R15 0 1
      181 GETUPVAL                         R16 14
      182 GETTABLEKS                       R16 R16 K40 ["locale"]
      184 SETLIST                          R15 R16 1 [1]
      186 CALL                             R13 2 1
      187 GETTABLEKS                       R14 R0 K41 ["chatHistoryInterfaceRef"]
      189 GETUPVAL                         R15 1
      190 GETTABLEKS                       R15 R15 K4 ["useEffect"]
      192 NEWCLOSURE                       R16 P2
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R4
      195 NEWTABLE                         R17 0 1
      197 MOVE                             R18 R14
      198 SETLIST                          R17 R18 1 [1]
      200 CALL                             R15 2 0
      201 GETUPVAL                         R15 15
      202 CALL                             R15 0 1
      203 GETUPVAL                         R16 16
      204 CALL                             R16 0 1
      205 JUMPIFNOT                        R16 ; [+3]
      206 GETTABLEKS                       R17 R16 K42 ["messagePageState"]
      208 JUMP                             ; [+1]
      209 LOADNIL                          R17
      210 JUMPIFNOT                        R16 ; [+3]
      211 GETTABLEKS                       R18 R16 K43 ["messageLoadState"]
      213 JUMP                             ; [+1]
      214 LOADNIL                          R18
      215 GETUPVAL                         R19 17
      216 GETTABLEKS                       R19 R19 K44 ["PersistenceLoadStates"]
      218 GETTABLEKS                       R19 R19 K45 ["Loading"]
      220 JUMPIFNOTEQ                      R18 R19 ; [+27]
      222 GETUPVAL                         R19 9
      223 GETUPVAL                         R20 18
      224 DUPTABLE                         R21 K48 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      225 SUBK                             R22 R11 K49 [1]
      226 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      228 DUPTABLE                         R22 K50 [{"Loading"}]
      229 GETUPVAL                         R23 9
      230 GETUPVAL                         R24 19
      231 DUPTABLE                         R25 K52 [{"size"}]
      232 GETUPVAL                         R26 13
      233 GETTABLEKS                       R26 R26 K53 ["Enums"]
      235 GETTABLEKS                       R26 R26 K54 ["IconSize"]
      237 GETTABLEKS                       R26 R26 K55 ["Small"]
      239 SETTABLEKS                       R26 R25 K51 ["size"]
      241 CALL                             R23 2 1
      242 SETTABLEKS                       R23 R22 K45 ["Loading"]
      244 CALL                             R19 3 1
      245 SETTABLEKS                       R19 R9 K56 ["MessagePersistenceInfo"]
      247 JUMP                             ; [+67]
      248 GETUPVAL                         R19 17
      249 GETTABLEKS                       R19 R19 K44 ["PersistenceLoadStates"]
      251 GETTABLEKS                       R19 R19 K57 ["Error"]
      253 JUMPIFNOTEQ                      R18 R19 ; [+61]
      255 GETUPVAL                         R19 9
      256 GETUPVAL                         R20 18
      257 DUPTABLE                         R21 K48 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      258 SUBK                             R22 R11 K49 [1]
      259 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      261 DUPTABLE                         R22 K60 [{"Icon", "Text"}]
      262 GETUPVAL                         R23 9
      263 GETUPVAL                         R24 20
      264 DUPTABLE                         R25 K63 [{"name", "size", "style", "LayoutOrder"}]
      265 GETUPVAL                         R26 13
      266 GETTABLEKS                       R26 R26 K53 ["Enums"]
      268 GETTABLEKS                       R26 R26 K64 ["IconName"]
      270 GETTABLEKS                       R26 R26 K65 ["TriangleExclamation"]
      272 SETTABLEKS                       R26 R25 K61 ["name"]
      274 GETUPVAL                         R26 13
      275 GETTABLEKS                       R26 R26 K53 ["Enums"]
      277 GETTABLEKS                       R26 R26 K54 ["IconSize"]
      279 GETTABLEKS                       R26 R26 K66 ["Medium"]
      281 SETTABLEKS                       R26 R25 K51 ["size"]
      283 GETTABLEKS                       R26 R12 K67 ["Color"]
      285 GETTABLEKS                       R26 R26 K68 ["System"]
      287 GETTABLEKS                       R26 R26 K69 ["Warning"]
      289 SETTABLEKS                       R26 R25 K62 ["style"]
      291 MOVE                             R26 R15
      292 CALL                             R26 0 1
      293 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      295 CALL                             R23 2 1
      296 SETTABLEKS                       R23 R22 K58 ["Icon"]
      298 GETUPVAL                         R23 9
      299 GETUPVAL                         R24 21
      300 DUPTABLE                         R25 K71 [{["tag"] = "size-0-full auto-x text-label-medium text-align-x-center text-align-y-center text-truncate-split content-system-warning", ["Text"], ["LayoutOrder"]}]
      301 GETTABLEKS                       R26 R13 K72 ["MessagesLoadError"]
      303 SETTABLEKS                       R26 R25 K59 ["Text"]
      305 MOVE                             R26 R15
      306 CALL                             R26 0 1
      307 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      309 CALL                             R23 2 1
      310 SETTABLEKS                       R23 R22 K59 ["Text"]
      312 CALL                             R19 3 1
      313 SETTABLEKS                       R19 R9 K56 ["MessagePersistenceInfo"]
      315 GETUPVAL                         R19 22
      316 DUPTABLE                         R20 K79 [{"scrollingFrameRef", "pageState", "loadState", "onLoadMore", "triggerDistance", "resetKey"}]
      317 SETTABLEKS                       R4 R20 K73 ["scrollingFrameRef"]
      319 SETTABLEKS                       R17 R20 K74 ["pageState"]
      321 SETTABLEKS                       R18 R20 K75 ["loadState"]
      323 GETUPVAL                         R21 1
      324 GETTABLEKS                       R21 R21 K80 ["useCallback"]
      326 NEWCLOSURE                       R22 P3
      327 CAPTURE                          UPVAL U23
      328 CAPTURE                          VAL R17
      329 CAPTURE                          VAL R3
      330 NEWTABLE                         R23 0 2
      332 MOVE                             R24 R17
      333 MOVE                             R25 R3
      334 SETLIST                          R23 R24 2 [1]
      336 CALL                             R21 2 1
      337 SETTABLEKS                       R21 R20 K76 ["onLoadMore"]
      339 GETUPVAL                         R21 24
      340 GETTABLEKS                       R21 R21 K81 ["MESSAGES_LOAD_TRIGGER_DISTANCE"]
      342 SETTABLEKS                       R21 R20 K77 ["triggerDistance"]
      344 SETTABLEKS                       R3 R20 K78 ["resetKey"]
      346 CALL                             R19 1 1
      347 GETUPVAL                         R20 1
      348 GETTABLEKS                       R20 R20 K3 ["useRef"]
      350 LOADB                            R21 1
      351 CALL                             R20 1 1
      352 GETUPVAL                         R21 1
      353 GETTABLEKS                       R21 R21 K3 ["useRef"]
      355 MOVE                             R22 R3
      356 CALL                             R21 1 1
      357 GETTABLEKS                       R22 R21 K82 ["current"]
      359 JUMPIFEQ                         R22 R3 ; [+6]
      361 SETTABLEKS                       R3 R21 K82 ["current"]
      363 LOADB                            R22 1
      364 SETTABLEKS                       R22 R20 K82 ["current"]
      366 GETUPVAL                         R22 1
      367 GETTABLEKS                       R22 R22 K80 ["useCallback"]
      369 NEWCLOSURE                       R23 P4
      370 CAPTURE                          VAL R20
      371 CAPTURE                          VAL R19
      372 NEWTABLE                         R24 0 1
      374 GETTABLEKS                       R25 R19 K83 ["onCanvasPositionChanged"]
      376 SETLIST                          R24 R25 1 [1]
      378 CALL                             R22 2 1
      379 GETUPVAL                         R23 1
      380 GETTABLEKS                       R23 R23 K80 ["useCallback"]
      382 NEWCLOSURE                       R24 P5
      383 CAPTURE                          VAL R20
      384 CAPTURE                          VAL R19
      385 NEWTABLE                         R25 0 1
      387 GETTABLEKS                       R26 R19 K84 ["onAbsoluteWindowSizeChanged"]
      389 SETLIST                          R25 R26 1 [1]
      391 CALL                             R23 2 1
      392 GETUPVAL                         R24 1
      393 GETTABLEKS                       R24 R24 K80 ["useCallback"]
      395 NEWCLOSURE                       R25 P6
      396 CAPTURE                          VAL R20
      397 CAPTURE                          VAL R4
      398 CAPTURE                          VAL R19
      399 NEWTABLE                         R26 0 1
      401 GETTABLEKS                       R27 R19 K85 ["onAbsoluteContentSizeChanged"]
      403 SETLIST                          R26 R27 1 [1]
      405 CALL                             R24 2 1
      406 GETUPVAL                         R25 9
      407 LOADK                            R26 K86 ["UIListLayout"]
      408 NEWTABLE                         R27 8 0
      410 GETIMPORT                        R28 K90 [Enum.FillDirection.Vertical]
      412 SETTABLEKS                       R28 R27 K88 ["FillDirection"]
      414 GETIMPORT                        R28 K92 [Enum.SortOrder.LayoutOrder]
      416 SETTABLEKS                       R28 R27 K91 ["SortOrder"]
      418 GETIMPORT                        R28 K16 [UDim.new]
      420 LOADN                            R29 0
      421 LOADN                            R30 12
      422 CALL                             R28 2 1
      423 SETTABLEKS                       R28 R27 K93 ["Padding"]
      425 GETTABLEKS                       R28 R19 K94 ["layoutRef"]
      427 SETTABLEKS                       R28 R27 K95 ["ref"]
      429 GETUPVAL                         R28 1
      430 GETTABLEKS                       R28 R28 K96 ["Change"]
      432 GETTABLEKS                       R28 R28 K97 ["AbsoluteContentSize"]
      434 SETTABLE                         R24 R27 R28
      435 CALL                             R25 2 1
      436 SETTABLEKS                       R25 R9 K98 ["ListLayout"]
      438 GETUPVAL                         R25 9
      439 GETUPVAL                         R26 25
      440 DUPTABLE                         R27 K101 [{["tag"] = "size-full-full", ["scroll"], ["scrollingFrameRef"], ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"]}]
      441 DUPTABLE                         R28 K105 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      442 GETIMPORT                        R29 K108 [Enum.AutomaticSize.Y]
      444 SETTABLEKS                       R29 R28 K102 ["AutomaticCanvasSize"]
      446 GETIMPORT                        R29 K111 [UDim2.fromScale]
      448 LOADN                            R30 1
      449 LOADN                            R31 0
      450 CALL                             R29 2 1
      451 SETTABLEKS                       R29 R28 K103 ["CanvasSize"]
      453 GETIMPORT                        R29 K112 [Enum.ScrollingDirection.Y]
      455 SETTABLEKS                       R29 R28 K104 ["ScrollingDirection"]
      457 SETTABLEKS                       R28 R27 K100 ["scroll"]
      459 SETTABLEKS                       R4 R27 K73 ["scrollingFrameRef"]
      461 SETTABLEKS                       R22 R27 K83 ["onCanvasPositionChanged"]
      463 SETTABLEKS                       R23 R27 K84 ["onAbsoluteWindowSizeChanged"]
      465 MOVE                             R28 R9
      466 CALL                             R25 3 -1
      467 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K12 ["InputStateContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["MessageWidget"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["Persistence"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K7 ["Parent"]
       53 GETTABLEKS                       R8 R8 K16 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K7 ["Parent"]
       60 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K10 ["Components"]
       67 GETTABLEKS                       R10 R10 K11 ["Contexts"]
       69 GETTABLEKS                       R10 R10 K18 ["ThreadIdContext"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K19 ["Resources"]
       76 GETTABLEKS                       R11 R11 K20 ["Localization"]
       78 GETTABLEKS                       R11 R11 K21 ["Translator"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K22 ["Types"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K14 ["Util"]
       90 GETTABLEKS                       R13 R13 K23 ["getToggleGenerationInputFunc"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K24 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K25 ["useAddThread"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K24 ["Hooks"]
      104 GETTABLEKS                       R15 R15 K26 ["useConversation"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K24 ["Hooks"]
      111 GETTABLEKS                       R16 R16 K27 ["useCurrentThread"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K24 ["Hooks"]
      118 GETTABLEKS                       R17 R17 K28 ["useRetryMessage"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETTABLEKS                       R18 R0 K24 ["Hooks"]
      125 GETTABLEKS                       R18 R18 K29 ["useSendMessage"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R19 R0 K24 ["Hooks"]
      132 GETTABLEKS                       R19 R19 K30 ["useUpperScrollEdge"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K5 [require]
      137 GETTABLEKS                       R20 R0 K24 ["Hooks"]
      139 GETTABLEKS                       R20 R20 K31 ["useWelcomeMessage"]
      141 CALL                             R19 1 1
      142 GETTABLEKS                       R20 R3 K32 ["Icon"]
      144 GETTABLEKS                       R21 R3 K33 ["Loading"]
      146 GETTABLEKS                       R22 R3 K34 ["ScrollView"]
      148 GETTABLEKS                       R23 R3 K35 ["Text"]
      150 GETTABLEKS                       R24 R3 K36 ["View"]
      152 GETTABLEKS                       R25 R7 K37 ["createElement"]
      154 GETTABLEKS                       R26 R8 K38 ["createNextOrder"]
      156 DUPCLOSURE                       R27 K39 [PROTO_0]
      157 DUPCLOSURE                       R28 K40 [PROTO_1]
      158 DUPCLOSURE                       R29 K41 [PROTO_2]
      159 DUPCLOSURE                       R30 K42 [PROTO_3]
      160 DUPCLOSURE                       R31 K43 [PROTO_12]
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R25
      171 CAPTURE                          VAL R30
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R26
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R22
      187 RETURN                           R31 1
