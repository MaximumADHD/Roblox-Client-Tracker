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
       54 DUPTABLE                         R6 K15 [{"tag", "LayoutOrder"}]
       55 NEWTABLE                         R7 2 0
       57 LOADB                            R8 1
       58 SETTABLEKS                       R8 R7 K16 ["col size-full-0 auto-y margin-x-small"]
       60 GETUPVAL                         R8 7
       61 GETTABLEKS                       R8 R8 K17 ["getIsAskInputToolEnabled"]
       63 CALL                             R8 0 1
       64 JUMPIFNOT                        R8 ; [+6]
       65 GETTABLEKS                       R9 R1 K2 ["activeRender"]
       67 JUMPIFNOTEQKNIL                  R9 ; [+2]
       69 LOADB                            R8 0 +1
       70 LOADB                            R8 1
       71 SETTABLEKS                       R8 R7 K18 ["margin-bottom-small"]
       73 SETTABLEKS                       R7 R6 K3 ["tag"]
       75 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       77 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       79 DUPTABLE                         R7 K19 [{"InputArea"}]
       80 SETTABLEKS                       R3 R7 K9 ["InputArea"]
       82 CALL                             R4 3 -1
       83 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["scrollToBottom"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 3
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 4
       11 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantCreditMetering"]
       13 JUMPIFNOT                        R0 ; [+2]
       14 GETUPVAL                         R0 5
       15 CALL                             R0 0 0
       16 GETUPVAL                         R0 6
       17 GETTABLEKS                       R0 R0 K2 ["useRef"]
       19 LOADNIL                          R1
       20 CALL                             R0 1 1
       21 GETUPVAL                         R1 6
       22 GETTABLEKS                       R1 R1 K3 ["useCallback"]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R3 0 0
       28 CALL                             R1 2 1
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R3 R3 K4 ["FFlagAssistantFeedbackView"]
       32 JUMPIFNOT                        R3 ; [+8]
       33 GETUPVAL                         R2 6
       34 GETTABLEKS                       R2 R2 K5 ["useContext"]
       36 GETUPVAL                         R3 7
       37 GETTABLEKS                       R3 R3 K6 ["Context"]
       39 CALL                             R2 1 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R2
       42 JUMPIFNOT                        R2 ; [+3]
       43 GETTABLEKS                       R3 R2 K7 ["feedbackRequest"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R3
       47 DUPTABLE                         R4 K10 [{"chatHistoryInterfaceRef", "onMessageSent", "feedbackRequest"}]
       48 SETTABLEKS                       R0 R4 K8 ["chatHistoryInterfaceRef"]
       50 SETTABLEKS                       R1 R4 K9 ["onMessageSent"]
       52 SETTABLEKS                       R3 R4 K7 ["feedbackRequest"]
       54 RETURN                           R4 1

PROTO_6:
        0 NEWTABLE                         R1 0 4
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["Provider"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K0 ["Provider"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 0
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K0 ["Provider"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 0
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R6 R6 K0 ["Provider"]
       21 CALL                             R5 1 -1
       22 SETLIST                          R1 R2 -1 [1]
       24 JUMPIFNOTEQKNIL                  R0 ; [+12]
       26 MOVE                             R3 R1
       27 LOADN                            R4 1
       28 GETUPVAL                         R5 0
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R6 R6 K0 ["Provider"]
       32 CALL                             R5 1 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R2 K3 [table.insert]
       36 CALL                             R2 -1 0
       37 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+30]
        3 NEWTABLE                         R0 0 5
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["Provider"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K0 ["Provider"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K0 ["Provider"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 GETUPVAL                         R5 5
       22 GETTABLEKS                       R5 R5 K0 ["Provider"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 1
       26 GETUPVAL                         R6 6
       27 GETTABLEKS                       R6 R6 K0 ["Provider"]
       29 CALL                             R5 1 -1
       30 SETLIST                          R0 R1 -1 [1]
       32 RETURN                           R0 1
       33 NEWTABLE                         R0 0 2
       35 GETUPVAL                         R1 1
       36 GETUPVAL                         R2 5
       37 GETTABLEKS                       R2 R2 K0 ["Provider"]
       39 CALL                             R1 1 1
       40 GETUPVAL                         R2 1
       41 GETUPVAL                         R3 6
       42 GETTABLEKS                       R3 R3 K0 ["Provider"]
       44 CALL                             R2 1 -1
       45 SETLIST                          R0 R1 -1 [1]
       47 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K3 [{[1] = "col grow size-full-0", ["LayoutOrder"]}]
        5 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
        7 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
        9 DUPTABLE                         R5 K8 [{"Header", "Divider", "ChatHistoryArea", "BottomArea"}]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R7 3
       12 DUPTABLE                         R8 K10 [{[1] = "row align-x-right gap-xsmall size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       13 MOVE                             R9 R1
       14 CALL                             R9 0 1
       15 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K4 ["Header"]
       20 GETUPVAL                         R6 1
       21 GETUPVAL                         R7 4
       22 DUPTABLE                         R8 K12 [{"variant", "LayoutOrder"}]
       23 GETUPVAL                         R9 5
       24 GETTABLEKS                       R9 R9 K13 ["Enums"]
       26 GETTABLEKS                       R9 R9 K14 ["DividerVariant"]
       28 GETTABLEKS                       R9 R9 K15 ["Default"]
       30 SETTABLEKS                       R9 R8 K11 ["variant"]
       32 MOVE                             R9 R1
       33 CALL                             R9 0 1
       34 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       36 CALL                             R6 2 1
       37 SETTABLEKS                       R6 R5 K5 ["Divider"]
       39 GETUPVAL                         R6 1
       40 GETUPVAL                         R7 2
       41 DUPTABLE                         R8 K17 [{[1] = "grow size-full-0", ["LayoutOrder"]}]
       42 MOVE                             R9 R1
       43 CALL                             R9 0 1
       44 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       46 DUPTABLE                         R9 K20 [{"ChatHistory", "ModelQualityWarning"}]
       47 GETTABLEKS                       R10 R0 K21 ["sessionThreadReady"]
       49 JUMPIFNOT                        R10 ; [+8]
       50 GETUPVAL                         R10 1
       51 GETUPVAL                         R11 6
       52 DUPTABLE                         R12 K23 [{"chatHistoryInterfaceRef"}]
       53 GETTABLEKS                       R13 R0 K22 ["chatHistoryInterfaceRef"]
       55 SETTABLEKS                       R13 R12 K22 ["chatHistoryInterfaceRef"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K18 ["ChatHistory"]
       60 GETUPVAL                         R10 1
       61 GETUPVAL                         R11 7
       62 DUPTABLE                         R12 K28 [{["AnchorPoint"], ["Position"], ["ZIndex"] = 999}]
       63 GETIMPORT                        R13 K31 [Vector2.new]
       65 LOADK                            R14 K32 [0.5]
       66 LOADN                            R15 1
       67 CALL                             R13 2 1
       68 SETTABLEKS                       R13 R12 K24 ["AnchorPoint"]
       70 GETIMPORT                        R13 K35 [UDim2.fromScale]
       72 LOADK                            R14 K32 [0.5]
       73 LOADN                            R15 1
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K25 ["Position"]
       77 CALL                             R10 2 1
       78 SETTABLEKS                       R10 R9 K19 ["ModelQualityWarning"]
       80 CALL                             R6 3 1
       81 SETTABLEKS                       R6 R5 K6 ["ChatHistoryArea"]
       83 GETTABLEKS                       R7 R0 K21 ["sessionThreadReady"]
       85 JUMPIF                           R7 ; [+2]
       86 LOADNIL                          R6
       87 JUMP                             ; [+50]
       88 GETUPVAL                         R7 8
       89 GETTABLEKS                       R7 R7 K36 ["FFlagAssistantFeedbackView"]
       91 JUMPIFNOT                        R7 ; [+30]
       92 GETTABLEKS                       R7 R0 K37 ["feedbackRequest"]
       94 JUMPIFNOT                        R7 ; [+27]
       95 GETUPVAL                         R6 1
       96 GETUPVAL                         R7 9
       97 DUPTABLE                         R8 K41 [{"thumbsDirection", "onSubmit", "onClose", "LayoutOrder"}]
       98 GETTABLEKS                       R9 R0 K37 ["feedbackRequest"]
      100 GETTABLEKS                       R9 R9 K38 ["thumbsDirection"]
      102 SETTABLEKS                       R9 R8 K38 ["thumbsDirection"]
      104 GETTABLEKS                       R9 R0 K37 ["feedbackRequest"]
      106 GETTABLEKS                       R9 R9 K39 ["onSubmit"]
      108 SETTABLEKS                       R9 R8 K39 ["onSubmit"]
      110 GETTABLEKS                       R9 R0 K37 ["feedbackRequest"]
      112 GETTABLEKS                       R9 R9 K42 ["onDismiss"]
      114 SETTABLEKS                       R9 R8 K40 ["onClose"]
      116 MOVE                             R9 R1
      117 CALL                             R9 0 1
      118 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
      120 CALL                             R6 2 1
      121 JUMP                             ; [+16]
      122 GETUPVAL                         R6 1
      123 GETUPVAL                         R7 10
      124 DUPTABLE                         R8 K45 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      125 MOVE                             R9 R1
      126 CALL                             R9 0 1
      127 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
      129 GETTABLEKS                       R9 R0 K46 ["onMessageSent"]
      131 SETTABLEKS                       R9 R8 K43 ["OnMessageSent"]
      133 GETTABLEKS                       R9 R0 K44 ["textBoxRef"]
      135 SETTABLEKS                       R9 R8 K44 ["textBoxRef"]
      137 CALL                             R6 2 1
      138 SETTABLEKS                       R6 R5 K7 ["BottomArea"]
      140 CALL                             R2 3 -1
      141 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["Context"]
        6 GETTABLEKS                       R3 R3 K1 ["Provider"]
        8 DUPTABLE                         R4 K3 [{"value"}]
        9 SETTABLEKS                       R1 R4 K2 ["value"]
       11 GETTABLEKS                       R5 R0 K4 ["children"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 DUPTABLE                         R4 K8 [{"LayoutOrder", "textBoxRef", "chatHistoryInterfaceRef", "onMessageSent", "feedbackRequest", "sessionThreadReady"}]
       10 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       12 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       14 GETTABLEKS                       R5 R0 K3 ["textBoxRef"]
       16 SETTABLEKS                       R5 R4 K3 ["textBoxRef"]
       18 GETTABLEKS                       R5 R0 K4 ["chatHistoryInterfaceRef"]
       20 SETTABLEKS                       R5 R4 K4 ["chatHistoryInterfaceRef"]
       22 GETTABLEKS                       R5 R0 K5 ["onMessageSent"]
       24 SETTABLEKS                       R5 R4 K5 ["onMessageSent"]
       26 GETTABLEKS                       R5 R0 K6 ["feedbackRequest"]
       28 SETTABLEKS                       R5 R4 K6 ["feedbackRequest"]
       30 SETTABLEKS                       R1 R4 K7 ["sessionThreadReady"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETTABLEKS                       R3 R3 K0 ["ContextStack"]
        8 DUPTABLE                         R4 K2 [{"providers"}]
        9 GETUPVAL                         R5 4
       10 CALL                             R5 0 1
       11 SETTABLEKS                       R5 R4 K1 ["providers"]
       13 GETUPVAL                         R5 2
       14 GETUPVAL                         R6 5
       15 DUPTABLE                         R7 K10 [{["LayoutOrder"], ["textBoxRef"], ["chatHistoryInterfaceRef"], ["onMessageSent"], ["feedbackRequest"], ["sessionThreadReady"] = True}]
       16 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
       18 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       20 GETTABLEKS                       R8 R0 K4 ["textBoxRef"]
       22 SETTABLEKS                       R8 R7 K4 ["textBoxRef"]
       24 GETTABLEKS                       R8 R1 K5 ["chatHistoryInterfaceRef"]
       26 SETTABLEKS                       R8 R7 K5 ["chatHistoryInterfaceRef"]
       28 GETTABLEKS                       R8 R1 K6 ["onMessageSent"]
       30 SETTABLEKS                       R8 R7 K6 ["onMessageSent"]
       32 GETTABLEKS                       R8 R1 K7 ["feedbackRequest"]
       34 SETTABLEKS                       R8 R7 K7 ["feedbackRequest"]
       36 CALL                             R5 2 -1
       37 CALL                             R2 -1 -1
       38 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R2 R2 K2 ["service"]
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 4
       13 GETTABLEKS                       R4 R4 K3 ["ContextStack"]
       15 DUPTABLE                         R5 K5 [{"providers"}]
       16 GETUPVAL                         R6 5
       17 MOVE                             R7 R2
       18 CALL                             R6 1 1
       19 SETTABLEKS                       R6 R5 K4 ["providers"]
       21 GETUPVAL                         R6 3
       22 GETUPVAL                         R7 6
       23 LOADNIL                          R8
       24 GETUPVAL                         R9 3
       25 GETUPVAL                         R10 7
       26 DUPTABLE                         R11 K11 [{"LayoutOrder", "textBoxRef", "chatHistoryInterfaceRef", "onMessageSent", "feedbackRequest"}]
       27 GETTABLEKS                       R12 R0 K6 ["LayoutOrder"]
       29 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       31 GETTABLEKS                       R12 R0 K7 ["textBoxRef"]
       33 SETTABLEKS                       R12 R11 K7 ["textBoxRef"]
       35 GETTABLEKS                       R12 R1 K8 ["chatHistoryInterfaceRef"]
       37 SETTABLEKS                       R12 R11 K8 ["chatHistoryInterfaceRef"]
       39 GETTABLEKS                       R12 R1 K9 ["onMessageSent"]
       41 SETTABLEKS                       R12 R11 K9 ["onMessageSent"]
       43 GETTABLEKS                       R12 R1 K10 ["feedbackRequest"]
       45 SETTABLEKS                       R12 R11 K10 ["feedbackRequest"]
       47 CALL                             R9 2 -1
       48 CALL                             R6 -1 -1
       49 CALL                             R3 -1 -1
       50 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

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
      144 GETTABLEKS                       R19 R0 K6 ["Components"]
      146 GETTABLEKS                       R19 R19 K7 ["Contexts"]
      148 GETTABLEKS                       R19 R19 K27 ["SessionThreadReadyContext"]
      150 CALL                             R18 1 1
      151 GETIMPORT                        R19 K5 [require]
      153 GETTABLEKS                       R20 R0 K28 ["Util"]
      155 GETTABLEKS                       R20 R20 K29 ["createNewThread"]
      157 CALL                             R19 1 1
      158 GETIMPORT                        R20 K5 [require]
      160 GETTABLEKS                       R21 R0 K28 ["Util"]
      162 GETTABLEKS                       R21 R21 K30 ["makeConversation"]
      164 CALL                             R20 1 1
      165 GETIMPORT                        R21 K5 [require]
      167 GETTABLEKS                       R22 R0 K12 ["Hooks"]
      169 GETTABLEKS                       R22 R22 K31 ["usePersistConversations"]
      171 CALL                             R21 1 1
      172 GETIMPORT                        R22 K5 [require]
      174 GETTABLEKS                       R23 R0 K12 ["Hooks"]
      176 GETTABLEKS                       R23 R23 K32 ["useRefreshQuotaOnTurnEnd"]
      178 CALL                             R22 1 1
      179 GETIMPORT                        R23 K5 [require]
      181 GETTABLEKS                       R24 R0 K12 ["Hooks"]
      183 GETTABLEKS                       R24 R24 K33 ["useRemoveUnfocusedNewThread"]
      185 CALL                             R23 1 1
      186 GETIMPORT                        R24 K5 [require]
      188 GETTABLEKS                       R25 R0 K12 ["Hooks"]
      190 GETTABLEKS                       R25 R25 K34 ["useShowSessionConversation"]
      192 CALL                             R24 1 1
      193 GETIMPORT                        R25 K5 [require]
      195 GETTABLEKS                       R26 R0 K12 ["Hooks"]
      197 GETTABLEKS                       R26 R26 K35 ["useSwitchThread"]
      199 CALL                             R25 1 1
      200 GETIMPORT                        R26 K5 [require]
      202 GETTABLEKS                       R27 R0 K12 ["Hooks"]
      204 GETTABLEKS                       R27 R27 K36 ["useTrackThreadViewedAt"]
      206 CALL                             R26 1 1
      207 GETIMPORT                        R27 K5 [require]
      209 GETTABLEKS                       R28 R0 K37 ["FlagUtils"]
      211 CALL                             R27 1 1
      212 GETIMPORT                        R28 K5 [require]
      214 GETTABLEKS                       R29 R0 K38 ["Flags"]
      216 CALL                             R28 1 1
      217 GETIMPORT                        R29 K5 [require]
      219 GETTABLEKS                       R30 R0 K6 ["Components"]
      221 GETTABLEKS                       R30 R30 K39 ["PersistentPlanPanel"]
      223 CALL                             R29 1 1
      224 GETTABLEKS                       R30 R27 K40 ["getIsAssistantHarnessSplit"]
      226 GETTABLEKS                       R31 R27 K41 ["getShouldRestoreMostRecentThread"]
      228 GETTABLEKS                       R32 R8 K42 ["Divider"]
      230 GETTABLEKS                       R33 R8 K43 ["View"]
      232 GETTABLEKS                       R34 R16 K44 ["createNextOrder"]
      234 GETTABLEKS                       R35 R15 K45 ["createElement"]
      236 DUPCLOSURE                       R36 K46 [PROTO_2]
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R25
      240 CAPTURE                          VAL R17
      241 CAPTURE                          VAL R19
      242 CAPTURE                          VAL R20
      243 DUPCLOSURE                       R37 K47 [PROTO_3]
      244 CAPTURE                          VAL R15
      245 CAPTURE                          VAL R11
      246 CAPTURE                          VAL R34
      247 CAPTURE                          VAL R35
      248 CAPTURE                          VAL R33
      249 CAPTURE                          VAL R29
      250 CAPTURE                          VAL R10
      251 CAPTURE                          VAL R27
      252 DUPCLOSURE                       R38 K48 [PROTO_5]
      253 CAPTURE                          VAL R5
      254 CAPTURE                          VAL R21
      255 CAPTURE                          VAL R23
      256 CAPTURE                          VAL R26
      257 CAPTURE                          VAL R28
      258 CAPTURE                          VAL R22
      259 CAPTURE                          VAL R15
      260 CAPTURE                          VAL R6
      261 DUPCLOSURE                       R39 K49 [PROTO_6]
      262 CAPTURE                          VAL R35
      263 CAPTURE                          VAL R2
      264 CAPTURE                          VAL R13
      265 CAPTURE                          VAL R14
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R1
      268 DUPCLOSURE                       R40 K50 [PROTO_7]
      269 CAPTURE                          VAL R30
      270 CAPTURE                          VAL R35
      271 CAPTURE                          VAL R1
      272 CAPTURE                          VAL R2
      273 CAPTURE                          VAL R13
      274 CAPTURE                          VAL R14
      275 CAPTURE                          VAL R11
      276 DUPCLOSURE                       R41 K51 [PROTO_8]
      277 CAPTURE                          VAL R34
      278 CAPTURE                          VAL R35
      279 CAPTURE                          VAL R33
      280 CAPTURE                          VAL R9
      281 CAPTURE                          VAL R32
      282 CAPTURE                          VAL R8
      283 CAPTURE                          VAL R3
      284 CAPTURE                          VAL R12
      285 CAPTURE                          VAL R28
      286 CAPTURE                          VAL R7
      287 CAPTURE                          VAL R37
      288 DUPCLOSURE                       R42 K52 [PROTO_9]
      289 CAPTURE                          VAL R24
      290 CAPTURE                          VAL R35
      291 CAPTURE                          VAL R18
      292 DUPCLOSURE                       R43 K53 [PROTO_10]
      293 CAPTURE                          VAL R15
      294 CAPTURE                          VAL R18
      295 CAPTURE                          VAL R35
      296 CAPTURE                          VAL R41
      297 DUPCLOSURE                       R44 K54 [PROTO_11]
      298 CAPTURE                          VAL R38
      299 CAPTURE                          VAL R36
      300 CAPTURE                          VAL R35
      301 CAPTURE                          VAL R16
      302 CAPTURE                          VAL R40
      303 CAPTURE                          VAL R41
      304 DUPCLOSURE                       R45 K55 [PROTO_12]
      305 CAPTURE                          VAL R38
      306 CAPTURE                          VAL R15
      307 CAPTURE                          VAL R1
      308 CAPTURE                          VAL R35
      309 CAPTURE                          VAL R16
      310 CAPTURE                          VAL R39
      311 CAPTURE                          VAL R42
      312 CAPTURE                          VAL R43
      313 DUPCLOSURE                       R46 K56 [PROTO_13]
      314 CAPTURE                          VAL R31
      315 CAPTURE                          VAL R35
      316 CAPTURE                          VAL R45
      317 CAPTURE                          VAL R44
      318 RETURN                           R46 1
