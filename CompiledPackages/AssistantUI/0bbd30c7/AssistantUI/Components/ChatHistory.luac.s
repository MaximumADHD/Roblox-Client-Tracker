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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+16]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+14]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["acpSessionId"]
        8 JUMPIFNOT                        R0 ; [+10]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["messageLoadState"]
       12 JUMPIFNOTEQKNIL                  R0 ; [+6]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K2 ["loadSessionPage"]
       17 LOADNIL                          R1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["loadSessionPage"]
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["nextCursor"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K2 ["loadOlderMessages"]
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R2 4
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

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
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantChatFollowBottomThreshold"]
       18 JUMPIFNOT                        R3 ; [+2]
       19 LOADN                            R2 48
       20 JUMP                             ; [+1]
       21 LOADN                            R2 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R7 R0 K7 ["CanvasPosition"]
       25 GETTABLEKS                       R7 R7 K1 ["Y"]
       27 SUB                              R6 R7 R1
       28 FASTCALL1                        MATH_ABS R6 ; [+2]
       29 GETIMPORT                        R5 K9 [math.abs]
       31 CALL                             R5 1 1
       32 JUMPIFLE                         R5 R2 ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 SETTABLEKS                       R4 R3 K10 ["current"]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K11 ["onCanvasPositionChanged"]
       41 MOVE                             R4 R0
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETIMPORT                        R0 K3 [task.defer]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_15:
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
       52 GETUPVAL                         R9 9
       53 GETUPVAL                         R10 10
       54 CALL                             R10 0 -1
       55 CALL                             R9 -1 1
       56 DUPTABLE                         R10 K8 [{"UIPadding"}]
       57 GETUPVAL                         R11 11
       58 LOADK                            R12 K7 ["UIPadding"]
       59 DUPTABLE                         R13 K13 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       60 GETIMPORT                        R14 K16 [UDim.new]
       62 LOADN                            R15 0
       63 LOADN                            R16 20
       64 CALL                             R14 2 1
       65 SETTABLEKS                       R14 R13 K9 ["PaddingTop"]
       67 GETIMPORT                        R14 K16 [UDim.new]
       69 LOADN                            R15 0
       70 LOADN                            R16 20
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K10 ["PaddingBottom"]
       74 GETIMPORT                        R14 K16 [UDim.new]
       76 LOADN                            R15 0
       77 LOADN                            R16 20
       78 CALL                             R14 2 1
       79 SETTABLEKS                       R14 R13 K11 ["PaddingLeft"]
       81 GETIMPORT                        R14 K16 [UDim.new]
       83 LOADN                            R15 0
       84 LOADN                            R16 20
       85 CALL                             R14 2 1
       86 SETTABLEKS                       R14 R13 K12 ["PaddingRight"]
       88 CALL                             R11 2 1
       89 SETTABLEKS                       R11 R10 K7 ["UIPadding"]
       91 MOVE                             R12 R3
       92 JUMPIFNOT                        R12 ; [+3]
       93 GETTABLEKS                       R13 R1 K17 ["threads"]
       95 GETTABLE                         R12 R13 R3
       96 JUMPIF                           R12 ; [+2]
       97 LOADNIL                          R11
       98 JUMP                             ; [+2]
       99 GETTABLEKS                       R11 R12 K18 ["messages"]
      101 LOADN                            R12 0
      102 JUMPIFNOT                        R11 ; [+69]
      103 GETUPVAL                         R13 12
      104 MOVE                             R14 R11
      105 CALL                             R13 1 1
      106 MOVE                             R14 R11
      107 LOADNIL                          R15
      108 LOADNIL                          R16
      109 FORGPREP                         R14
      110 GETTABLEKS                       R19 R18 K19 ["hidden"]
      112 JUMPIF                           R19 ; [+13]
      113 GETTABLEKS                       R19 R18 K20 ["isDeleted"]
      115 JUMPIF                           R19 ; [+10]
      116 GETTABLEKS                       R22 R18 K22 ["LayoutOrder"]
      118 ORK                              R21 R22 K21 [0]
      119 FASTCALL2                        MATH_MIN R12 R21 ; [+4]
      121 MOVE                             R20 R12
      122 GETIMPORT                        R19 K25 [math.min]
      124 CALL                             R19 2 1
      125 MOVE                             R12 R19
      126 FORGLOOP                         R14 2 ; [-17]
      128 MOVE                             R14 R11
      129 LOADNIL                          R15
      130 LOADNIL                          R16
      131 FORGPREP                         R14
      132 GETTABLEKS                       R19 R18 K19 ["hidden"]
      134 JUMPIF                           R19 ; [+35]
      135 GETTABLEKS                       R19 R18 K20 ["isDeleted"]
      137 JUMPIF                           R19 ; [+32]
      138 GETTABLEKS                       R20 R18 K22 ["LayoutOrder"]
      140 ORK                              R19 R20 K21 [0]
      141 GETUPVAL                         R20 13
      142 GETTABLEKS                       R20 R20 K26 ["Dictionary"]
      144 GETTABLEKS                       R20 R20 K27 ["join"]
      146 MOVE                             R21 R18
      147 DUPTABLE                         R22 K31 [{"retryMessage", "sendMessage", "isLatestAssistantAndMostRecent"}]
      148 SETTABLEKS                       R8 R22 K28 ["retryMessage"]
      150 SETTABLEKS                       R7 R22 K29 ["sendMessage"]
      152 JUMPIFEQ                         R17 R13 ; [+2]
      154 LOADB                            R23 0 +1
      155 LOADB                            R23 1
      156 SETTABLEKS                       R23 R22 K30 ["isLatestAssistantAndMostRecent"]
      158 CALL                             R20 2 1
      159 GETIMPORT                        R21 K34 [string.format]
      161 LOADK                            R22 K35 ["Message-%04i-%s"]
      162 MOVE                             R23 R19
      163 MOVE                             R24 R17
      164 CALL                             R21 3 1
      165 GETUPVAL                         R22 11
      166 GETUPVAL                         R23 14
      167 MOVE                             R24 R20
      168 CALL                             R22 2 1
      169 SETTABLE                         R22 R10 R21
      170 FORGLOOP                         R14 2 ; [-39]
      172 GETUPVAL                         R13 15
      173 GETTABLEKS                       R13 R13 K36 ["Hooks"]
      175 GETTABLEKS                       R13 R13 K37 ["useTokens"]
      177 CALL                             R13 0 1
      178 GETUPVAL                         R14 1
      179 GETTABLEKS                       R14 R14 K38 ["useMemo"]
      181 DUPCLOSURE                       R15 K39 [PROTO_5]
      182 CAPTURE                          UPVAL U16
      183 NEWTABLE                         R16 0 1
      185 GETUPVAL                         R17 16
      186 GETTABLEKS                       R17 R17 K40 ["locale"]
      188 SETLIST                          R16 R17 1 [1]
      190 CALL                             R14 2 1
      191 GETTABLEKS                       R15 R0 K41 ["chatHistoryInterfaceRef"]
      193 GETUPVAL                         R16 1
      194 GETTABLEKS                       R16 R16 K4 ["useEffect"]
      196 NEWCLOSURE                       R17 P2
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R4
      199 NEWTABLE                         R18 0 1
      201 MOVE                             R19 R15
      202 SETLIST                          R18 R19 1 [1]
      204 CALL                             R16 2 0
      205 GETUPVAL                         R16 17
      206 CALL                             R16 0 1
      207 GETUPVAL                         R17 18
      208 CALL                             R17 0 1
      209 JUMPIFNOT                        R17 ; [+3]
      210 GETTABLEKS                       R18 R17 K42 ["messagePageState"]
      212 JUMP                             ; [+1]
      213 LOADNIL                          R18
      214 JUMPIFNOT                        R17 ; [+3]
      215 GETTABLEKS                       R19 R17 K43 ["messageLoadState"]
      217 JUMP                             ; [+1]
      218 LOADNIL                          R19
      219 GETUPVAL                         R20 1
      220 GETTABLEKS                       R20 R20 K4 ["useEffect"]
      222 NEWCLOSURE                       R21 P3
      223 CAPTURE                          UPVAL U10
      224 CAPTURE                          VAL R17
      225 CAPTURE                          VAL R9
      226 NEWTABLE                         R22 0 2
      228 GETTABLEKS                       R23 R9 K44 ["loadSessionPage"]
      230 MOVE                             R24 R17
      231 SETLIST                          R22 R23 2 [1]
      233 CALL                             R20 2 0
      234 GETUPVAL                         R20 19
      235 GETTABLEKS                       R20 R20 K45 ["PersistenceLoadStates"]
      237 GETTABLEKS                       R20 R20 K46 ["Loading"]
      239 JUMPIFNOTEQ                      R19 R20 ; [+27]
      241 GETUPVAL                         R20 11
      242 GETUPVAL                         R21 20
      243 DUPTABLE                         R22 K49 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      244 SUBK                             R23 R12 K50 [1]
      245 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      247 DUPTABLE                         R23 K51 [{"Loading"}]
      248 GETUPVAL                         R24 11
      249 GETUPVAL                         R25 21
      250 DUPTABLE                         R26 K53 [{"size"}]
      251 GETUPVAL                         R27 15
      252 GETTABLEKS                       R27 R27 K54 ["Enums"]
      254 GETTABLEKS                       R27 R27 K55 ["IconSize"]
      256 GETTABLEKS                       R27 R27 K56 ["Small"]
      258 SETTABLEKS                       R27 R26 K52 ["size"]
      260 CALL                             R24 2 1
      261 SETTABLEKS                       R24 R23 K46 ["Loading"]
      263 CALL                             R20 3 1
      264 SETTABLEKS                       R20 R10 K57 ["MessagePersistenceInfo"]
      266 JUMP                             ; [+67]
      267 GETUPVAL                         R20 19
      268 GETTABLEKS                       R20 R20 K45 ["PersistenceLoadStates"]
      270 GETTABLEKS                       R20 R20 K58 ["Error"]
      272 JUMPIFNOTEQ                      R19 R20 ; [+61]
      274 GETUPVAL                         R20 11
      275 GETUPVAL                         R21 20
      276 DUPTABLE                         R22 K49 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      277 SUBK                             R23 R12 K50 [1]
      278 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      280 DUPTABLE                         R23 K61 [{"Icon", "Text"}]
      281 GETUPVAL                         R24 11
      282 GETUPVAL                         R25 22
      283 DUPTABLE                         R26 K64 [{"name", "size", "style", "LayoutOrder"}]
      284 GETUPVAL                         R27 15
      285 GETTABLEKS                       R27 R27 K54 ["Enums"]
      287 GETTABLEKS                       R27 R27 K65 ["IconName"]
      289 GETTABLEKS                       R27 R27 K66 ["TriangleExclamation"]
      291 SETTABLEKS                       R27 R26 K62 ["name"]
      293 GETUPVAL                         R27 15
      294 GETTABLEKS                       R27 R27 K54 ["Enums"]
      296 GETTABLEKS                       R27 R27 K55 ["IconSize"]
      298 GETTABLEKS                       R27 R27 K67 ["Medium"]
      300 SETTABLEKS                       R27 R26 K52 ["size"]
      302 GETTABLEKS                       R27 R13 K68 ["Color"]
      304 GETTABLEKS                       R27 R27 K69 ["System"]
      306 GETTABLEKS                       R27 R27 K70 ["Warning"]
      308 SETTABLEKS                       R27 R26 K63 ["style"]
      310 MOVE                             R27 R16
      311 CALL                             R27 0 1
      312 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      314 CALL                             R24 2 1
      315 SETTABLEKS                       R24 R23 K59 ["Icon"]
      317 GETUPVAL                         R24 11
      318 GETUPVAL                         R25 23
      319 DUPTABLE                         R26 K72 [{["tag"] = "size-0-full auto-x text-label-medium text-align-x-center text-align-y-center text-truncate-split content-system-warning", ["Text"], ["LayoutOrder"]}]
      320 GETTABLEKS                       R27 R14 K73 ["MessagesLoadError"]
      322 SETTABLEKS                       R27 R26 K60 ["Text"]
      324 MOVE                             R27 R16
      325 CALL                             R27 0 1
      326 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      328 CALL                             R24 2 1
      329 SETTABLEKS                       R24 R23 K60 ["Text"]
      331 CALL                             R20 3 1
      332 SETTABLEKS                       R20 R10 K57 ["MessagePersistenceInfo"]
      334 GETUPVAL                         R20 1
      335 GETTABLEKS                       R20 R20 K74 ["useCallback"]
      337 NEWCLOSURE                       R21 P4
      338 CAPTURE                          UPVAL U10
      339 CAPTURE                          VAL R9
      340 CAPTURE                          VAL R18
      341 CAPTURE                          UPVAL U24
      342 CAPTURE                          VAL R3
      343 NEWTABLE                         R22 0 3
      345 GETTABLEKS                       R23 R9 K44 ["loadSessionPage"]
      347 MOVE                             R24 R18
      348 MOVE                             R25 R3
      349 SETLIST                          R22 R23 3 [1]
      351 CALL                             R20 2 1
      352 GETUPVAL                         R21 25
      353 DUPTABLE                         R22 K81 [{"scrollingFrameRef", "pageState", "loadState", "onLoadMore", "triggerDistance", "resetKey"}]
      354 SETTABLEKS                       R4 R22 K75 ["scrollingFrameRef"]
      356 SETTABLEKS                       R18 R22 K76 ["pageState"]
      358 SETTABLEKS                       R19 R22 K77 ["loadState"]
      360 SETTABLEKS                       R20 R22 K78 ["onLoadMore"]
      362 GETUPVAL                         R23 26
      363 GETTABLEKS                       R23 R23 K82 ["MESSAGES_LOAD_TRIGGER_DISTANCE"]
      365 SETTABLEKS                       R23 R22 K79 ["triggerDistance"]
      367 SETTABLEKS                       R3 R22 K80 ["resetKey"]
      369 CALL                             R21 1 1
      370 GETUPVAL                         R22 1
      371 GETTABLEKS                       R22 R22 K3 ["useRef"]
      373 LOADB                            R23 1
      374 CALL                             R22 1 1
      375 GETUPVAL                         R23 1
      376 GETTABLEKS                       R23 R23 K3 ["useRef"]
      378 MOVE                             R24 R3
      379 CALL                             R23 1 1
      380 GETTABLEKS                       R24 R23 K83 ["current"]
      382 JUMPIFEQ                         R24 R3 ; [+6]
      384 SETTABLEKS                       R3 R23 K83 ["current"]
      386 LOADB                            R24 1
      387 SETTABLEKS                       R24 R22 K83 ["current"]
      389 GETUPVAL                         R24 1
      390 GETTABLEKS                       R24 R24 K74 ["useCallback"]
      392 NEWCLOSURE                       R25 P5
      393 CAPTURE                          UPVAL U27
      394 CAPTURE                          VAL R22
      395 CAPTURE                          VAL R21
      396 NEWTABLE                         R26 0 1
      398 GETTABLEKS                       R27 R21 K84 ["onCanvasPositionChanged"]
      400 SETLIST                          R26 R27 1 [1]
      402 CALL                             R24 2 1
      403 GETUPVAL                         R25 1
      404 GETTABLEKS                       R25 R25 K74 ["useCallback"]
      406 NEWCLOSURE                       R26 P6
      407 CAPTURE                          VAL R22
      408 CAPTURE                          VAL R21
      409 NEWTABLE                         R27 0 1
      411 GETTABLEKS                       R28 R21 K85 ["onAbsoluteWindowSizeChanged"]
      413 SETLIST                          R27 R28 1 [1]
      415 CALL                             R25 2 1
      416 GETUPVAL                         R26 1
      417 GETTABLEKS                       R26 R26 K74 ["useCallback"]
      419 NEWCLOSURE                       R27 P7
      420 CAPTURE                          VAL R22
      421 CAPTURE                          VAL R4
      422 CAPTURE                          VAL R21
      423 NEWTABLE                         R28 0 1
      425 GETTABLEKS                       R29 R21 K86 ["onAbsoluteContentSizeChanged"]
      427 SETLIST                          R28 R29 1 [1]
      429 CALL                             R26 2 1
      430 GETUPVAL                         R27 1
      431 GETTABLEKS                       R27 R27 K74 ["useCallback"]
      433 NEWCLOSURE                       R28 P8
      434 CAPTURE                          VAL R22
      435 CAPTURE                          VAL R4
      436 NEWTABLE                         R29 0 1
      438 MOVE                             R30 R4
      439 SETLIST                          R29 R30 1 [1]
      441 CALL                             R27 2 1
      442 GETUPVAL                         R28 11
      443 LOADK                            R29 K87 ["UIListLayout"]
      444 NEWTABLE                         R30 8 0
      446 GETIMPORT                        R31 K91 [Enum.FillDirection.Vertical]
      448 SETTABLEKS                       R31 R30 K89 ["FillDirection"]
      450 GETIMPORT                        R31 K93 [Enum.SortOrder.LayoutOrder]
      452 SETTABLEKS                       R31 R30 K92 ["SortOrder"]
      454 GETIMPORT                        R31 K16 [UDim.new]
      456 LOADN                            R32 0
      457 LOADN                            R33 12
      458 CALL                             R31 2 1
      459 SETTABLEKS                       R31 R30 K94 ["Padding"]
      461 GETTABLEKS                       R31 R21 K95 ["layoutRef"]
      463 SETTABLEKS                       R31 R30 K96 ["ref"]
      465 GETUPVAL                         R31 1
      466 GETTABLEKS                       R31 R31 K97 ["Change"]
      468 GETTABLEKS                       R31 R31 K98 ["AbsoluteContentSize"]
      470 SETTABLE                         R26 R30 R31
      471 CALL                             R28 2 1
      472 SETTABLEKS                       R28 R10 K99 ["ListLayout"]
      474 GETUPVAL                         R28 11
      475 GETUPVAL                         R29 28
      476 GETTABLEKS                       R29 R29 K100 ["Provider"]
      478 DUPTABLE                         R30 K102 [{"scrollToBottom"}]
      479 SETTABLEKS                       R27 R30 K101 ["scrollToBottom"]
      481 DUPTABLE                         R31 K104 [{"ScrollView"}]
      482 GETUPVAL                         R32 11
      483 GETUPVAL                         R33 29
      484 DUPTABLE                         R34 K107 [{["tag"] = "size-full-full", ["scroll"], ["scrollingFrameRef"], ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"]}]
      485 DUPTABLE                         R35 K111 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      486 GETIMPORT                        R36 K114 [Enum.AutomaticSize.Y]
      488 SETTABLEKS                       R36 R35 K108 ["AutomaticCanvasSize"]
      490 GETIMPORT                        R36 K117 [UDim2.fromScale]
      492 LOADN                            R37 1
      493 LOADN                            R38 0
      494 CALL                             R36 2 1
      495 SETTABLEKS                       R36 R35 K109 ["CanvasSize"]
      497 GETIMPORT                        R36 K118 [Enum.ScrollingDirection.Y]
      499 SETTABLEKS                       R36 R35 K110 ["ScrollingDirection"]
      501 SETTABLEKS                       R35 R34 K106 ["scroll"]
      503 SETTABLEKS                       R4 R34 K75 ["scrollingFrameRef"]
      505 SETTABLEKS                       R24 R34 K84 ["onCanvasPositionChanged"]
      507 SETTABLEKS                       R25 R34 K85 ["onAbsoluteWindowSizeChanged"]
      509 MOVE                             R35 R10
      510 CALL                             R32 3 1
      511 SETTABLEKS                       R32 R31 K103 ["ScrollView"]
      513 CALL                             R28 3 -1
      514 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ChatScrollContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["FlagUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Flags"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K10 ["Parent"]
       42 GETTABLEKS                       R7 R7 K14 ["Foundation"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R4 K15 ["getIsAssistantHarnessSplit"]
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K6 ["Components"]
       51 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       53 GETTABLEKS                       R9 R9 K16 ["InputStateContext"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Components"]
       60 GETTABLEKS                       R10 R10 K17 ["MessageWidget"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Util"]
       67 GETTABLEKS                       R11 R11 K19 ["Persistence"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R12 R0 K10 ["Parent"]
       74 GETTABLEKS                       R12 R12 K20 ["React"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Parent"]
       81 GETTABLEKS                       R13 R13 K21 ["ReactUtils"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R14 R0 K6 ["Components"]
       88 GETTABLEKS                       R14 R14 K7 ["Contexts"]
       90 GETTABLEKS                       R14 R14 K22 ["ThreadIdContext"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K23 ["Resources"]
       97 GETTABLEKS                       R15 R15 K24 ["Localization"]
       99 GETTABLEKS                       R15 R15 K25 ["Translator"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETTABLEKS                       R16 R0 K26 ["Types"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K5 [require]
      109 GETTABLEKS                       R17 R0 K18 ["Util"]
      111 GETTABLEKS                       R17 R17 K27 ["getToggleGenerationInputFunc"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R18 R0 K28 ["Hooks"]
      118 GETTABLEKS                       R18 R18 K29 ["useAcpSessionHistory"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K5 [require]
      123 GETTABLEKS                       R19 R0 K28 ["Hooks"]
      125 GETTABLEKS                       R19 R19 K30 ["useAddThread"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K5 [require]
      130 GETTABLEKS                       R20 R0 K28 ["Hooks"]
      132 GETTABLEKS                       R20 R20 K31 ["useConversation"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K5 [require]
      137 GETTABLEKS                       R21 R0 K28 ["Hooks"]
      139 GETTABLEKS                       R21 R21 K32 ["useCurrentThread"]
      141 CALL                             R20 1 1
      142 GETIMPORT                        R21 K5 [require]
      144 GETTABLEKS                       R22 R0 K28 ["Hooks"]
      146 GETTABLEKS                       R22 R22 K33 ["useRetryMessage"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K5 [require]
      151 GETTABLEKS                       R23 R0 K28 ["Hooks"]
      153 GETTABLEKS                       R23 R23 K34 ["useSendMessage"]
      155 CALL                             R22 1 1
      156 GETIMPORT                        R23 K5 [require]
      158 GETTABLEKS                       R24 R0 K28 ["Hooks"]
      160 GETTABLEKS                       R24 R24 K35 ["useUpperScrollEdge"]
      162 CALL                             R23 1 1
      163 GETIMPORT                        R24 K5 [require]
      165 GETTABLEKS                       R25 R0 K28 ["Hooks"]
      167 GETTABLEKS                       R25 R25 K36 ["useWelcomeMessage"]
      169 CALL                             R24 1 1
      170 GETTABLEKS                       R25 R6 K37 ["Icon"]
      172 GETTABLEKS                       R26 R6 K38 ["Loading"]
      174 GETTABLEKS                       R27 R6 K39 ["ScrollView"]
      176 GETTABLEKS                       R28 R6 K40 ["Text"]
      178 GETTABLEKS                       R29 R6 K41 ["View"]
      180 GETTABLEKS                       R30 R11 K42 ["createElement"]
      182 GETTABLEKS                       R31 R12 K43 ["createNextOrder"]
      184 DUPCLOSURE                       R32 K44 [PROTO_0]
      185 DUPCLOSURE                       R33 K45 [PROTO_1]
      186 DUPCLOSURE                       R34 K46 [PROTO_2]
      187 DUPCLOSURE                       R35 K47 [PROTO_3]
      188 DUPCLOSURE                       R36 K48 [PROTO_15]
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R30
      201 CAPTURE                          VAL R35
      202 CAPTURE                          VAL R3
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R14
      206 CAPTURE                          VAL R31
      207 CAPTURE                          VAL R20
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R29
      210 CAPTURE                          VAL R26
      211 CAPTURE                          VAL R25
      212 CAPTURE                          VAL R28
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R27
      219 RETURN                           R36 1
