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
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

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
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["acpSessionId"]
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["messageLoadState"]
        9 JUMPIFNOTEQKNIL                  R0 ; [+6]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K2 ["loadSessionPage"]
       14 LOADNIL                          R1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadSessionPage"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["nextCursor"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

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
       19 GETTABLEKS                       R6 R6 K0 ["useContext"]
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R7 R7 K1 ["Context"]
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K4 ["useEffect"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R9 0 3
       34 MOVE                             R10 R3
       35 MOVE                             R11 R5
       36 MOVE                             R12 R6
       37 SETLIST                          R9 R10 3 [1]
       39 CALL                             R7 2 0
       40 GETUPVAL                         R7 5
       41 MOVE                             R8 R1
       42 MOVE                             R9 R3
       43 CALL                             R7 2 0
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K0 ["useContext"]
       47 GETUPVAL                         R8 6
       48 GETTABLEKS                       R8 R8 K1 ["Context"]
       50 CALL                             R7 1 1
       51 GETUPVAL                         R8 7
       52 DUPTABLE                         R9 K6 [{"setInputEnabled"}]
       53 GETUPVAL                         R10 8
       54 MOVE                             R11 R7
       55 CALL                             R10 1 1
       56 SETTABLEKS                       R10 R9 K5 ["setInputEnabled"]
       58 CALL                             R8 1 1
       59 GETUPVAL                         R9 9
       60 CALL                             R9 0 1
       61 GETUPVAL                         R10 10
       62 LOADB                            R11 1
       63 CALL                             R10 1 1
       64 DUPTABLE                         R11 K8 [{"UIPadding"}]
       65 GETUPVAL                         R12 11
       66 LOADK                            R13 K7 ["UIPadding"]
       67 DUPTABLE                         R14 K13 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       68 GETIMPORT                        R15 K16 [UDim.new]
       70 LOADN                            R16 0
       71 LOADN                            R17 20
       72 CALL                             R15 2 1
       73 SETTABLEKS                       R15 R14 K9 ["PaddingTop"]
       75 GETIMPORT                        R15 K16 [UDim.new]
       77 LOADN                            R16 0
       78 LOADN                            R17 20
       79 CALL                             R15 2 1
       80 SETTABLEKS                       R15 R14 K10 ["PaddingBottom"]
       82 GETIMPORT                        R15 K16 [UDim.new]
       84 LOADN                            R16 0
       85 LOADN                            R17 20
       86 CALL                             R15 2 1
       87 SETTABLEKS                       R15 R14 K11 ["PaddingLeft"]
       89 GETIMPORT                        R15 K16 [UDim.new]
       91 LOADN                            R16 0
       92 LOADN                            R17 20
       93 CALL                             R15 2 1
       94 SETTABLEKS                       R15 R14 K12 ["PaddingRight"]
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K7 ["UIPadding"]
       99 MOVE                             R13 R3
      100 JUMPIFNOT                        R13 ; [+3]
      101 GETTABLEKS                       R14 R1 K17 ["threads"]
      103 GETTABLE                         R13 R14 R3
      104 JUMPIF                           R13 ; [+2]
      105 LOADNIL                          R12
      106 JUMP                             ; [+2]
      107 GETTABLEKS                       R12 R13 K18 ["messages"]
      109 LOADN                            R13 0
      110 JUMPIFNOT                        R12 ; [+69]
      111 GETUPVAL                         R14 12
      112 MOVE                             R15 R12
      113 CALL                             R14 1 1
      114 MOVE                             R15 R12
      115 LOADNIL                          R16
      116 LOADNIL                          R17
      117 FORGPREP                         R15
      118 GETTABLEKS                       R20 R19 K19 ["hidden"]
      120 JUMPIF                           R20 ; [+13]
      121 GETTABLEKS                       R20 R19 K20 ["isDeleted"]
      123 JUMPIF                           R20 ; [+10]
      124 GETTABLEKS                       R23 R19 K22 ["LayoutOrder"]
      126 ORK                              R22 R23 K21 [0]
      127 FASTCALL2                        MATH_MIN R13 R22 ; [+4]
      129 MOVE                             R21 R13
      130 GETIMPORT                        R20 K25 [math.min]
      132 CALL                             R20 2 1
      133 MOVE                             R13 R20
      134 FORGLOOP                         R15 2 ; [-17]
      136 MOVE                             R15 R12
      137 LOADNIL                          R16
      138 LOADNIL                          R17
      139 FORGPREP                         R15
      140 GETTABLEKS                       R20 R19 K19 ["hidden"]
      142 JUMPIF                           R20 ; [+35]
      143 GETTABLEKS                       R20 R19 K20 ["isDeleted"]
      145 JUMPIF                           R20 ; [+32]
      146 GETTABLEKS                       R21 R19 K22 ["LayoutOrder"]
      148 ORK                              R20 R21 K21 [0]
      149 GETUPVAL                         R21 13
      150 GETTABLEKS                       R21 R21 K26 ["Dictionary"]
      152 GETTABLEKS                       R21 R21 K27 ["join"]
      154 MOVE                             R22 R19
      155 DUPTABLE                         R23 K31 [{"retryMessage", "sendMessage", "isLatestAssistantAndMostRecent"}]
      156 SETTABLEKS                       R9 R23 K28 ["retryMessage"]
      158 SETTABLEKS                       R8 R23 K29 ["sendMessage"]
      160 JUMPIFEQ                         R18 R14 ; [+2]
      162 LOADB                            R24 0 +1
      163 LOADB                            R24 1
      164 SETTABLEKS                       R24 R23 K30 ["isLatestAssistantAndMostRecent"]
      166 CALL                             R21 2 1
      167 GETIMPORT                        R22 K34 [string.format]
      169 LOADK                            R23 K35 ["Message-%04i-%s"]
      170 MOVE                             R24 R20
      171 MOVE                             R25 R18
      172 CALL                             R22 3 1
      173 GETUPVAL                         R23 11
      174 GETUPVAL                         R24 14
      175 MOVE                             R25 R21
      176 CALL                             R23 2 1
      177 SETTABLE                         R23 R11 R22
      178 FORGLOOP                         R15 2 ; [-39]
      180 GETUPVAL                         R14 15
      181 GETTABLEKS                       R14 R14 K36 ["Hooks"]
      183 GETTABLEKS                       R14 R14 K37 ["useTokens"]
      185 CALL                             R14 0 1
      186 GETUPVAL                         R15 1
      187 GETTABLEKS                       R15 R15 K38 ["useMemo"]
      189 DUPCLOSURE                       R16 K39 [PROTO_5]
      190 CAPTURE                          UPVAL U16
      191 NEWTABLE                         R17 0 1
      193 GETUPVAL                         R18 16
      194 GETTABLEKS                       R18 R18 K40 ["locale"]
      196 SETLIST                          R17 R18 1 [1]
      198 CALL                             R15 2 1
      199 GETTABLEKS                       R16 R0 K41 ["chatHistoryInterfaceRef"]
      201 GETUPVAL                         R17 1
      202 GETTABLEKS                       R17 R17 K4 ["useEffect"]
      204 NEWCLOSURE                       R18 P2
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R4
      207 NEWTABLE                         R19 0 1
      209 MOVE                             R20 R16
      210 SETLIST                          R19 R20 1 [1]
      212 CALL                             R17 2 0
      213 GETUPVAL                         R17 17
      214 CALL                             R17 0 1
      215 GETUPVAL                         R18 18
      216 CALL                             R18 0 1
      217 JUMPIFNOT                        R18 ; [+3]
      218 GETTABLEKS                       R19 R18 K42 ["messagePageState"]
      220 JUMP                             ; [+1]
      221 LOADNIL                          R19
      222 JUMPIFNOT                        R18 ; [+3]
      223 GETTABLEKS                       R20 R18 K43 ["messageLoadState"]
      225 JUMP                             ; [+1]
      226 LOADNIL                          R20
      227 GETUPVAL                         R21 1
      228 GETTABLEKS                       R21 R21 K4 ["useEffect"]
      230 NEWCLOSURE                       R22 P3
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R10
      233 NEWTABLE                         R23 0 2
      235 GETTABLEKS                       R24 R10 K44 ["loadSessionPage"]
      237 MOVE                             R25 R18
      238 SETLIST                          R23 R24 2 [1]
      240 CALL                             R21 2 0
      241 GETUPVAL                         R21 19
      242 GETTABLEKS                       R21 R21 K45 ["PersistenceLoadStates"]
      244 GETTABLEKS                       R21 R21 K46 ["Loading"]
      246 JUMPIFNOTEQ                      R20 R21 ; [+27]
      248 GETUPVAL                         R21 11
      249 GETUPVAL                         R22 20
      250 DUPTABLE                         R23 K49 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      251 SUBK                             R24 R13 K50 [1]
      252 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      254 DUPTABLE                         R24 K51 [{"Loading"}]
      255 GETUPVAL                         R25 11
      256 GETUPVAL                         R26 21
      257 DUPTABLE                         R27 K53 [{"size"}]
      258 GETUPVAL                         R28 15
      259 GETTABLEKS                       R28 R28 K54 ["Enums"]
      261 GETTABLEKS                       R28 R28 K55 ["IconSize"]
      263 GETTABLEKS                       R28 R28 K56 ["Small"]
      265 SETTABLEKS                       R28 R27 K52 ["size"]
      267 CALL                             R25 2 1
      268 SETTABLEKS                       R25 R24 K46 ["Loading"]
      270 CALL                             R21 3 1
      271 SETTABLEKS                       R21 R11 K57 ["MessagePersistenceInfo"]
      273 JUMP                             ; [+67]
      274 GETUPVAL                         R21 19
      275 GETTABLEKS                       R21 R21 K45 ["PersistenceLoadStates"]
      277 GETTABLEKS                       R21 R21 K58 ["Error"]
      279 JUMPIFNOTEQ                      R20 R21 ; [+61]
      281 GETUPVAL                         R21 11
      282 GETUPVAL                         R22 20
      283 DUPTABLE                         R23 K49 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      284 SUBK                             R24 R13 K50 [1]
      285 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      287 DUPTABLE                         R24 K61 [{"Icon", "Text"}]
      288 GETUPVAL                         R25 11
      289 GETUPVAL                         R26 22
      290 DUPTABLE                         R27 K64 [{"name", "size", "style", "LayoutOrder"}]
      291 GETUPVAL                         R28 15
      292 GETTABLEKS                       R28 R28 K54 ["Enums"]
      294 GETTABLEKS                       R28 R28 K65 ["IconName"]
      296 GETTABLEKS                       R28 R28 K66 ["TriangleExclamation"]
      298 SETTABLEKS                       R28 R27 K62 ["name"]
      300 GETUPVAL                         R28 15
      301 GETTABLEKS                       R28 R28 K54 ["Enums"]
      303 GETTABLEKS                       R28 R28 K55 ["IconSize"]
      305 GETTABLEKS                       R28 R28 K67 ["Medium"]
      307 SETTABLEKS                       R28 R27 K52 ["size"]
      309 GETTABLEKS                       R28 R14 K68 ["Color"]
      311 GETTABLEKS                       R28 R28 K69 ["System"]
      313 GETTABLEKS                       R28 R28 K70 ["Warning"]
      315 SETTABLEKS                       R28 R27 K63 ["style"]
      317 MOVE                             R28 R17
      318 CALL                             R28 0 1
      319 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      321 CALL                             R25 2 1
      322 SETTABLEKS                       R25 R24 K59 ["Icon"]
      324 GETUPVAL                         R25 11
      325 GETUPVAL                         R26 23
      326 DUPTABLE                         R27 K72 [{["tag"] = "size-0-full auto-x text-label-medium text-align-x-center text-align-y-center text-truncate-split content-system-warning", ["Text"], ["LayoutOrder"]}]
      327 GETTABLEKS                       R28 R15 K73 ["MessagesLoadError"]
      329 SETTABLEKS                       R28 R27 K60 ["Text"]
      331 MOVE                             R28 R17
      332 CALL                             R28 0 1
      333 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      335 CALL                             R25 2 1
      336 SETTABLEKS                       R25 R24 K60 ["Text"]
      338 CALL                             R21 3 1
      339 SETTABLEKS                       R21 R11 K57 ["MessagePersistenceInfo"]
      341 GETUPVAL                         R21 1
      342 GETTABLEKS                       R21 R21 K74 ["useCallback"]
      344 NEWCLOSURE                       R22 P4
      345 CAPTURE                          VAL R10
      346 CAPTURE                          VAL R19
      347 NEWTABLE                         R23 0 3
      349 GETTABLEKS                       R24 R10 K44 ["loadSessionPage"]
      351 MOVE                             R25 R19
      352 MOVE                             R26 R3
      353 SETLIST                          R23 R24 3 [1]
      355 CALL                             R21 2 1
      356 GETUPVAL                         R22 24
      357 DUPTABLE                         R23 K81 [{"scrollingFrameRef", "pageState", "loadState", "onLoadMore", "triggerDistance", "resetKey"}]
      358 SETTABLEKS                       R4 R23 K75 ["scrollingFrameRef"]
      360 SETTABLEKS                       R19 R23 K76 ["pageState"]
      362 SETTABLEKS                       R20 R23 K77 ["loadState"]
      364 SETTABLEKS                       R21 R23 K78 ["onLoadMore"]
      366 GETUPVAL                         R24 25
      367 GETTABLEKS                       R24 R24 K82 ["MESSAGES_LOAD_TRIGGER_DISTANCE"]
      369 SETTABLEKS                       R24 R23 K79 ["triggerDistance"]
      371 SETTABLEKS                       R3 R23 K80 ["resetKey"]
      373 CALL                             R22 1 1
      374 GETUPVAL                         R23 1
      375 GETTABLEKS                       R23 R23 K3 ["useRef"]
      377 LOADB                            R24 1
      378 CALL                             R23 1 1
      379 GETUPVAL                         R24 1
      380 GETTABLEKS                       R24 R24 K3 ["useRef"]
      382 MOVE                             R25 R3
      383 CALL                             R24 1 1
      384 GETTABLEKS                       R25 R24 K83 ["current"]
      386 JUMPIFEQ                         R25 R3 ; [+6]
      388 SETTABLEKS                       R3 R24 K83 ["current"]
      390 LOADB                            R25 1
      391 SETTABLEKS                       R25 R23 K83 ["current"]
      393 GETUPVAL                         R25 1
      394 GETTABLEKS                       R25 R25 K74 ["useCallback"]
      396 NEWCLOSURE                       R26 P5
      397 CAPTURE                          UPVAL U26
      398 CAPTURE                          VAL R23
      399 CAPTURE                          VAL R22
      400 NEWTABLE                         R27 0 1
      402 GETTABLEKS                       R28 R22 K84 ["onCanvasPositionChanged"]
      404 SETLIST                          R27 R28 1 [1]
      406 CALL                             R25 2 1
      407 GETUPVAL                         R26 1
      408 GETTABLEKS                       R26 R26 K74 ["useCallback"]
      410 NEWCLOSURE                       R27 P6
      411 CAPTURE                          VAL R23
      412 CAPTURE                          VAL R22
      413 NEWTABLE                         R28 0 1
      415 GETTABLEKS                       R29 R22 K85 ["onAbsoluteWindowSizeChanged"]
      417 SETLIST                          R28 R29 1 [1]
      419 CALL                             R26 2 1
      420 GETUPVAL                         R27 1
      421 GETTABLEKS                       R27 R27 K74 ["useCallback"]
      423 NEWCLOSURE                       R28 P7
      424 CAPTURE                          VAL R23
      425 CAPTURE                          VAL R4
      426 CAPTURE                          VAL R22
      427 NEWTABLE                         R29 0 1
      429 GETTABLEKS                       R30 R22 K86 ["onAbsoluteContentSizeChanged"]
      431 SETLIST                          R29 R30 1 [1]
      433 CALL                             R27 2 1
      434 GETUPVAL                         R28 1
      435 GETTABLEKS                       R28 R28 K74 ["useCallback"]
      437 NEWCLOSURE                       R29 P8
      438 CAPTURE                          VAL R23
      439 CAPTURE                          VAL R4
      440 NEWTABLE                         R30 0 1
      442 MOVE                             R31 R4
      443 SETLIST                          R30 R31 1 [1]
      445 CALL                             R28 2 1
      446 GETUPVAL                         R29 11
      447 LOADK                            R30 K87 ["UIListLayout"]
      448 NEWTABLE                         R31 8 0
      450 GETIMPORT                        R32 K91 [Enum.FillDirection.Vertical]
      452 SETTABLEKS                       R32 R31 K89 ["FillDirection"]
      454 GETIMPORT                        R32 K93 [Enum.SortOrder.LayoutOrder]
      456 SETTABLEKS                       R32 R31 K92 ["SortOrder"]
      458 GETIMPORT                        R32 K16 [UDim.new]
      460 LOADN                            R33 0
      461 LOADN                            R34 12
      462 CALL                             R32 2 1
      463 SETTABLEKS                       R32 R31 K94 ["Padding"]
      465 GETTABLEKS                       R32 R22 K95 ["layoutRef"]
      467 SETTABLEKS                       R32 R31 K96 ["ref"]
      469 GETUPVAL                         R32 1
      470 GETTABLEKS                       R32 R32 K97 ["Change"]
      472 GETTABLEKS                       R32 R32 K98 ["AbsoluteContentSize"]
      474 SETTABLE                         R27 R31 R32
      475 CALL                             R29 2 1
      476 SETTABLEKS                       R29 R11 K99 ["ListLayout"]
      478 GETUPVAL                         R29 11
      479 GETUPVAL                         R30 27
      480 GETTABLEKS                       R30 R30 K100 ["Provider"]
      482 DUPTABLE                         R31 K102 [{"scrollToBottom"}]
      483 SETTABLEKS                       R28 R31 K101 ["scrollToBottom"]
      485 DUPTABLE                         R32 K104 [{"ScrollView"}]
      486 GETUPVAL                         R33 11
      487 GETUPVAL                         R34 28
      488 DUPTABLE                         R35 K107 [{["tag"] = "size-full-full", ["scroll"], ["scrollingFrameRef"], ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"]}]
      489 DUPTABLE                         R36 K111 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      490 GETIMPORT                        R37 K114 [Enum.AutomaticSize.Y]
      492 SETTABLEKS                       R37 R36 K108 ["AutomaticCanvasSize"]
      494 GETIMPORT                        R37 K117 [UDim2.fromScale]
      496 LOADN                            R38 1
      497 LOADN                            R39 0
      498 CALL                             R37 2 1
      499 SETTABLEKS                       R37 R36 K109 ["CanvasSize"]
      501 GETIMPORT                        R37 K118 [Enum.ScrollingDirection.Y]
      503 SETTABLEKS                       R37 R36 K110 ["ScrollingDirection"]
      505 SETTABLEKS                       R36 R35 K106 ["scroll"]
      507 SETTABLEKS                       R4 R35 K75 ["scrollingFrameRef"]
      509 SETTABLEKS                       R25 R35 K84 ["onCanvasPositionChanged"]
      511 SETTABLEKS                       R26 R35 K85 ["onAbsoluteWindowSizeChanged"]
      513 MOVE                             R36 R11
      514 CALL                             R33 3 1
      515 SETTABLEKS                       R33 R32 K103 ["ScrollView"]
      517 CALL                             R29 3 -1
      518 RETURN                           R29 -1

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
       30 GETTABLEKS                       R5 R0 K12 ["Flags"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K10 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Components"]
       44 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K14 ["InputStateContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K15 ["MessageWidget"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K10 ["Parent"]
       60 GETTABLEKS                       R9 R9 K16 ["React"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K10 ["Parent"]
       67 GETTABLEKS                       R10 R10 K17 ["ReactUtils"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Components"]
       74 GETTABLEKS                       R11 R11 K7 ["Contexts"]
       76 GETTABLEKS                       R11 R11 K18 ["SessionThreadReadyContext"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K6 ["Components"]
       83 GETTABLEKS                       R12 R12 K7 ["Contexts"]
       85 GETTABLEKS                       R12 R12 K19 ["ThreadIdContext"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K20 ["Resources"]
       92 GETTABLEKS                       R13 R13 K21 ["Localization"]
       94 GETTABLEKS                       R13 R13 K22 ["Translator"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K23 ["Types"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K24 ["Util"]
      106 GETTABLEKS                       R15 R15 K25 ["getToggleGenerationInputFunc"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K26 ["Hooks"]
      113 GETTABLEKS                       R16 R16 K27 ["useAcpSessionHistory"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K26 ["Hooks"]
      120 GETTABLEKS                       R17 R17 K28 ["useAddThread"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K26 ["Hooks"]
      127 GETTABLEKS                       R18 R18 K29 ["useConversation"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K26 ["Hooks"]
      134 GETTABLEKS                       R19 R19 K30 ["useCurrentThread"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K26 ["Hooks"]
      141 GETTABLEKS                       R20 R20 K31 ["useRetryMessage"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R21 R0 K26 ["Hooks"]
      148 GETTABLEKS                       R21 R21 K32 ["useSendMessage"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K26 ["Hooks"]
      155 GETTABLEKS                       R22 R22 K33 ["useUpperScrollEdge"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K5 [require]
      160 GETTABLEKS                       R23 R0 K26 ["Hooks"]
      162 GETTABLEKS                       R23 R23 K34 ["useWelcomeMessage"]
      164 CALL                             R22 1 1
      165 GETTABLEKS                       R23 R5 K35 ["Icon"]
      167 GETTABLEKS                       R24 R5 K36 ["Loading"]
      169 GETTABLEKS                       R25 R5 K37 ["ScrollView"]
      171 GETTABLEKS                       R26 R5 K38 ["Text"]
      173 GETTABLEKS                       R27 R5 K39 ["View"]
      175 GETTABLEKS                       R28 R8 K40 ["createElement"]
      177 GETTABLEKS                       R29 R9 K41 ["createNextOrder"]
      179 DUPCLOSURE                       R30 K42 [PROTO_0]
      180 DUPCLOSURE                       R31 K43 [PROTO_1]
      181 DUPCLOSURE                       R32 K44 [PROTO_2]
      182 DUPCLOSURE                       R33 K45 [PROTO_3]
      183 DUPCLOSURE                       R34 K46 [PROTO_15]
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R19
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R28
      196 CAPTURE                          VAL R33
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R29
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R27
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R26
      208 CAPTURE                          VAL R21
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R25
      213 RETURN                           R34 1
