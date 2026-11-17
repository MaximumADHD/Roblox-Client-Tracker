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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 1
        5 JUMPIF                           R1 ; [+6]
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R1 R1 K0 ["SelectionChangedThisFrame"]
        9 NAMECALL                         R1 R1 K1 ["Wait"]
       11 CALL                             R1 1 0
       12 NEWTABLE                         R1 0 0
       14 GETUPVAL                         R2 4
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 GETTABLEKS                       R7 R6 K2 ["getActionState"]
       20 CALL                             R7 0 1
       21 GETTABLEKS                       R8 R7 K3 ["visible"]
       23 JUMPIFNOT                        R8 ; [+6]
       24 DUPTABLE                         R8 K5 [{"enabled"}]
       25 GETTABLEKS                       R9 R7 K4 ["enabled"]
       27 SETTABLEKS                       R9 R8 K4 ["enabled"]
       29 SETTABLE                         R8 R1 R5
       30 FORGLOOP                         R2 2 ; [-13]
       32 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Performing action %s"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 GETUPVAL                         R2 1
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFEQKNIL                     R1 ; [+7]
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R2 R0
       10 GETTABLEKS                       R1 R1 K1 ["trigger"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K2 ["coreItems"]
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 JUMPIFNOTEQ                      R5 R0 ; [+10]
       22 GETIMPORT                        R6 K4 [error]
       24 LOADK                            R7 K5 ["Sending key that was expected to be handled by the host: %*"]
       25 MOVE                             R9 R0
       26 NAMECALL                         R7 R7 K6 ["format"]
       28 CALL                             R7 2 1
       29 CALL                             R6 1 0
       30 RETURN                           R0 0
       31 FORGLOOP                         R1 2 ; [-12]
       33 GETIMPORT                        R1 K4 [error]
       35 LOADK                            R2 K7 ["Unknown action: %*"]
       36 MOVE                             R4 R0
       37 NAMECALL                         R2 R2 K6 ["format"]
       39 CALL                             R2 2 1
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Get"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["SelectionChangedThisFrame"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          REF R2
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R3 R3 K2 ["Connect"]
       12 CALL                             R3 2 1
       13 DUPTABLE                         R4 K6 [{"openContextMenuAsync", "performContextMenuAction", "destroy"}]
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          REF R2
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R5 R4 K3 ["openContextMenuAsync"]
       22 NEWCLOSURE                       R5 P2
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U3
       26 SETTABLEKS                       R5 R4 K4 ["performContextMenuAction"]
       28 NEWCLOSURE                       R5 P3
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R5 R4 K5 ["destroy"]
       32 CLOSEUPVALS                      R2
       33 RETURN                           R4 1

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
       15 GETTABLEKS                       R3 R1 K10 ["Data"]
       17 GETTABLEKS                       R3 R3 K11 ["ContextMenu"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Guest"]
       24 GETTABLEKS                       R4 R4 K13 ["InstanceGuestRPCInterface"]
       26 GETTABLEKS                       R4 R4 K14 ["InstanceGuestRPCInterfaceTypes"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K15 ["RpcTypes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K16 ["Util"]
       38 GETTABLEKS                       R6 R6 K17 ["createDebugLogger"]
       40 CALL                             R5 1 1
       41 MOVE                             R6 R5
       42 LOADK                            R7 K18 ["createGuestFields"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K19 [PROTO_0]
       45 DUPCLOSURE                       R8 K20 [PROTO_5]
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R2
       50 RETURN                           R8 1
