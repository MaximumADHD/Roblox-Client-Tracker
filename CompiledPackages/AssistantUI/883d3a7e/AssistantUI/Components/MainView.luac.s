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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+2]
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 0
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["useRef"]
       12 LOADNIL                          R2
       13 CALL                             R1 1 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K1 ["useRef"]
       17 LOADB                            R3 1
       18 CALL                             R2 1 1
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R5 0 0
       26 CALL                             R3 2 1
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R2
       32 NEWTABLE                         R6 0 0
       34 CALL                             R4 2 1
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          VAL R1
       40 NEWTABLE                         R7 0 0
       42 CALL                             R5 2 1
       43 GETUPVAL                         R6 4
       44 CALL                             R6 0 1
       45 GETUPVAL                         R7 5
       46 GETUPVAL                         R9 6
       47 GETTABLEKS                       R8 R9 K3 ["ContextStack"]
       49 DUPTABLE                         R9 K5 [{"providers"}]
       50 NEWTABLE                         R10 0 1
       52 GETUPVAL                         R11 5
       53 GETUPVAL                         R13 7
       54 GETTABLEKS                       R12 R13 K6 ["Provider"]
       56 CALL                             R11 1 -1
       57 SETLIST                          R10 R11 -1 [1]
       59 SETTABLEKS                       R10 R9 K4 ["providers"]
       61 GETUPVAL                         R10 5
       62 GETUPVAL                         R11 8
       63 DUPTABLE                         R12 K9 [{"tag", "LayoutOrder"}]
       64 LOADK                            R13 K10 ["col size-full-0 grow"]
       65 SETTABLEKS                       R13 R12 K7 ["tag"]
       67 GETTABLEKS                       R13 R0 K8 ["LayoutOrder"]
       69 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       71 DUPTABLE                         R13 K15 [{"Header", "Divider", "ChatHistoryArea", "InputArea"}]
       72 GETUPVAL                         R14 5
       73 GETUPVAL                         R15 9
       74 DUPTABLE                         R16 K9 [{"tag", "LayoutOrder"}]
       75 LOADK                            R17 K16 ["row size-full-0 auto-y padding-small gap-xsmall align-x-right"]
       76 SETTABLEKS                       R17 R16 K7 ["tag"]
       78 MOVE                             R17 R6
       79 CALL                             R17 0 1
       80 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
       82 CALL                             R14 2 1
       83 SETTABLEKS                       R14 R13 K11 ["Header"]
       85 GETUPVAL                         R14 5
       86 GETUPVAL                         R15 10
       87 DUPTABLE                         R16 K18 [{"variant", "LayoutOrder"}]
       88 GETUPVAL                         R20 11
       89 GETTABLEKS                       R19 R20 K19 ["Enums"]
       91 GETTABLEKS                       R18 R19 K20 ["DividerVariant"]
       93 GETTABLEKS                       R17 R18 K21 ["Default"]
       95 SETTABLEKS                       R17 R16 K17 ["variant"]
       97 MOVE                             R17 R6
       98 CALL                             R17 0 1
       99 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      101 CALL                             R14 2 1
      102 SETTABLEKS                       R14 R13 K12 ["Divider"]
      104 GETUPVAL                         R14 5
      105 GETUPVAL                         R15 8
      106 DUPTABLE                         R16 K9 [{"tag", "LayoutOrder"}]
      107 LOADK                            R17 K22 ["size-full-0 grow"]
      108 SETTABLEKS                       R17 R16 K7 ["tag"]
      110 MOVE                             R17 R6
      111 CALL                             R17 0 1
      112 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      114 DUPTABLE                         R17 K25 [{"ChatHistory", "ModelQualityWarning"}]
      115 GETUPVAL                         R18 5
      116 GETUPVAL                         R19 12
      117 DUPTABLE                         R20 K29 [{"scrollingFrameRef", "onAbsoluteCanvasSizeChanged", "onCanvasPositionChanged"}]
      118 SETTABLEKS                       R1 R20 K26 ["scrollingFrameRef"]
      120 SETTABLEKS                       R4 R20 K27 ["onAbsoluteCanvasSizeChanged"]
      122 SETTABLEKS                       R3 R20 K28 ["onCanvasPositionChanged"]
      124 CALL                             R18 2 1
      125 SETTABLEKS                       R18 R17 K23 ["ChatHistory"]
      127 GETUPVAL                         R18 5
      128 GETUPVAL                         R19 13
      129 DUPTABLE                         R20 K33 [{"AnchorPoint", "Position", "ZIndex"}]
      130 GETIMPORT                        R21 K36 [Vector2.new]
      132 LOADK                            R22 K37 [0.5]
      133 LOADN                            R23 1
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K30 ["AnchorPoint"]
      137 GETIMPORT                        R21 K40 [UDim2.fromScale]
      139 LOADK                            R22 K37 [0.5]
      140 LOADN                            R23 1
      141 CALL                             R21 2 1
      142 SETTABLEKS                       R21 R20 K31 ["Position"]
      144 LOADN                            R21 231
      145 SETTABLEKS                       R21 R20 K32 ["ZIndex"]
      147 CALL                             R18 2 1
      148 SETTABLEKS                       R18 R17 K24 ["ModelQualityWarning"]
      150 CALL                             R14 3 1
      151 SETTABLEKS                       R14 R13 K13 ["ChatHistoryArea"]
      153 GETUPVAL                         R14 5
      154 GETUPVAL                         R15 14
      155 DUPTABLE                         R16 K43 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      156 MOVE                             R17 R6
      157 CALL                             R17 0 1
      158 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      160 SETTABLEKS                       R5 R16 K41 ["OnMessageSent"]
      162 GETTABLEKS                       R17 R0 K42 ["textBoxRef"]
      164 SETTABLEKS                       R17 R16 K42 ["textBoxRef"]
      166 CALL                             R14 2 1
      167 SETTABLEKS                       R14 R13 K14 ["InputArea"]
      169 CALL                             R10 3 -1
      170 CALL                             R7 -1 -1
      171 RETURN                           R7 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R4 K9 ["ExternalHooks"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R6 K12 ["Header"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["InputArea"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R8 K14 ["ModelQualityWarning"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K6 ["Components"]
       53 GETTABLEKS                       R9 R10 K15 ["Contexts"]
       55 GETTABLEKS                       R8 R9 K16 ["PacketReceivedContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K10 ["Parent"]
       62 GETTABLEKS                       R9 R10 K17 ["React"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K10 ["Parent"]
       69 GETTABLEKS                       R10 R11 K18 ["ReactUtils"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K8 ["Hooks"]
       76 GETTABLEKS                       R11 R12 K19 ["useRemoveUnfocusedEphemeralThread"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K20 ["Flags"]
       83 GETTABLEKS                       R12 R13 K21 ["FFlagAssistantMultipleChatSupport"]
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R3 K22 ["Divider"]
       88 GETTABLEKS                       R13 R3 K23 ["View"]
       90 GETTABLEKS                       R14 R9 K24 ["createNextOrder"]
       92 GETTABLEKS                       R15 R8 K25 ["createElement"]
       94 DUPCLOSURE                       R16 K26 [PROTO_0]
       95 DUPCLOSURE                       R17 K27 [PROTO_1]
       96 DUPCLOSURE                       R18 K28 [PROTO_5]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R5
      112 RETURN                           R18 1
