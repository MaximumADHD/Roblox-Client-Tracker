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
       60 GETTABLEKS                       R9 R1 K2 ["activeRender"]
       62 JUMPIFNOTEQKNIL                  R9 ; [+2]
       64 LOADB                            R8 0 +1
       65 LOADB                            R8 1
       66 SETTABLEKS                       R8 R7 K17 ["margin-bottom-small"]
       68 SETTABLEKS                       R7 R6 K3 ["tag"]
       70 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       72 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       74 DUPTABLE                         R7 K18 [{"InputArea"}]
       75 SETTABLEKS                       R3 R7 K9 ["InputArea"]
       77 CALL                             R4 3 -1
       78 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["scrollToBottom"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 3
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 4
       10 GETTABLEKS                       R0 R0 K0 ["useRef"]
       12 LOADNIL                          R1
       13 CALL                             R0 1 1
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K1 ["useCallback"]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R3 0 0
       21 CALL                             R1 2 1
       22 GETUPVAL                         R3 5
       23 GETTABLEKS                       R3 R3 K2 ["FFlagAssistantFeedbackView"]
       25 JUMPIFNOT                        R3 ; [+8]
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K3 ["useContext"]
       29 GETUPVAL                         R3 6
       30 GETTABLEKS                       R3 R3 K4 ["Context"]
       32 CALL                             R2 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R2
       35 JUMPIFNOT                        R2 ; [+3]
       36 GETTABLEKS                       R3 R2 K5 ["feedbackRequest"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R3
       40 DUPTABLE                         R4 K8 [{"chatHistoryInterfaceRef", "onMessageSent", "feedbackRequest"}]
       41 SETTABLEKS                       R0 R4 K6 ["chatHistoryInterfaceRef"]
       43 SETTABLEKS                       R1 R4 K7 ["onMessageSent"]
       45 SETTABLEKS                       R3 R4 K5 ["feedbackRequest"]
       47 RETURN                           R4 1

PROTO_6:
        0 NEWTABLE                         R1 0 5
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
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 0
       23 GETUPVAL                         R7 5
       24 GETTABLEKS                       R7 R7 K0 ["Provider"]
       26 CALL                             R6 1 -1
       27 SETLIST                          R1 R2 -1 [1]
       29 JUMPIFNOTEQKNIL                  R0 ; [+12]
       31 MOVE                             R3 R1
       32 LOADN                            R4 1
       33 GETUPVAL                         R5 0
       34 GETUPVAL                         R6 6
       35 GETTABLEKS                       R6 R6 K0 ["Provider"]
       37 CALL                             R5 1 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R2 K3 [table.insert]
       41 CALL                             R2 -1 0
       42 GETUPVAL                         R2 7
       43 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantUseNewDMNetworking"]
       45 JUMPIFNOT                        R2 ; [+7]
       46 GETUPVAL                         R2 8
       47 GETTABLEKS                       R2 R2 K5 ["append"]
       49 MOVE                             R3 R1
       50 GETUPVAL                         R4 9
       51 CALL                             R4 0 -1
       52 CALL                             R2 -1 0
       53 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R0 0 6
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Provider"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["Provider"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K0 ["Provider"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R5 K0 ["Provider"]
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 0
       23 GETUPVAL                         R6 5
       24 GETTABLEKS                       R6 R6 K0 ["Provider"]
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 0
       28 GETUPVAL                         R7 6
       29 GETTABLEKS                       R7 R7 K0 ["Provider"]
       31 CALL                             R6 1 -1
       32 SETLIST                          R0 R1 -1 [1]
       34 GETUPVAL                         R1 7
       35 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
       37 JUMPIFNOT                        R1 ; [+7]
       38 GETUPVAL                         R1 8
       39 GETTABLEKS                       R1 R1 K2 ["append"]
       41 MOVE                             R2 R0
       42 GETUPVAL                         R3 9
       43 CALL                             R3 0 -1
       44 CALL                             R1 -1 0
       45 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R3 R0 K0 ["externalInterfaceRef"]
        5 GETTABLEKS                       R4 R0 K1 ["textBoxRef"]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 3
       11 GETUPVAL                         R3 4
       12 DUPTABLE                         R4 K5 [{["tag"] = "col grow size-full-0", ["LayoutOrder"]}]
       13 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       15 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       17 DUPTABLE                         R5 K10 [{"Header", "Divider", "ChatHistoryArea", "BottomArea"}]
       18 GETUPVAL                         R6 3
       19 GETUPVAL                         R7 5
       20 DUPTABLE                         R8 K12 [{["tag"] = "row align-x-right gap-xsmall size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       21 MOVE                             R9 R1
       22 CALL                             R9 0 1
       23 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K6 ["Header"]
       28 GETUPVAL                         R6 3
       29 GETUPVAL                         R7 6
       30 DUPTABLE                         R8 K14 [{"variant", "LayoutOrder"}]
       31 GETUPVAL                         R9 7
       32 GETTABLEKS                       R9 R9 K15 ["Enums"]
       34 GETTABLEKS                       R9 R9 K16 ["DividerVariant"]
       36 GETTABLEKS                       R9 R9 K17 ["Default"]
       38 SETTABLEKS                       R9 R8 K13 ["variant"]
       40 MOVE                             R9 R1
       41 CALL                             R9 0 1
       42 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       44 CALL                             R6 2 1
       45 SETTABLEKS                       R6 R5 K7 ["Divider"]
       47 GETUPVAL                         R6 3
       48 GETUPVAL                         R7 4
       49 DUPTABLE                         R8 K19 [{["tag"] = "grow size-full-0", ["LayoutOrder"]}]
       50 MOVE                             R9 R1
       51 CALL                             R9 0 1
       52 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       54 DUPTABLE                         R9 K22 [{"ChatHistory", "ModelQualityWarning"}]
       55 GETTABLEKS                       R10 R0 K23 ["sessionThreadReady"]
       57 JUMPIFNOT                        R10 ; [+8]
       58 GETUPVAL                         R10 3
       59 GETUPVAL                         R11 8
       60 DUPTABLE                         R12 K25 [{"chatHistoryInterfaceRef"}]
       61 GETTABLEKS                       R13 R0 K24 ["chatHistoryInterfaceRef"]
       63 SETTABLEKS                       R13 R12 K24 ["chatHistoryInterfaceRef"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K20 ["ChatHistory"]
       68 GETUPVAL                         R10 3
       69 GETUPVAL                         R11 9
       70 DUPTABLE                         R12 K30 [{["AnchorPoint"], ["Position"], ["ZIndex"] = 999}]
       71 GETIMPORT                        R13 K33 [Vector2.new]
       73 LOADK                            R14 K34 [0.5]
       74 LOADN                            R15 1
       75 CALL                             R13 2 1
       76 SETTABLEKS                       R13 R12 K26 ["AnchorPoint"]
       78 GETIMPORT                        R13 K37 [UDim2.fromScale]
       80 LOADK                            R14 K34 [0.5]
       81 LOADN                            R15 1
       82 CALL                             R13 2 1
       83 SETTABLEKS                       R13 R12 K27 ["Position"]
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K21 ["ModelQualityWarning"]
       88 CALL                             R6 3 1
       89 SETTABLEKS                       R6 R5 K8 ["ChatHistoryArea"]
       91 GETTABLEKS                       R7 R0 K23 ["sessionThreadReady"]
       93 JUMPIF                           R7 ; [+2]
       94 LOADNIL                          R6
       95 JUMP                             ; [+50]
       96 GETUPVAL                         R7 10
       97 GETTABLEKS                       R7 R7 K38 ["FFlagAssistantFeedbackView"]
       99 JUMPIFNOT                        R7 ; [+30]
      100 GETTABLEKS                       R7 R0 K39 ["feedbackRequest"]
      102 JUMPIFNOT                        R7 ; [+27]
      103 GETUPVAL                         R6 3
      104 GETUPVAL                         R7 11
      105 DUPTABLE                         R8 K43 [{"thumbsDirection", "onSubmit", "onClose", "LayoutOrder"}]
      106 GETTABLEKS                       R9 R0 K39 ["feedbackRequest"]
      108 GETTABLEKS                       R9 R9 K40 ["thumbsDirection"]
      110 SETTABLEKS                       R9 R8 K40 ["thumbsDirection"]
      112 GETTABLEKS                       R9 R0 K39 ["feedbackRequest"]
      114 GETTABLEKS                       R9 R9 K41 ["onSubmit"]
      116 SETTABLEKS                       R9 R8 K41 ["onSubmit"]
      118 GETTABLEKS                       R9 R0 K39 ["feedbackRequest"]
      120 GETTABLEKS                       R9 R9 K44 ["onDismiss"]
      122 SETTABLEKS                       R9 R8 K42 ["onClose"]
      124 MOVE                             R9 R1
      125 CALL                             R9 0 1
      126 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      128 CALL                             R6 2 1
      129 JUMP                             ; [+16]
      130 GETUPVAL                         R6 3
      131 GETUPVAL                         R7 12
      132 DUPTABLE                         R8 K46 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      133 MOVE                             R9 R1
      134 CALL                             R9 0 1
      135 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      137 GETTABLEKS                       R9 R0 K47 ["onMessageSent"]
      139 SETTABLEKS                       R9 R8 K45 ["OnMessageSent"]
      141 GETTABLEKS                       R9 R0 K1 ["textBoxRef"]
      143 SETTABLEKS                       R9 R8 K1 ["textBoxRef"]
      145 CALL                             R6 2 1
      146 SETTABLEKS                       R6 R5 K9 ["BottomArea"]
      148 CALL                             R2 3 -1
      149 RETURN                           R2 -1

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
        9 DUPTABLE                         R4 K9 [{"LayoutOrder", "textBoxRef", "chatHistoryInterfaceRef", "externalInterfaceRef", "onMessageSent", "feedbackRequest", "sessionThreadReady"}]
       10 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       12 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       14 GETTABLEKS                       R5 R0 K3 ["textBoxRef"]
       16 SETTABLEKS                       R5 R4 K3 ["textBoxRef"]
       18 GETTABLEKS                       R5 R0 K4 ["chatHistoryInterfaceRef"]
       20 SETTABLEKS                       R5 R4 K4 ["chatHistoryInterfaceRef"]
       22 GETTABLEKS                       R5 R0 K5 ["externalInterfaceRef"]
       24 SETTABLEKS                       R5 R4 K5 ["externalInterfaceRef"]
       26 GETTABLEKS                       R5 R0 K6 ["onMessageSent"]
       28 SETTABLEKS                       R5 R4 K6 ["onMessageSent"]
       30 GETTABLEKS                       R5 R0 K7 ["feedbackRequest"]
       32 SETTABLEKS                       R5 R4 K7 ["feedbackRequest"]
       34 SETTABLEKS                       R1 R4 K8 ["sessionThreadReady"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

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
       15 DUPTABLE                         R7 K11 [{["LayoutOrder"], ["textBoxRef"], ["chatHistoryInterfaceRef"], ["externalInterfaceRef"], ["onMessageSent"], ["feedbackRequest"], ["sessionThreadReady"] = True}]
       16 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
       18 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       20 GETTABLEKS                       R8 R0 K4 ["textBoxRef"]
       22 SETTABLEKS                       R8 R7 K4 ["textBoxRef"]
       24 GETTABLEKS                       R8 R1 K5 ["chatHistoryInterfaceRef"]
       26 SETTABLEKS                       R8 R7 K5 ["chatHistoryInterfaceRef"]
       28 GETTABLEKS                       R8 R0 K6 ["externalInterfaceRef"]
       30 SETTABLEKS                       R8 R7 K6 ["externalInterfaceRef"]
       32 GETTABLEKS                       R8 R1 K7 ["onMessageSent"]
       34 SETTABLEKS                       R8 R7 K7 ["onMessageSent"]
       36 GETTABLEKS                       R8 R1 K8 ["feedbackRequest"]
       38 SETTABLEKS                       R8 R7 K8 ["feedbackRequest"]
       40 CALL                             R5 2 -1
       41 CALL                             R2 -1 -1
       42 RETURN                           R2 -1

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
       26 DUPTABLE                         R11 K12 [{"LayoutOrder", "textBoxRef", "chatHistoryInterfaceRef", "externalInterfaceRef", "onMessageSent", "feedbackRequest"}]
       27 GETTABLEKS                       R12 R0 K6 ["LayoutOrder"]
       29 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       31 GETTABLEKS                       R12 R0 K7 ["textBoxRef"]
       33 SETTABLEKS                       R12 R11 K7 ["textBoxRef"]
       35 GETTABLEKS                       R12 R1 K8 ["chatHistoryInterfaceRef"]
       37 SETTABLEKS                       R12 R11 K8 ["chatHistoryInterfaceRef"]
       39 GETTABLEKS                       R12 R0 K9 ["externalInterfaceRef"]
       41 SETTABLEKS                       R12 R11 K9 ["externalInterfaceRef"]
       43 GETTABLEKS                       R12 R1 K10 ["onMessageSent"]
       45 SETTABLEKS                       R12 R11 K10 ["onMessageSent"]
       47 GETTABLEKS                       R12 R1 K11 ["feedbackRequest"]
       49 SETTABLEKS                       R12 R11 K11 ["feedbackRequest"]
       51 CALL                             R9 2 -1
       52 CALL                             R6 -1 -1
       53 CALL                             R3 -1 -1
       54 RETURN                           R3 -1

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
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Components"]
       33 GETTABLEKS                       R7 R7 K12 ["Contexts"]
       35 GETTABLEKS                       R7 R7 K13 ["ACPClientServiceContext"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K11 ["Components"]
       42 GETTABLEKS                       R8 R8 K12 ["Contexts"]
       44 GETTABLEKS                       R8 R8 K14 ["AcpSessionMonitorContext"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["ChatHistory"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Components"]
       58 GETTABLEKS                       R10 R10 K12 ["Contexts"]
       60 GETTABLEKS                       R10 R10 K16 ["ConversationContext"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K11 ["Components"]
       67 GETTABLEKS                       R11 R11 K12 ["Contexts"]
       69 GETTABLEKS                       R11 R11 K17 ["FeedbackContext"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K11 ["Components"]
       76 GETTABLEKS                       R12 R12 K18 ["FeedbackView"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K11 ["Components"]
       83 GETTABLEKS                       R13 R13 K19 ["Header"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K11 ["Components"]
       90 GETTABLEKS                       R14 R14 K20 ["InputArea"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K11 ["Components"]
       97 GETTABLEKS                       R15 R15 K12 ["Contexts"]
       99 GETTABLEKS                       R15 R15 K21 ["InputAreaOverrideContext"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K6 [require]
      104 GETTABLEKS                       R16 R0 K11 ["Components"]
      106 GETTABLEKS                       R16 R16 K22 ["ModelQualityWarning"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K6 [require]
      111 GETTABLEKS                       R17 R0 K11 ["Components"]
      113 GETTABLEKS                       R17 R17 K12 ["Contexts"]
      115 GETTABLEKS                       R17 R17 K23 ["OngoingAcpPromptContext"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K6 [require]
      120 GETTABLEKS                       R18 R0 K11 ["Components"]
      122 GETTABLEKS                       R18 R18 K12 ["Contexts"]
      124 GETTABLEKS                       R18 R18 K24 ["PacketReceivedContext"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K6 [require]
      129 GETTABLEKS                       R19 R0 K11 ["Components"]
      131 GETTABLEKS                       R19 R19 K12 ["Contexts"]
      133 GETTABLEKS                       R19 R19 K25 ["SessionIdContext"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K6 [require]
      138 GETTABLEKS                       R20 R0 K11 ["Components"]
      140 GETTABLEKS                       R20 R20 K12 ["Contexts"]
      142 GETTABLEKS                       R20 R20 K26 ["SessionThreadReadyContext"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K6 [require]
      147 GETTABLEKS                       R21 R0 K11 ["Components"]
      149 GETTABLEKS                       R21 R21 K12 ["Contexts"]
      151 GETTABLEKS                       R21 R21 K27 ["ThreadWorkQueueContext"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K6 [require]
      156 GETTABLEKS                       R22 R0 K28 ["Util"]
      158 GETTABLEKS                       R22 R22 K29 ["createNewThread"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K6 [require]
      163 GETTABLEKS                       R23 R0 K11 ["Components"]
      165 GETTABLEKS                       R23 R23 K12 ["Contexts"]
      167 GETTABLEKS                       R23 R23 K30 ["Actions"]
      169 GETTABLEKS                       R23 R23 K31 ["getActionsProviders"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K6 [require]
      174 GETTABLEKS                       R24 R0 K28 ["Util"]
      176 GETTABLEKS                       R24 R24 K32 ["makeConversation"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K6 [require]
      181 GETTABLEKS                       R25 R0 K33 ["Hooks"]
      183 GETTABLEKS                       R25 R25 K34 ["useDispatchJobWaitOnComplete"]
      185 CALL                             R24 1 1
      186 GETIMPORT                        R25 K6 [require]
      188 GETTABLEKS                       R26 R0 K33 ["Hooks"]
      190 GETTABLEKS                       R26 R26 K35 ["useExternalInterface"]
      192 CALL                             R25 1 1
      193 GETIMPORT                        R26 K6 [require]
      195 GETTABLEKS                       R27 R0 K33 ["Hooks"]
      197 GETTABLEKS                       R27 R27 K36 ["useRefreshQuotaOnTurnEnd"]
      199 CALL                             R26 1 1
      200 GETIMPORT                        R27 K6 [require]
      202 GETTABLEKS                       R28 R0 K33 ["Hooks"]
      204 GETTABLEKS                       R28 R28 K37 ["useRemoveUnfocusedNewThread"]
      206 CALL                             R27 1 1
      207 GETIMPORT                        R28 K6 [require]
      209 GETTABLEKS                       R29 R0 K33 ["Hooks"]
      211 GETTABLEKS                       R29 R29 K38 ["useShowSessionConversation"]
      213 CALL                             R28 1 1
      214 GETIMPORT                        R29 K6 [require]
      216 GETTABLEKS                       R30 R0 K33 ["Hooks"]
      218 GETTABLEKS                       R30 R30 K39 ["useSwitchThread"]
      220 CALL                             R29 1 1
      221 GETIMPORT                        R30 K6 [require]
      223 GETTABLEKS                       R31 R0 K33 ["Hooks"]
      225 GETTABLEKS                       R31 R31 K40 ["useTrackThreadViewedAt"]
      227 CALL                             R30 1 1
      228 GETIMPORT                        R31 K6 [require]
      230 GETTABLEKS                       R32 R0 K41 ["FlagUtils"]
      232 CALL                             R31 1 1
      233 GETIMPORT                        R32 K6 [require]
      235 GETTABLEKS                       R33 R0 K42 ["Flags"]
      237 CALL                             R32 1 1
      238 GETIMPORT                        R33 K6 [require]
      240 GETTABLEKS                       R34 R0 K11 ["Components"]
      242 GETTABLEKS                       R34 R34 K43 ["PersistentPlanPanel"]
      244 CALL                             R33 1 1
      245 GETTABLEKS                       R34 R31 K44 ["getIsCreditMeteringEnabled"]
      247 GETTABLEKS                       R35 R31 K45 ["getShouldRestoreMostRecentThread"]
      249 GETTABLEKS                       R36 R3 K46 ["Divider"]
      251 GETTABLEKS                       R37 R3 K47 ["View"]
      253 GETTABLEKS                       R38 R5 K48 ["createNextOrder"]
      255 GETTABLEKS                       R39 R4 K49 ["createElement"]
      257 DUPCLOSURE                       R40 K50 [PROTO_2]
      258 CAPTURE                          VAL R4
      259 CAPTURE                          VAL R9
      260 CAPTURE                          VAL R29
      261 CAPTURE                          VAL R18
      262 CAPTURE                          VAL R21
      263 CAPTURE                          VAL R23
      264 DUPCLOSURE                       R41 K51 [PROTO_3]
      265 CAPTURE                          VAL R4
      266 CAPTURE                          VAL R14
      267 CAPTURE                          VAL R38
      268 CAPTURE                          VAL R39
      269 CAPTURE                          VAL R37
      270 CAPTURE                          VAL R33
      271 CAPTURE                          VAL R13
      272 DUPCLOSURE                       R42 K52 [PROTO_5]
      273 CAPTURE                          VAL R27
      274 CAPTURE                          VAL R30
      275 CAPTURE                          VAL R34
      276 CAPTURE                          VAL R26
      277 CAPTURE                          VAL R4
      278 CAPTURE                          VAL R32
      279 CAPTURE                          VAL R10
      280 DUPCLOSURE                       R43 K53 [PROTO_6]
      281 CAPTURE                          VAL R39
      282 CAPTURE                          VAL R7
      283 CAPTURE                          VAL R16
      284 CAPTURE                          VAL R17
      285 CAPTURE                          VAL R14
      286 CAPTURE                          VAL R20
      287 CAPTURE                          VAL R6
      288 CAPTURE                          VAL R32
      289 CAPTURE                          VAL R2
      290 CAPTURE                          VAL R22
      291 DUPCLOSURE                       R44 K54 [PROTO_7]
      292 CAPTURE                          VAL R39
      293 CAPTURE                          VAL R6
      294 CAPTURE                          VAL R7
      295 CAPTURE                          VAL R16
      296 CAPTURE                          VAL R17
      297 CAPTURE                          VAL R14
      298 CAPTURE                          VAL R20
      299 CAPTURE                          VAL R32
      300 CAPTURE                          VAL R2
      301 CAPTURE                          VAL R22
      302 DUPCLOSURE                       R45 K55 [PROTO_8]
      303 CAPTURE                          VAL R38
      304 CAPTURE                          VAL R25
      305 CAPTURE                          VAL R24
      306 CAPTURE                          VAL R39
      307 CAPTURE                          VAL R37
      308 CAPTURE                          VAL R12
      309 CAPTURE                          VAL R36
      310 CAPTURE                          VAL R3
      311 CAPTURE                          VAL R8
      312 CAPTURE                          VAL R15
      313 CAPTURE                          VAL R32
      314 CAPTURE                          VAL R11
      315 CAPTURE                          VAL R41
      316 DUPCLOSURE                       R46 K56 [PROTO_9]
      317 CAPTURE                          VAL R28
      318 CAPTURE                          VAL R39
      319 CAPTURE                          VAL R19
      320 DUPCLOSURE                       R47 K57 [PROTO_10]
      321 CAPTURE                          VAL R4
      322 CAPTURE                          VAL R19
      323 CAPTURE                          VAL R39
      324 CAPTURE                          VAL R45
      325 DUPCLOSURE                       R48 K58 [PROTO_11]
      326 CAPTURE                          VAL R42
      327 CAPTURE                          VAL R40
      328 CAPTURE                          VAL R39
      329 CAPTURE                          VAL R5
      330 CAPTURE                          VAL R44
      331 CAPTURE                          VAL R45
      332 DUPCLOSURE                       R49 K59 [PROTO_12]
      333 CAPTURE                          VAL R42
      334 CAPTURE                          VAL R4
      335 CAPTURE                          VAL R6
      336 CAPTURE                          VAL R39
      337 CAPTURE                          VAL R5
      338 CAPTURE                          VAL R43
      339 CAPTURE                          VAL R46
      340 CAPTURE                          VAL R47
      341 DUPCLOSURE                       R50 K60 [PROTO_13]
      342 CAPTURE                          VAL R35
      343 CAPTURE                          VAL R39
      344 CAPTURE                          VAL R49
      345 CAPTURE                          VAL R48
      346 RETURN                           R50 1
