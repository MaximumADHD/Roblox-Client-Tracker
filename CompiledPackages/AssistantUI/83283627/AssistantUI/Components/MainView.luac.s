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
       47 GETUPVAL                         R7 9
       48 CALL                             R7 0 1
       49 JUMPIFNOT                        R7 ; [+31]
       50 NEWTABLE                         R7 0 5
       52 GETUPVAL                         R8 10
       53 GETUPVAL                         R9 11
       54 GETTABLEKS                       R9 R9 K7 ["Provider"]
       56 CALL                             R8 1 1
       57 GETUPVAL                         R9 10
       58 GETUPVAL                         R10 12
       59 GETTABLEKS                       R10 R10 K7 ["Provider"]
       61 CALL                             R9 1 1
       62 GETUPVAL                         R10 10
       63 GETUPVAL                         R11 13
       64 GETTABLEKS                       R11 R11 K7 ["Provider"]
       66 CALL                             R10 1 1
       67 GETUPVAL                         R11 10
       68 GETUPVAL                         R12 14
       69 GETTABLEKS                       R12 R12 K7 ["Provider"]
       71 CALL                             R11 1 1
       72 GETUPVAL                         R12 10
       73 GETUPVAL                         R13 15
       74 GETTABLEKS                       R13 R13 K7 ["Provider"]
       76 CALL                             R12 1 -1
       77 SETLIST                          R7 R8 -1 [1]
       79 MOVE                             R6 R7
       80 JUMP                             ; [+15]
       81 NEWTABLE                         R7 0 2
       83 GETUPVAL                         R8 10
       84 GETUPVAL                         R9 14
       85 GETTABLEKS                       R9 R9 K7 ["Provider"]
       87 CALL                             R8 1 1
       88 GETUPVAL                         R9 10
       89 GETUPVAL                         R10 15
       90 GETTABLEKS                       R10 R10 K7 ["Provider"]
       92 CALL                             R9 1 -1
       93 SETLIST                          R7 R8 -1 [1]
       95 MOVE                             R6 R7
       96 GETUPVAL                         R7 10
       97 GETUPVAL                         R8 16
       98 GETTABLEKS                       R8 R8 K8 ["ContextStack"]
      100 DUPTABLE                         R9 K10 [{"providers"}]
      101 SETTABLEKS                       R6 R9 K9 ["providers"]
      103 GETUPVAL                         R10 10
      104 GETUPVAL                         R11 17
      105 DUPTABLE                         R12 K14 [{["tag"] = "col grow size-full-0", ["LayoutOrder"]}]
      106 GETTABLEKS                       R13 R0 K13 ["LayoutOrder"]
      108 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      110 DUPTABLE                         R13 K19 [{"Header", "Divider", "ChatHistoryArea", "BottomArea"}]
      111 GETUPVAL                         R14 10
      112 GETUPVAL                         R15 18
      113 DUPTABLE                         R16 K21 [{["tag"] = "row align-x-right gap-xsmall size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      114 MOVE                             R17 R5
      115 CALL                             R17 0 1
      116 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      118 CALL                             R14 2 1
      119 SETTABLEKS                       R14 R13 K15 ["Header"]
      121 GETUPVAL                         R14 10
      122 GETUPVAL                         R15 19
      123 DUPTABLE                         R16 K23 [{"variant", "LayoutOrder"}]
      124 GETUPVAL                         R17 20
      125 GETTABLEKS                       R17 R17 K24 ["Enums"]
      127 GETTABLEKS                       R17 R17 K25 ["DividerVariant"]
      129 GETTABLEKS                       R17 R17 K26 ["Default"]
      131 SETTABLEKS                       R17 R16 K22 ["variant"]
      133 MOVE                             R17 R5
      134 CALL                             R17 0 1
      135 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      137 CALL                             R14 2 1
      138 SETTABLEKS                       R14 R13 K16 ["Divider"]
      140 GETUPVAL                         R14 10
      141 GETUPVAL                         R15 17
      142 DUPTABLE                         R16 K28 [{["tag"] = "grow size-full-0", ["LayoutOrder"]}]
      143 MOVE                             R17 R5
      144 CALL                             R17 0 1
      145 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      147 DUPTABLE                         R17 K31 [{"ChatHistory", "ModelQualityWarning"}]
      148 GETUPVAL                         R18 10
      149 GETUPVAL                         R19 21
      150 DUPTABLE                         R20 K33 [{"chatHistoryInterfaceRef"}]
      151 SETTABLEKS                       R1 R20 K32 ["chatHistoryInterfaceRef"]
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K29 ["ChatHistory"]
      156 GETUPVAL                         R18 10
      157 GETUPVAL                         R19 22
      158 DUPTABLE                         R20 K38 [{["AnchorPoint"], ["Position"], ["ZIndex"] = 999}]
      159 GETIMPORT                        R21 K41 [Vector2.new]
      161 LOADK                            R22 K42 [0.5]
      162 LOADN                            R23 1
      163 CALL                             R21 2 1
      164 SETTABLEKS                       R21 R20 K34 ["AnchorPoint"]
      166 GETIMPORT                        R21 K45 [UDim2.fromScale]
      168 LOADK                            R22 K42 [0.5]
      169 LOADN                            R23 1
      170 CALL                             R21 2 1
      171 SETTABLEKS                       R21 R20 K35 ["Position"]
      173 CALL                             R18 2 1
      174 SETTABLEKS                       R18 R17 K30 ["ModelQualityWarning"]
      176 CALL                             R14 3 1
      177 SETTABLEKS                       R14 R13 K17 ["ChatHistoryArea"]
      179 GETUPVAL                         R15 6
      180 GETTABLEKS                       R15 R15 K3 ["FFlagAssistantFeedbackView"]
      182 JUMPIFNOT                        R15 ; [+22]
      183 JUMPIFNOT                        R4 ; [+21]
      184 GETUPVAL                         R14 10
      185 GETUPVAL                         R15 23
      186 DUPTABLE                         R16 K49 [{"thumbsDirection", "onSubmit", "onClose", "LayoutOrder"}]
      187 GETTABLEKS                       R17 R4 K46 ["thumbsDirection"]
      189 SETTABLEKS                       R17 R16 K46 ["thumbsDirection"]
      191 GETTABLEKS                       R17 R4 K47 ["onSubmit"]
      193 SETTABLEKS                       R17 R16 K47 ["onSubmit"]
      195 GETTABLEKS                       R17 R4 K50 ["onDismiss"]
      197 SETTABLEKS                       R17 R16 K48 ["onClose"]
      199 MOVE                             R17 R5
      200 CALL                             R17 0 1
      201 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      203 CALL                             R14 2 1
      204 JUMP                             ; [+14]
      205 GETUPVAL                         R14 10
      206 GETUPVAL                         R15 24
      207 DUPTABLE                         R16 K53 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      208 MOVE                             R17 R5
      209 CALL                             R17 0 1
      210 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      212 SETTABLEKS                       R2 R16 K51 ["OnMessageSent"]
      214 GETTABLEKS                       R17 R0 K52 ["textBoxRef"]
      216 SETTABLEKS                       R17 R16 K52 ["textBoxRef"]
      218 CALL                             R14 2 1
      219 SETTABLEKS                       R14 R13 K18 ["BottomArea"]
      221 CALL                             R10 3 -1
      222 CALL                             R7 -1 -1
      223 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ACPClientServiceContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K9 ["AcpSessionMonitorContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K10 ["ChatHistory"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Components"]
       36 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K11 ["ConversationContext"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K13 ["RESTRICTED_ExternalHooks"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Components"]
       52 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K14 ["FeedbackContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Components"]
       61 GETTABLEKS                       R8 R8 K15 ["FeedbackView"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K16 ["Parent"]
       68 GETTABLEKS                       R9 R9 K17 ["Foundation"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Components"]
       75 GETTABLEKS                       R10 R10 K18 ["Header"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K6 ["Components"]
       82 GETTABLEKS                       R11 R11 K19 ["InputArea"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K6 ["Components"]
       89 GETTABLEKS                       R12 R12 K7 ["Contexts"]
       91 GETTABLEKS                       R12 R12 K20 ["InputAreaOverrideContext"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K6 ["Components"]
       98 GETTABLEKS                       R13 R13 K21 ["ModelQualityWarning"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K6 ["Components"]
      105 GETTABLEKS                       R14 R14 K7 ["Contexts"]
      107 GETTABLEKS                       R14 R14 K22 ["OngoingAcpPromptContext"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K6 ["Components"]
      114 GETTABLEKS                       R15 R15 K7 ["Contexts"]
      116 GETTABLEKS                       R15 R15 K23 ["PacketReceivedContext"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K16 ["Parent"]
      123 GETTABLEKS                       R16 R16 K24 ["React"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K16 ["Parent"]
      130 GETTABLEKS                       R17 R17 K25 ["ReactUtils"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K5 [require]
      135 GETTABLEKS                       R18 R0 K6 ["Components"]
      137 GETTABLEKS                       R18 R18 K7 ["Contexts"]
      139 GETTABLEKS                       R18 R18 K26 ["SessionIdContext"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K5 [require]
      144 GETTABLEKS                       R19 R0 K27 ["Util"]
      146 GETTABLEKS                       R19 R19 K28 ["createNewThread"]
      148 CALL                             R18 1 1
      149 GETIMPORT                        R19 K5 [require]
      151 GETTABLEKS                       R20 R0 K27 ["Util"]
      153 GETTABLEKS                       R20 R20 K29 ["makeConversation"]
      155 CALL                             R19 1 1
      156 GETIMPORT                        R20 K5 [require]
      158 GETTABLEKS                       R21 R0 K12 ["Hooks"]
      160 GETTABLEKS                       R21 R21 K30 ["usePersistConversations"]
      162 CALL                             R20 1 1
      163 GETIMPORT                        R21 K5 [require]
      165 GETTABLEKS                       R22 R0 K12 ["Hooks"]
      167 GETTABLEKS                       R22 R22 K31 ["useRemoveUnfocusedNewThread"]
      169 CALL                             R21 1 1
      170 GETIMPORT                        R22 K5 [require]
      172 GETTABLEKS                       R23 R0 K12 ["Hooks"]
      174 GETTABLEKS                       R23 R23 K32 ["useSwitchThread"]
      176 CALL                             R22 1 1
      177 GETIMPORT                        R23 K5 [require]
      179 GETTABLEKS                       R24 R0 K12 ["Hooks"]
      181 GETTABLEKS                       R24 R24 K33 ["useTrackThreadViewedAt"]
      183 CALL                             R23 1 1
      184 GETIMPORT                        R24 K5 [require]
      186 GETTABLEKS                       R25 R0 K34 ["FlagUtils"]
      188 CALL                             R24 1 1
      189 GETIMPORT                        R25 K5 [require]
      191 GETTABLEKS                       R26 R0 K35 ["Flags"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K5 [require]
      196 GETTABLEKS                       R27 R0 K6 ["Components"]
      198 GETTABLEKS                       R27 R27 K36 ["PersistentPlanPanel"]
      200 CALL                             R26 1 1
      201 GETTABLEKS                       R27 R24 K37 ["getIsAssistantHarnessSplit"]
      203 GETTABLEKS                       R28 R8 K38 ["Divider"]
      205 GETTABLEKS                       R29 R8 K39 ["View"]
      207 GETTABLEKS                       R30 R16 K40 ["createNextOrder"]
      209 GETTABLEKS                       R31 R15 K41 ["createElement"]
      211 DUPCLOSURE                       R32 K42 [PROTO_2]
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R17
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R19
      218 DUPCLOSURE                       R33 K43 [PROTO_3]
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R30
      222 CAPTURE                          VAL R31
      223 CAPTURE                          VAL R29
      224 CAPTURE                          VAL R26
      225 CAPTURE                          VAL R10
      226 DUPCLOSURE                       R34 K44 [PROTO_5]
      227 CAPTURE                          VAL R5
      228 CAPTURE                          VAL R32
      229 CAPTURE                          VAL R20
      230 CAPTURE                          VAL R21
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R25
      234 CAPTURE                          VAL R6
      235 CAPTURE                          VAL R30
      236 CAPTURE                          VAL R27
      237 CAPTURE                          VAL R31
      238 CAPTURE                          VAL R1
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R13
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R16
      244 CAPTURE                          VAL R29
      245 CAPTURE                          VAL R9
      246 CAPTURE                          VAL R28
      247 CAPTURE                          VAL R8
      248 CAPTURE                          VAL R3
      249 CAPTURE                          VAL R12
      250 CAPTURE                          VAL R7
      251 CAPTURE                          VAL R33
      252 RETURN                           R34 1
