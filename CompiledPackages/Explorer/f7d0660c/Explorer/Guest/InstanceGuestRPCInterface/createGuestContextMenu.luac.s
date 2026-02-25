PROTO_0:
        0 LENGTH                           R3 R1
        1 LENGTH                           R4 R2
        2 JUMPIFEQ                         R3 R4 ; [+3]
        4 LOADB                            R3 0
        5 RETURN                           R3 1
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R8 R0 K0 ["getInstanceId"]
       12 MOVE                             R9 R7
       13 CALL                             R8 1 1
       14 GETTABLE                         R9 R2 R6
       15 JUMPIFEQ                         R8 R9 ; [+3]
       17 LOADB                            R8 0
       18 RETURN                           R8 1
       19 FORGLOOP                         R3 2 ; [-10]
       21 LOADB                            R3 1
       22 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["getActionStateAsync"]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R2 R1 K1 ["visible"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 DUPTABLE                         R2 K3 [{"enabled"}]
        9 GETTABLEKS                       R3 R1 K2 ["enabled"]
       11 SETTABLEKS                       R3 R2 K2 ["enabled"]
       13 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 1
        5 JUMPIF                           R1 ; [+12]
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R1 R2 K0 ["SelectionChangedThisFrame"]
        9 NAMECALL                         R1 R1 K1 ["Wait"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 4
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETIMPORT                        R1 K4 [task.wait]
       16 LOADK                            R2 K5 [0.0333333333333333]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 5
       19 GETUPVAL                         R2 6
       20 DUPCLOSURE                       R3 K6 [PROTO_2]
       21 CALL                             R1 2 1
       22 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Performing action %s"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 GETUPVAL                         R2 1
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFEQKNIL                     R1 ; [+7]
        8 GETUPVAL                         R3 1
        9 GETTABLE                         R2 R3 R0
       10 GETTABLEKS                       R1 R2 K1 ["trigger"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R1 R4 K2 ["coreItems"]
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 JUMPIFNOTEQ                      R5 R0 ; [+11]
       22 GETIMPORT                        R6 K4 [error]
       24 LOADK                            R8 K5 ["Sending key that was expected to be handled by the host: %*"]
       25 MOVE                             R10 R0
       26 NAMECALL                         R8 R8 K6 ["format"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 CALL                             R6 1 0
       31 RETURN                           R0 0
       32 FORGLOOP                         R1 2 ; [-13]
       34 GETIMPORT                        R1 K4 [error]
       36 LOADK                            R3 K7 ["Unknown action: %*"]
       37 MOVE                             R5 R0
       38 NAMECALL                         R3 R3 K6 ["format"]
       40 CALL                             R3 2 1
       41 MOVE                             R2 R3
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["Get"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["SelectionChangedThisFrame"]
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          REF R3
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R4 R4 K2 ["Connect"]
       12 CALL                             R4 2 1
       13 DUPTABLE                         R5 K6 [{"openContextMenuAsync", "performContextMenuAction", "destroy"}]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          REF R3
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R6 R5 K3 ["openContextMenuAsync"]
       24 NEWCLOSURE                       R6 P2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U4
       28 SETTABLEKS                       R6 R5 K4 ["performContextMenuAction"]
       30 NEWCLOSURE                       R6 P3
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R6 R5 K5 ["destroy"]
       34 CLOSEUPVALS                      R3
       35 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Data"]
       17 GETTABLEKS                       R3 R4 K11 ["ContextMenu"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R1 K12 ["Guest"]
       24 GETTABLEKS                       R5 R6 K13 ["InstanceGuestRPCInterface"]
       26 GETTABLEKS                       R4 R5 K14 ["InstanceGuestRPCInterfaceTypes"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K15 ["RpcTypes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K16 ["Util"]
       38 GETTABLEKS                       R6 R7 K17 ["createDebugLogger"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R1 K16 ["Util"]
       45 GETTABLEKS                       R7 R8 K18 ["mapValuesAsync"]
       47 CALL                             R6 1 1
       48 MOVE                             R7 R5
       49 LOADK                            R8 K19 ["createGuestFields"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K20 [PROTO_0]
       52 DUPCLOSURE                       R9 K21 [PROTO_6]
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 RETURN                           R9 1
