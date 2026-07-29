PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_1:
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
       18 DUPCLOSURE                       R2 K1 [PROTO_0]
       19 CAPTURE                          UPVAL U5
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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
       17 JUMP                             ; [+34]
       18 GETUPVAL                         R4 3
       19 GETUPVAL                         R5 4
       20 DUPTABLE                         R6 K7 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"] = 1}]
       21 DUPTABLE                         R7 K10 [{"PersistentPlanPanel", "InputArea"}]
       22 GETUPVAL                         R8 3
       23 GETUPVAL                         R9 5
       24 DUPTABLE                         R10 K11 [{"LayoutOrder"}]
       25 MOVE                             R11 R2
       26 CALL                             R11 0 1
       27 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       29 CALL                             R8 2 1
       30 SETTABLEKS                       R8 R7 K8 ["PersistentPlanPanel"]
       32 GETUPVAL                         R8 3
       33 GETUPVAL                         R9 6
       34 DUPTABLE                         R10 K14 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
       35 MOVE                             R11 R2
       36 CALL                             R11 0 1
       37 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       39 GETTABLEKS                       R11 R0 K12 ["OnMessageSent"]
       41 SETTABLEKS                       R11 R10 K12 ["OnMessageSent"]
       43 GETTABLEKS                       R11 R0 K13 ["textBoxRef"]
       45 SETTABLEKS                       R11 R10 K13 ["textBoxRef"]
       47 CALL                             R8 2 1
       48 SETTABLEKS                       R8 R7 K9 ["InputArea"]
       50 CALL                             R4 3 1
       51 MOVE                             R3 R4
       52 GETUPVAL                         R4 3
       53 GETUPVAL                         R5 4
       54 DUPTABLE                         R6 K16 [{["tag"] = "col size-full-0 auto-y margin-x-small", ["LayoutOrder"]}]
       55 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       57 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       59 DUPTABLE                         R7 K17 [{"InputArea"}]
       60 SETTABLEKS                       R3 R7 K9 ["InputArea"]
       62 CALL                             R4 3 -1
       63 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["scrollToBottom"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 2
        7 CALL                             R1 0 0
        8 GETUPVAL                         R1 3
        9 CALL                             R1 0 0
       10 GETUPVAL                         R1 4
       11 CALL                             R1 0 0
       12 GETUPVAL                         R1 5
       13 GETTABLEKS                       R1 R1 K1 ["useRef"]
       15 LOADNIL                          R2
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 5
       18 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R4 0 0
       24 CALL                             R2 2 1
       25 GETUPVAL                         R4 6
       26 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantFeedbackView"]
       28 JUMPIFNOT                        R4 ; [+8]
       29 GETUPVAL                         R3 5
       30 GETTABLEKS                       R3 R3 K4 ["useContext"]
       32 GETUPVAL                         R4 7
       33 GETTABLEKS                       R4 R4 K5 ["Context"]
       35 CALL                             R3 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R3
       38 JUMPIFNOT                        R3 ; [+3]
       39 GETTABLEKS                       R4 R3 K6 ["feedbackRequest"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R4
       43 GETUPVAL                         R5 8
       44 CALL                             R5 0 1
       45 NEWTABLE                         R6 0 0
       47 GETUPVAL                         R7 6
       48 GETTABLEKS                       R7 R7 K7 ["FFlagAssistantHarnessSplit"]
       50 JUMPIFNOT                        R7 ; [+26]
       51 NEWTABLE                         R7 0 4
       53 GETUPVAL                         R8 9
       54 GETUPVAL                         R9 10
       55 GETTABLEKS                       R9 R9 K8 ["Provider"]
       57 CALL                             R8 1 1
       58 GETUPVAL                         R9 9
       59 GETUPVAL                         R10 11
       60 GETTABLEKS                       R10 R10 K8 ["Provider"]
       62 CALL                             R9 1 1
       63 GETUPVAL                         R10 9
       64 GETUPVAL                         R11 12
       65 GETTABLEKS                       R11 R11 K8 ["Provider"]
       67 CALL                             R10 1 1
       68 GETUPVAL                         R11 9
       69 GETUPVAL                         R12 13
       70 GETTABLEKS                       R12 R12 K8 ["Provider"]
       72 CALL                             R11 1 -1
       73 SETLIST                          R7 R8 -1 [1]
       75 MOVE                             R6 R7
       76 JUMP                             ; [+15]
       77 NEWTABLE                         R7 0 2
       79 GETUPVAL                         R8 9
       80 GETUPVAL                         R9 12
       81 GETTABLEKS                       R9 R9 K8 ["Provider"]
       83 CALL                             R8 1 1
       84 GETUPVAL                         R9 9
       85 GETUPVAL                         R10 13
       86 GETTABLEKS                       R10 R10 K8 ["Provider"]
       88 CALL                             R9 1 -1
       89 SETLIST                          R7 R8 -1 [1]
       91 MOVE                             R6 R7
       92 GETUPVAL                         R7 9
       93 GETUPVAL                         R8 14
       94 GETTABLEKS                       R8 R8 K9 ["ContextStack"]
       96 DUPTABLE                         R9 K11 [{"providers"}]
       97 SETTABLEKS                       R6 R9 K10 ["providers"]
       99 GETUPVAL                         R10 9
      100 GETUPVAL                         R11 15
      101 DUPTABLE                         R12 K15 [{["tag"] = "col grow size-full-0", ["LayoutOrder"]}]
      102 GETTABLEKS                       R13 R0 K14 ["LayoutOrder"]
      104 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      106 DUPTABLE                         R13 K20 [{"Header", "Divider", "ChatHistoryArea", "BottomArea"}]
      107 GETUPVAL                         R14 9
      108 GETUPVAL                         R15 16
      109 DUPTABLE                         R16 K22 [{["tag"] = "row align-x-right gap-xsmall size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      110 MOVE                             R17 R5
      111 CALL                             R17 0 1
      112 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      114 CALL                             R14 2 1
      115 SETTABLEKS                       R14 R13 K16 ["Header"]
      117 GETUPVAL                         R14 9
      118 GETUPVAL                         R15 17
      119 DUPTABLE                         R16 K24 [{"variant", "LayoutOrder"}]
      120 GETUPVAL                         R17 18
      121 GETTABLEKS                       R17 R17 K25 ["Enums"]
      123 GETTABLEKS                       R17 R17 K26 ["DividerVariant"]
      125 GETTABLEKS                       R17 R17 K27 ["Default"]
      127 SETTABLEKS                       R17 R16 K23 ["variant"]
      129 MOVE                             R17 R5
      130 CALL                             R17 0 1
      131 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      133 CALL                             R14 2 1
      134 SETTABLEKS                       R14 R13 K17 ["Divider"]
      136 GETUPVAL                         R14 9
      137 GETUPVAL                         R15 15
      138 DUPTABLE                         R16 K29 [{["tag"] = "grow size-full-0", ["LayoutOrder"]}]
      139 MOVE                             R17 R5
      140 CALL                             R17 0 1
      141 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      143 DUPTABLE                         R17 K32 [{"ChatHistory", "ModelQualityWarning"}]
      144 GETUPVAL                         R18 9
      145 GETUPVAL                         R19 19
      146 DUPTABLE                         R20 K34 [{"chatHistoryInterfaceRef"}]
      147 SETTABLEKS                       R1 R20 K33 ["chatHistoryInterfaceRef"]
      149 CALL                             R18 2 1
      150 SETTABLEKS                       R18 R17 K30 ["ChatHistory"]
      152 GETUPVAL                         R18 9
      153 GETUPVAL                         R19 20
      154 DUPTABLE                         R20 K39 [{["AnchorPoint"], ["Position"], ["ZIndex"] = 999}]
      155 GETIMPORT                        R21 K42 [Vector2.new]
      157 LOADK                            R22 K43 [0.5]
      158 LOADN                            R23 1
      159 CALL                             R21 2 1
      160 SETTABLEKS                       R21 R20 K35 ["AnchorPoint"]
      162 GETIMPORT                        R21 K46 [UDim2.fromScale]
      164 LOADK                            R22 K43 [0.5]
      165 LOADN                            R23 1
      166 CALL                             R21 2 1
      167 SETTABLEKS                       R21 R20 K36 ["Position"]
      169 CALL                             R18 2 1
      170 SETTABLEKS                       R18 R17 K31 ["ModelQualityWarning"]
      172 CALL                             R14 3 1
      173 SETTABLEKS                       R14 R13 K18 ["ChatHistoryArea"]
      175 GETUPVAL                         R15 6
      176 GETTABLEKS                       R15 R15 K3 ["FFlagAssistantFeedbackView"]
      178 JUMPIFNOT                        R15 ; [+22]
      179 JUMPIFNOT                        R4 ; [+21]
      180 GETUPVAL                         R14 9
      181 GETUPVAL                         R15 21
      182 DUPTABLE                         R16 K50 [{"thumbsDirection", "onSubmit", "onClose", "LayoutOrder"}]
      183 GETTABLEKS                       R17 R4 K47 ["thumbsDirection"]
      185 SETTABLEKS                       R17 R16 K47 ["thumbsDirection"]
      187 GETTABLEKS                       R17 R4 K48 ["onSubmit"]
      189 SETTABLEKS                       R17 R16 K48 ["onSubmit"]
      191 GETTABLEKS                       R17 R4 K51 ["onDismiss"]
      193 SETTABLEKS                       R17 R16 K49 ["onClose"]
      195 MOVE                             R17 R5
      196 CALL                             R17 0 1
      197 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      199 CALL                             R14 2 1
      200 JUMP                             ; [+14]
      201 GETUPVAL                         R14 9
      202 GETUPVAL                         R15 22
      203 DUPTABLE                         R16 K54 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      204 MOVE                             R17 R5
      205 CALL                             R17 0 1
      206 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      208 SETTABLEKS                       R2 R16 K52 ["OnMessageSent"]
      210 GETTABLEKS                       R17 R0 K53 ["textBoxRef"]
      212 SETTABLEKS                       R17 R16 K53 ["textBoxRef"]
      214 CALL                             R14 2 1
      215 SETTABLEKS                       R14 R13 K19 ["BottomArea"]
      217 CALL                             R10 3 -1
      218 CALL                             R7 -1 -1
      219 RETURN                           R7 -1

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
       27 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K10 ["ConversationContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K12 ["RESTRICTED_ExternalHooks"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K13 ["FeedbackContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Components"]
       52 GETTABLEKS                       R7 R7 K14 ["FeedbackView"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K15 ["Parent"]
       59 GETTABLEKS                       R8 R8 K16 ["Foundation"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Components"]
       66 GETTABLEKS                       R9 R9 K17 ["Header"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Components"]
       73 GETTABLEKS                       R10 R10 K18 ["InputArea"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Components"]
       80 GETTABLEKS                       R11 R11 K7 ["Contexts"]
       82 GETTABLEKS                       R11 R11 K19 ["InputAreaOverrideContext"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K6 ["Components"]
       89 GETTABLEKS                       R12 R12 K20 ["ModelQualityWarning"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K6 ["Components"]
       96 GETTABLEKS                       R13 R13 K7 ["Contexts"]
       98 GETTABLEKS                       R13 R13 K21 ["OngoingAcpPromptContext"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K6 ["Components"]
      105 GETTABLEKS                       R14 R14 K7 ["Contexts"]
      107 GETTABLEKS                       R14 R14 K22 ["PacketReceivedContext"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K15 ["Parent"]
      114 GETTABLEKS                       R15 R15 K23 ["React"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K15 ["Parent"]
      121 GETTABLEKS                       R16 R16 K24 ["ReactUtils"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R0 K6 ["Components"]
      128 GETTABLEKS                       R17 R17 K7 ["Contexts"]
      130 GETTABLEKS                       R17 R17 K25 ["SessionIdContext"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K5 [require]
      135 GETTABLEKS                       R18 R0 K26 ["Util"]
      137 GETTABLEKS                       R18 R18 K27 ["createNewThread"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R19 R0 K26 ["Util"]
      144 GETTABLEKS                       R19 R19 K28 ["makeConversation"]
      146 CALL                             R18 1 1
      147 GETIMPORT                        R19 K5 [require]
      149 GETTABLEKS                       R20 R0 K11 ["Hooks"]
      151 GETTABLEKS                       R20 R20 K29 ["usePersistConversations"]
      153 CALL                             R19 1 1
      154 GETIMPORT                        R20 K5 [require]
      156 GETTABLEKS                       R21 R0 K11 ["Hooks"]
      158 GETTABLEKS                       R21 R21 K30 ["useRemoveUnfocusedNewThread"]
      160 CALL                             R20 1 1
      161 GETIMPORT                        R21 K5 [require]
      163 GETTABLEKS                       R22 R0 K11 ["Hooks"]
      165 GETTABLEKS                       R22 R22 K31 ["useSwitchThread"]
      167 CALL                             R21 1 1
      168 GETIMPORT                        R22 K5 [require]
      170 GETTABLEKS                       R23 R0 K11 ["Hooks"]
      172 GETTABLEKS                       R23 R23 K32 ["useTrackThreadViewedAt"]
      174 CALL                             R22 1 1
      175 GETIMPORT                        R23 K5 [require]
      177 GETTABLEKS                       R24 R0 K33 ["Flags"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K5 [require]
      182 GETTABLEKS                       R25 R0 K6 ["Components"]
      184 GETTABLEKS                       R25 R25 K34 ["PersistentPlanPanel"]
      186 CALL                             R24 1 1
      187 GETTABLEKS                       R25 R7 K35 ["Divider"]
      189 GETTABLEKS                       R26 R7 K36 ["View"]
      191 GETTABLEKS                       R27 R15 K37 ["createNextOrder"]
      193 GETTABLEKS                       R28 R14 K38 ["createElement"]
      195 DUPCLOSURE                       R29 K39 [PROTO_2]
      196 CAPTURE                          VAL R14
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R16
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R18
      202 DUPCLOSURE                       R30 K40 [PROTO_3]
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R27
      206 CAPTURE                          VAL R28
      207 CAPTURE                          VAL R26
      208 CAPTURE                          VAL R24
      209 CAPTURE                          VAL R9
      210 DUPCLOSURE                       R31 K41 [PROTO_5]
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R29
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R20
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R14
      217 CAPTURE                          VAL R23
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R27
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R10
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R8
      228 CAPTURE                          VAL R25
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R30
      234 RETURN                           R31 1
