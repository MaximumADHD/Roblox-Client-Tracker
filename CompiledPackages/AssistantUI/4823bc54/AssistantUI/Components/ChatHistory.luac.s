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
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantHarnessSplit"]
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+14]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["acpSessionId"]
        9 JUMPIFNOT                        R0 ; [+10]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["messageLoadState"]
       13 JUMPIFNOTEQKNIL                  R0 ; [+6]
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K3 ["loadSessionPage"]
       18 LOADNIL                          R1
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantHarnessSplit"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["loadSessionPage"]
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["nextCursor"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 3
       15 GETTABLEKS                       R0 R0 K3 ["loadOlderMessages"]
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R2 4
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

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
       54 GETTABLEKS                       R10 R10 K7 ["FFlagAssistantHarnessSplit"]
       56 CALL                             R9 1 1
       57 DUPTABLE                         R10 K9 [{"UIPadding"}]
       58 GETUPVAL                         R11 11
       59 LOADK                            R12 K8 ["UIPadding"]
       60 DUPTABLE                         R13 K14 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       61 GETIMPORT                        R14 K17 [UDim.new]
       63 LOADN                            R15 0
       64 LOADN                            R16 20
       65 CALL                             R14 2 1
       66 SETTABLEKS                       R14 R13 K10 ["PaddingTop"]
       68 GETIMPORT                        R14 K17 [UDim.new]
       70 LOADN                            R15 0
       71 LOADN                            R16 20
       72 CALL                             R14 2 1
       73 SETTABLEKS                       R14 R13 K11 ["PaddingBottom"]
       75 GETIMPORT                        R14 K17 [UDim.new]
       77 LOADN                            R15 0
       78 LOADN                            R16 20
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K12 ["PaddingLeft"]
       82 GETIMPORT                        R14 K17 [UDim.new]
       84 LOADN                            R15 0
       85 LOADN                            R16 20
       86 CALL                             R14 2 1
       87 SETTABLEKS                       R14 R13 K13 ["PaddingRight"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K8 ["UIPadding"]
       92 MOVE                             R12 R3
       93 JUMPIFNOT                        R12 ; [+3]
       94 GETTABLEKS                       R13 R1 K18 ["threads"]
       96 GETTABLE                         R12 R13 R3
       97 JUMPIF                           R12 ; [+2]
       98 LOADNIL                          R11
       99 JUMP                             ; [+2]
      100 GETTABLEKS                       R11 R12 K19 ["messages"]
      102 LOADN                            R12 0
      103 JUMPIFNOT                        R11 ; [+69]
      104 GETUPVAL                         R13 12
      105 MOVE                             R14 R11
      106 CALL                             R13 1 1
      107 MOVE                             R14 R11
      108 LOADNIL                          R15
      109 LOADNIL                          R16
      110 FORGPREP                         R14
      111 GETTABLEKS                       R19 R18 K20 ["hidden"]
      113 JUMPIF                           R19 ; [+13]
      114 GETTABLEKS                       R19 R18 K21 ["isDeleted"]
      116 JUMPIF                           R19 ; [+10]
      117 GETTABLEKS                       R22 R18 K23 ["LayoutOrder"]
      119 ORK                              R21 R22 K22 [0]
      120 FASTCALL2                        MATH_MIN R12 R21 ; [+4]
      122 MOVE                             R20 R12
      123 GETIMPORT                        R19 K26 [math.min]
      125 CALL                             R19 2 1
      126 MOVE                             R12 R19
      127 FORGLOOP                         R14 2 ; [-17]
      129 MOVE                             R14 R11
      130 LOADNIL                          R15
      131 LOADNIL                          R16
      132 FORGPREP                         R14
      133 GETTABLEKS                       R19 R18 K20 ["hidden"]
      135 JUMPIF                           R19 ; [+35]
      136 GETTABLEKS                       R19 R18 K21 ["isDeleted"]
      138 JUMPIF                           R19 ; [+32]
      139 GETTABLEKS                       R20 R18 K23 ["LayoutOrder"]
      141 ORK                              R19 R20 K22 [0]
      142 GETUPVAL                         R20 13
      143 GETTABLEKS                       R20 R20 K27 ["Dictionary"]
      145 GETTABLEKS                       R20 R20 K28 ["join"]
      147 MOVE                             R21 R18
      148 DUPTABLE                         R22 K32 [{"retryMessage", "sendMessage", "isLatestAssistantAndMostRecent"}]
      149 SETTABLEKS                       R8 R22 K29 ["retryMessage"]
      151 SETTABLEKS                       R7 R22 K30 ["sendMessage"]
      153 JUMPIFEQ                         R17 R13 ; [+2]
      155 LOADB                            R23 0 +1
      156 LOADB                            R23 1
      157 SETTABLEKS                       R23 R22 K31 ["isLatestAssistantAndMostRecent"]
      159 CALL                             R20 2 1
      160 GETIMPORT                        R21 K35 [string.format]
      162 LOADK                            R22 K36 ["Message-%04i-%s"]
      163 MOVE                             R23 R19
      164 MOVE                             R24 R17
      165 CALL                             R21 3 1
      166 GETUPVAL                         R22 11
      167 GETUPVAL                         R23 14
      168 MOVE                             R24 R20
      169 CALL                             R22 2 1
      170 SETTABLE                         R22 R10 R21
      171 FORGLOOP                         R14 2 ; [-39]
      173 GETUPVAL                         R13 15
      174 GETTABLEKS                       R13 R13 K37 ["Hooks"]
      176 GETTABLEKS                       R13 R13 K38 ["useTokens"]
      178 CALL                             R13 0 1
      179 GETUPVAL                         R14 1
      180 GETTABLEKS                       R14 R14 K39 ["useMemo"]
      182 DUPCLOSURE                       R15 K40 [PROTO_5]
      183 CAPTURE                          UPVAL U16
      184 NEWTABLE                         R16 0 1
      186 GETUPVAL                         R17 16
      187 GETTABLEKS                       R17 R17 K41 ["locale"]
      189 SETLIST                          R16 R17 1 [1]
      191 CALL                             R14 2 1
      192 GETTABLEKS                       R15 R0 K42 ["chatHistoryInterfaceRef"]
      194 GETUPVAL                         R16 1
      195 GETTABLEKS                       R16 R16 K4 ["useEffect"]
      197 NEWCLOSURE                       R17 P2
      198 CAPTURE                          VAL R15
      199 CAPTURE                          VAL R4
      200 NEWTABLE                         R18 0 1
      202 MOVE                             R19 R15
      203 SETLIST                          R18 R19 1 [1]
      205 CALL                             R16 2 0
      206 GETUPVAL                         R16 17
      207 CALL                             R16 0 1
      208 GETUPVAL                         R17 18
      209 CALL                             R17 0 1
      210 JUMPIFNOT                        R17 ; [+3]
      211 GETTABLEKS                       R18 R17 K43 ["messagePageState"]
      213 JUMP                             ; [+1]
      214 LOADNIL                          R18
      215 JUMPIFNOT                        R17 ; [+3]
      216 GETTABLEKS                       R19 R17 K44 ["messageLoadState"]
      218 JUMP                             ; [+1]
      219 LOADNIL                          R19
      220 GETUPVAL                         R20 1
      221 GETTABLEKS                       R20 R20 K4 ["useEffect"]
      223 NEWCLOSURE                       R21 P3
      224 CAPTURE                          UPVAL U10
      225 CAPTURE                          VAL R17
      226 CAPTURE                          VAL R9
      227 NEWTABLE                         R22 0 2
      229 GETTABLEKS                       R23 R9 K45 ["loadSessionPage"]
      231 MOVE                             R24 R17
      232 SETLIST                          R22 R23 2 [1]
      234 CALL                             R20 2 0
      235 GETUPVAL                         R20 19
      236 GETTABLEKS                       R20 R20 K46 ["PersistenceLoadStates"]
      238 GETTABLEKS                       R20 R20 K47 ["Loading"]
      240 JUMPIFNOTEQ                      R19 R20 ; [+27]
      242 GETUPVAL                         R20 11
      243 GETUPVAL                         R21 20
      244 DUPTABLE                         R22 K50 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      245 SUBK                             R23 R12 K51 [1]
      246 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      248 DUPTABLE                         R23 K52 [{"Loading"}]
      249 GETUPVAL                         R24 11
      250 GETUPVAL                         R25 21
      251 DUPTABLE                         R26 K54 [{"size"}]
      252 GETUPVAL                         R27 15
      253 GETTABLEKS                       R27 R27 K55 ["Enums"]
      255 GETTABLEKS                       R27 R27 K56 ["IconSize"]
      257 GETTABLEKS                       R27 R27 K57 ["Small"]
      259 SETTABLEKS                       R27 R26 K53 ["size"]
      261 CALL                             R24 2 1
      262 SETTABLEKS                       R24 R23 K47 ["Loading"]
      264 CALL                             R20 3 1
      265 SETTABLEKS                       R20 R10 K58 ["MessagePersistenceInfo"]
      267 JUMP                             ; [+67]
      268 GETUPVAL                         R20 19
      269 GETTABLEKS                       R20 R20 K46 ["PersistenceLoadStates"]
      271 GETTABLEKS                       R20 R20 K59 ["Error"]
      273 JUMPIFNOTEQ                      R19 R20 ; [+61]
      275 GETUPVAL                         R20 11
      276 GETUPVAL                         R21 20
      277 DUPTABLE                         R22 K50 [{["tag"] = "row align-x-center align-y-center gap-small size-full-800", ["LayoutOrder"]}]
      278 SUBK                             R23 R12 K51 [1]
      279 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      281 DUPTABLE                         R23 K62 [{"Icon", "Text"}]
      282 GETUPVAL                         R24 11
      283 GETUPVAL                         R25 22
      284 DUPTABLE                         R26 K65 [{"name", "size", "style", "LayoutOrder"}]
      285 GETUPVAL                         R27 15
      286 GETTABLEKS                       R27 R27 K55 ["Enums"]
      288 GETTABLEKS                       R27 R27 K66 ["IconName"]
      290 GETTABLEKS                       R27 R27 K67 ["TriangleExclamation"]
      292 SETTABLEKS                       R27 R26 K63 ["name"]
      294 GETUPVAL                         R27 15
      295 GETTABLEKS                       R27 R27 K55 ["Enums"]
      297 GETTABLEKS                       R27 R27 K56 ["IconSize"]
      299 GETTABLEKS                       R27 R27 K68 ["Medium"]
      301 SETTABLEKS                       R27 R26 K53 ["size"]
      303 GETTABLEKS                       R27 R13 K69 ["Color"]
      305 GETTABLEKS                       R27 R27 K70 ["System"]
      307 GETTABLEKS                       R27 R27 K71 ["Warning"]
      309 SETTABLEKS                       R27 R26 K64 ["style"]
      311 MOVE                             R27 R16
      312 CALL                             R27 0 1
      313 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      315 CALL                             R24 2 1
      316 SETTABLEKS                       R24 R23 K60 ["Icon"]
      318 GETUPVAL                         R24 11
      319 GETUPVAL                         R25 23
      320 DUPTABLE                         R26 K73 [{["tag"] = "size-0-full auto-x text-label-medium text-align-x-center text-align-y-center text-truncate-split content-system-warning", ["Text"], ["LayoutOrder"]}]
      321 GETTABLEKS                       R27 R14 K74 ["MessagesLoadError"]
      323 SETTABLEKS                       R27 R26 K61 ["Text"]
      325 MOVE                             R27 R16
      326 CALL                             R27 0 1
      327 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      329 CALL                             R24 2 1
      330 SETTABLEKS                       R24 R23 K61 ["Text"]
      332 CALL                             R20 3 1
      333 SETTABLEKS                       R20 R10 K58 ["MessagePersistenceInfo"]
      335 GETUPVAL                         R20 1
      336 GETTABLEKS                       R20 R20 K75 ["useCallback"]
      338 NEWCLOSURE                       R21 P4
      339 CAPTURE                          UPVAL U10
      340 CAPTURE                          VAL R9
      341 CAPTURE                          VAL R18
      342 CAPTURE                          UPVAL U24
      343 CAPTURE                          VAL R3
      344 NEWTABLE                         R22 0 3
      346 GETTABLEKS                       R23 R9 K45 ["loadSessionPage"]
      348 MOVE                             R24 R18
      349 MOVE                             R25 R3
      350 SETLIST                          R22 R23 3 [1]
      352 CALL                             R20 2 1
      353 GETUPVAL                         R21 25
      354 DUPTABLE                         R22 K82 [{"scrollingFrameRef", "pageState", "loadState", "onLoadMore", "triggerDistance", "resetKey"}]
      355 SETTABLEKS                       R4 R22 K76 ["scrollingFrameRef"]
      357 SETTABLEKS                       R18 R22 K77 ["pageState"]
      359 SETTABLEKS                       R19 R22 K78 ["loadState"]
      361 SETTABLEKS                       R20 R22 K79 ["onLoadMore"]
      363 GETUPVAL                         R23 26
      364 GETTABLEKS                       R23 R23 K83 ["MESSAGES_LOAD_TRIGGER_DISTANCE"]
      366 SETTABLEKS                       R23 R22 K80 ["triggerDistance"]
      368 SETTABLEKS                       R3 R22 K81 ["resetKey"]
      370 CALL                             R21 1 1
      371 GETUPVAL                         R22 1
      372 GETTABLEKS                       R22 R22 K3 ["useRef"]
      374 LOADB                            R23 1
      375 CALL                             R22 1 1
      376 GETUPVAL                         R23 1
      377 GETTABLEKS                       R23 R23 K3 ["useRef"]
      379 MOVE                             R24 R3
      380 CALL                             R23 1 1
      381 GETTABLEKS                       R24 R23 K84 ["current"]
      383 JUMPIFEQ                         R24 R3 ; [+6]
      385 SETTABLEKS                       R3 R23 K84 ["current"]
      387 LOADB                            R24 1
      388 SETTABLEKS                       R24 R22 K84 ["current"]
      390 GETUPVAL                         R24 1
      391 GETTABLEKS                       R24 R24 K75 ["useCallback"]
      393 NEWCLOSURE                       R25 P5
      394 CAPTURE                          UPVAL U10
      395 CAPTURE                          VAL R22
      396 CAPTURE                          VAL R21
      397 NEWTABLE                         R26 0 1
      399 GETTABLEKS                       R27 R21 K85 ["onCanvasPositionChanged"]
      401 SETLIST                          R26 R27 1 [1]
      403 CALL                             R24 2 1
      404 GETUPVAL                         R25 1
      405 GETTABLEKS                       R25 R25 K75 ["useCallback"]
      407 NEWCLOSURE                       R26 P6
      408 CAPTURE                          VAL R22
      409 CAPTURE                          VAL R21
      410 NEWTABLE                         R27 0 1
      412 GETTABLEKS                       R28 R21 K86 ["onAbsoluteWindowSizeChanged"]
      414 SETLIST                          R27 R28 1 [1]
      416 CALL                             R25 2 1
      417 GETUPVAL                         R26 1
      418 GETTABLEKS                       R26 R26 K75 ["useCallback"]
      420 NEWCLOSURE                       R27 P7
      421 CAPTURE                          VAL R22
      422 CAPTURE                          VAL R4
      423 CAPTURE                          VAL R21
      424 NEWTABLE                         R28 0 1
      426 GETTABLEKS                       R29 R21 K87 ["onAbsoluteContentSizeChanged"]
      428 SETLIST                          R28 R29 1 [1]
      430 CALL                             R26 2 1
      431 GETUPVAL                         R27 1
      432 GETTABLEKS                       R27 R27 K75 ["useCallback"]
      434 NEWCLOSURE                       R28 P8
      435 CAPTURE                          VAL R22
      436 CAPTURE                          VAL R4
      437 NEWTABLE                         R29 0 1
      439 MOVE                             R30 R4
      440 SETLIST                          R29 R30 1 [1]
      442 CALL                             R27 2 1
      443 GETUPVAL                         R28 11
      444 LOADK                            R29 K88 ["UIListLayout"]
      445 NEWTABLE                         R30 8 0
      447 GETIMPORT                        R31 K92 [Enum.FillDirection.Vertical]
      449 SETTABLEKS                       R31 R30 K90 ["FillDirection"]
      451 GETIMPORT                        R31 K94 [Enum.SortOrder.LayoutOrder]
      453 SETTABLEKS                       R31 R30 K93 ["SortOrder"]
      455 GETIMPORT                        R31 K17 [UDim.new]
      457 LOADN                            R32 0
      458 LOADN                            R33 12
      459 CALL                             R31 2 1
      460 SETTABLEKS                       R31 R30 K95 ["Padding"]
      462 GETTABLEKS                       R31 R21 K96 ["layoutRef"]
      464 SETTABLEKS                       R31 R30 K97 ["ref"]
      466 GETUPVAL                         R31 1
      467 GETTABLEKS                       R31 R31 K98 ["Change"]
      469 GETTABLEKS                       R31 R31 K99 ["AbsoluteContentSize"]
      471 SETTABLE                         R26 R30 R31
      472 CALL                             R28 2 1
      473 SETTABLEKS                       R28 R10 K100 ["ListLayout"]
      475 GETUPVAL                         R28 11
      476 GETUPVAL                         R29 27
      477 GETTABLEKS                       R29 R29 K101 ["Provider"]
      479 DUPTABLE                         R30 K103 [{"scrollToBottom"}]
      480 SETTABLEKS                       R27 R30 K102 ["scrollToBottom"]
      482 DUPTABLE                         R31 K105 [{"ScrollView"}]
      483 GETUPVAL                         R32 11
      484 GETUPVAL                         R33 28
      485 DUPTABLE                         R34 K108 [{["tag"] = "size-full-full", ["scroll"], ["scrollingFrameRef"], ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"]}]
      486 DUPTABLE                         R35 K112 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      487 GETIMPORT                        R36 K115 [Enum.AutomaticSize.Y]
      489 SETTABLEKS                       R36 R35 K109 ["AutomaticCanvasSize"]
      491 GETIMPORT                        R36 K118 [UDim2.fromScale]
      493 LOADN                            R37 1
      494 LOADN                            R38 0
      495 CALL                             R36 2 1
      496 SETTABLEKS                       R36 R35 K110 ["CanvasSize"]
      498 GETIMPORT                        R36 K119 [Enum.ScrollingDirection.Y]
      500 SETTABLEKS                       R36 R35 K111 ["ScrollingDirection"]
      502 SETTABLEKS                       R35 R34 K107 ["scroll"]
      504 SETTABLEKS                       R4 R34 K76 ["scrollingFrameRef"]
      506 SETTABLEKS                       R24 R34 K85 ["onCanvasPositionChanged"]
      508 SETTABLEKS                       R25 R34 K86 ["onAbsoluteWindowSizeChanged"]
      510 MOVE                             R35 R10
      511 CALL                             R32 3 1
      512 SETTABLEKS                       R32 R31 K104 ["ScrollView"]
      514 CALL                             R28 3 -1
      515 RETURN                           R28 -1

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
       58 GETTABLEKS                       R9 R0 K16 ["Util"]
       60 GETTABLEKS                       R9 R9 K17 ["Persistence"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K10 ["Parent"]
       67 GETTABLEKS                       R10 R10 K18 ["React"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K10 ["Parent"]
       74 GETTABLEKS                       R11 R11 K19 ["ReactUtils"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K7 ["Contexts"]
       83 GETTABLEKS                       R12 R12 K20 ["ThreadIdContext"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K21 ["Resources"]
       90 GETTABLEKS                       R13 R13 K22 ["Localization"]
       92 GETTABLEKS                       R13 R13 K23 ["Translator"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K24 ["Types"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K16 ["Util"]
      104 GETTABLEKS                       R15 R15 K25 ["getToggleGenerationInputFunc"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K26 ["Hooks"]
      111 GETTABLEKS                       R16 R16 K27 ["useAcpSessionHistory"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K26 ["Hooks"]
      118 GETTABLEKS                       R17 R17 K28 ["useAddThread"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETTABLEKS                       R18 R0 K26 ["Hooks"]
      125 GETTABLEKS                       R18 R18 K29 ["useConversation"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R19 R0 K26 ["Hooks"]
      132 GETTABLEKS                       R19 R19 K30 ["useCurrentThread"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K5 [require]
      137 GETTABLEKS                       R20 R0 K26 ["Hooks"]
      139 GETTABLEKS                       R20 R20 K31 ["useRetryMessage"]
      141 CALL                             R19 1 1
      142 GETIMPORT                        R20 K5 [require]
      144 GETTABLEKS                       R21 R0 K26 ["Hooks"]
      146 GETTABLEKS                       R21 R21 K32 ["useSendMessage"]
      148 CALL                             R20 1 1
      149 GETIMPORT                        R21 K5 [require]
      151 GETTABLEKS                       R22 R0 K26 ["Hooks"]
      153 GETTABLEKS                       R22 R22 K33 ["useUpperScrollEdge"]
      155 CALL                             R21 1 1
      156 GETIMPORT                        R22 K5 [require]
      158 GETTABLEKS                       R23 R0 K26 ["Hooks"]
      160 GETTABLEKS                       R23 R23 K34 ["useWelcomeMessage"]
      162 CALL                             R22 1 1
      163 GETTABLEKS                       R23 R5 K35 ["Icon"]
      165 GETTABLEKS                       R24 R5 K36 ["Loading"]
      167 GETTABLEKS                       R25 R5 K37 ["ScrollView"]
      169 GETTABLEKS                       R26 R5 K38 ["Text"]
      171 GETTABLEKS                       R27 R5 K39 ["View"]
      173 GETTABLEKS                       R28 R9 K40 ["createElement"]
      175 GETTABLEKS                       R29 R10 K41 ["createNextOrder"]
      177 DUPCLOSURE                       R30 K42 [PROTO_0]
      178 DUPCLOSURE                       R31 K43 [PROTO_1]
      179 DUPCLOSURE                       R32 K44 [PROTO_2]
      180 DUPCLOSURE                       R33 K45 [PROTO_3]
      181 DUPCLOSURE                       R34 K46 [PROTO_15]
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R28
      194 CAPTURE                          VAL R33
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R29
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R13
      202 CAPTURE                          VAL R27
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R26
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R25
      211 RETURN                           R34 1
