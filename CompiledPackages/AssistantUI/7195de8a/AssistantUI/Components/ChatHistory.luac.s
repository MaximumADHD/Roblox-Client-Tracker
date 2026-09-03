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
       62 GETUPVAL                         R11 11
       63 CALL                             R11 0 -1
       64 CALL                             R10 -1 1
       65 DUPTABLE                         R11 K8 [{"UIPadding"}]
       66 GETUPVAL                         R12 12
       67 LOADK                            R13 K7 ["UIPadding"]
       68 DUPTABLE                         R14 K13 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       69 GETIMPORT                        R15 K16 [UDim.new]
       71 LOADN                            R16 0
       72 LOADN                            R17 20
       73 CALL                             R15 2 1
       74 SETTABLEKS                       R15 R14 K9 ["PaddingTop"]
       76 GETIMPORT                        R15 K16 [UDim.new]
       78 LOADN                            R16 0
       79 LOADN                            R17 20
       80 CALL                             R15 2 1
       81 SETTABLEKS                       R15 R14 K10 ["PaddingBottom"]
       83 GETIMPORT                        R15 K16 [UDim.new]
       85 LOADN                            R16 0
       86 LOADN                            R17 20
       87 CALL                             R15 2 1
       88 SETTABLEKS                       R15 R14 K11 ["PaddingLeft"]
       90 GETIMPORT                        R15 K16 [UDim.new]
       92 LOADN                            R16 0
       93 LOADN                            R17 20
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K12 ["PaddingRight"]
       97 CALL                             R12 2 1
       98 SETTABLEKS                       R12 R11 K7 ["UIPadding"]
      100 MOVE                             R13 R3
      101 JUMPIFNOT                        R13 ; [+3]
      102 GETTABLEKS                       R14 R1 K17 ["threads"]
      104 GETTABLE                         R13 R14 R3
      105 JUMPIF                           R13 ; [+2]
      106 LOADNIL                          R12
      107 JUMP                             ; [+2]
      108 GETTABLEKS                       R12 R13 K18 ["messages"]
      110 LOADN                            R13 0
      111 JUMPIFNOT                        R12 ; [+69]
      112 GETUPVAL                         R14 13
      113 MOVE                             R15 R12
      114 CALL                             R14 1 1
      115 MOVE                             R15 R12
      116 LOADNIL                          R16
      117 LOADNIL                          R17
      118 FORGPREP                         R15
      119 GETTABLEKS                       R20 R19 K19 ["hidden"]
      121 JUMPIF                           R20 ; [+13]
      122 GETTABLEKS                       R20 R19 K20 ["isDeleted"]
      124 JUMPIF                           R20 ; [+10]
      125 GETTABLEKS                       R23 R19 K22 ["LayoutOrder"]
      127 ORK                              R22 R23 K21 [0]
      128 FASTCALL2                        MATH_MIN R13 R22 ; [+4]
      130 MOVE                             R21 R13
      131 GETIMPORT                        R20 K25 [math.min]
      133 CALL                             R20 2 1
      134 MOVE                             R13 R20
      135 FORGLOOP                         R15 2 ; [-17]
      137 MOVE                             R15 R12
      138 LOADNIL                          R16
      139 LOADNIL                          R17
      140 FORGPREP                         R15
      141 GETTABLEKS                       R20 R19 K19 ["hidden"]
      143 JUMPIF                           R20 ; [+35]
      144 GETTABLEKS                       R20 R19 K20 ["isDeleted"]
      146 JUMPIF                           R20 ; [+32]
      147 GETTABLEKS                       R21 R19 K22 ["LayoutOrder"]
      149 ORK                              R20 R21 K21 [0]
      150 GETUPVAL                         R21 14
      151 GETTABLEKS                       R21 R21 K26 ["Dictionary"]
      153 GETTABLEKS                       R21 R21 K27 ["join"]
      155 MOVE                             R22 R19
      156 DUPTABLE                         R23 K31 [{"retryMessage", "sendMessage", "isLatestAssistantAndMostRecent"}]
      157 SETTABLEKS                       R9 R23 K28 ["retryMessage"]
      159 SETTABLEKS                       R8 R23 K29 ["sendMessage"]
      161 JUMPIFEQ                         R18 R14 ; [+2]
      163 LOADB                            R24 0 +1
      164 LOADB                            R24 1
      165 SETTABLEKS                       R24 R23 K30 ["isLatestAssistantAndMostRecent"]
      167 CALL                             R21 2 1
      168 GETIMPORT                        R22 K34 [string.format]
      170 LOADK                            R23 K35 ["Message-%04i-%s"]
      171 MOVE                             R24 R20
      172 MOVE                             R25 R18
      173 CALL                             R22 3 1
      174 GETUPVAL                         R23 12
      175 GETUPVAL                         R24 15
      176 MOVE                             R25 R21
      177 CALL                             R23 2 1
      178 SETTABLE                         R23 R11 R22
      179 FORGLOOP                         R15 2 ; [-39]
      181 GETUPVAL                         R14 16
      182 GETTABLEKS                       R14 R14 K36 ["Hooks"]
      184 GETTABLEKS                       R14 R14 K37 ["useTokens"]
      186 CALL                             R14 0 1
      187 GETUPVAL                         R15 1
      188 GETTABLEKS                       R15 R15 K38 ["useMemo"]
      190 DUPCLOSURE                       R16 K39 [PROTO_5]
      191 CAPTURE                          UPVAL U17
      192 NEWTABLE                         R17 0 1
      194 GETUPVAL                         R18 17
      195 GETTABLEKS                       R18 R18 K40 ["locale"]
      197 SETLIST                          R17 R18 1 [1]
      199 CALL                             R15 2 1
      200 GETTABLEKS                       R16 R0 K41 ["chatHistoryInterfaceRef"]
      202 GETUPVAL                         R17 1
      203 GETTABLEKS                       R17 R17 K4 ["useEffect"]
      205 NEWCLOSURE                       R18 P2
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R4
      208 NEWTABLE                         R19 0 1
      210 MOVE                             R20 R16
      211 SETLIST                          R19 R20 1 [1]
      213 CALL                             R17 2 0
      214 GETUPVAL                         R17 18
      215 CALL                             R17 0 1
      216 GETUPVAL                         R18 19
      217 CALL                             R18 0 1
      218 JUMPIFNOT                        R18 ; [+3]
      219 GETTABLEKS                       R19 R18 K42 ["messagePageState"]
      221 JUMP                             ; [+1]
      222 LOADNIL                          R19
      223 JUMPIFNOT                        R18 ; [+3]
      224 GETTABLEKS                       R20 R18 K43 ["messageLoadState"]
      226 JUMP                             ; [+1]
      227 LOADNIL                          R20
      228 GETUPVAL                         R21 1
      229 GETTABLEKS                       R21 R21 K4 ["useEffect"]
      231 NEWCLOSURE                       R22 P3
      232 CAPTURE                          UPVAL U11
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R10
      235 NEWTABLE                         R23 0 2
      237 GETTABLEKS                       R24 R10 K44 ["loadSessionPage"]
      239 MOVE                             R25 R18
      240 SETLIST                          R23 R24 2 [1]
      242 CALL                             R21 2 0
      243 GETUPVAL                         R21 20
      244 GETTABLEKS                       R21 R21 K45 ["PersistenceLoadStates"]
      246 GETTABLEKS                       R21 R21 K46 ["Loading"]
      248 JUMPIFNOTEQ                      R20 R21 ; [+27]
      250 GETUPVAL                         R21 12
      251 GETUPVAL                         R22 21
      252 DUPTABLE                         R23 K49 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      253 SUBK                             R24 R13 K50 [1]
      254 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      256 DUPTABLE                         R24 K51 [{"Loading"}]
      257 GETUPVAL                         R25 12
      258 GETUPVAL                         R26 22
      259 DUPTABLE                         R27 K53 [{"size"}]
      260 GETUPVAL                         R28 16
      261 GETTABLEKS                       R28 R28 K54 ["Enums"]
      263 GETTABLEKS                       R28 R28 K55 ["IconSize"]
      265 GETTABLEKS                       R28 R28 K56 ["Small"]
      267 SETTABLEKS                       R28 R27 K52 ["size"]
      269 CALL                             R25 2 1
      270 SETTABLEKS                       R25 R24 K46 ["Loading"]
      272 CALL                             R21 3 1
      273 SETTABLEKS                       R21 R11 K57 ["MessagePersistenceInfo"]
      275 JUMP                             ; [+67]
      276 GETUPVAL                         R21 20
      277 GETTABLEKS                       R21 R21 K45 ["PersistenceLoadStates"]
      279 GETTABLEKS                       R21 R21 K58 ["Error"]
      281 JUMPIFNOTEQ                      R20 R21 ; [+61]
      283 GETUPVAL                         R21 12
      284 GETUPVAL                         R22 21
      285 DUPTABLE                         R23 K49 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      286 SUBK                             R24 R13 K50 [1]
      287 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      289 DUPTABLE                         R24 K61 [{"Icon", "Text"}]
      290 GETUPVAL                         R25 12
      291 GETUPVAL                         R26 23
      292 DUPTABLE                         R27 K64 [{"name", "size", "style", "LayoutOrder"}]
      293 GETUPVAL                         R28 16
      294 GETTABLEKS                       R28 R28 K54 ["Enums"]
      296 GETTABLEKS                       R28 R28 K65 ["IconName"]
      298 GETTABLEKS                       R28 R28 K66 ["TriangleExclamation"]
      300 SETTABLEKS                       R28 R27 K62 ["name"]
      302 GETUPVAL                         R28 16
      303 GETTABLEKS                       R28 R28 K54 ["Enums"]
      305 GETTABLEKS                       R28 R28 K55 ["IconSize"]
      307 GETTABLEKS                       R28 R28 K67 ["Medium"]
      309 SETTABLEKS                       R28 R27 K52 ["size"]
      311 GETTABLEKS                       R28 R14 K68 ["Color"]
      313 GETTABLEKS                       R28 R28 K69 ["System"]
      315 GETTABLEKS                       R28 R28 K70 ["Warning"]
      317 SETTABLEKS                       R28 R27 K63 ["style"]
      319 MOVE                             R28 R17
      320 CALL                             R28 0 1
      321 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      323 CALL                             R25 2 1
      324 SETTABLEKS                       R25 R24 K59 ["Icon"]
      326 GETUPVAL                         R25 12
      327 GETUPVAL                         R26 24
      328 DUPTABLE                         R27 K72 [{["tag"] = "size-0-full auto-x text-label-medium text-align-x-center text-align-y-center text-truncate-split content-system-warning", ["Text"], ["LayoutOrder"]}]
      329 GETTABLEKS                       R28 R15 K73 ["MessagesLoadError"]
      331 SETTABLEKS                       R28 R27 K60 ["Text"]
      333 MOVE                             R28 R17
      334 CALL                             R28 0 1
      335 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      337 CALL                             R25 2 1
      338 SETTABLEKS                       R25 R24 K60 ["Text"]
      340 CALL                             R21 3 1
      341 SETTABLEKS                       R21 R11 K57 ["MessagePersistenceInfo"]
      343 GETUPVAL                         R21 1
      344 GETTABLEKS                       R21 R21 K74 ["useCallback"]
      346 NEWCLOSURE                       R22 P4
      347 CAPTURE                          UPVAL U11
      348 CAPTURE                          VAL R10
      349 CAPTURE                          VAL R19
      350 CAPTURE                          UPVAL U25
      351 CAPTURE                          VAL R3
      352 NEWTABLE                         R23 0 3
      354 GETTABLEKS                       R24 R10 K44 ["loadSessionPage"]
      356 MOVE                             R25 R19
      357 MOVE                             R26 R3
      358 SETLIST                          R23 R24 3 [1]
      360 CALL                             R21 2 1
      361 GETUPVAL                         R22 26
      362 DUPTABLE                         R23 K81 [{"scrollingFrameRef", "pageState", "loadState", "onLoadMore", "triggerDistance", "resetKey"}]
      363 SETTABLEKS                       R4 R23 K75 ["scrollingFrameRef"]
      365 SETTABLEKS                       R19 R23 K76 ["pageState"]
      367 SETTABLEKS                       R20 R23 K77 ["loadState"]
      369 SETTABLEKS                       R21 R23 K78 ["onLoadMore"]
      371 GETUPVAL                         R24 27
      372 GETTABLEKS                       R24 R24 K82 ["MESSAGES_LOAD_TRIGGER_DISTANCE"]
      374 SETTABLEKS                       R24 R23 K79 ["triggerDistance"]
      376 SETTABLEKS                       R3 R23 K80 ["resetKey"]
      378 CALL                             R22 1 1
      379 GETUPVAL                         R23 1
      380 GETTABLEKS                       R23 R23 K3 ["useRef"]
      382 LOADB                            R24 1
      383 CALL                             R23 1 1
      384 GETUPVAL                         R24 1
      385 GETTABLEKS                       R24 R24 K3 ["useRef"]
      387 MOVE                             R25 R3
      388 CALL                             R24 1 1
      389 GETTABLEKS                       R25 R24 K83 ["current"]
      391 JUMPIFEQ                         R25 R3 ; [+6]
      393 SETTABLEKS                       R3 R24 K83 ["current"]
      395 LOADB                            R25 1
      396 SETTABLEKS                       R25 R23 K83 ["current"]
      398 GETUPVAL                         R25 1
      399 GETTABLEKS                       R25 R25 K74 ["useCallback"]
      401 NEWCLOSURE                       R26 P5
      402 CAPTURE                          UPVAL U28
      403 CAPTURE                          VAL R23
      404 CAPTURE                          VAL R22
      405 NEWTABLE                         R27 0 1
      407 GETTABLEKS                       R28 R22 K84 ["onCanvasPositionChanged"]
      409 SETLIST                          R27 R28 1 [1]
      411 CALL                             R25 2 1
      412 GETUPVAL                         R26 1
      413 GETTABLEKS                       R26 R26 K74 ["useCallback"]
      415 NEWCLOSURE                       R27 P6
      416 CAPTURE                          VAL R23
      417 CAPTURE                          VAL R22
      418 NEWTABLE                         R28 0 1
      420 GETTABLEKS                       R29 R22 K85 ["onAbsoluteWindowSizeChanged"]
      422 SETLIST                          R28 R29 1 [1]
      424 CALL                             R26 2 1
      425 GETUPVAL                         R27 1
      426 GETTABLEKS                       R27 R27 K74 ["useCallback"]
      428 NEWCLOSURE                       R28 P7
      429 CAPTURE                          VAL R23
      430 CAPTURE                          VAL R4
      431 CAPTURE                          VAL R22
      432 NEWTABLE                         R29 0 1
      434 GETTABLEKS                       R30 R22 K86 ["onAbsoluteContentSizeChanged"]
      436 SETLIST                          R29 R30 1 [1]
      438 CALL                             R27 2 1
      439 GETUPVAL                         R28 1
      440 GETTABLEKS                       R28 R28 K74 ["useCallback"]
      442 NEWCLOSURE                       R29 P8
      443 CAPTURE                          VAL R23
      444 CAPTURE                          VAL R4
      445 NEWTABLE                         R30 0 1
      447 MOVE                             R31 R4
      448 SETLIST                          R30 R31 1 [1]
      450 CALL                             R28 2 1
      451 GETUPVAL                         R29 12
      452 LOADK                            R30 K87 ["UIListLayout"]
      453 NEWTABLE                         R31 8 0
      455 GETIMPORT                        R32 K91 [Enum.FillDirection.Vertical]
      457 SETTABLEKS                       R32 R31 K89 ["FillDirection"]
      459 GETIMPORT                        R32 K93 [Enum.SortOrder.LayoutOrder]
      461 SETTABLEKS                       R32 R31 K92 ["SortOrder"]
      463 GETIMPORT                        R32 K16 [UDim.new]
      465 LOADN                            R33 0
      466 LOADN                            R34 12
      467 CALL                             R32 2 1
      468 SETTABLEKS                       R32 R31 K94 ["Padding"]
      470 GETTABLEKS                       R32 R22 K95 ["layoutRef"]
      472 SETTABLEKS                       R32 R31 K96 ["ref"]
      474 GETUPVAL                         R32 1
      475 GETTABLEKS                       R32 R32 K97 ["Change"]
      477 GETTABLEKS                       R32 R32 K98 ["AbsoluteContentSize"]
      479 SETTABLE                         R27 R31 R32
      480 CALL                             R29 2 1
      481 SETTABLEKS                       R29 R11 K99 ["ListLayout"]
      483 GETUPVAL                         R29 12
      484 GETUPVAL                         R30 29
      485 GETTABLEKS                       R30 R30 K100 ["Provider"]
      487 DUPTABLE                         R31 K102 [{"scrollToBottom"}]
      488 SETTABLEKS                       R28 R31 K101 ["scrollToBottom"]
      490 DUPTABLE                         R32 K104 [{"ScrollView"}]
      491 GETUPVAL                         R33 12
      492 GETUPVAL                         R34 30
      493 DUPTABLE                         R35 K107 [{["tag"] = "size-full-full", ["scroll"], ["scrollingFrameRef"], ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"]}]
      494 DUPTABLE                         R36 K111 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      495 GETIMPORT                        R37 K114 [Enum.AutomaticSize.Y]
      497 SETTABLEKS                       R37 R36 K108 ["AutomaticCanvasSize"]
      499 GETIMPORT                        R37 K117 [UDim2.fromScale]
      501 LOADN                            R38 1
      502 LOADN                            R39 0
      503 CALL                             R37 2 1
      504 SETTABLEKS                       R37 R36 K109 ["CanvasSize"]
      506 GETIMPORT                        R37 K118 [Enum.ScrollingDirection.Y]
      508 SETTABLEKS                       R37 R36 K110 ["ScrollingDirection"]
      510 SETTABLEKS                       R36 R35 K106 ["scroll"]
      512 SETTABLEKS                       R4 R35 K75 ["scrollingFrameRef"]
      514 SETTABLEKS                       R25 R35 K84 ["onCanvasPositionChanged"]
      516 SETTABLEKS                       R26 R35 K85 ["onAbsoluteWindowSizeChanged"]
      518 MOVE                             R36 R11
      519 CALL                             R33 3 1
      520 SETTABLEKS                       R33 R32 K103 ["ScrollView"]
      522 CALL                             R29 3 -1
      523 RETURN                           R29 -1

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
       90 GETTABLEKS                       R14 R14 K22 ["SessionThreadReadyContext"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K6 ["Components"]
       97 GETTABLEKS                       R15 R15 K7 ["Contexts"]
       99 GETTABLEKS                       R15 R15 K23 ["ThreadIdContext"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETTABLEKS                       R16 R0 K24 ["Resources"]
      106 GETTABLEKS                       R16 R16 K25 ["Localization"]
      108 GETTABLEKS                       R16 R16 K26 ["Translator"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K5 [require]
      113 GETTABLEKS                       R17 R0 K27 ["Types"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R18 R0 K18 ["Util"]
      120 GETTABLEKS                       R18 R18 K28 ["getToggleGenerationInputFunc"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K5 [require]
      125 GETTABLEKS                       R19 R0 K29 ["Hooks"]
      127 GETTABLEKS                       R19 R19 K30 ["useAcpSessionHistory"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K5 [require]
      132 GETTABLEKS                       R20 R0 K29 ["Hooks"]
      134 GETTABLEKS                       R20 R20 K31 ["useAddThread"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K5 [require]
      139 GETTABLEKS                       R21 R0 K29 ["Hooks"]
      141 GETTABLEKS                       R21 R21 K32 ["useConversation"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K5 [require]
      146 GETTABLEKS                       R22 R0 K29 ["Hooks"]
      148 GETTABLEKS                       R22 R22 K33 ["useCurrentThread"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K5 [require]
      153 GETTABLEKS                       R23 R0 K29 ["Hooks"]
      155 GETTABLEKS                       R23 R23 K34 ["useRetryMessage"]
      157 CALL                             R22 1 1
      158 GETIMPORT                        R23 K5 [require]
      160 GETTABLEKS                       R24 R0 K29 ["Hooks"]
      162 GETTABLEKS                       R24 R24 K35 ["useSendMessage"]
      164 CALL                             R23 1 1
      165 GETIMPORT                        R24 K5 [require]
      167 GETTABLEKS                       R25 R0 K29 ["Hooks"]
      169 GETTABLEKS                       R25 R25 K36 ["useUpperScrollEdge"]
      171 CALL                             R24 1 1
      172 GETIMPORT                        R25 K5 [require]
      174 GETTABLEKS                       R26 R0 K29 ["Hooks"]
      176 GETTABLEKS                       R26 R26 K37 ["useWelcomeMessage"]
      178 CALL                             R25 1 1
      179 GETTABLEKS                       R26 R6 K38 ["Icon"]
      181 GETTABLEKS                       R27 R6 K39 ["Loading"]
      183 GETTABLEKS                       R28 R6 K40 ["ScrollView"]
      185 GETTABLEKS                       R29 R6 K41 ["Text"]
      187 GETTABLEKS                       R30 R6 K42 ["View"]
      189 GETTABLEKS                       R31 R11 K43 ["createElement"]
      191 GETTABLEKS                       R32 R12 K44 ["createNextOrder"]
      193 DUPCLOSURE                       R33 K45 [PROTO_0]
      194 DUPCLOSURE                       R34 K46 [PROTO_1]
      195 DUPCLOSURE                       R35 K47 [PROTO_2]
      196 DUPCLOSURE                       R36 K48 [PROTO_3]
      197 DUPCLOSURE                       R37 K49 [PROTO_15]
      198 CAPTURE                          VAL R20
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R25
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R23
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R22
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R31
      211 CAPTURE                          VAL R36
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R32
      217 CAPTURE                          VAL R21
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R30
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R26
      222 CAPTURE                          VAL R29
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R5
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R28
      229 RETURN                           R37 1
