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
        9 GETUPVAL                         R1 3
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+2]
       12 GETUPVAL                         R1 4
       13 CALL                             R1 0 0
       14 GETUPVAL                         R2 5
       15 GETTABLEKS                       R1 R2 K1 ["useRef"]
       17 LOADNIL                          R2
       18 CALL                             R1 1 1
       19 GETUPVAL                         R3 5
       20 GETTABLEKS                       R2 R3 K1 ["useRef"]
       22 LOADB                            R3 1
       23 CALL                             R2 1 1
       24 GETUPVAL                         R4 5
       25 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R5 0 0
       31 CALL                             R3 2 1
       32 GETUPVAL                         R5 5
       33 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R6 0 0
       39 CALL                             R4 2 1
       40 GETUPVAL                         R6 5
       41 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       43 NEWCLOSURE                       R6 P2
       44 CAPTURE                          VAL R1
       45 NEWTABLE                         R7 0 0
       47 CALL                             R5 2 1
       48 GETUPVAL                         R6 6
       49 CALL                             R6 0 1
       50 GETUPVAL                         R7 7
       51 GETUPVAL                         R9 8
       52 GETTABLEKS                       R8 R9 K3 ["ContextStack"]
       54 DUPTABLE                         R9 K5 [{"providers"}]
       55 NEWTABLE                         R10 0 1
       57 GETUPVAL                         R11 7
       58 GETUPVAL                         R13 9
       59 GETTABLEKS                       R12 R13 K6 ["Provider"]
       61 CALL                             R11 1 -1
       62 SETLIST                          R10 R11 -1 [1]
       64 SETTABLEKS                       R10 R9 K4 ["providers"]
       66 GETUPVAL                         R10 7
       67 GETUPVAL                         R11 10
       68 DUPTABLE                         R12 K9 [{"tag", "LayoutOrder"}]
       69 LOADK                            R13 K10 ["col size-full-0 grow"]
       70 SETTABLEKS                       R13 R12 K7 ["tag"]
       72 GETTABLEKS                       R13 R0 K8 ["LayoutOrder"]
       74 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       76 DUPTABLE                         R13 K15 [{"Header", "Divider", "ChatHistoryArea", "InputArea"}]
       77 GETUPVAL                         R14 7
       78 GETUPVAL                         R15 11
       79 DUPTABLE                         R16 K9 [{"tag", "LayoutOrder"}]
       80 LOADK                            R17 K16 ["row size-full-0 auto-y padding-small gap-xsmall align-x-right"]
       81 SETTABLEKS                       R17 R16 K7 ["tag"]
       83 MOVE                             R17 R6
       84 CALL                             R17 0 1
       85 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
       87 CALL                             R14 2 1
       88 SETTABLEKS                       R14 R13 K11 ["Header"]
       90 GETUPVAL                         R14 7
       91 GETUPVAL                         R15 12
       92 DUPTABLE                         R16 K18 [{"variant", "LayoutOrder"}]
       93 GETUPVAL                         R20 13
       94 GETTABLEKS                       R19 R20 K19 ["Enums"]
       96 GETTABLEKS                       R18 R19 K20 ["DividerVariant"]
       98 GETTABLEKS                       R17 R18 K21 ["Default"]
      100 SETTABLEKS                       R17 R16 K17 ["variant"]
      102 MOVE                             R17 R6
      103 CALL                             R17 0 1
      104 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      106 CALL                             R14 2 1
      107 SETTABLEKS                       R14 R13 K12 ["Divider"]
      109 GETUPVAL                         R14 7
      110 GETUPVAL                         R15 10
      111 DUPTABLE                         R16 K9 [{"tag", "LayoutOrder"}]
      112 LOADK                            R17 K22 ["size-full-0 grow"]
      113 SETTABLEKS                       R17 R16 K7 ["tag"]
      115 MOVE                             R17 R6
      116 CALL                             R17 0 1
      117 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      119 DUPTABLE                         R17 K25 [{"ChatHistory", "ModelQualityWarning"}]
      120 GETUPVAL                         R18 7
      121 GETUPVAL                         R19 14
      122 DUPTABLE                         R20 K29 [{"scrollingFrameRef", "onAbsoluteCanvasSizeChanged", "onCanvasPositionChanged"}]
      123 SETTABLEKS                       R1 R20 K26 ["scrollingFrameRef"]
      125 SETTABLEKS                       R4 R20 K27 ["onAbsoluteCanvasSizeChanged"]
      127 SETTABLEKS                       R3 R20 K28 ["onCanvasPositionChanged"]
      129 CALL                             R18 2 1
      130 SETTABLEKS                       R18 R17 K23 ["ChatHistory"]
      132 GETUPVAL                         R18 7
      133 GETUPVAL                         R19 15
      134 DUPTABLE                         R20 K33 [{"AnchorPoint", "Position", "ZIndex"}]
      135 GETIMPORT                        R21 K36 [Vector2.new]
      137 LOADK                            R22 K37 [0.5]
      138 LOADN                            R23 1
      139 CALL                             R21 2 1
      140 SETTABLEKS                       R21 R20 K30 ["AnchorPoint"]
      142 GETIMPORT                        R21 K40 [UDim2.fromScale]
      144 LOADK                            R22 K37 [0.5]
      145 LOADN                            R23 1
      146 CALL                             R21 2 1
      147 SETTABLEKS                       R21 R20 K31 ["Position"]
      149 LOADN                            R21 231
      150 SETTABLEKS                       R21 R20 K32 ["ZIndex"]
      152 CALL                             R18 2 1
      153 SETTABLEKS                       R18 R17 K24 ["ModelQualityWarning"]
      155 CALL                             R14 3 1
      156 SETTABLEKS                       R14 R13 K13 ["ChatHistoryArea"]
      158 GETUPVAL                         R14 7
      159 GETUPVAL                         R15 16
      160 DUPTABLE                         R16 K43 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      161 MOVE                             R17 R6
      162 CALL                             R17 0 1
      163 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      165 SETTABLEKS                       R5 R16 K41 ["OnMessageSent"]
      167 GETTABLEKS                       R17 R0 K42 ["textBoxRef"]
      169 SETTABLEKS                       R17 R16 K42 ["textBoxRef"]
      171 CALL                             R14 2 1
      172 SETTABLEKS                       R14 R13 K14 ["InputArea"]
      174 CALL                             R10 3 -1
      175 CALL                             R7 -1 -1
      176 RETURN                           R7 -1

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
       76 GETTABLEKS                       R11 R12 K19 ["usePersistConversations"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K8 ["Hooks"]
       83 GETTABLEKS                       R12 R13 K20 ["useRemoveUnfocusedEphemeralThread"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K21 ["Flags"]
       90 GETTABLEKS                       R13 R14 K22 ["FFlagAssistantMultipleChatSupport"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K21 ["Flags"]
       97 GETTABLEKS                       R14 R15 K23 ["FFlagAssistantPersistConversations"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R3 K24 ["Divider"]
      102 GETTABLEKS                       R15 R3 K25 ["View"]
      104 GETTABLEKS                       R16 R9 K26 ["createNextOrder"]
      106 GETTABLEKS                       R17 R8 K27 ["createElement"]
      108 DUPCLOSURE                       R18 K28 [PROTO_0]
      109 DUPCLOSURE                       R19 K29 [PROTO_1]
      110 DUPCLOSURE                       R20 K30 [PROTO_5]
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R5
      128 RETURN                           R20 1
