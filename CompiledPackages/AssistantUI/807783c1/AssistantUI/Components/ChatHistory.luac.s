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
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+7]
        4 MOVE                             R3 R1
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETTABLEKS                       R4 R0 K0 ["threads"]
        8 GETTABLE                         R3 R4 R1
        9 MOVE                             R2 R3
       10 JUMP                             ; [+4]
       11 MOVE                             R3 R1
       12 JUMPIFNOT                        R3 ; [+1]
       13 GETTABLE                         R3 R0 R1
       14 MOVE                             R2 R3
       15 JUMPIF                           R2 ; [+2]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R2 K1 ["messages"]
       20 RETURN                           R3 1

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
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"MessagesLoadError"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["ChatHistory"]
        3 LOADK                            R4 K0 ["MessagesLoadError"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["MessagesLoadError"]
        9 RETURN                           R0 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadOlderMessages"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["threadId"]
       11 GETUPVAL                         R5 3
       12 CALL                             R5 0 1
       13 JUMPIFNOT                        R5 ; [+6]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K3 ["useRef"]
       17 LOADNIL                          R5
       18 CALL                             R4 1 1
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R4 R0 K4 ["scrollingFrameRef"]
       22 GETUPVAL                         R5 3
       23 CALL                             R5 0 1
       24 JUMPIF                           R5 ; [+30]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K0 ["useContext"]
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K1 ["Context"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K5 ["sessionId"]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K3 ["useRef"]
       37 MOVE                             R8 R6
       38 CALL                             R7 1 1
       39 GETUPVAL                         R8 5
       40 CALL                             R8 0 1
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K6 ["useEffect"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R8
       48 NEWTABLE                         R11 0 2
       50 MOVE                             R12 R8
       51 MOVE                             R13 R6
       52 SETLIST                          R11 R12 2 [1]
       54 CALL                             R9 2 0
       55 GETUPVAL                         R5 6
       56 CALL                             R5 0 1
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       60 NEWCLOSURE                       R7 P1
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R3
       63 NEWTABLE                         R8 0 2
       65 MOVE                             R9 R3
       66 MOVE                             R10 R5
       67 SETLIST                          R8 R9 2 [1]
       69 CALL                             R6 2 0
       70 GETUPVAL                         R6 7
       71 MOVE                             R7 R1
       72 MOVE                             R8 R3
       73 CALL                             R6 2 0
       74 GETUPVAL                         R6 1
       75 GETTABLEKS                       R6 R6 K0 ["useContext"]
       77 GETUPVAL                         R7 8
       78 GETTABLEKS                       R7 R7 K1 ["Context"]
       80 CALL                             R6 1 1
       81 GETUPVAL                         R7 9
       82 DUPTABLE                         R8 K8 [{"setInputEnabled"}]
       83 GETUPVAL                         R9 10
       84 MOVE                             R10 R6
       85 CALL                             R9 1 1
       86 SETTABLEKS                       R9 R8 K7 ["setInputEnabled"]
       88 CALL                             R7 1 1
       89 GETUPVAL                         R8 11
       90 CALL                             R8 0 1
       91 DUPTABLE                         R9 K10 [{"UIPadding"}]
       92 GETUPVAL                         R10 12
       93 LOADK                            R11 K9 ["UIPadding"]
       94 DUPTABLE                         R12 K15 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       95 GETIMPORT                        R13 K18 [UDim.new]
       97 LOADN                            R14 0
       98 LOADN                            R15 20
       99 CALL                             R13 2 1
      100 SETTABLEKS                       R13 R12 K11 ["PaddingTop"]
      102 GETIMPORT                        R13 K18 [UDim.new]
      104 LOADN                            R14 0
      105 LOADN                            R15 20
      106 CALL                             R13 2 1
      107 SETTABLEKS                       R13 R12 K12 ["PaddingBottom"]
      109 GETIMPORT                        R13 K18 [UDim.new]
      111 LOADN                            R14 0
      112 LOADN                            R15 20
      113 CALL                             R13 2 1
      114 SETTABLEKS                       R13 R12 K13 ["PaddingLeft"]
      116 GETIMPORT                        R13 K18 [UDim.new]
      118 LOADN                            R14 0
      119 LOADN                            R15 20
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K14 ["PaddingRight"]
      123 CALL                             R10 2 1
      124 SETTABLEKS                       R10 R9 K9 ["UIPadding"]
      126 LOADNIL                          R11
      127 GETUPVAL                         R12 3
      128 CALL                             R12 0 1
      129 JUMPIFNOT                        R12 ; [+7]
      130 MOVE                             R12 R3
      131 JUMPIFNOT                        R12 ; [+3]
      132 GETTABLEKS                       R13 R1 K19 ["threads"]
      134 GETTABLE                         R12 R13 R3
      135 MOVE                             R11 R12
      136 JUMP                             ; [+4]
      137 MOVE                             R12 R3
      138 JUMPIFNOT                        R12 ; [+1]
      139 GETTABLE                         R12 R1 R3
      140 MOVE                             R11 R12
      141 JUMPIF                           R11 ; [+2]
      142 LOADNIL                          R10
      143 JUMP                             ; [+2]
      144 GETTABLEKS                       R10 R11 K20 ["messages"]
      146 LOADN                            R11 0
      147 JUMPIFNOT                        R10 ; [+74]
      148 GETUPVAL                         R12 13
      149 MOVE                             R13 R10
      150 CALL                             R12 1 1
      151 MOVE                             R13 R10
      152 LOADNIL                          R14
      153 LOADNIL                          R15
      154 FORGPREP                         R13
      155 GETTABLEKS                       R18 R17 K21 ["hidden"]
      157 JUMPIF                           R18 ; [+13]
      158 GETTABLEKS                       R18 R17 K22 ["isDeleted"]
      160 JUMPIF                           R18 ; [+10]
      161 GETTABLEKS                       R21 R17 K24 ["LayoutOrder"]
      163 ORK                              R20 R21 K23 [0]
      164 FASTCALL2                        MATH_MIN R11 R20 ; [+4]
      166 MOVE                             R19 R11
      167 GETIMPORT                        R18 K27 [math.min]
      169 CALL                             R18 2 1
      170 MOVE                             R11 R18
      171 FORGLOOP                         R13 2 ; [-17]
      173 MOVE                             R13 R10
      174 LOADNIL                          R14
      175 LOADNIL                          R15
      176 FORGPREP                         R13
      177 GETTABLEKS                       R18 R17 K21 ["hidden"]
      179 JUMPIF                           R18 ; [+40]
      180 GETTABLEKS                       R18 R17 K22 ["isDeleted"]
      182 JUMPIF                           R18 ; [+37]
      183 GETTABLEKS                       R19 R17 K24 ["LayoutOrder"]
      185 ORK                              R18 R19 K23 [0]
      186 GETUPVAL                         R19 14
      187 GETTABLEKS                       R19 R19 K28 ["Dictionary"]
      189 GETTABLEKS                       R19 R19 K29 ["join"]
      191 MOVE                             R20 R17
      192 DUPTABLE                         R21 K33 [{"retryMessage", "sendMessage", "isLatestAssistantAndMostRecent"}]
      193 SETTABLEKS                       R8 R21 K30 ["retryMessage"]
      195 SETTABLEKS                       R7 R21 K31 ["sendMessage"]
      197 JUMPIFEQ                         R16 R12 ; [+2]
      199 LOADB                            R22 0 +1
      200 LOADB                            R22 1
      201 SETTABLEKS                       R22 R21 K32 ["isLatestAssistantAndMostRecent"]
      203 CALL                             R19 2 1
      204 GETUPVAL                         R21 3
      205 CALL                             R21 0 1
      206 JUMPIFNOT                        R21 ; [+7]
      207 GETIMPORT                        R20 K36 [string.format]
      209 LOADK                            R21 K37 ["Message-%04i-%s"]
      210 MOVE                             R22 R18
      211 MOVE                             R23 R16
      212 CALL                             R20 3 1
      213 JUMP                             ; [+1]
      214 MOVE                             R20 R16
      215 GETUPVAL                         R21 12
      216 GETUPVAL                         R22 15
      217 MOVE                             R23 R19
      218 CALL                             R21 2 1
      219 SETTABLE                         R21 R9 R20
      220 FORGLOOP                         R13 2 ; [-44]
      222 LOADNIL                          R12
      223 LOADNIL                          R13
      224 GETUPVAL                         R14 3
      225 CALL                             R14 0 1
      226 JUMPIFNOT                        R14 ; [+281]
      227 GETUPVAL                         R14 16
      228 GETTABLEKS                       R14 R14 K38 ["Hooks"]
      230 GETTABLEKS                       R14 R14 K39 ["useTokens"]
      232 CALL                             R14 0 1
      233 GETUPVAL                         R15 1
      234 GETTABLEKS                       R15 R15 K40 ["useMemo"]
      236 DUPCLOSURE                       R16 K41 [PROTO_6]
      237 CAPTURE                          UPVAL U17
      238 NEWTABLE                         R17 0 1
      240 GETUPVAL                         R18 17
      241 GETTABLEKS                       R18 R18 K42 ["locale"]
      243 SETLIST                          R17 R18 1 [1]
      245 CALL                             R15 2 1
      246 GETTABLEKS                       R16 R0 K43 ["chatHistoryInterfaceRef"]
      248 GETUPVAL                         R17 1
      249 GETTABLEKS                       R17 R17 K6 ["useEffect"]
      251 NEWCLOSURE                       R18 P3
      252 CAPTURE                          VAL R16
      253 CAPTURE                          VAL R4
      254 NEWTABLE                         R19 0 1
      256 MOVE                             R20 R16
      257 SETLIST                          R19 R20 1 [1]
      259 CALL                             R17 2 0
      260 GETUPVAL                         R17 18
      261 CALL                             R17 0 1
      262 GETUPVAL                         R18 19
      263 CALL                             R18 0 1
      264 JUMPIFNOT                        R18 ; [+3]
      265 GETTABLEKS                       R19 R18 K44 ["messagePageState"]
      267 JUMP                             ; [+1]
      268 LOADNIL                          R19
      269 JUMPIFNOT                        R18 ; [+3]
      270 GETTABLEKS                       R20 R18 K45 ["messageLoadState"]
      272 JUMP                             ; [+1]
      273 LOADNIL                          R20
      274 GETUPVAL                         R21 20
      275 GETTABLEKS                       R21 R21 K46 ["PersistenceLoadStates"]
      277 GETTABLEKS                       R21 R21 K47 ["Loading"]
      279 JUMPIFNOTEQ                      R20 R21 ; [+30]
      281 GETUPVAL                         R21 12
      282 GETUPVAL                         R22 21
      283 DUPTABLE                         R23 K49 [{"tag", "LayoutOrder"}]
      284 LOADK                            R24 K50 ["row size-full-800 gap-small align-x-center align-y-center"]
      285 SETTABLEKS                       R24 R23 K48 ["tag"]
      287 SUBK                             R24 R11 K51 [1]
      288 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      290 DUPTABLE                         R24 K52 [{"Loading"}]
      291 GETUPVAL                         R25 12
      292 GETUPVAL                         R26 22
      293 DUPTABLE                         R27 K54 [{"size"}]
      294 GETUPVAL                         R28 16
      295 GETTABLEKS                       R28 R28 K55 ["Enums"]
      297 GETTABLEKS                       R28 R28 K56 ["IconSize"]
      299 GETTABLEKS                       R28 R28 K57 ["Small"]
      301 SETTABLEKS                       R28 R27 K53 ["size"]
      303 CALL                             R25 2 1
      304 SETTABLEKS                       R25 R24 K47 ["Loading"]
      306 CALL                             R21 3 1
      307 SETTABLEKS                       R21 R9 K58 ["MessagePersistenceInfo"]
      309 JUMP                             ; [+73]
      310 GETUPVAL                         R21 20
      311 GETTABLEKS                       R21 R21 K46 ["PersistenceLoadStates"]
      313 GETTABLEKS                       R21 R21 K59 ["Error"]
      315 JUMPIFNOTEQ                      R20 R21 ; [+67]
      317 GETUPVAL                         R21 12
      318 GETUPVAL                         R22 21
      319 DUPTABLE                         R23 K49 [{"tag", "LayoutOrder"}]
      320 LOADK                            R24 K50 ["row size-full-800 gap-small align-x-center align-y-center"]
      321 SETTABLEKS                       R24 R23 K48 ["tag"]
      323 SUBK                             R24 R11 K51 [1]
      324 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      326 DUPTABLE                         R24 K62 [{"Icon", "Text"}]
      327 GETUPVAL                         R25 12
      328 GETUPVAL                         R26 23
      329 DUPTABLE                         R27 K65 [{"name", "size", "style", "LayoutOrder"}]
      330 GETUPVAL                         R28 16
      331 GETTABLEKS                       R28 R28 K55 ["Enums"]
      333 GETTABLEKS                       R28 R28 K66 ["IconName"]
      335 GETTABLEKS                       R28 R28 K67 ["TriangleExclamation"]
      337 SETTABLEKS                       R28 R27 K63 ["name"]
      339 GETUPVAL                         R28 16
      340 GETTABLEKS                       R28 R28 K55 ["Enums"]
      342 GETTABLEKS                       R28 R28 K56 ["IconSize"]
      344 GETTABLEKS                       R28 R28 K68 ["Medium"]
      346 SETTABLEKS                       R28 R27 K53 ["size"]
      348 GETTABLEKS                       R28 R14 K69 ["Color"]
      350 GETTABLEKS                       R28 R28 K70 ["System"]
      352 GETTABLEKS                       R28 R28 K71 ["Warning"]
      354 SETTABLEKS                       R28 R27 K64 ["style"]
      356 MOVE                             R28 R17
      357 CALL                             R28 0 1
      358 SETTABLEKS                       R28 R27 K24 ["LayoutOrder"]
      360 CALL                             R25 2 1
      361 SETTABLEKS                       R25 R24 K60 ["Icon"]
      363 GETUPVAL                         R25 12
      364 GETUPVAL                         R26 24
      365 DUPTABLE                         R27 K72 [{"tag", "Text", "LayoutOrder"}]
      366 LOADK                            R28 K73 ["size-0-full auto-x content-system-warning text-label-medium text-align-x-center text-align-y-center text-truncate-split"]
      367 SETTABLEKS                       R28 R27 K48 ["tag"]
      369 GETTABLEKS                       R28 R15 K74 ["MessagesLoadError"]
      371 SETTABLEKS                       R28 R27 K61 ["Text"]
      373 MOVE                             R28 R17
      374 CALL                             R28 0 1
      375 SETTABLEKS                       R28 R27 K24 ["LayoutOrder"]
      377 CALL                             R25 2 1
      378 SETTABLEKS                       R25 R24 K61 ["Text"]
      380 CALL                             R21 3 1
      381 SETTABLEKS                       R21 R9 K58 ["MessagePersistenceInfo"]
      383 GETUPVAL                         R21 25
      384 DUPTABLE                         R22 K80 [{"scrollingFrameRef", "pageState", "loadState", "onLoadMore", "triggerDistance", "resetKey"}]
      385 SETTABLEKS                       R4 R22 K4 ["scrollingFrameRef"]
      387 SETTABLEKS                       R19 R22 K75 ["pageState"]
      389 SETTABLEKS                       R20 R22 K76 ["loadState"]
      391 GETUPVAL                         R23 1
      392 GETTABLEKS                       R23 R23 K81 ["useCallback"]
      394 NEWCLOSURE                       R24 P4
      395 CAPTURE                          UPVAL U26
      396 CAPTURE                          VAL R19
      397 CAPTURE                          VAL R3
      398 NEWTABLE                         R25 0 2
      400 MOVE                             R26 R19
      401 MOVE                             R27 R3
      402 SETLIST                          R25 R26 2 [1]
      404 CALL                             R23 2 1
      405 SETTABLEKS                       R23 R22 K77 ["onLoadMore"]
      407 GETUPVAL                         R23 27
      408 GETTABLEKS                       R23 R23 K82 ["MESSAGES_LOAD_TRIGGER_DISTANCE"]
      410 SETTABLEKS                       R23 R22 K78 ["triggerDistance"]
      412 SETTABLEKS                       R3 R22 K79 ["resetKey"]
      414 CALL                             R21 1 1
      415 GETUPVAL                         R22 1
      416 GETTABLEKS                       R22 R22 K3 ["useRef"]
      418 LOADB                            R23 1
      419 CALL                             R22 1 1
      420 GETUPVAL                         R23 1
      421 GETTABLEKS                       R23 R23 K3 ["useRef"]
      423 MOVE                             R24 R3
      424 CALL                             R23 1 1
      425 GETTABLEKS                       R24 R23 K83 ["current"]
      427 JUMPIFEQ                         R24 R3 ; [+6]
      429 SETTABLEKS                       R3 R23 K83 ["current"]
      431 LOADB                            R24 1
      432 SETTABLEKS                       R24 R22 K83 ["current"]
      434 GETUPVAL                         R24 1
      435 GETTABLEKS                       R24 R24 K81 ["useCallback"]
      437 NEWCLOSURE                       R25 P5
      438 CAPTURE                          VAL R22
      439 CAPTURE                          VAL R21
      440 NEWTABLE                         R26 0 1
      442 GETTABLEKS                       R27 R21 K84 ["onCanvasPositionChanged"]
      444 SETLIST                          R26 R27 1 [1]
      446 CALL                             R24 2 1
      447 MOVE                             R12 R24
      448 GETUPVAL                         R24 1
      449 GETTABLEKS                       R24 R24 K81 ["useCallback"]
      451 NEWCLOSURE                       R25 P6
      452 CAPTURE                          VAL R22
      453 CAPTURE                          VAL R21
      454 NEWTABLE                         R26 0 1
      456 GETTABLEKS                       R27 R21 K85 ["onAbsoluteWindowSizeChanged"]
      458 SETLIST                          R26 R27 1 [1]
      460 CALL                             R24 2 1
      461 MOVE                             R13 R24
      462 GETUPVAL                         R24 1
      463 GETTABLEKS                       R24 R24 K81 ["useCallback"]
      465 NEWCLOSURE                       R25 P7
      466 CAPTURE                          VAL R22
      467 CAPTURE                          VAL R4
      468 CAPTURE                          VAL R21
      469 NEWTABLE                         R26 0 1
      471 GETTABLEKS                       R27 R21 K86 ["onAbsoluteContentSizeChanged"]
      473 SETLIST                          R26 R27 1 [1]
      475 CALL                             R24 2 1
      476 GETUPVAL                         R25 12
      477 LOADK                            R26 K87 ["UIListLayout"]
      478 NEWTABLE                         R27 8 0
      480 GETIMPORT                        R28 K91 [Enum.FillDirection.Vertical]
      482 SETTABLEKS                       R28 R27 K89 ["FillDirection"]
      484 GETIMPORT                        R28 K93 [Enum.SortOrder.LayoutOrder]
      486 SETTABLEKS                       R28 R27 K92 ["SortOrder"]
      488 GETIMPORT                        R28 K18 [UDim.new]
      490 LOADN                            R29 0
      491 LOADN                            R30 12
      492 CALL                             R28 2 1
      493 SETTABLEKS                       R28 R27 K94 ["Padding"]
      495 GETTABLEKS                       R28 R21 K95 ["layoutRef"]
      497 SETTABLEKS                       R28 R27 K96 ["ref"]
      499 GETUPVAL                         R28 1
      500 GETTABLEKS                       R28 R28 K97 ["Change"]
      502 GETTABLEKS                       R28 R28 K98 ["AbsoluteContentSize"]
      504 SETTABLE                         R24 R27 R28
      505 CALL                             R25 2 1
      506 SETTABLEKS                       R25 R9 K99 ["ListLayout"]
      508 GETUPVAL                         R14 12
      509 GETUPVAL                         R15 28
      510 DUPTABLE                         R16 K103 [{"tag", "layout", "scroll", "scrollingFrameRef", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "onAbsoluteWindowSizeChanged"}]
      511 LOADK                            R17 K104 ["size-full-full"]
      512 SETTABLEKS                       R17 R16 K48 ["tag"]
      514 GETUPVAL                         R18 3
      515 CALL                             R18 0 1
      516 JUMPIFNOT                        R18 ; [+2]
      517 LOADNIL                          R17
      518 JUMP                             ; [+16]
      519 DUPTABLE                         R17 K105 [{"FillDirection", "SortOrder", "Padding"}]
      520 GETIMPORT                        R18 K91 [Enum.FillDirection.Vertical]
      522 SETTABLEKS                       R18 R17 K89 ["FillDirection"]
      524 GETIMPORT                        R18 K93 [Enum.SortOrder.LayoutOrder]
      526 SETTABLEKS                       R18 R17 K92 ["SortOrder"]
      528 GETIMPORT                        R18 K18 [UDim.new]
      530 LOADN                            R19 0
      531 LOADN                            R20 24
      532 CALL                             R18 2 1
      533 SETTABLEKS                       R18 R17 K94 ["Padding"]
      535 SETTABLEKS                       R17 R16 K100 ["layout"]
      537 DUPTABLE                         R17 K109 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      538 GETIMPORT                        R18 K112 [Enum.AutomaticSize.Y]
      540 SETTABLEKS                       R18 R17 K106 ["AutomaticCanvasSize"]
      542 GETIMPORT                        R18 K115 [UDim2.fromScale]
      544 LOADN                            R19 1
      545 LOADN                            R20 0
      546 CALL                             R18 2 1
      547 SETTABLEKS                       R18 R17 K107 ["CanvasSize"]
      549 GETIMPORT                        R18 K116 [Enum.ScrollingDirection.Y]
      551 SETTABLEKS                       R18 R17 K108 ["ScrollingDirection"]
      553 SETTABLEKS                       R17 R16 K101 ["scroll"]
      555 SETTABLEKS                       R4 R16 K4 ["scrollingFrameRef"]
      557 GETUPVAL                         R18 3
      558 CALL                             R18 0 1
      559 JUMPIFNOT                        R18 ; [+2]
      560 MOVE                             R17 R12
      561 JUMP                             ; [+2]
      562 GETTABLEKS                       R17 R0 K84 ["onCanvasPositionChanged"]
      564 SETTABLEKS                       R17 R16 K84 ["onCanvasPositionChanged"]
      566 GETUPVAL                         R18 3
      567 CALL                             R18 0 1
      568 JUMPIFNOT                        R18 ; [+2]
      569 LOADNIL                          R17
      570 JUMP                             ; [+2]
      571 GETTABLEKS                       R17 R0 K102 ["onAbsoluteCanvasSizeChanged"]
      573 SETTABLEKS                       R17 R16 K102 ["onAbsoluteCanvasSizeChanged"]
      575 GETUPVAL                         R18 3
      576 CALL                             R18 0 1
      577 JUMPIFNOT                        R18 ; [+2]
      578 MOVE                             R17 R13
      579 JUMP                             ; [+1]
      580 LOADNIL                          R17
      581 SETTABLEKS                       R17 R16 K85 ["onAbsoluteWindowSizeChanged"]
      583 MOVE                             R17 R9
      584 CALL                             R14 3 -1
      585 RETURN                           R14 -1

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
       69 GETTABLEKS                       R10 R10 K18 ["SessionIdContext"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Components"]
       76 GETTABLEKS                       R11 R11 K11 ["Contexts"]
       78 GETTABLEKS                       R11 R11 K19 ["ThreadIdContext"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K20 ["Resources"]
       85 GETTABLEKS                       R12 R12 K21 ["Localization"]
       87 GETTABLEKS                       R12 R12 K22 ["Translator"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K23 ["Types"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K14 ["Util"]
       99 GETTABLEKS                       R14 R14 K24 ["getToggleGenerationInputFunc"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K26 ["useAddThread"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      113 GETTABLEKS                       R16 R16 K27 ["useClearConversation"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      120 GETTABLEKS                       R17 R17 K28 ["useConversation"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K25 ["Hooks"]
      127 GETTABLEKS                       R18 R18 K29 ["useCurrentThread"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K25 ["Hooks"]
      134 GETTABLEKS                       R19 R19 K30 ["useRetryMessage"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K25 ["Hooks"]
      141 GETTABLEKS                       R20 R20 K31 ["useSendMessage"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R21 R0 K25 ["Hooks"]
      148 GETTABLEKS                       R21 R21 K32 ["useUpperScrollEdge"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K25 ["Hooks"]
      155 GETTABLEKS                       R22 R22 K33 ["useWelcomeMessage"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K5 [require]
      160 GETTABLEKS                       R23 R0 K34 ["Flags"]
      162 GETTABLEKS                       R23 R23 K35 ["FFlagAssistantMultipleChatPersistence"]
      164 CALL                             R22 1 1
      165 GETTABLEKS                       R23 R3 K36 ["Icon"]
      167 GETTABLEKS                       R24 R3 K37 ["Loading"]
      169 GETTABLEKS                       R25 R3 K38 ["ScrollView"]
      171 GETTABLEKS                       R26 R3 K39 ["Text"]
      173 GETTABLEKS                       R27 R3 K40 ["View"]
      175 GETTABLEKS                       R28 R7 K41 ["createElement"]
      177 GETTABLEKS                       R29 R8 K42 ["createNextOrder"]
      179 DUPCLOSURE                       R30 K43 [PROTO_0]
      180 DUPCLOSURE                       R31 K44 [PROTO_1]
      181 DUPCLOSURE                       R32 K45 [PROTO_2]
      182 CAPTURE                          VAL R22
      183 DUPCLOSURE                       R33 K46 [PROTO_3]
      184 DUPCLOSURE                       R34 K47 [PROTO_13]
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R19
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R28
      198 CAPTURE                          VAL R33
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R29
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R27
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R26
      210 CAPTURE                          VAL R20
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R25
      214 RETURN                           R34 1
