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
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+8]
       28 GETUPVAL                         R3 5
       29 GETTABLEKS                       R3 R3 K3 ["useContext"]
       31 GETUPVAL                         R4 7
       32 GETTABLEKS                       R4 R4 K4 ["Context"]
       34 CALL                             R3 1 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R3
       37 JUMPIFNOT                        R3 ; [+3]
       38 GETTABLEKS                       R4 R3 K5 ["feedbackRequest"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R4
       42 GETUPVAL                         R5 8
       43 CALL                             R5 0 1
       44 NEWTABLE                         R6 0 0
       46 GETUPVAL                         R7 9
       47 CALL                             R7 0 1
       48 JUMPIFNOT                        R7 ; [+21]
       49 NEWTABLE                         R7 0 3
       51 GETUPVAL                         R8 10
       52 GETUPVAL                         R9 11
       53 GETTABLEKS                       R9 R9 K6 ["Provider"]
       55 CALL                             R8 1 1
       56 GETUPVAL                         R9 10
       57 GETUPVAL                         R10 12
       58 GETTABLEKS                       R10 R10 K6 ["Provider"]
       60 CALL                             R9 1 1
       61 GETUPVAL                         R10 10
       62 GETUPVAL                         R11 13
       63 GETTABLEKS                       R11 R11 K6 ["Provider"]
       65 CALL                             R10 1 -1
       66 SETLIST                          R7 R8 -1 [1]
       68 MOVE                             R6 R7
       69 JUMP                             ; [+15]
       70 NEWTABLE                         R7 0 2
       72 GETUPVAL                         R8 10
       73 GETUPVAL                         R9 12
       74 GETTABLEKS                       R9 R9 K6 ["Provider"]
       76 CALL                             R8 1 1
       77 GETUPVAL                         R9 10
       78 GETUPVAL                         R10 13
       79 GETTABLEKS                       R10 R10 K6 ["Provider"]
       81 CALL                             R9 1 -1
       82 SETLIST                          R7 R8 -1 [1]
       84 MOVE                             R6 R7
       85 GETUPVAL                         R7 10
       86 GETUPVAL                         R8 14
       87 GETTABLEKS                       R8 R8 K7 ["ContextStack"]
       89 DUPTABLE                         R9 K9 [{"providers"}]
       90 SETTABLEKS                       R6 R9 K8 ["providers"]
       92 GETUPVAL                         R10 10
       93 GETUPVAL                         R11 15
       94 DUPTABLE                         R12 K13 [{["tag"] = "col grow size-full-0", ["LayoutOrder"]}]
       95 GETTABLEKS                       R13 R0 K12 ["LayoutOrder"]
       97 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       99 DUPTABLE                         R13 K18 [{"Header", "Divider", "ChatHistoryArea", "BottomArea"}]
      100 GETUPVAL                         R14 10
      101 GETUPVAL                         R15 16
      102 DUPTABLE                         R16 K20 [{["tag"] = "row align-x-right gap-xsmall size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      103 MOVE                             R17 R5
      104 CALL                             R17 0 1
      105 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      107 CALL                             R14 2 1
      108 SETTABLEKS                       R14 R13 K14 ["Header"]
      110 GETUPVAL                         R14 10
      111 GETUPVAL                         R15 17
      112 DUPTABLE                         R16 K22 [{"variant", "LayoutOrder"}]
      113 GETUPVAL                         R17 18
      114 GETTABLEKS                       R17 R17 K23 ["Enums"]
      116 GETTABLEKS                       R17 R17 K24 ["DividerVariant"]
      118 GETTABLEKS                       R17 R17 K25 ["Default"]
      120 SETTABLEKS                       R17 R16 K21 ["variant"]
      122 MOVE                             R17 R5
      123 CALL                             R17 0 1
      124 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      126 CALL                             R14 2 1
      127 SETTABLEKS                       R14 R13 K15 ["Divider"]
      129 GETUPVAL                         R14 10
      130 GETUPVAL                         R15 15
      131 DUPTABLE                         R16 K27 [{["tag"] = "grow size-full-0", ["LayoutOrder"]}]
      132 MOVE                             R17 R5
      133 CALL                             R17 0 1
      134 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      136 DUPTABLE                         R17 K30 [{"ChatHistory", "ModelQualityWarning"}]
      137 GETUPVAL                         R18 10
      138 GETUPVAL                         R19 19
      139 DUPTABLE                         R20 K32 [{"chatHistoryInterfaceRef"}]
      140 SETTABLEKS                       R1 R20 K31 ["chatHistoryInterfaceRef"]
      142 CALL                             R18 2 1
      143 SETTABLEKS                       R18 R17 K28 ["ChatHistory"]
      145 GETUPVAL                         R18 10
      146 GETUPVAL                         R19 20
      147 DUPTABLE                         R20 K37 [{["AnchorPoint"], ["Position"], ["ZIndex"] = 999}]
      148 GETIMPORT                        R21 K40 [Vector2.new]
      150 LOADK                            R22 K41 [0.5]
      151 LOADN                            R23 1
      152 CALL                             R21 2 1
      153 SETTABLEKS                       R21 R20 K33 ["AnchorPoint"]
      155 GETIMPORT                        R21 K44 [UDim2.fromScale]
      157 LOADK                            R22 K41 [0.5]
      158 LOADN                            R23 1
      159 CALL                             R21 2 1
      160 SETTABLEKS                       R21 R20 K34 ["Position"]
      162 CALL                             R18 2 1
      163 SETTABLEKS                       R18 R17 K29 ["ModelQualityWarning"]
      165 CALL                             R14 3 1
      166 SETTABLEKS                       R14 R13 K16 ["ChatHistoryArea"]
      168 GETUPVAL                         R15 6
      169 CALL                             R15 0 1
      170 JUMPIFNOT                        R15 ; [+22]
      171 JUMPIFNOT                        R4 ; [+21]
      172 GETUPVAL                         R14 10
      173 GETUPVAL                         R15 21
      174 DUPTABLE                         R16 K48 [{"thumbsDirection", "onSubmit", "onClose", "LayoutOrder"}]
      175 GETTABLEKS                       R17 R4 K45 ["thumbsDirection"]
      177 SETTABLEKS                       R17 R16 K45 ["thumbsDirection"]
      179 GETTABLEKS                       R17 R4 K46 ["onSubmit"]
      181 SETTABLEKS                       R17 R16 K46 ["onSubmit"]
      183 GETTABLEKS                       R17 R4 K49 ["onDismiss"]
      185 SETTABLEKS                       R17 R16 K47 ["onClose"]
      187 MOVE                             R17 R5
      188 CALL                             R17 0 1
      189 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      191 CALL                             R14 2 1
      192 JUMP                             ; [+14]
      193 GETUPVAL                         R14 10
      194 GETUPVAL                         R15 22
      195 DUPTABLE                         R16 K52 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      196 MOVE                             R17 R5
      197 CALL                             R17 0 1
      198 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      200 SETTABLEKS                       R2 R16 K50 ["OnMessageSent"]
      202 GETTABLEKS                       R17 R0 K51 ["textBoxRef"]
      204 SETTABLEKS                       R17 R16 K51 ["textBoxRef"]
      206 CALL                             R14 2 1
      207 SETTABLEKS                       R14 R13 K17 ["BottomArea"]
      209 CALL                             R10 3 -1
      210 CALL                             R7 -1 -1
      211 RETURN                           R7 -1

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
       98 GETTABLEKS                       R13 R13 K21 ["PacketReceivedContext"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K15 ["Parent"]
      105 GETTABLEKS                       R14 R14 K22 ["React"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K15 ["Parent"]
      112 GETTABLEKS                       R15 R15 K23 ["ReactUtils"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K6 ["Components"]
      119 GETTABLEKS                       R16 R16 K7 ["Contexts"]
      121 GETTABLEKS                       R16 R16 K24 ["SessionIdContext"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R0 K25 ["Util"]
      128 GETTABLEKS                       R17 R17 K26 ["createNewThread"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K5 [require]
      133 GETTABLEKS                       R18 R0 K27 ["Flags"]
      135 GETTABLEKS                       R18 R18 K28 ["FFlagAssistantFeedbackView"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K5 [require]
      140 GETTABLEKS                       R19 R0 K25 ["Util"]
      142 GETTABLEKS                       R19 R19 K29 ["makeConversation"]
      144 CALL                             R18 1 1
      145 GETIMPORT                        R19 K5 [require]
      147 GETTABLEKS                       R20 R0 K11 ["Hooks"]
      149 GETTABLEKS                       R20 R20 K30 ["usePersistConversations"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K5 [require]
      154 GETTABLEKS                       R21 R0 K11 ["Hooks"]
      156 GETTABLEKS                       R21 R21 K31 ["useRemoveUnfocusedNewThread"]
      158 CALL                             R20 1 1
      159 GETIMPORT                        R21 K5 [require]
      161 GETTABLEKS                       R22 R0 K11 ["Hooks"]
      163 GETTABLEKS                       R22 R22 K32 ["useSwitchThread"]
      165 CALL                             R21 1 1
      166 GETIMPORT                        R22 K5 [require]
      168 GETTABLEKS                       R23 R0 K11 ["Hooks"]
      170 GETTABLEKS                       R23 R23 K33 ["useTrackThreadViewedAt"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R24 R0 K6 ["Components"]
      177 GETTABLEKS                       R24 R24 K34 ["PersistentPlanPanel"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K5 [require]
      182 GETTABLEKS                       R25 R0 K27 ["Flags"]
      184 GETTABLEKS                       R25 R25 K35 ["FFlagAssistantHarnessSplit"]
      186 CALL                             R24 1 1
      187 GETTABLEKS                       R25 R7 K36 ["Divider"]
      189 GETTABLEKS                       R26 R7 K37 ["View"]
      191 GETTABLEKS                       R27 R14 K38 ["createNextOrder"]
      193 GETTABLEKS                       R28 R13 K39 ["createElement"]
      195 DUPCLOSURE                       R29 K40 [PROTO_2]
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R18
      202 DUPCLOSURE                       R30 K41 [PROTO_3]
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R27
      206 CAPTURE                          VAL R28
      207 CAPTURE                          VAL R26
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R9
      210 DUPCLOSURE                       R31 K42 [PROTO_5]
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R29
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R20
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R13
      217 CAPTURE                          VAL R17
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R27
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R28
      222 CAPTURE                          VAL R1
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R10
      225 CAPTURE                          VAL R14
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R8
      228 CAPTURE                          VAL R25
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R30
      234 RETURN                           R31 1
