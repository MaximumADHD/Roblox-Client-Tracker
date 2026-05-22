PROTO_0:
        0 DUPTABLE                         R6 K3 [{"isThirdPartyRequest", "messageId", "contentId"}]
        1 SETTABLEKS                       R3 R6 K0 ["isThirdPartyRequest"]
        3 SETTABLEKS                       R4 R6 K1 ["messageId"]
        5 SETTABLEKS                       R5 R6 K2 ["contentId"]
        7 DUPTABLE                         R7 K5 [{"handlerArgs"}]
        8 SETTABLEKS                       R6 R7 K4 ["handlerArgs"]
       10 MOVE                             R8 R0
       11 MOVE                             R9 R1
       12 MOVE                             R10 R7
       13 MOVE                             R11 R2
       14 LOADNIL                          R12
       15 CALL                             R8 4 -1
       16 RETURN                           R8 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handlerArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K2 ["[%*] updateWidget: SKIPPED (isThirdPartyRequest)"]
        8 GETUPVAL                         R6 2
        9 NAMECALL                         R4 R4 K3 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["handlerArgs"]
       18 GETTABLEKS                       R2 R2 K4 ["contentId"]
       20 GETUPVAL                         R3 1
       21 LOADK                            R5 K5 ["[%*] updateWidget: contentId=%* isThirdParty=%*"]
       22 GETUPVAL                         R7 2
       23 FASTCALL1                        TOSTRING R2 ; [+3]
       24 MOVE                             R9 R2
       25 GETIMPORT                        R8 K7 [tostring]
       27 CALL                             R8 1 1
       28 FASTCALL1                        TOSTRING R1 ; [+3]
       29 MOVE                             R10 R1
       30 GETIMPORT                        R9 K7 [tostring]
       32 CALL                             R9 1 1
       33 NAMECALL                         R5 R5 K3 ["format"]
       35 CALL                             R5 4 1
       36 MOVE                             R4 R5
       37 CALL                             R3 1 0
       38 GETUPVAL                         R3 3
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+10]
       41 GETUPVAL                         R3 4
       42 GETTABLEKS                       R3 R3 K8 ["getContentHooks"]
       44 MOVE                             R4 R2
       45 CALL                             R3 1 1
       46 GETTABLEKS                       R4 R3 K9 ["editContent"]
       48 MOVE                             R5 R0
       49 CALL                             R4 1 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K0 ["handlerArgs"]
       54 GETTABLEKS                       R3 R3 K10 ["messageId"]
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R4 R4 K9 ["editContent"]
       59 DUPTABLE                         R5 K12 [{"messageId", "contentId", "transformFn"}]
       60 SETTABLEKS                       R3 R5 K10 ["messageId"]
       62 SETTABLEKS                       R2 R5 K4 ["contentId"]
       64 SETTABLEKS                       R0 R5 K11 ["transformFn"]
       66 CALL                             R4 1 0
       67 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["RESTRICTED_externalHooks"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R2
       10 DUPTABLE                         R4 K3 [{"updateWidget"}]
       11 SETTABLEKS                       R3 R4 K2 ["updateWidget"]
       13 RETURN                           R4 1

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["isThirdPartyRequest"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADB                            R2 0
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R3 R1 K1 ["messageId"]
        8 JUMPIF                           R3 ; [+1]
        9 LOADK                            R3 K2 [""]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R4 R1 K3 ["contentId"]
       13 JUMPIF                           R4 ; [+1]
       14 LOADK                            R4 K2 [""]
       15 GETUPVAL                         R5 0
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R7 2
       18 GETUPVAL                         R8 3
       19 MOVE                             R9 R2
       20 MOVE                             R10 R3
       21 MOVE                             R11 R4
       22 CALL                             R5 6 1
       23 GETUPVAL                         R6 4
       24 MOVE                             R7 R5
       25 MOVE                             R8 R0
       26 MOVE                             R9 R2
       27 CALL                             R6 3 1
       28 GETUPVAL                         R7 5
       29 CALL                             R7 0 1
       30 MOVE                             R9 R6
       31 NAMECALL                         R7 R7 K4 ["addText"]
       33 CALL                             R7 2 1
       34 NAMECALL                         R7 R7 K5 ["build"]
       36 CALL                             R7 1 -1
       37 RETURN                           R7 -1

PROTO_4:
        0 GETIMPORT                        R4 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K2 ["Parent"]
        5 GETTABLEKS                       R5 R5 K3 ["ModelContextProtocol"]
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R5 R4 K4 ["Util"]
       10 GETTABLEKS                       R5 R5 K5 ["ToolResult"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R5
       19 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K1 [script]
       14 LOADK                            R4 K7 ["AssetManagement"]
       15 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K8 ["AssetManagementUtils"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Flags"]
       27 GETTABLEKS                       R5 R5 K10 ["FFlagAssistantMultipleChatPersistence"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R3 K11 ["debugPrint"]
       32 DUPCLOSURE                       R6 K12 [PROTO_0]
       33 DUPCLOSURE                       R7 K13 [PROTO_2]
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R4
       36 DUPCLOSURE                       R8 K14 [PROTO_4]
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R6
       39 DUPTABLE                         R9 K18 [{"createFreshGuestContext", "getWidgetUpdateFunctions", "createToolHandler"}]
       40 SETTABLEKS                       R6 R9 K15 ["createFreshGuestContext"]
       42 SETTABLEKS                       R7 R9 K16 ["getWidgetUpdateFunctions"]
       44 SETTABLEKS                       R8 R9 K17 ["createToolHandler"]
       46 RETURN                           R9 1
