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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       14 GETUPVAL                         R1 1
       15 CALL                             R1 0 1
       16 JUMPIFNOT                        R1 ; [+2]
       17 GETUPVAL                         R1 5
       18 CALL                             R1 0 0
       19 GETUPVAL                         R2 6
       20 GETTABLEKS                       R1 R2 K1 ["useRef"]
       22 LOADNIL                          R2
       23 CALL                             R1 1 1
       24 GETUPVAL                         R3 6
       25 GETTABLEKS                       R2 R3 K1 ["useRef"]
       27 LOADB                            R3 1
       28 CALL                             R2 1 1
       29 GETUPVAL                         R4 6
       30 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R5 0 0
       36 CALL                             R3 2 1
       37 GETUPVAL                         R5 6
       38 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       40 NEWCLOSURE                       R5 P1
       41 CAPTURE                          VAL R2
       42 NEWTABLE                         R6 0 0
       44 CALL                             R4 2 1
       45 GETUPVAL                         R6 6
       46 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       48 NEWCLOSURE                       R6 P2
       49 CAPTURE                          VAL R1
       50 NEWTABLE                         R7 0 0
       52 CALL                             R5 2 1
       53 GETUPVAL                         R6 7
       54 CALL                             R6 0 1
       55 GETUPVAL                         R7 8
       56 GETUPVAL                         R9 9
       57 GETTABLEKS                       R8 R9 K3 ["ContextStack"]
       59 DUPTABLE                         R9 K5 [{"providers"}]
       60 NEWTABLE                         R10 0 1
       62 GETUPVAL                         R11 8
       63 GETUPVAL                         R13 10
       64 GETTABLEKS                       R12 R13 K6 ["Provider"]
       66 CALL                             R11 1 -1
       67 SETLIST                          R10 R11 -1 [1]
       69 SETTABLEKS                       R10 R9 K4 ["providers"]
       71 GETUPVAL                         R10 8
       72 GETUPVAL                         R11 11
       73 DUPTABLE                         R12 K9 [{"tag", "LayoutOrder"}]
       74 LOADK                            R13 K10 ["col size-full-0 grow"]
       75 SETTABLEKS                       R13 R12 K7 ["tag"]
       77 GETTABLEKS                       R13 R0 K8 ["LayoutOrder"]
       79 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       81 DUPTABLE                         R13 K15 [{"Header", "Divider", "ChatHistoryArea", "InputArea"}]
       82 GETUPVAL                         R14 8
       83 GETUPVAL                         R15 12
       84 DUPTABLE                         R16 K9 [{"tag", "LayoutOrder"}]
       85 LOADK                            R17 K16 ["row size-full-0 auto-y padding-small gap-xsmall align-x-right"]
       86 SETTABLEKS                       R17 R16 K7 ["tag"]
       88 MOVE                             R17 R6
       89 CALL                             R17 0 1
       90 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K11 ["Header"]
       95 GETUPVAL                         R14 8
       96 GETUPVAL                         R15 13
       97 DUPTABLE                         R16 K18 [{"variant", "LayoutOrder"}]
       98 GETUPVAL                         R20 14
       99 GETTABLEKS                       R19 R20 K19 ["Enums"]
      101 GETTABLEKS                       R18 R19 K20 ["DividerVariant"]
      103 GETTABLEKS                       R17 R18 K21 ["Default"]
      105 SETTABLEKS                       R17 R16 K17 ["variant"]
      107 MOVE                             R17 R6
      108 CALL                             R17 0 1
      109 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      111 CALL                             R14 2 1
      112 SETTABLEKS                       R14 R13 K12 ["Divider"]
      114 GETUPVAL                         R14 8
      115 GETUPVAL                         R15 11
      116 DUPTABLE                         R16 K9 [{"tag", "LayoutOrder"}]
      117 LOADK                            R17 K22 ["size-full-0 grow"]
      118 SETTABLEKS                       R17 R16 K7 ["tag"]
      120 MOVE                             R17 R6
      121 CALL                             R17 0 1
      122 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      124 DUPTABLE                         R17 K25 [{"ChatHistory", "ModelQualityWarning"}]
      125 GETUPVAL                         R18 8
      126 GETUPVAL                         R19 15
      127 DUPTABLE                         R20 K29 [{"scrollingFrameRef", "onAbsoluteCanvasSizeChanged", "onCanvasPositionChanged"}]
      128 SETTABLEKS                       R1 R20 K26 ["scrollingFrameRef"]
      130 SETTABLEKS                       R4 R20 K27 ["onAbsoluteCanvasSizeChanged"]
      132 SETTABLEKS                       R3 R20 K28 ["onCanvasPositionChanged"]
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K23 ["ChatHistory"]
      137 GETUPVAL                         R18 8
      138 GETUPVAL                         R19 16
      139 DUPTABLE                         R20 K33 [{"AnchorPoint", "Position", "ZIndex"}]
      140 GETIMPORT                        R21 K36 [Vector2.new]
      142 LOADK                            R22 K37 [0.5]
      143 LOADN                            R23 1
      144 CALL                             R21 2 1
      145 SETTABLEKS                       R21 R20 K30 ["AnchorPoint"]
      147 GETIMPORT                        R21 K40 [UDim2.fromScale]
      149 LOADK                            R22 K37 [0.5]
      150 LOADN                            R23 1
      151 CALL                             R21 2 1
      152 SETTABLEKS                       R21 R20 K31 ["Position"]
      154 LOADN                            R21 231
      155 SETTABLEKS                       R21 R20 K32 ["ZIndex"]
      157 CALL                             R18 2 1
      158 SETTABLEKS                       R18 R17 K24 ["ModelQualityWarning"]
      160 CALL                             R14 3 1
      161 SETTABLEKS                       R14 R13 K13 ["ChatHistoryArea"]
      163 GETUPVAL                         R14 8
      164 GETUPVAL                         R15 17
      165 DUPTABLE                         R16 K43 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      166 MOVE                             R17 R6
      167 CALL                             R17 0 1
      168 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      170 SETTABLEKS                       R5 R16 K41 ["OnMessageSent"]
      172 GETTABLEKS                       R17 R0 K42 ["textBoxRef"]
      174 SETTABLEKS                       R17 R16 K42 ["textBoxRef"]
      176 CALL                             R14 2 1
      177 SETTABLEKS                       R14 R13 K14 ["InputArea"]
      179 CALL                             R10 3 -1
      180 CALL                             R7 -1 -1
      181 RETURN                           R7 -1

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
       32 GETTABLEKS                       R6 R0 K12 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Components"]
       41 GETTABLEKS                       R6 R7 K14 ["Header"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Components"]
       48 GETTABLEKS                       R7 R8 K15 ["InputArea"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R9 K16 ["ModelQualityWarning"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K6 ["Components"]
       62 GETTABLEKS                       R10 R11 K8 ["Contexts"]
       64 GETTABLEKS                       R9 R10 K17 ["PacketReceivedContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K12 ["Parent"]
       71 GETTABLEKS                       R10 R11 K18 ["React"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K12 ["Parent"]
       78 GETTABLEKS                       R11 R12 K19 ["ReactUtils"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R14 R0 K6 ["Components"]
       85 GETTABLEKS                       R13 R14 K8 ["Contexts"]
       87 GETTABLEKS                       R12 R13 K20 ["SessionIdContext"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R14 R0 K21 ["Util"]
       94 GETTABLEKS                       R13 R14 K22 ["createNewThread"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R15 R0 K21 ["Util"]
      101 GETTABLEKS                       R14 R15 K23 ["makeConversation"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R16 R0 K10 ["Hooks"]
      108 GETTABLEKS                       R15 R16 K24 ["usePersistConversations"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R17 R0 K10 ["Hooks"]
      115 GETTABLEKS                       R16 R17 K25 ["useRemoveUnfocusedNewThread"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R18 R0 K10 ["Hooks"]
      122 GETTABLEKS                       R17 R18 K26 ["useSwitchThread"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R19 R0 K27 ["Flags"]
      129 GETTABLEKS                       R18 R19 K28 ["FFlagAssistantMultipleChatSupport"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R20 R0 K27 ["Flags"]
      136 GETTABLEKS                       R19 R20 K29 ["FFlagAssistantPersistConversations"]
      138 CALL                             R18 1 1
      139 GETTABLEKS                       R19 R4 K30 ["Divider"]
      141 GETTABLEKS                       R20 R4 K31 ["View"]
      143 GETTABLEKS                       R21 R10 K32 ["createNextOrder"]
      145 GETTABLEKS                       R22 R9 K33 ["createElement"]
      147 DUPCLOSURE                       R23 K34 [PROTO_0]
      148 DUPCLOSURE                       R24 K35 [PROTO_1]
      149 DUPCLOSURE                       R25 K36 [PROTO_4]
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R13
      156 DUPCLOSURE                       R26 K37 [PROTO_8]
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R25
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R22
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R6
      175 RETURN                           R26 1
