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
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 3
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 4
       12 CALL                             R1 0 0
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 GETUPVAL                         R6 1
       19 CALL                             R6 0 1
       20 JUMPIFNOT                        R6 ; [+16]
       21 GETUPVAL                         R6 5
       22 GETTABLEKS                       R6 R6 K1 ["useRef"]
       24 LOADNIL                          R7
       25 CALL                             R6 1 1
       26 MOVE                             R5 R6
       27 GETUPVAL                         R6 5
       28 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          REF R5
       32 NEWTABLE                         R8 0 0
       34 CALL                             R6 2 1
       35 MOVE                             R4 R6
       36 JUMP                             ; [+38]
       37 GETUPVAL                         R6 5
       38 GETTABLEKS                       R6 R6 K1 ["useRef"]
       40 LOADNIL                          R7
       41 CALL                             R6 1 1
       42 MOVE                             R1 R6
       43 GETUPVAL                         R6 5
       44 GETTABLEKS                       R6 R6 K1 ["useRef"]
       46 LOADB                            R7 1
       47 CALL                             R6 1 1
       48 GETUPVAL                         R7 5
       49 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          VAL R6
       53 NEWTABLE                         R9 0 0
       55 CALL                             R7 2 1
       56 MOVE                             R2 R7
       57 GETUPVAL                         R7 5
       58 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       60 NEWCLOSURE                       R8 P2
       61 CAPTURE                          VAL R6
       62 NEWTABLE                         R9 0 0
       64 CALL                             R7 2 1
       65 MOVE                             R3 R7
       66 GETUPVAL                         R7 5
       67 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       69 NEWCLOSURE                       R8 P3
       70 CAPTURE                          REF R1
       71 NEWTABLE                         R9 0 0
       73 CALL                             R7 2 1
       74 MOVE                             R4 R7
       75 GETUPVAL                         R7 6
       76 CALL                             R7 0 1
       77 JUMPIFNOT                        R7 ; [+8]
       78 GETUPVAL                         R6 5
       79 GETTABLEKS                       R6 R6 K3 ["useContext"]
       81 GETUPVAL                         R7 7
       82 GETTABLEKS                       R7 R7 K4 ["Context"]
       84 CALL                             R6 1 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R6
       87 JUMPIFNOT                        R6 ; [+3]
       88 GETTABLEKS                       R7 R6 K5 ["feedbackRequest"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R7
       92 GETUPVAL                         R8 8
       93 CALL                             R8 0 1
       94 GETUPVAL                         R9 9
       95 GETUPVAL                         R10 10
       96 GETTABLEKS                       R10 R10 K6 ["ContextStack"]
       98 DUPTABLE                         R11 K8 [{"providers"}]
       99 GETUPVAL                         R13 11
      100 CALL                             R13 0 1
      101 JUMPIFNOT                        R13 ; [+15]
      102 NEWTABLE                         R12 0 2
      104 GETUPVAL                         R13 9
      105 GETUPVAL                         R14 12
      106 GETTABLEKS                       R14 R14 K9 ["Provider"]
      108 CALL                             R13 1 1
      109 GETUPVAL                         R14 9
      110 GETUPVAL                         R15 13
      111 GETTABLEKS                       R15 R15 K9 ["Provider"]
      113 CALL                             R14 1 -1
      114 SETLIST                          R12 R13 -1 [1]
      116 JUMP                             ; [+9]
      117 NEWTABLE                         R12 0 1
      119 GETUPVAL                         R13 9
      120 GETUPVAL                         R14 12
      121 GETTABLEKS                       R14 R14 K9 ["Provider"]
      123 CALL                             R13 1 -1
      124 SETLIST                          R12 R13 -1 [1]
      126 SETTABLEKS                       R12 R11 K7 ["providers"]
      128 GETUPVAL                         R12 9
      129 GETUPVAL                         R13 14
      130 DUPTABLE                         R14 K12 [{"tag", "LayoutOrder"}]
      131 LOADK                            R15 K13 ["col size-full-0 grow"]
      132 SETTABLEKS                       R15 R14 K10 ["tag"]
      134 GETTABLEKS                       R15 R0 K11 ["LayoutOrder"]
      136 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      138 DUPTABLE                         R15 K18 [{"Header", "Divider", "ChatHistoryArea", "BottomArea"}]
      139 GETUPVAL                         R16 9
      140 GETUPVAL                         R17 15
      141 DUPTABLE                         R18 K12 [{"tag", "LayoutOrder"}]
      142 LOADK                            R19 K19 ["row size-full-0 auto-y padding-small gap-xsmall align-x-right"]
      143 SETTABLEKS                       R19 R18 K10 ["tag"]
      145 MOVE                             R19 R8
      146 CALL                             R19 0 1
      147 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      149 CALL                             R16 2 1
      150 SETTABLEKS                       R16 R15 K14 ["Header"]
      152 GETUPVAL                         R16 9
      153 GETUPVAL                         R17 16
      154 DUPTABLE                         R18 K21 [{"variant", "LayoutOrder"}]
      155 GETUPVAL                         R19 17
      156 GETTABLEKS                       R19 R19 K22 ["Enums"]
      158 GETTABLEKS                       R19 R19 K23 ["DividerVariant"]
      160 GETTABLEKS                       R19 R19 K24 ["Default"]
      162 SETTABLEKS                       R19 R18 K20 ["variant"]
      164 MOVE                             R19 R8
      165 CALL                             R19 0 1
      166 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      168 CALL                             R16 2 1
      169 SETTABLEKS                       R16 R15 K15 ["Divider"]
      171 GETUPVAL                         R16 9
      172 GETUPVAL                         R17 14
      173 DUPTABLE                         R18 K12 [{"tag", "LayoutOrder"}]
      174 LOADK                            R19 K25 ["size-full-0 grow"]
      175 SETTABLEKS                       R19 R18 K10 ["tag"]
      177 MOVE                             R19 R8
      178 CALL                             R19 0 1
      179 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      181 DUPTABLE                         R19 K28 [{"ChatHistory", "ModelQualityWarning"}]
      182 GETUPVAL                         R20 9
      183 GETUPVAL                         R21 18
      184 DUPTABLE                         R22 K33 [{"scrollingFrameRef", "onAbsoluteCanvasSizeChanged", "onCanvasPositionChanged", "chatHistoryInterfaceRef"}]
      185 GETUPVAL                         R24 1
      186 CALL                             R24 0 1
      187 JUMPIFNOT                        R24 ; [+2]
      188 LOADNIL                          R23
      189 JUMP                             ; [+1]
      190 MOVE                             R23 R1
      191 SETTABLEKS                       R23 R22 K29 ["scrollingFrameRef"]
      193 GETUPVAL                         R24 1
      194 CALL                             R24 0 1
      195 JUMPIFNOT                        R24 ; [+2]
      196 LOADNIL                          R23
      197 JUMP                             ; [+1]
      198 MOVE                             R23 R3
      199 SETTABLEKS                       R23 R22 K30 ["onAbsoluteCanvasSizeChanged"]
      201 GETUPVAL                         R24 1
      202 CALL                             R24 0 1
      203 JUMPIFNOT                        R24 ; [+2]
      204 LOADNIL                          R23
      205 JUMP                             ; [+1]
      206 MOVE                             R23 R2
      207 SETTABLEKS                       R23 R22 K31 ["onCanvasPositionChanged"]
      209 GETUPVAL                         R24 1
      210 CALL                             R24 0 1
      211 JUMPIFNOT                        R24 ; [+2]
      212 MOVE                             R23 R5
      213 JUMP                             ; [+1]
      214 LOADNIL                          R23
      215 SETTABLEKS                       R23 R22 K32 ["chatHistoryInterfaceRef"]
      217 CALL                             R20 2 1
      218 SETTABLEKS                       R20 R19 K26 ["ChatHistory"]
      220 GETUPVAL                         R20 9
      221 GETUPVAL                         R21 19
      222 DUPTABLE                         R22 K37 [{"AnchorPoint", "Position", "ZIndex"}]
      223 GETIMPORT                        R23 K40 [Vector2.new]
      225 LOADK                            R24 K41 [0.5]
      226 LOADN                            R25 1
      227 CALL                             R23 2 1
      228 SETTABLEKS                       R23 R22 K34 ["AnchorPoint"]
      230 GETIMPORT                        R23 K44 [UDim2.fromScale]
      232 LOADK                            R24 K41 [0.5]
      233 LOADN                            R25 1
      234 CALL                             R23 2 1
      235 SETTABLEKS                       R23 R22 K35 ["Position"]
      237 LOADN                            R23 231
      238 SETTABLEKS                       R23 R22 K36 ["ZIndex"]
      240 CALL                             R20 2 1
      241 SETTABLEKS                       R20 R19 K27 ["ModelQualityWarning"]
      243 CALL                             R16 3 1
      244 SETTABLEKS                       R16 R15 K16 ["ChatHistoryArea"]
      246 GETUPVAL                         R17 6
      247 CALL                             R17 0 1
      248 JUMPIFNOT                        R17 ; [+22]
      249 JUMPIFNOT                        R7 ; [+21]
      250 GETUPVAL                         R16 9
      251 GETUPVAL                         R17 20
      252 DUPTABLE                         R18 K48 [{"thumbsDirection", "onSubmit", "onClose", "LayoutOrder"}]
      253 GETTABLEKS                       R19 R7 K45 ["thumbsDirection"]
      255 SETTABLEKS                       R19 R18 K45 ["thumbsDirection"]
      257 GETTABLEKS                       R19 R7 K46 ["onSubmit"]
      259 SETTABLEKS                       R19 R18 K46 ["onSubmit"]
      261 GETTABLEKS                       R19 R7 K49 ["onDismiss"]
      263 SETTABLEKS                       R19 R18 K47 ["onClose"]
      265 MOVE                             R19 R8
      266 CALL                             R19 0 1
      267 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      269 CALL                             R16 2 1
      270 JUMP                             ; [+19]
      271 GETUPVAL                         R16 9
      272 GETUPVAL                         R18 11
      273 CALL                             R18 0 1
      274 JUMPIFNOT                        R18 ; [+2]
      275 GETUPVAL                         R17 21
      276 JUMP                             ; [+1]
      277 GETUPVAL                         R17 22
      278 DUPTABLE                         R18 K52 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      279 MOVE                             R19 R8
      280 CALL                             R19 0 1
      281 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      283 SETTABLEKS                       R4 R18 K50 ["OnMessageSent"]
      285 GETTABLEKS                       R19 R0 K51 ["textBoxRef"]
      287 SETTABLEKS                       R19 R18 K51 ["textBoxRef"]
      289 CALL                             R16 2 1
      290 SETTABLEKS                       R16 R15 K17 ["BottomArea"]
      292 CALL                             R12 3 -1
      293 CALL                             R9 -1 -1
      294 CLOSEUPVALS                      R1
      295 RETURN                           R9 -1

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
       27 GETTABLEKS                       R4 R4 K11 ["ExternalHooks"]
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
      159 GETTABLEKS                       R22 R0 K6 ["Components"]
      161 GETTABLEKS                       R22 R22 K32 ["PersistentPlanPanel"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R23 R0 K26 ["Flags"]
      168 GETTABLEKS                       R23 R23 K33 ["FFlagAssistantMultipleChatPersistence"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K5 [require]
      173 GETTABLEKS                       R24 R0 K26 ["Flags"]
      175 GETTABLEKS                       R24 R24 K34 ["FFlagAssistantPlanMode"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K5 [require]
      180 GETTABLEKS                       R25 R0 K26 ["Flags"]
      182 GETTABLEKS                       R25 R25 K35 ["FFlagAssistantQuestionAnswerTool"]
      184 CALL                             R24 1 1
      185 GETTABLEKS                       R25 R6 K36 ["Divider"]
      187 GETTABLEKS                       R26 R6 K37 ["View"]
      189 GETTABLEKS                       R27 R13 K38 ["createNextOrder"]
      191 GETTABLEKS                       R28 R12 K39 ["createElement"]
      193 DUPCLOSURE                       R29 K40 [PROTO_0]
      194 DUPCLOSURE                       R30 K41 [PROTO_1]
      195 DUPCLOSURE                       R31 K42 [PROTO_4]
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R20
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R17
      202 DUPCLOSURE                       R32 K43 [PROTO_5]
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R27
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R26
      209 CAPTURE                          VAL R21
      210 CAPTURE                          VAL R8
      211 DUPCLOSURE                       R33 K44 [PROTO_10]
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R22
      214 CAPTURE                          VAL R31
      215 CAPTURE                          VAL R18
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R28
      222 CAPTURE                          VAL R13
      223 CAPTURE                          VAL R24
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R25
      229 CAPTURE                          VAL R6
      230 CAPTURE                          VAL R1
      231 CAPTURE                          VAL R10
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R32
      234 CAPTURE                          VAL R8
      235 RETURN                           R33 1
