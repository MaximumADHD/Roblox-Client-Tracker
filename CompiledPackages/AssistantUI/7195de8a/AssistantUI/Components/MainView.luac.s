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
       61 GETTABLEKS                       R8 R8 K17 ["FFlagAssistantAskInputTool"]
       63 JUMPIFNOT                        R8 ; [+6]
       64 GETTABLEKS                       R9 R1 K2 ["activeRender"]
       66 JUMPIFNOTEQKNIL                  R9 ; [+2]
       68 LOADB                            R8 0 +1
       69 LOADB                            R8 1
       70 SETTABLEKS                       R8 R7 K18 ["margin-bottom-small"]
       72 SETTABLEKS                       R7 R6 K3 ["tag"]
       74 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       76 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       78 DUPTABLE                         R7 K19 [{"InputArea"}]
       79 SETTABLEKS                       R3 R7 K9 ["InputArea"]
       81 CALL                             R4 3 -1
       82 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["scrollToBottom"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantExternalInterface"]
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["use"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 3
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 4
       13 CALL                             R0 0 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantCreditMetering"]
       17 JUMPIFNOT                        R0 ; [+2]
       18 GETUPVAL                         R0 5
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 6
       21 GETTABLEKS                       R0 R0 K3 ["useRef"]
       23 LOADNIL                          R1
       24 CALL                             R0 1 1
       25 GETUPVAL                         R1 6
       26 GETTABLEKS                       R1 R1 K4 ["useCallback"]
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R3 0 0
       32 CALL                             R1 2 1
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K5 ["FFlagAssistantFeedbackView"]
       36 JUMPIFNOT                        R3 ; [+8]
       37 GETUPVAL                         R2 6
       38 GETTABLEKS                       R2 R2 K6 ["useContext"]
       40 GETUPVAL                         R3 7
       41 GETTABLEKS                       R3 R3 K7 ["Context"]
       43 CALL                             R2 1 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R2
       46 JUMPIFNOT                        R2 ; [+3]
       47 GETTABLEKS                       R3 R2 K8 ["feedbackRequest"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R3
       51 DUPTABLE                         R4 K11 [{"chatHistoryInterfaceRef", "onMessageSent", "feedbackRequest"}]
       52 SETTABLEKS                       R0 R4 K9 ["chatHistoryInterfaceRef"]
       54 SETTABLEKS                       R1 R4 K10 ["onMessageSent"]
       56 SETTABLEKS                       R3 R4 K8 ["feedbackRequest"]
       58 RETURN                           R4 1

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
       37 GETUPVAL                         R2 6
       38 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantExternalInterface"]
       40 JUMPIFNOT                        R2 ; [+10]
       41 MOVE                             R3 R1
       42 GETUPVAL                         R4 0
       43 GETUPVAL                         R5 7
       44 GETTABLEKS                       R5 R5 K0 ["Provider"]
       46 CALL                             R4 1 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R2 K3 [table.insert]
       50 CALL                             R2 -1 0
       51 RETURN                           R1 1

PROTO_7:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+31]
        4 NEWTABLE                         R1 0 5
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K0 ["Provider"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["Provider"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 1
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K0 ["Provider"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 1
       22 GETUPVAL                         R6 5
       23 GETTABLEKS                       R6 R6 K0 ["Provider"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R7 6
       28 GETTABLEKS                       R7 R7 K0 ["Provider"]
       30 CALL                             R6 1 -1
       31 SETLIST                          R1 R2 -1 [1]
       33 MOVE                             R0 R1
       34 JUMP                             ; [+15]
       35 NEWTABLE                         R1 0 2
       37 GETUPVAL                         R2 1
       38 GETUPVAL                         R3 5
       39 GETTABLEKS                       R3 R3 K0 ["Provider"]
       41 CALL                             R2 1 1
       42 GETUPVAL                         R3 1
       43 GETUPVAL                         R4 6
       44 GETTABLEKS                       R4 R4 K0 ["Provider"]
       46 CALL                             R3 1 -1
       47 SETLIST                          R1 R2 -1 [1]
       49 MOVE                             R0 R1
       50 GETUPVAL                         R1 7
       51 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantExternalInterface"]
       53 JUMPIFNOT                        R1 ; [+10]
       54 MOVE                             R2 R0
       55 GETUPVAL                         R3 1
       56 GETUPVAL                         R4 8
       57 GETTABLEKS                       R4 R4 K0 ["Provider"]
       59 CALL                             R3 1 -1
       60 FASTCALL                         TABLE_INSERT ; [+2]
       61 GETIMPORT                        R1 K4 [table.insert]
       63 CALL                             R1 -1 0
       64 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantExternalInterface"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R3 R0 K1 ["externalInterfaceRef"]
        9 GETTABLEKS                       R4 R0 K2 ["textBoxRef"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 3
       13 CALL                             R2 0 0
       14 GETUPVAL                         R2 4
       15 GETUPVAL                         R3 5
       16 DUPTABLE                         R4 K6 [{["tag"] = "col grow size-full-0", ["LayoutOrder"]}]
       17 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       19 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       21 DUPTABLE                         R5 K11 [{"Header", "Divider", "ChatHistoryArea", "BottomArea"}]
       22 GETUPVAL                         R6 4
       23 GETUPVAL                         R7 6
       24 DUPTABLE                         R8 K13 [{["tag"] = "row align-x-right gap-xsmall size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       25 MOVE                             R9 R1
       26 CALL                             R9 0 1
       27 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K7 ["Header"]
       32 GETUPVAL                         R6 4
       33 GETUPVAL                         R7 7
       34 DUPTABLE                         R8 K15 [{"variant", "LayoutOrder"}]
       35 GETUPVAL                         R9 8
       36 GETTABLEKS                       R9 R9 K16 ["Enums"]
       38 GETTABLEKS                       R9 R9 K17 ["DividerVariant"]
       40 GETTABLEKS                       R9 R9 K18 ["Default"]
       42 SETTABLEKS                       R9 R8 K14 ["variant"]
       44 MOVE                             R9 R1
       45 CALL                             R9 0 1
       46 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K8 ["Divider"]
       51 GETUPVAL                         R6 4
       52 GETUPVAL                         R7 5
       53 DUPTABLE                         R8 K20 [{["tag"] = "grow size-full-0", ["LayoutOrder"]}]
       54 MOVE                             R9 R1
       55 CALL                             R9 0 1
       56 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       58 DUPTABLE                         R9 K23 [{"ChatHistory", "ModelQualityWarning"}]
       59 GETTABLEKS                       R10 R0 K24 ["sessionThreadReady"]
       61 JUMPIFNOT                        R10 ; [+8]
       62 GETUPVAL                         R10 4
       63 GETUPVAL                         R11 9
       64 DUPTABLE                         R12 K26 [{"chatHistoryInterfaceRef"}]
       65 GETTABLEKS                       R13 R0 K25 ["chatHistoryInterfaceRef"]
       67 SETTABLEKS                       R13 R12 K25 ["chatHistoryInterfaceRef"]
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R9 K21 ["ChatHistory"]
       72 GETUPVAL                         R10 4
       73 GETUPVAL                         R11 10
       74 DUPTABLE                         R12 K31 [{["AnchorPoint"], ["Position"], ["ZIndex"] = 999}]
       75 GETIMPORT                        R13 K34 [Vector2.new]
       77 LOADK                            R14 K35 [0.5]
       78 LOADN                            R15 1
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K27 ["AnchorPoint"]
       82 GETIMPORT                        R13 K38 [UDim2.fromScale]
       84 LOADK                            R14 K35 [0.5]
       85 LOADN                            R15 1
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K28 ["Position"]
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K22 ["ModelQualityWarning"]
       92 CALL                             R6 3 1
       93 SETTABLEKS                       R6 R5 K9 ["ChatHistoryArea"]
       95 GETTABLEKS                       R7 R0 K24 ["sessionThreadReady"]
       97 JUMPIF                           R7 ; [+2]
       98 LOADNIL                          R6
       99 JUMP                             ; [+50]
      100 GETUPVAL                         R7 1
      101 GETTABLEKS                       R7 R7 K39 ["FFlagAssistantFeedbackView"]
      103 JUMPIFNOT                        R7 ; [+30]
      104 GETTABLEKS                       R7 R0 K40 ["feedbackRequest"]
      106 JUMPIFNOT                        R7 ; [+27]
      107 GETUPVAL                         R6 4
      108 GETUPVAL                         R7 11
      109 DUPTABLE                         R8 K44 [{"thumbsDirection", "onSubmit", "onClose", "LayoutOrder"}]
      110 GETTABLEKS                       R9 R0 K40 ["feedbackRequest"]
      112 GETTABLEKS                       R9 R9 K41 ["thumbsDirection"]
      114 SETTABLEKS                       R9 R8 K41 ["thumbsDirection"]
      116 GETTABLEKS                       R9 R0 K40 ["feedbackRequest"]
      118 GETTABLEKS                       R9 R9 K42 ["onSubmit"]
      120 SETTABLEKS                       R9 R8 K42 ["onSubmit"]
      122 GETTABLEKS                       R9 R0 K40 ["feedbackRequest"]
      124 GETTABLEKS                       R9 R9 K45 ["onDismiss"]
      126 SETTABLEKS                       R9 R8 K43 ["onClose"]
      128 MOVE                             R9 R1
      129 CALL                             R9 0 1
      130 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
      132 CALL                             R6 2 1
      133 JUMP                             ; [+16]
      134 GETUPVAL                         R6 4
      135 GETUPVAL                         R7 12
      136 DUPTABLE                         R8 K47 [{"LayoutOrder", "OnMessageSent", "textBoxRef"}]
      137 MOVE                             R9 R1
      138 CALL                             R9 0 1
      139 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
      141 GETTABLEKS                       R9 R0 K48 ["onMessageSent"]
      143 SETTABLEKS                       R9 R8 K46 ["OnMessageSent"]
      145 GETTABLEKS                       R9 R0 K2 ["textBoxRef"]
      147 SETTABLEKS                       R9 R8 K2 ["textBoxRef"]
      149 CALL                             R6 2 1
      150 SETTABLEKS                       R6 R5 K10 ["BottomArea"]
      152 CALL                             R2 3 -1
      153 RETURN                           R2 -1

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
      153 GETTABLEKS                       R20 R0 K6 ["Components"]
      155 GETTABLEKS                       R20 R20 K7 ["Contexts"]
      157 GETTABLEKS                       R20 R20 K28 ["ThreadWorkQueueContext"]
      159 CALL                             R19 1 1
      160 GETIMPORT                        R20 K5 [require]
      162 GETTABLEKS                       R21 R0 K29 ["Util"]
      164 GETTABLEKS                       R21 R21 K30 ["createNewThread"]
      166 CALL                             R20 1 1
      167 GETIMPORT                        R21 K5 [require]
      169 GETTABLEKS                       R22 R0 K29 ["Util"]
      171 GETTABLEKS                       R22 R22 K31 ["makeConversation"]
      173 CALL                             R21 1 1
      174 GETIMPORT                        R22 K5 [require]
      176 GETTABLEKS                       R23 R0 K12 ["Hooks"]
      178 GETTABLEKS                       R23 R23 K32 ["useDispatchJobWaitOnComplete"]
      180 CALL                             R22 1 1
      181 GETIMPORT                        R23 K5 [require]
      183 GETTABLEKS                       R24 R0 K12 ["Hooks"]
      185 GETTABLEKS                       R24 R24 K33 ["useExternalInterface"]
      187 CALL                             R23 1 1
      188 GETIMPORT                        R24 K5 [require]
      190 GETTABLEKS                       R25 R0 K12 ["Hooks"]
      192 GETTABLEKS                       R25 R25 K34 ["usePersistConversations"]
      194 CALL                             R24 1 1
      195 GETIMPORT                        R25 K5 [require]
      197 GETTABLEKS                       R26 R0 K12 ["Hooks"]
      199 GETTABLEKS                       R26 R26 K35 ["useRefreshQuotaOnTurnEnd"]
      201 CALL                             R25 1 1
      202 GETIMPORT                        R26 K5 [require]
      204 GETTABLEKS                       R27 R0 K12 ["Hooks"]
      206 GETTABLEKS                       R27 R27 K36 ["useRemoveUnfocusedNewThread"]
      208 CALL                             R26 1 1
      209 GETIMPORT                        R27 K5 [require]
      211 GETTABLEKS                       R28 R0 K12 ["Hooks"]
      213 GETTABLEKS                       R28 R28 K37 ["useShowSessionConversation"]
      215 CALL                             R27 1 1
      216 GETIMPORT                        R28 K5 [require]
      218 GETTABLEKS                       R29 R0 K12 ["Hooks"]
      220 GETTABLEKS                       R29 R29 K38 ["useSwitchThread"]
      222 CALL                             R28 1 1
      223 GETIMPORT                        R29 K5 [require]
      225 GETTABLEKS                       R30 R0 K12 ["Hooks"]
      227 GETTABLEKS                       R30 R30 K39 ["useTrackThreadViewedAt"]
      229 CALL                             R29 1 1
      230 GETIMPORT                        R30 K5 [require]
      232 GETTABLEKS                       R31 R0 K40 ["FlagUtils"]
      234 CALL                             R30 1 1
      235 GETIMPORT                        R31 K5 [require]
      237 GETTABLEKS                       R32 R0 K41 ["Flags"]
      239 CALL                             R31 1 1
      240 GETIMPORT                        R32 K5 [require]
      242 GETTABLEKS                       R33 R0 K6 ["Components"]
      244 GETTABLEKS                       R33 R33 K42 ["PersistentPlanPanel"]
      246 CALL                             R32 1 1
      247 GETTABLEKS                       R33 R30 K43 ["getIsAssistantHarnessSplit"]
      249 GETTABLEKS                       R34 R30 K44 ["getShouldRestoreMostRecentThread"]
      251 GETTABLEKS                       R35 R8 K45 ["Divider"]
      253 GETTABLEKS                       R36 R8 K46 ["View"]
      255 GETTABLEKS                       R37 R16 K47 ["createNextOrder"]
      257 GETTABLEKS                       R38 R15 K48 ["createElement"]
      259 DUPCLOSURE                       R39 K49 [PROTO_2]
      260 CAPTURE                          VAL R15
      261 CAPTURE                          VAL R4
      262 CAPTURE                          VAL R28
      263 CAPTURE                          VAL R17
      264 CAPTURE                          VAL R20
      265 CAPTURE                          VAL R21
      266 DUPCLOSURE                       R40 K50 [PROTO_3]
      267 CAPTURE                          VAL R15
      268 CAPTURE                          VAL R11
      269 CAPTURE                          VAL R37
      270 CAPTURE                          VAL R38
      271 CAPTURE                          VAL R36
      272 CAPTURE                          VAL R32
      273 CAPTURE                          VAL R10
      274 CAPTURE                          VAL R31
      275 DUPCLOSURE                       R41 K51 [PROTO_5]
      276 CAPTURE                          VAL R31
      277 CAPTURE                          VAL R5
      278 CAPTURE                          VAL R24
      279 CAPTURE                          VAL R26
      280 CAPTURE                          VAL R29
      281 CAPTURE                          VAL R25
      282 CAPTURE                          VAL R15
      283 CAPTURE                          VAL R6
      284 DUPCLOSURE                       R42 K52 [PROTO_6]
      285 CAPTURE                          VAL R38
      286 CAPTURE                          VAL R2
      287 CAPTURE                          VAL R13
      288 CAPTURE                          VAL R14
      289 CAPTURE                          VAL R11
      290 CAPTURE                          VAL R1
      291 CAPTURE                          VAL R31
      292 CAPTURE                          VAL R19
      293 DUPCLOSURE                       R43 K53 [PROTO_7]
      294 CAPTURE                          VAL R33
      295 CAPTURE                          VAL R38
      296 CAPTURE                          VAL R1
      297 CAPTURE                          VAL R2
      298 CAPTURE                          VAL R13
      299 CAPTURE                          VAL R14
      300 CAPTURE                          VAL R11
      301 CAPTURE                          VAL R31
      302 CAPTURE                          VAL R19
      303 DUPCLOSURE                       R44 K54 [PROTO_8]
      304 CAPTURE                          VAL R37
      305 CAPTURE                          VAL R31
      306 CAPTURE                          VAL R23
      307 CAPTURE                          VAL R22
      308 CAPTURE                          VAL R38
      309 CAPTURE                          VAL R36
      310 CAPTURE                          VAL R9
      311 CAPTURE                          VAL R35
      312 CAPTURE                          VAL R8
      313 CAPTURE                          VAL R3
      314 CAPTURE                          VAL R12
      315 CAPTURE                          VAL R7
      316 CAPTURE                          VAL R40
      317 DUPCLOSURE                       R45 K55 [PROTO_9]
      318 CAPTURE                          VAL R27
      319 CAPTURE                          VAL R38
      320 CAPTURE                          VAL R18
      321 DUPCLOSURE                       R46 K56 [PROTO_10]
      322 CAPTURE                          VAL R15
      323 CAPTURE                          VAL R18
      324 CAPTURE                          VAL R38
      325 CAPTURE                          VAL R44
      326 DUPCLOSURE                       R47 K57 [PROTO_11]
      327 CAPTURE                          VAL R41
      328 CAPTURE                          VAL R39
      329 CAPTURE                          VAL R38
      330 CAPTURE                          VAL R16
      331 CAPTURE                          VAL R43
      332 CAPTURE                          VAL R44
      333 DUPCLOSURE                       R48 K58 [PROTO_12]
      334 CAPTURE                          VAL R41
      335 CAPTURE                          VAL R15
      336 CAPTURE                          VAL R1
      337 CAPTURE                          VAL R38
      338 CAPTURE                          VAL R16
      339 CAPTURE                          VAL R42
      340 CAPTURE                          VAL R45
      341 CAPTURE                          VAL R46
      342 DUPCLOSURE                       R49 K59 [PROTO_13]
      343 CAPTURE                          VAL R34
      344 CAPTURE                          VAL R38
      345 CAPTURE                          VAL R48
      346 CAPTURE                          VAL R47
      347 RETURN                           R49 1
