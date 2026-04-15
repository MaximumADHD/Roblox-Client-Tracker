PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteCanvasSize"]
        2 GETTABLEKS                       R1 R2 K1 ["Y"]
        4 LOADN                            R3 0
        5 GETTABLEKS                       R6 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R6 K1 ["Y"]
        9 SUB                              R4 R1 R5
       10 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       12 GETIMPORT                        R2 K5 [math.max]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["AbsoluteCanvasSize"]
        2 GETTABLEKS                       R2 R3 K1 ["Y"]
        4 LOADN                            R4 0
        5 GETTABLEKS                       R7 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R6 R7 K1 ["Y"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["setConversation"]
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["useContext"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K1 ["Context"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R3 K3 ["sessionId"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K4 ["useRef"]
       23 LOADNIL                          R6
       24 CALL                             R5 1 1
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K5 ["useEffect"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
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
        0 GETTABLEKS                       R3 R0 K0 ["AbsoluteCanvasSize"]
        2 GETTABLEKS                       R2 R3 K1 ["Y"]
        4 LOADN                            R4 0
        5 GETTABLEKS                       R7 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R6 R7 K1 ["Y"]
        9 SUB                              R5 R2 R6
       10 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       12 GETIMPORT                        R3 K5 [math.max]
       14 CALL                             R3 2 1
       15 MOVE                             R1 R3
       16 GETTABLEKS                       R3 R0 K6 ["CanvasPosition"]
       18 GETTABLEKS                       R2 R3 K1 ["Y"]
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

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+23]
        4 GETTABLEKS                       R3 R0 K1 ["AbsoluteCanvasSize"]
        6 GETTABLEKS                       R2 R3 K2 ["Y"]
        8 LOADN                            R4 0
        9 GETTABLEKS                       R7 R0 K3 ["AbsoluteSize"]
       11 GETTABLEKS                       R6 R7 K2 ["Y"]
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+23]
        4 GETTABLEKS                       R3 R0 K1 ["AbsoluteCanvasSize"]
        6 GETTABLEKS                       R2 R3 K2 ["Y"]
        8 LOADN                            R4 0
        9 GETTABLEKS                       R7 R0 K3 ["AbsoluteSize"]
       11 GETTABLEKS                       R6 R7 K2 ["Y"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
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
       13 GETUPVAL                         R2 5
       14 GETTABLEKS                       R1 R2 K1 ["useRef"]
       16 LOADNIL                          R2
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 5
       19 GETTABLEKS                       R2 R3 K1 ["useRef"]
       21 LOADB                            R3 1
       22 CALL                             R2 1 1
       23 GETUPVAL                         R4 5
       24 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R5 0 0
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R6 0 0
       38 CALL                             R4 2 1
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          VAL R1
       44 NEWTABLE                         R7 0 0
       46 CALL                             R5 2 1
       47 GETUPVAL                         R7 6
       48 CALL                             R7 0 1
       49 JUMPIFNOT                        R7 ; [+8]
       50 GETUPVAL                         R7 5
       51 GETTABLEKS                       R6 R7 K3 ["useContext"]
       53 GETUPVAL                         R8 7
       54 GETTABLEKS                       R7 R8 K4 ["Context"]
       56 CALL                             R6 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 JUMPIFNOT                        R6 ; [+3]
       60 GETTABLEKS                       R7 R6 K5 ["feedbackRequest"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R7
       64 GETUPVAL                         R8 8
       65 CALL                             R8 0 1
       66 GETUPVAL                         R9 9
       67 GETUPVAL                         R11 10
       68 GETTABLEKS                       R10 R11 K6 ["ContextStack"]
       70 DUPTABLE                         R11 K8 [{"providers"}]
       71 GETUPVAL                         R13 11
       72 CALL                             R13 0 1
       73 JUMPIFNOT                        R13 ; [+15]
       74 NEWTABLE                         R12 0 2
       76 GETUPVAL                         R13 9
       77 GETUPVAL                         R15 12
       78 GETTABLEKS                       R14 R15 K9 ["Provider"]
       80 CALL                             R13 1 1
       81 GETUPVAL                         R14 9
       82 GETUPVAL                         R16 13
       83 GETTABLEKS                       R15 R16 K9 ["Provider"]
       85 CALL                             R14 1 -1
       86 SETLIST                          R12 R13 -1 [1]
       88 JUMP                             ; [+9]
       89 NEWTABLE                         R12 0 1
       91 GETUPVAL                         R13 9
       92 GETUPVAL                         R15 12
       93 GETTABLEKS                       R14 R15 K9 ["Provider"]
       95 CALL                             R13 1 -1
       96 SETLIST                          R12 R13 -1 [1]
       98 SETTABLEKS                       R12 R11 K7 ["providers"]
      100 GETUPVAL                         R12 9
      101 GETUPVAL                         R13 14
      102 DUPTABLE                         R14 K12 [{"tag", "LayoutOrder"}]
      103 LOADK                            R15 K13 ["col size-full-0 grow"]
      104 SETTABLEKS                       R15 R14 K10 ["tag"]
      106 GETTABLEKS                       R15 R0 K11 ["LayoutOrder"]
      108 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      110 DUPTABLE                         R15 K18 [{"Header", "Divider", "ChatHistoryArea", "BottomArea"}]
      111 GETUPVAL                         R16 9
      112 GETUPVAL                         R17 15
      113 DUPTABLE                         R18 K12 [{"tag", "LayoutOrder"}]
      114 LOADK                            R19 K19 ["row size-full-0 auto-y padding-small gap-xsmall align-x-right"]
      115 SETTABLEKS                       R19 R18 K10 ["tag"]
      117 MOVE                             R19 R8
      118 CALL                             R19 0 1
      119 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K14 ["Header"]
      124 GETUPVAL                         R16 9
      125 GETUPVAL                         R17 16
      126 DUPTABLE                         R18 K21 [{"variant", "LayoutOrder"}]
      127 GETUPVAL                         R22 17
      128 GETTABLEKS                       R21 R22 K22 ["Enums"]
      130 GETTABLEKS                       R20 R21 K23 ["DividerVariant"]
      132 GETTABLEKS                       R19 R20 K24 ["Default"]
      134 SETTABLEKS                       R19 R18 K20 ["variant"]
      136 MOVE                             R19 R8
      137 CALL                             R19 0 1
      138 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      140 CALL                             R16 2 1
      141 SETTABLEKS                       R16 R15 K15 ["Divider"]
      143 GETUPVAL                         R16 9
      144 GETUPVAL                         R17 14
      145 DUPTABLE                         R18 K12 [{"tag", "LayoutOrder"}]
      146 LOADK                            R19 K25 ["size-full-0 grow"]
      147 SETTABLEKS                       R19 R18 K10 ["tag"]
      149 MOVE                             R19 R8
      150 CALL                             R19 0 1
      151 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      153 DUPTABLE                         R19 K28 [{"ChatHistory", "ModelQualityWarning"}]
      154 GETUPVAL                         R20 9
      155 GETUPVAL                         R21 18
      156 DUPTABLE                         R22 K32 [{"scrollingFrameRef", "onAbsoluteCanvasSizeChanged", "onCanvasPositionChanged"}]
      157 SETTABLEKS                       R1 R22 K29 ["scrollingFrameRef"]
      159 SETTABLEKS                       R4 R22 K30 ["onAbsoluteCanvasSizeChanged"]
      161 SETTABLEKS                       R3 R22 K31 ["onCanvasPositionChanged"]
      163 CALL                             R20 2 1
      164 SETTABLEKS                       R20 R19 K26 ["ChatHistory"]
      166 GETUPVAL                         R20 9
      167 GETUPVAL                         R21 19
      168 DUPTABLE                         R22 K36 [{"AnchorPoint", "Position", "ZIndex"}]
      169 GETIMPORT                        R23 K39 [Vector2.new]
      171 LOADK                            R24 K40 [0.5]
      172 LOADN                            R25 1
      173 CALL                             R23 2 1
      174 SETTABLEKS                       R23 R22 K33 ["AnchorPoint"]
      176 GETIMPORT                        R23 K43 [UDim2.fromScale]
      178 LOADK                            R24 K40 [0.5]
      179 LOADN                            R25 1
      180 CALL                             R23 2 1
      181 SETTABLEKS                       R23 R22 K34 ["Position"]
      183 LOADN                            R23 231
      184 SETTABLEKS                       R23 R22 K35 ["ZIndex"]
      186 CALL                             R20 2 1
      187 SETTABLEKS                       R20 R19 K27 ["ModelQualityWarning"]
      189 CALL                             R16 3 1
      190 SETTABLEKS                       R16 R15 K16 ["ChatHistoryArea"]
      192 GETUPVAL                         R17 6
      193 CALL                             R17 0 1
      194 JUMPIFNOT                        R17 ; [+22]
      195 JUMPIFNOT                        R7 ; [+21]
      196 GETUPVAL                         R16 9
      197 GETUPVAL                         R17 20
      198 DUPTABLE                         R18 K47 [{"thumbsDirection", "onSubmit", "onClose", "LayoutOrder"}]
      199 GETTABLEKS                       R19 R7 K44 ["thumbsDirection"]
      201 SETTABLEKS                       R19 R18 K44 ["thumbsDirection"]
      203 GETTABLEKS                       R19 R7 K45 ["onSubmit"]
      205 SETTABLEKS                       R19 R18 K45 ["onSubmit"]
      207 GETTABLEKS                       R19 R7 K48 ["onDismiss"]
      209 SETTABLEKS                       R19 R18 K46 ["onClose"]
      211 MOVE                             R19 R8
      212 CALL                             R19 0 1
      213 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      215 CALL                             R16 2 1
      216 JUMP                             ; [+19]
      217 GETUPVAL                         R16 9
      218 GETUPVAL                         R18 11
      219 CALL                             R18 0 1
      220 JUMPIFNOT                        R18 ; [+2]
      221 GETUPVAL                         R17 21
      222 JUMP                             ; [+1]
      223 GETUPVAL                         R17 22
      224 DUPTABLE                         R18 K51 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      225 MOVE                             R19 R8
      226 CALL                             R19 0 1
      227 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      229 SETTABLEKS                       R5 R18 K49 ["OnMessageSent"]
      231 GETTABLEKS                       R19 R0 K50 ["textBoxRef"]
      233 SETTABLEKS                       R19 R18 K50 ["textBoxRef"]
      235 CALL                             R16 2 1
      236 SETTABLEKS                       R16 R15 K17 ["BottomArea"]
      238 CALL                             R12 3 -1
      239 CALL                             R9 -1 -1
      240 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["ChatHistory"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Components"]
       18 GETTABLEKS                       R4 R5 K8 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K9 ["ConversationContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R5 K11 ["ExternalHooks"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Components"]
       34 GETTABLEKS                       R6 R7 K8 ["Contexts"]
       36 GETTABLEKS                       R5 R6 K12 ["FeedbackContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R7 K13 ["FeedbackView"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K14 ["Parent"]
       50 GETTABLEKS                       R7 R8 K15 ["Foundation"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K6 ["Components"]
       57 GETTABLEKS                       R8 R9 K16 ["Header"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K6 ["Components"]
       64 GETTABLEKS                       R9 R10 K17 ["InputArea"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R12 R0 K6 ["Components"]
       71 GETTABLEKS                       R11 R12 K8 ["Contexts"]
       73 GETTABLEKS                       R10 R11 K18 ["InputAreaOverrideContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R12 R0 K6 ["Components"]
       80 GETTABLEKS                       R11 R12 K19 ["ModelQualityWarning"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R14 R0 K6 ["Components"]
       87 GETTABLEKS                       R13 R14 K8 ["Contexts"]
       89 GETTABLEKS                       R12 R13 K20 ["PacketReceivedContext"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R14 R0 K14 ["Parent"]
       96 GETTABLEKS                       R13 R14 K21 ["React"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R15 R0 K14 ["Parent"]
      103 GETTABLEKS                       R14 R15 K22 ["ReactUtils"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R17 R0 K6 ["Components"]
      110 GETTABLEKS                       R16 R17 K8 ["Contexts"]
      112 GETTABLEKS                       R15 R16 K23 ["SessionIdContext"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R17 R0 K24 ["Util"]
      119 GETTABLEKS                       R16 R17 K25 ["createNewThread"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R18 R0 K26 ["Flags"]
      126 GETTABLEKS                       R17 R18 K27 ["FFlagAssistantFeedbackView"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R19 R0 K24 ["Util"]
      133 GETTABLEKS                       R18 R19 K28 ["makeConversation"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R20 R0 K10 ["Hooks"]
      140 GETTABLEKS                       R19 R20 K29 ["usePersistConversations"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K5 [require]
      145 GETTABLEKS                       R21 R0 K10 ["Hooks"]
      147 GETTABLEKS                       R20 R21 K30 ["useRemoveUnfocusedNewThread"]
      149 CALL                             R19 1 1
      150 GETIMPORT                        R20 K5 [require]
      152 GETTABLEKS                       R22 R0 K10 ["Hooks"]
      154 GETTABLEKS                       R21 R22 K31 ["useSwitchThread"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K5 [require]
      159 GETTABLEKS                       R23 R0 K6 ["Components"]
      161 GETTABLEKS                       R22 R23 K32 ["PersistentPlanPanel"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R24 R0 K26 ["Flags"]
      168 GETTABLEKS                       R23 R24 K33 ["FFlagAssistantMultipleChatPersistence"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K5 [require]
      173 GETTABLEKS                       R25 R0 K26 ["Flags"]
      175 GETTABLEKS                       R24 R25 K34 ["FFlagAssistantPlanMode"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K5 [require]
      180 GETTABLEKS                       R26 R0 K26 ["Flags"]
      182 GETTABLEKS                       R25 R26 K35 ["FFlagAssistantQuestionAnswerTool"]
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
      211 DUPCLOSURE                       R33 K44 [PROTO_9]
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
