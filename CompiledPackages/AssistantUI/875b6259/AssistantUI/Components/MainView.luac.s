PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteCanvasSize"]
        2 GETTABLEKS                       R1 R1 K1 ["Y"]
        4 LOADN                            R3 0
        5 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R5 K1 ["Y"]
        9 SUB                              R4 R1 R5
       10 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       12 GETIMPORT                        R2 K5 [math.max]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteCanvasSize"]
        2 GETTABLEKS                       R2 R2 K1 ["Y"]
        4 LOADN                            R4 0
        5 GETTABLEKS                       R6 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R6 R6 K1 ["Y"]
        9 SUB                              R5 R2 R6
       10 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       12 GETIMPORT                        R3 K5 [math.max]
       14 CALL                             R3 2 1
       15 MOVE                             R1 R3
       16 GETIMPORT                        R2 K8 [Vector2.new]
       18 LOADN                            R3 0
       19 MOVE                             R4 R1
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R0 K9 ["CanvasPosition"]
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R1 1
        9 SETTABLEKS                       R1 R0 K0 ["current"]
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 1
       13 GETUPVAL                         R1 3
       14 MOVE                             R2 R0
       15 LOADNIL                          R3
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 4
       18 DUPCLOSURE                       R2 K1 [PROTO_2]
       19 CAPTURE                          UPVAL U5
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["useContext"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K1 ["Context"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R3 K3 ["sessionId"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K4 ["useRef"]
       23 LOADNIL                          R6
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U5
       35 NEWTABLE                         R8 0 3
       37 MOVE                             R9 R1
       38 MOVE                             R10 R2
       39 MOVE                             R11 R4
       40 SETLIST                          R8 R9 3 [1]
       42 CALL                             R6 2 0
       43 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 LOADNIL                          R3
       10 GETTABLEKS                       R4 R1 K2 ["activeRender"]
       12 JUMPIFNOT                        R4 ; [+5]
       13 GETTABLEKS                       R4 R1 K2 ["activeRender"]
       15 CALL                             R4 0 1
       16 MOVE                             R3 R4
       17 JUMP                             ; [+60]
       18 GETUPVAL                         R4 3
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+41]
       21 GETUPVAL                         R4 4
       22 GETUPVAL                         R5 5
       23 DUPTABLE                         R6 K5 [{"tag", "LayoutOrder"}]
       24 LOADK                            R7 K6 ["col size-full-0 auto-y gap-small"]
       25 SETTABLEKS                       R7 R6 K3 ["tag"]
       27 LOADN                            R7 1
       28 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       30 DUPTABLE                         R7 K9 [{"PersistentPlanPanel", "InputArea"}]
       31 GETUPVAL                         R8 4
       32 GETUPVAL                         R9 6
       33 DUPTABLE                         R10 K10 [{"LayoutOrder"}]
       34 MOVE                             R11 R2
       35 CALL                             R11 0 1
       36 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       38 CALL                             R8 2 1
       39 SETTABLEKS                       R8 R7 K7 ["PersistentPlanPanel"]
       41 GETUPVAL                         R8 4
       42 GETUPVAL                         R9 7
       43 DUPTABLE                         R10 K13 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
       44 MOVE                             R11 R2
       45 CALL                             R11 0 1
       46 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       48 GETTABLEKS                       R11 R0 K11 ["OnMessageSent"]
       50 SETTABLEKS                       R11 R10 K11 ["OnMessageSent"]
       52 GETTABLEKS                       R11 R0 K12 ["textBoxRef"]
       54 SETTABLEKS                       R11 R10 K12 ["textBoxRef"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K8 ["InputArea"]
       59 CALL                             R4 3 1
       60 MOVE                             R3 R4
       61 JUMP                             ; [+16]
       62 GETUPVAL                         R4 4
       63 GETUPVAL                         R5 7
       64 DUPTABLE                         R6 K13 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
       65 LOADN                            R7 1
       66 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       68 GETTABLEKS                       R7 R0 K11 ["OnMessageSent"]
       70 SETTABLEKS                       R7 R6 K11 ["OnMessageSent"]
       72 GETTABLEKS                       R7 R0 K12 ["textBoxRef"]
       74 SETTABLEKS                       R7 R6 K12 ["textBoxRef"]
       76 CALL                             R4 2 1
       77 MOVE                             R3 R4
       78 GETUPVAL                         R4 4
       79 GETUPVAL                         R5 5
       80 DUPTABLE                         R6 K5 [{"tag", "LayoutOrder"}]
       81 LOADK                            R7 K14 ["col size-full-0 auto-y margin-x-small"]
       82 SETTABLEKS                       R7 R6 K3 ["tag"]
       84 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       86 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       88 DUPTABLE                         R7 K15 [{"InputArea"}]
       89 SETTABLEKS                       R3 R7 K8 ["InputArea"]
       91 CALL                             R4 3 -1
       92 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["scrollToBottom"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteCanvasSize"]
        2 GETTABLEKS                       R2 R2 K1 ["Y"]
        4 LOADN                            R4 0
        5 GETTABLEKS                       R6 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R6 R6 K1 ["Y"]
        9 SUB                              R5 R2 R6
       10 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       12 GETIMPORT                        R3 K5 [math.max]
       14 CALL                             R3 2 1
       15 MOVE                             R1 R3
       16 GETTABLEKS                       R2 R0 K6 ["CanvasPosition"]
       18 GETTABLEKS                       R2 R2 K1 ["Y"]
       20 SUB                              R5 R2 R1
       21 FASTCALL1                        MATH_ABS R5 ; [+2]
       22 GETIMPORT                        R4 K8 [math.abs]
       24 CALL                             R4 1 1
       25 LOADN                            R5 1
       26 JUMPIFLE                         R4 R5 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 GETUPVAL                         R4 0
       31 SETTABLEKS                       R3 R4 K9 ["current"]
       33 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+23]
        4 GETTABLEKS                       R2 R0 K1 ["AbsoluteCanvasSize"]
        6 GETTABLEKS                       R2 R2 K2 ["Y"]
        8 LOADN                            R4 0
        9 GETTABLEKS                       R6 R0 K3 ["AbsoluteSize"]
       11 GETTABLEKS                       R6 R6 K2 ["Y"]
       13 SUB                              R5 R2 R6
       14 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       16 GETIMPORT                        R3 K6 [math.max]
       18 CALL                             R3 2 1
       19 MOVE                             R1 R3
       20 GETIMPORT                        R2 K9 [Vector2.new]
       22 LOADN                            R3 0
       23 MOVE                             R4 R1
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R0 K10 ["CanvasPosition"]
       27 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+23]
        4 GETTABLEKS                       R2 R0 K1 ["AbsoluteCanvasSize"]
        6 GETTABLEKS                       R2 R2 K2 ["Y"]
        8 LOADN                            R4 0
        9 GETTABLEKS                       R6 R0 K3 ["AbsoluteSize"]
       11 GETTABLEKS                       R6 R6 K2 ["Y"]
       13 SUB                              R5 R2 R6
       14 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       16 GETIMPORT                        R3 K6 [math.max]
       18 CALL                             R3 2 1
       19 MOVE                             R1 R3
       20 GETIMPORT                        R2 K9 [Vector2.new]
       22 LOADN                            R3 0
       23 MOVE                             R4 R1
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R0 K10 ["CanvasPosition"]
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 3
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 4
       12 CALL                             R1 0 0
       13 GETUPVAL                         R1 5
       14 CALL                             R1 0 0
       15 LOADNIL                          R1
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 GETUPVAL                         R6 1
       21 CALL                             R6 0 1
       22 JUMPIFNOT                        R6 ; [+16]
       23 GETUPVAL                         R6 6
       24 GETTABLEKS                       R6 R6 K1 ["useRef"]
       26 LOADNIL                          R7
       27 CALL                             R6 1 1
       28 MOVE                             R5 R6
       29 GETUPVAL                         R6 6
       30 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          REF R5
       34 NEWTABLE                         R8 0 0
       36 CALL                             R6 2 1
       37 MOVE                             R4 R6
       38 JUMP                             ; [+38]
       39 GETUPVAL                         R6 6
       40 GETTABLEKS                       R6 R6 K1 ["useRef"]
       42 LOADNIL                          R7
       43 CALL                             R6 1 1
       44 MOVE                             R1 R6
       45 GETUPVAL                         R6 6
       46 GETTABLEKS                       R6 R6 K1 ["useRef"]
       48 LOADB                            R7 1
       49 CALL                             R6 1 1
       50 GETUPVAL                         R7 6
       51 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       53 NEWCLOSURE                       R8 P1
       54 CAPTURE                          VAL R6
       55 NEWTABLE                         R9 0 0
       57 CALL                             R7 2 1
       58 MOVE                             R2 R7
       59 GETUPVAL                         R7 6
       60 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       62 NEWCLOSURE                       R8 P2
       63 CAPTURE                          VAL R6
       64 NEWTABLE                         R9 0 0
       66 CALL                             R7 2 1
       67 MOVE                             R3 R7
       68 GETUPVAL                         R7 6
       69 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       71 NEWCLOSURE                       R8 P3
       72 CAPTURE                          REF R1
       73 NEWTABLE                         R9 0 0
       75 CALL                             R7 2 1
       76 MOVE                             R4 R7
       77 GETUPVAL                         R7 7
       78 CALL                             R7 0 1
       79 JUMPIFNOT                        R7 ; [+8]
       80 GETUPVAL                         R6 6
       81 GETTABLEKS                       R6 R6 K3 ["useContext"]
       83 GETUPVAL                         R7 8
       84 GETTABLEKS                       R7 R7 K4 ["Context"]
       86 CALL                             R6 1 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R6
       89 JUMPIFNOT                        R6 ; [+3]
       90 GETTABLEKS                       R7 R6 K5 ["feedbackRequest"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R7
       94 GETUPVAL                         R8 9
       95 CALL                             R8 0 1
       96 NEWTABLE                         R9 0 0
       98 GETUPVAL                         R10 10
       99 CALL                             R10 0 1
      100 JUMPIFNOT                        R10 ; [+40]
      101 GETUPVAL                         R10 11
      102 CALL                             R10 0 1
      103 JUMPIFNOT                        R10 ; [+21]
      104 NEWTABLE                         R10 0 3
      106 GETUPVAL                         R11 12
      107 GETUPVAL                         R12 13
      108 GETTABLEKS                       R12 R12 K6 ["Provider"]
      110 CALL                             R11 1 1
      111 GETUPVAL                         R12 12
      112 GETUPVAL                         R13 14
      113 GETTABLEKS                       R13 R13 K6 ["Provider"]
      115 CALL                             R12 1 1
      116 GETUPVAL                         R13 12
      117 GETUPVAL                         R14 15
      118 GETTABLEKS                       R14 R14 K6 ["Provider"]
      120 CALL                             R13 1 -1
      121 SETLIST                          R10 R11 -1 [1]
      123 MOVE                             R9 R10
      124 JUMP                             ; [+45]
      125 NEWTABLE                         R10 0 2
      127 GETUPVAL                         R11 12
      128 GETUPVAL                         R12 13
      129 GETTABLEKS                       R12 R12 K6 ["Provider"]
      131 CALL                             R11 1 1
      132 GETUPVAL                         R12 12
      133 GETUPVAL                         R13 14
      134 GETTABLEKS                       R13 R13 K6 ["Provider"]
      136 CALL                             R12 1 -1
      137 SETLIST                          R10 R11 -1 [1]
      139 MOVE                             R9 R10
      140 JUMP                             ; [+29]
      141 GETUPVAL                         R10 11
      142 CALL                             R10 0 1
      143 JUMPIFNOT                        R10 ; [+16]
      144 NEWTABLE                         R10 0 2
      146 GETUPVAL                         R11 12
      147 GETUPVAL                         R12 14
      148 GETTABLEKS                       R12 R12 K6 ["Provider"]
      150 CALL                             R11 1 1
      151 GETUPVAL                         R12 12
      152 GETUPVAL                         R13 15
      153 GETTABLEKS                       R13 R13 K6 ["Provider"]
      155 CALL                             R12 1 -1
      156 SETLIST                          R10 R11 -1 [1]
      158 MOVE                             R9 R10
      159 JUMP                             ; [+10]
      160 NEWTABLE                         R10 0 1
      162 GETUPVAL                         R11 12
      163 GETUPVAL                         R12 14
      164 GETTABLEKS                       R12 R12 K6 ["Provider"]
      166 CALL                             R11 1 -1
      167 SETLIST                          R10 R11 -1 [1]
      169 MOVE                             R9 R10
      170 GETUPVAL                         R10 12
      171 GETUPVAL                         R11 16
      172 GETTABLEKS                       R11 R11 K7 ["ContextStack"]
      174 DUPTABLE                         R12 K9 [{"providers"}]
      175 SETTABLEKS                       R9 R12 K8 ["providers"]
      177 GETUPVAL                         R13 12
      178 GETUPVAL                         R14 17
      179 DUPTABLE                         R15 K12 [{"tag", "LayoutOrder"}]
      180 LOADK                            R16 K13 ["col size-full-0 grow"]
      181 SETTABLEKS                       R16 R15 K10 ["tag"]
      183 GETTABLEKS                       R16 R0 K11 ["LayoutOrder"]
      185 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      187 DUPTABLE                         R16 K19 [{"Header", "Divider", "ChatHistoryArea", "BottomArea", "ConflictResolutionHost"}]
      188 GETUPVAL                         R17 12
      189 GETUPVAL                         R18 18
      190 DUPTABLE                         R19 K12 [{"tag", "LayoutOrder"}]
      191 LOADK                            R20 K20 ["row size-full-0 auto-y padding-small gap-xsmall align-x-right"]
      192 SETTABLEKS                       R20 R19 K10 ["tag"]
      194 MOVE                             R20 R8
      195 CALL                             R20 0 1
      196 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      198 CALL                             R17 2 1
      199 SETTABLEKS                       R17 R16 K14 ["Header"]
      201 GETUPVAL                         R17 12
      202 GETUPVAL                         R18 19
      203 DUPTABLE                         R19 K22 [{"variant", "LayoutOrder"}]
      204 GETUPVAL                         R20 20
      205 GETTABLEKS                       R20 R20 K23 ["Enums"]
      207 GETTABLEKS                       R20 R20 K24 ["DividerVariant"]
      209 GETTABLEKS                       R20 R20 K25 ["Default"]
      211 SETTABLEKS                       R20 R19 K21 ["variant"]
      213 MOVE                             R20 R8
      214 CALL                             R20 0 1
      215 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      217 CALL                             R17 2 1
      218 SETTABLEKS                       R17 R16 K15 ["Divider"]
      220 GETUPVAL                         R17 12
      221 GETUPVAL                         R18 17
      222 DUPTABLE                         R19 K12 [{"tag", "LayoutOrder"}]
      223 LOADK                            R20 K26 ["size-full-0 grow"]
      224 SETTABLEKS                       R20 R19 K10 ["tag"]
      226 MOVE                             R20 R8
      227 CALL                             R20 0 1
      228 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      230 DUPTABLE                         R20 K29 [{"ChatHistory", "ModelQualityWarning"}]
      231 GETUPVAL                         R21 12
      232 GETUPVAL                         R22 21
      233 DUPTABLE                         R23 K34 [{"scrollingFrameRef", "onAbsoluteCanvasSizeChanged", "onCanvasPositionChanged", "chatHistoryInterfaceRef"}]
      234 GETUPVAL                         R25 1
      235 CALL                             R25 0 1
      236 JUMPIFNOT                        R25 ; [+2]
      237 LOADNIL                          R24
      238 JUMP                             ; [+1]
      239 MOVE                             R24 R1
      240 SETTABLEKS                       R24 R23 K30 ["scrollingFrameRef"]
      242 GETUPVAL                         R25 1
      243 CALL                             R25 0 1
      244 JUMPIFNOT                        R25 ; [+2]
      245 LOADNIL                          R24
      246 JUMP                             ; [+1]
      247 MOVE                             R24 R3
      248 SETTABLEKS                       R24 R23 K31 ["onAbsoluteCanvasSizeChanged"]
      250 GETUPVAL                         R25 1
      251 CALL                             R25 0 1
      252 JUMPIFNOT                        R25 ; [+2]
      253 LOADNIL                          R24
      254 JUMP                             ; [+1]
      255 MOVE                             R24 R2
      256 SETTABLEKS                       R24 R23 K32 ["onCanvasPositionChanged"]
      258 GETUPVAL                         R25 1
      259 CALL                             R25 0 1
      260 JUMPIFNOT                        R25 ; [+2]
      261 MOVE                             R24 R5
      262 JUMP                             ; [+1]
      263 LOADNIL                          R24
      264 SETTABLEKS                       R24 R23 K33 ["chatHistoryInterfaceRef"]
      266 CALL                             R21 2 1
      267 SETTABLEKS                       R21 R20 K27 ["ChatHistory"]
      269 GETUPVAL                         R21 12
      270 GETUPVAL                         R22 22
      271 DUPTABLE                         R23 K38 [{"AnchorPoint", "Position", "ZIndex"}]
      272 GETIMPORT                        R24 K41 [Vector2.new]
      274 LOADK                            R25 K42 [0.5]
      275 LOADN                            R26 1
      276 CALL                             R24 2 1
      277 SETTABLEKS                       R24 R23 K35 ["AnchorPoint"]
      279 GETIMPORT                        R24 K45 [UDim2.fromScale]
      281 LOADK                            R25 K42 [0.5]
      282 LOADN                            R26 1
      283 CALL                             R24 2 1
      284 SETTABLEKS                       R24 R23 K36 ["Position"]
      286 LOADN                            R24 231
      287 SETTABLEKS                       R24 R23 K37 ["ZIndex"]
      289 CALL                             R21 2 1
      290 SETTABLEKS                       R21 R20 K28 ["ModelQualityWarning"]
      292 CALL                             R17 3 1
      293 SETTABLEKS                       R17 R16 K16 ["ChatHistoryArea"]
      295 GETUPVAL                         R18 7
      296 CALL                             R18 0 1
      297 JUMPIFNOT                        R18 ; [+22]
      298 JUMPIFNOT                        R7 ; [+21]
      299 GETUPVAL                         R17 12
      300 GETUPVAL                         R18 23
      301 DUPTABLE                         R19 K49 [{"thumbsDirection", "onSubmit", "onClose", "LayoutOrder"}]
      302 GETTABLEKS                       R20 R7 K46 ["thumbsDirection"]
      304 SETTABLEKS                       R20 R19 K46 ["thumbsDirection"]
      306 GETTABLEKS                       R20 R7 K47 ["onSubmit"]
      308 SETTABLEKS                       R20 R19 K47 ["onSubmit"]
      310 GETTABLEKS                       R20 R7 K50 ["onDismiss"]
      312 SETTABLEKS                       R20 R19 K48 ["onClose"]
      314 MOVE                             R20 R8
      315 CALL                             R20 0 1
      316 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      318 CALL                             R17 2 1
      319 JUMP                             ; [+19]
      320 GETUPVAL                         R17 12
      321 GETUPVAL                         R19 11
      322 CALL                             R19 0 1
      323 JUMPIFNOT                        R19 ; [+2]
      324 GETUPVAL                         R18 24
      325 JUMP                             ; [+1]
      326 GETUPVAL                         R18 25
      327 DUPTABLE                         R19 K53 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      328 MOVE                             R20 R8
      329 CALL                             R20 0 1
      330 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      332 SETTABLEKS                       R4 R19 K51 ["OnMessageSent"]
      334 GETTABLEKS                       R20 R0 K52 ["textBoxRef"]
      336 SETTABLEKS                       R20 R19 K52 ["textBoxRef"]
      338 CALL                             R17 2 1
      339 SETTABLEKS                       R17 R16 K17 ["BottomArea"]
      341 GETUPVAL                         R18 26
      342 CALL                             R18 0 1
      343 JUMPIFNOT                        R18 ; [+4]
      344 GETUPVAL                         R17 12
      345 GETUPVAL                         R18 27
      346 CALL                             R17 1 1
      347 JUMP                             ; [+1]
      348 LOADNIL                          R17
      349 SETTABLEKS                       R17 R16 K18 ["ConflictResolutionHost"]
      351 CALL                             R13 3 -1
      352 CALL                             R10 -1 -1
      353 CLOSEUPVALS                      R1
      354 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["AssistantServiceContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["ChatHistory"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K10 ["SkillsManagement"]
       29 GETTABLEKS                       R4 R4 K11 ["ConflictResolutionHost"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Components"]
       36 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K12 ["ConversationContext"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K13 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K14 ["RESTRICTED_ExternalHooks"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Components"]
       52 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K15 ["FeedbackContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Components"]
       61 GETTABLEKS                       R8 R8 K16 ["FeedbackView"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K17 ["Parent"]
       68 GETTABLEKS                       R9 R9 K18 ["Foundation"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Components"]
       75 GETTABLEKS                       R10 R10 K19 ["Header"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K6 ["Components"]
       82 GETTABLEKS                       R11 R11 K20 ["InputArea"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K6 ["Components"]
       89 GETTABLEKS                       R12 R12 K7 ["Contexts"]
       91 GETTABLEKS                       R12 R12 K21 ["InputAreaOverrideContext"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K6 ["Components"]
       98 GETTABLEKS                       R13 R13 K22 ["ModelQualityWarning"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K6 ["Components"]
      105 GETTABLEKS                       R14 R14 K7 ["Contexts"]
      107 GETTABLEKS                       R14 R14 K23 ["PacketReceivedContext"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K17 ["Parent"]
      114 GETTABLEKS                       R15 R15 K24 ["React"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K17 ["Parent"]
      121 GETTABLEKS                       R16 R16 K25 ["ReactUtils"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R0 K6 ["Components"]
      128 GETTABLEKS                       R17 R17 K7 ["Contexts"]
      130 GETTABLEKS                       R17 R17 K26 ["SessionIdContext"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K5 [require]
      135 GETTABLEKS                       R18 R0 K27 ["Util"]
      137 GETTABLEKS                       R18 R18 K28 ["createNewThread"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R19 R0 K29 ["Flags"]
      144 GETTABLEKS                       R19 R19 K30 ["FFlagAssistantFeedbackView"]
      146 CALL                             R18 1 1
      147 GETIMPORT                        R19 K5 [require]
      149 GETTABLEKS                       R20 R0 K27 ["Util"]
      151 GETTABLEKS                       R20 R20 K31 ["makeConversation"]
      153 CALL                             R19 1 1
      154 GETIMPORT                        R20 K5 [require]
      156 GETTABLEKS                       R21 R0 K13 ["Hooks"]
      158 GETTABLEKS                       R21 R21 K32 ["usePersistConversations"]
      160 CALL                             R20 1 1
      161 GETIMPORT                        R21 K5 [require]
      163 GETTABLEKS                       R22 R0 K13 ["Hooks"]
      165 GETTABLEKS                       R22 R22 K33 ["useRemoveUnfocusedNewThread"]
      167 CALL                             R21 1 1
      168 GETIMPORT                        R22 K5 [require]
      170 GETTABLEKS                       R23 R0 K13 ["Hooks"]
      172 GETTABLEKS                       R23 R23 K34 ["useSwitchThread"]
      174 CALL                             R22 1 1
      175 GETIMPORT                        R23 K5 [require]
      177 GETTABLEKS                       R24 R0 K13 ["Hooks"]
      179 GETTABLEKS                       R24 R24 K35 ["useTrackThreadViewedAt"]
      181 CALL                             R23 1 1
      182 GETIMPORT                        R24 K5 [require]
      184 GETTABLEKS                       R25 R0 K6 ["Components"]
      186 GETTABLEKS                       R25 R25 K36 ["PersistentPlanPanel"]
      188 CALL                             R24 1 1
      189 GETIMPORT                        R25 K5 [require]
      191 GETTABLEKS                       R26 R0 K29 ["Flags"]
      193 GETTABLEKS                       R26 R26 K37 ["FFlagAssistantHarnessSplit"]
      195 CALL                             R25 1 1
      196 GETIMPORT                        R26 K5 [require]
      198 GETTABLEKS                       R27 R0 K29 ["Flags"]
      200 GETTABLEKS                       R27 R27 K38 ["FFlagAssistantMultipleChatPersistence"]
      202 CALL                             R26 1 1
      203 GETIMPORT                        R27 K5 [require]
      205 GETTABLEKS                       R28 R0 K29 ["Flags"]
      207 GETTABLEKS                       R28 R28 K39 ["FFlagAssistantPlanMode"]
      209 CALL                             R27 1 1
      210 GETIMPORT                        R28 K5 [require]
      212 GETTABLEKS                       R29 R0 K29 ["Flags"]
      214 GETTABLEKS                       R29 R29 K40 ["FFlagAssistantQuestionAnswerTool"]
      216 CALL                             R28 1 1
      217 GETIMPORT                        R29 K5 [require]
      219 GETTABLEKS                       R30 R0 K29 ["Flags"]
      221 GETTABLEKS                       R30 R30 K41 ["FFlagAssistantUserSkills"]
      223 CALL                             R29 1 1
      224 GETTABLEKS                       R30 R8 K42 ["Divider"]
      226 GETTABLEKS                       R31 R8 K43 ["View"]
      228 GETTABLEKS                       R32 R15 K44 ["createNextOrder"]
      230 GETTABLEKS                       R33 R14 K45 ["createElement"]
      232 DUPCLOSURE                       R34 K46 [PROTO_0]
      233 DUPCLOSURE                       R35 K47 [PROTO_1]
      234 DUPCLOSURE                       R36 K48 [PROTO_4]
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R4
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R16
      239 CAPTURE                          VAL R17
      240 CAPTURE                          VAL R19
      241 DUPCLOSURE                       R37 K49 [PROTO_5]
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R11
      244 CAPTURE                          VAL R32
      245 CAPTURE                          VAL R27
      246 CAPTURE                          VAL R33
      247 CAPTURE                          VAL R31
      248 CAPTURE                          VAL R24
      249 CAPTURE                          VAL R10
      250 DUPCLOSURE                       R38 K50 [PROTO_10]
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R26
      253 CAPTURE                          VAL R36
      254 CAPTURE                          VAL R20
      255 CAPTURE                          VAL R21
      256 CAPTURE                          VAL R23
      257 CAPTURE                          VAL R14
      258 CAPTURE                          VAL R18
      259 CAPTURE                          VAL R6
      260 CAPTURE                          VAL R32
      261 CAPTURE                          VAL R25
      262 CAPTURE                          VAL R28
      263 CAPTURE                          VAL R33
      264 CAPTURE                          VAL R1
      265 CAPTURE                          VAL R13
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R15
      268 CAPTURE                          VAL R31
      269 CAPTURE                          VAL R9
      270 CAPTURE                          VAL R30
      271 CAPTURE                          VAL R8
      272 CAPTURE                          VAL R2
      273 CAPTURE                          VAL R12
      274 CAPTURE                          VAL R7
      275 CAPTURE                          VAL R37
      276 CAPTURE                          VAL R10
      277 CAPTURE                          VAL R29
      278 CAPTURE                          VAL R3
      279 RETURN                           R38 1
