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
       96 GETUPVAL                         R9 10
       97 GETUPVAL                         R10 11
       98 GETTABLEKS                       R10 R10 K6 ["ContextStack"]
      100 DUPTABLE                         R11 K8 [{"providers"}]
      101 GETUPVAL                         R13 12
      102 CALL                             R13 0 1
      103 JUMPIFNOT                        R13 ; [+15]
      104 NEWTABLE                         R12 0 2
      106 GETUPVAL                         R13 10
      107 GETUPVAL                         R14 13
      108 GETTABLEKS                       R14 R14 K9 ["Provider"]
      110 CALL                             R13 1 1
      111 GETUPVAL                         R14 10
      112 GETUPVAL                         R15 14
      113 GETTABLEKS                       R15 R15 K9 ["Provider"]
      115 CALL                             R14 1 -1
      116 SETLIST                          R12 R13 -1 [1]
      118 JUMP                             ; [+9]
      119 NEWTABLE                         R12 0 1
      121 GETUPVAL                         R13 10
      122 GETUPVAL                         R14 13
      123 GETTABLEKS                       R14 R14 K9 ["Provider"]
      125 CALL                             R13 1 -1
      126 SETLIST                          R12 R13 -1 [1]
      128 SETTABLEKS                       R12 R11 K7 ["providers"]
      130 GETUPVAL                         R12 10
      131 GETUPVAL                         R13 15
      132 DUPTABLE                         R14 K12 [{"tag", "LayoutOrder"}]
      133 LOADK                            R15 K13 ["col size-full-0 grow"]
      134 SETTABLEKS                       R15 R14 K10 ["tag"]
      136 GETTABLEKS                       R15 R0 K11 ["LayoutOrder"]
      138 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      140 DUPTABLE                         R15 K18 [{"Header", "Divider", "ChatHistoryArea", "BottomArea"}]
      141 GETUPVAL                         R16 10
      142 GETUPVAL                         R17 16
      143 DUPTABLE                         R18 K12 [{"tag", "LayoutOrder"}]
      144 LOADK                            R19 K19 ["row size-full-0 auto-y padding-small gap-xsmall align-x-right"]
      145 SETTABLEKS                       R19 R18 K10 ["tag"]
      147 MOVE                             R19 R8
      148 CALL                             R19 0 1
      149 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      151 CALL                             R16 2 1
      152 SETTABLEKS                       R16 R15 K14 ["Header"]
      154 GETUPVAL                         R16 10
      155 GETUPVAL                         R17 17
      156 DUPTABLE                         R18 K21 [{"variant", "LayoutOrder"}]
      157 GETUPVAL                         R19 18
      158 GETTABLEKS                       R19 R19 K22 ["Enums"]
      160 GETTABLEKS                       R19 R19 K23 ["DividerVariant"]
      162 GETTABLEKS                       R19 R19 K24 ["Default"]
      164 SETTABLEKS                       R19 R18 K20 ["variant"]
      166 MOVE                             R19 R8
      167 CALL                             R19 0 1
      168 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      170 CALL                             R16 2 1
      171 SETTABLEKS                       R16 R15 K15 ["Divider"]
      173 GETUPVAL                         R16 10
      174 GETUPVAL                         R17 15
      175 DUPTABLE                         R18 K12 [{"tag", "LayoutOrder"}]
      176 LOADK                            R19 K25 ["size-full-0 grow"]
      177 SETTABLEKS                       R19 R18 K10 ["tag"]
      179 MOVE                             R19 R8
      180 CALL                             R19 0 1
      181 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      183 DUPTABLE                         R19 K28 [{"ChatHistory", "ModelQualityWarning"}]
      184 GETUPVAL                         R20 10
      185 GETUPVAL                         R21 19
      186 DUPTABLE                         R22 K33 [{"scrollingFrameRef", "onAbsoluteCanvasSizeChanged", "onCanvasPositionChanged", "chatHistoryInterfaceRef"}]
      187 GETUPVAL                         R24 1
      188 CALL                             R24 0 1
      189 JUMPIFNOT                        R24 ; [+2]
      190 LOADNIL                          R23
      191 JUMP                             ; [+1]
      192 MOVE                             R23 R1
      193 SETTABLEKS                       R23 R22 K29 ["scrollingFrameRef"]
      195 GETUPVAL                         R24 1
      196 CALL                             R24 0 1
      197 JUMPIFNOT                        R24 ; [+2]
      198 LOADNIL                          R23
      199 JUMP                             ; [+1]
      200 MOVE                             R23 R3
      201 SETTABLEKS                       R23 R22 K30 ["onAbsoluteCanvasSizeChanged"]
      203 GETUPVAL                         R24 1
      204 CALL                             R24 0 1
      205 JUMPIFNOT                        R24 ; [+2]
      206 LOADNIL                          R23
      207 JUMP                             ; [+1]
      208 MOVE                             R23 R2
      209 SETTABLEKS                       R23 R22 K31 ["onCanvasPositionChanged"]
      211 GETUPVAL                         R24 1
      212 CALL                             R24 0 1
      213 JUMPIFNOT                        R24 ; [+2]
      214 MOVE                             R23 R5
      215 JUMP                             ; [+1]
      216 LOADNIL                          R23
      217 SETTABLEKS                       R23 R22 K32 ["chatHistoryInterfaceRef"]
      219 CALL                             R20 2 1
      220 SETTABLEKS                       R20 R19 K26 ["ChatHistory"]
      222 GETUPVAL                         R20 10
      223 GETUPVAL                         R21 20
      224 DUPTABLE                         R22 K37 [{"AnchorPoint", "Position", "ZIndex"}]
      225 GETIMPORT                        R23 K40 [Vector2.new]
      227 LOADK                            R24 K41 [0.5]
      228 LOADN                            R25 1
      229 CALL                             R23 2 1
      230 SETTABLEKS                       R23 R22 K34 ["AnchorPoint"]
      232 GETIMPORT                        R23 K44 [UDim2.fromScale]
      234 LOADK                            R24 K41 [0.5]
      235 LOADN                            R25 1
      236 CALL                             R23 2 1
      237 SETTABLEKS                       R23 R22 K35 ["Position"]
      239 LOADN                            R23 231
      240 SETTABLEKS                       R23 R22 K36 ["ZIndex"]
      242 CALL                             R20 2 1
      243 SETTABLEKS                       R20 R19 K27 ["ModelQualityWarning"]
      245 CALL                             R16 3 1
      246 SETTABLEKS                       R16 R15 K16 ["ChatHistoryArea"]
      248 GETUPVAL                         R17 7
      249 CALL                             R17 0 1
      250 JUMPIFNOT                        R17 ; [+22]
      251 JUMPIFNOT                        R7 ; [+21]
      252 GETUPVAL                         R16 10
      253 GETUPVAL                         R17 21
      254 DUPTABLE                         R18 K48 [{"thumbsDirection", "onSubmit", "onClose", "LayoutOrder"}]
      255 GETTABLEKS                       R19 R7 K45 ["thumbsDirection"]
      257 SETTABLEKS                       R19 R18 K45 ["thumbsDirection"]
      259 GETTABLEKS                       R19 R7 K46 ["onSubmit"]
      261 SETTABLEKS                       R19 R18 K46 ["onSubmit"]
      263 GETTABLEKS                       R19 R7 K49 ["onDismiss"]
      265 SETTABLEKS                       R19 R18 K47 ["onClose"]
      267 MOVE                             R19 R8
      268 CALL                             R19 0 1
      269 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      271 CALL                             R16 2 1
      272 JUMP                             ; [+19]
      273 GETUPVAL                         R16 10
      274 GETUPVAL                         R18 12
      275 CALL                             R18 0 1
      276 JUMPIFNOT                        R18 ; [+2]
      277 GETUPVAL                         R17 22
      278 JUMP                             ; [+1]
      279 GETUPVAL                         R17 23
      280 DUPTABLE                         R18 K52 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      281 MOVE                             R19 R8
      282 CALL                             R19 0 1
      283 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      285 SETTABLEKS                       R4 R18 K50 ["OnMessageSent"]
      287 GETTABLEKS                       R19 R0 K51 ["textBoxRef"]
      289 SETTABLEKS                       R19 R18 K51 ["textBoxRef"]
      291 CALL                             R16 2 1
      292 SETTABLEKS                       R16 R15 K17 ["BottomArea"]
      294 CALL                             R12 3 -1
      295 CALL                             R9 -1 -1
      296 CLOSEUPVALS                      R1
      297 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ChatHistory"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K9 ["ConversationContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["RESTRICTED_ExternalHooks"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Components"]
       34 GETTABLEKS                       R5 R5 K8 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K12 ["FeedbackContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K13 ["FeedbackView"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Parent"]
       50 GETTABLEKS                       R7 R7 K15 ["Foundation"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Components"]
       57 GETTABLEKS                       R8 R8 K16 ["Header"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Components"]
       64 GETTABLEKS                       R9 R9 K17 ["InputArea"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Components"]
       71 GETTABLEKS                       R10 R10 K8 ["Contexts"]
       73 GETTABLEKS                       R10 R10 K18 ["InputAreaOverrideContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Components"]
       80 GETTABLEKS                       R11 R11 K19 ["ModelQualityWarning"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K6 ["Components"]
       87 GETTABLEKS                       R12 R12 K8 ["Contexts"]
       89 GETTABLEKS                       R12 R12 K20 ["PacketReceivedContext"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K14 ["Parent"]
       96 GETTABLEKS                       R13 R13 K21 ["React"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K14 ["Parent"]
      103 GETTABLEKS                       R14 R14 K22 ["ReactUtils"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R15 R0 K6 ["Components"]
      110 GETTABLEKS                       R15 R15 K8 ["Contexts"]
      112 GETTABLEKS                       R15 R15 K23 ["SessionIdContext"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K24 ["Util"]
      119 GETTABLEKS                       R16 R16 K25 ["createNewThread"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R0 K26 ["Flags"]
      126 GETTABLEKS                       R17 R17 K27 ["FFlagAssistantFeedbackView"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R18 R0 K24 ["Util"]
      133 GETTABLEKS                       R18 R18 K28 ["makeConversation"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R19 R0 K10 ["Hooks"]
      140 GETTABLEKS                       R19 R19 K29 ["usePersistConversations"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K5 [require]
      145 GETTABLEKS                       R20 R0 K10 ["Hooks"]
      147 GETTABLEKS                       R20 R20 K30 ["useRemoveUnfocusedNewThread"]
      149 CALL                             R19 1 1
      150 GETIMPORT                        R20 K5 [require]
      152 GETTABLEKS                       R21 R0 K10 ["Hooks"]
      154 GETTABLEKS                       R21 R21 K31 ["useSwitchThread"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K5 [require]
      159 GETTABLEKS                       R22 R0 K10 ["Hooks"]
      161 GETTABLEKS                       R22 R22 K32 ["useTrackThreadViewedAt"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R23 R0 K6 ["Components"]
      168 GETTABLEKS                       R23 R23 K33 ["PersistentPlanPanel"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K5 [require]
      173 GETTABLEKS                       R24 R0 K26 ["Flags"]
      175 GETTABLEKS                       R24 R24 K34 ["FFlagAssistantMultipleChatPersistence"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K5 [require]
      180 GETTABLEKS                       R25 R0 K26 ["Flags"]
      182 GETTABLEKS                       R25 R25 K35 ["FFlagAssistantPlanMode"]
      184 CALL                             R24 1 1
      185 GETIMPORT                        R25 K5 [require]
      187 GETTABLEKS                       R26 R0 K26 ["Flags"]
      189 GETTABLEKS                       R26 R26 K36 ["FFlagAssistantQuestionAnswerTool"]
      191 CALL                             R25 1 1
      192 GETTABLEKS                       R26 R6 K37 ["Divider"]
      194 GETTABLEKS                       R27 R6 K38 ["View"]
      196 GETTABLEKS                       R28 R13 K39 ["createNextOrder"]
      198 GETTABLEKS                       R29 R12 K40 ["createElement"]
      200 DUPCLOSURE                       R30 K41 [PROTO_0]
      201 DUPCLOSURE                       R31 K42 [PROTO_1]
      202 DUPCLOSURE                       R32 K43 [PROTO_4]
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R17
      209 DUPCLOSURE                       R33 K44 [PROTO_5]
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R28
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R29
      215 CAPTURE                          VAL R27
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R8
      218 DUPCLOSURE                       R34 K45 [PROTO_10]
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R23
      221 CAPTURE                          VAL R32
      222 CAPTURE                          VAL R18
      223 CAPTURE                          VAL R19
      224 CAPTURE                          VAL R21
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R29
      230 CAPTURE                          VAL R13
      231 CAPTURE                          VAL R25
      232 CAPTURE                          VAL R11
      233 CAPTURE                          VAL R9
      234 CAPTURE                          VAL R27
      235 CAPTURE                          VAL R7
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R6
      238 CAPTURE                          VAL R1
      239 CAPTURE                          VAL R10
      240 CAPTURE                          VAL R5
      241 CAPTURE                          VAL R33
      242 CAPTURE                          VAL R8
      243 RETURN                           R34 1
