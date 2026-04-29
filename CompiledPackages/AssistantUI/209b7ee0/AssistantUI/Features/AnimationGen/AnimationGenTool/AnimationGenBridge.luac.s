PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADK                            R4 K0 ["Invalid network key: "]
        3 MOVE                             R5 R0
        4 CONCAT                           R3 R4 R5
        5 FASTCALL2                        ASSERT R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R2 K3 ["AnimationGenTool_%*"]
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K4 ["format"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R4 K3 [{"toolArgs", "handlerArgs", "bridge"}]
        1 SETTABLEKS                       R0 R4 K0 ["toolArgs"]
        3 GETTABLEKS                       R5 R1 K1 ["handlerArgs"]
        5 SETTABLEKS                       R5 R4 K1 ["handlerArgs"]
        7 GETTABLEKS                       R5 R2 K4 ["toHost"]
        9 MOVE                             R6 R3
       10 MOVE                             R7 R1
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K2 ["bridge"]
       14 RETURN                           R4 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

PROTO_3:
        0 DUPCLOSURE                       R3 K0 [PROTO_2]
        1 RETURN                           R3 1

PROTO_4:
        0 DUPTABLE                         R4 K3 [{"toolArgs", "handlerArgs", "bridge"}]
        1 SETTABLEKS                       R0 R4 K0 ["toolArgs"]
        3 GETTABLEKS                       R5 R1 K1 ["handlerArgs"]
        5 SETTABLEKS                       R5 R4 K1 ["handlerArgs"]
        7 GETTABLEKS                       R5 R2 K4 ["toGuest"]
        9 MOVE                             R6 R3
       10 MOVE                             R7 R1
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K2 ["bridge"]
       14 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["toolArgs"]
       13 GETTABLEKS                       R6 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R6 R3 K4 ["handlerArgs"]
       17 GETTABLEKS                       R6 R5 K7 ["toGuest"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R3 K5 ["bridge"]
       24 RETURN                           R2 2

PROTO_6:
        0 GETUPVAL                         R5 0
        1 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        3 LOADK                            R6 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["toolArgs"]
       13 GETTABLEKS                       R6 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R6 R3 K4 ["handlerArgs"]
       17 GETTABLEKS                       R6 R5 K7 ["toGuest"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R3 K5 ["bridge"]
       24 GETTABLEKS                       R4 R2 K8 ["getSelectedRigRef"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 DUPTABLE                         R2 K1 [{"getSelectedRigRef"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["getSelectedRigRef"]
        7 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["networking"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R8 R9 K1 ["getSelectedRigRef"]
        9 GETUPVAL                         R11 0
       10 GETTABLE                         R10 R11 R8
       11 LOADK                            R12 K2 ["Invalid network key: "]
       12 MOVE                             R13 R8
       13 CONCAT                           R11 R12 R13
       14 FASTCALL2                        ASSERT R10 R11 ; [+3]
       16 GETIMPORT                        R9 K4 [assert]
       18 CALL                             R9 2 0
       19 LOADK                            R9 K5 ["AnimationGenTool_%*"]
       20 MOVE                             R11 R8
       21 NAMECALL                         R9 R9 K6 ["format"]
       23 CALL                             R9 2 1
       24 MOVE                             R7 R9
       25 NEWCLOSURE                       R8 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 NAMECALL                         R5 R3 K7 ["OnHostInvokeAsync"]
       31 CALL                             R5 3 1
       32 NEWCLOSURE                       R6 P2
       33 CAPTURE                          VAL R5
       34 RETURN                           R6 1

PROTO_10:
        0 DUPTABLE                         R3 K2 [{"toGuest", "toHost"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K3 ["createUnimplemented"]
        4 LOADK                            R5 K0 ["toGuest"]
        5 CALL                             R4 1 1
        6 SETTABLEKS                       R4 R3 K0 ["toGuest"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["createUnimplemented"]
       11 LOADK                            R5 K1 ["toHost"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K1 ["toHost"]
       15 GETUPVAL                         R4 1
       16 MOVE                             R5 R0
       17 MOVE                             R6 R3
       18 MOVE                             R7 R1
       19 CALL                             R4 3 1
       20 DUPCLOSURE                       R5 K4 [PROTO_2]
       21 SETTABLEKS                       R4 R3 K1 ["toHost"]
       23 SETTABLEKS                       R5 R3 K0 ["toGuest"]
       25 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R3 K7 ["ToolTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K8 ["Parent"]
       20 GETTABLEKS                       R3 R4 K9 ["AnimationGenBridgeTypes"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K11 [{"getSelectedRigRef"}]
       24 LOADK                            R4 K10 ["getSelectedRigRef"]
       25 SETTABLEKS                       R4 R3 K10 ["getSelectedRigRef"]
       27 DUPCLOSURE                       R4 K12 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 DUPCLOSURE                       R5 K13 [PROTO_1]
       30 DUPCLOSURE                       R6 K14 [PROTO_3]
       31 DUPCLOSURE                       R7 K15 [PROTO_4]
       32 DUPCLOSURE                       R8 K16 [PROTO_9]
       33 CAPTURE                          VAL R3
       34 DUPCLOSURE                       R9 K17 [PROTO_10]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R8
       37 DUPTABLE                         R10 K20 [{"prepareBridges", "createGuestContext"}]
       38 SETTABLEKS                       R9 R10 K18 ["prepareBridges"]
       40 SETTABLEKS                       R5 R10 K19 ["createGuestContext"]
       42 RETURN                           R10 1
