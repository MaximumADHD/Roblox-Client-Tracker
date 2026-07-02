PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callArgs"]
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
       16 GETTABLEKS                       R2 R2 K0 ["callArgs"]
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
       39 GETTABLEKS                       R3 R3 K8 ["getContentHooks"]
       41 MOVE                             R4 R2
       42 CALL                             R3 1 1
       43 GETTABLEKS                       R4 R3 K9 ["editContent"]
       45 MOVE                             R5 R0
       46 CALL                             R4 1 0
       47 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["RESTRICTED_externalHooks"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 DUPTABLE                         R4 K3 [{"updateWidget"}]
       10 SETTABLEKS                       R3 R4 K2 ["updateWidget"]
       12 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["AssetInsertTool"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetInsertBridgeTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["AssetManagementUtils"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K9 ["debugPrint"]
       21 DUPCLOSURE                       R4 K10 [PROTO_1]
       22 CAPTURE                          VAL R3
       23 DUPTABLE                         R5 K12 [{"getWidgetUpdateFunctions"}]
       24 SETTABLEKS                       R4 R5 K11 ["getWidgetUpdateFunctions"]
       26 RETURN                           R5 1
