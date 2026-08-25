PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodeInfoLookupList"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["current"]
        5 CALL                             R2 1 1
        6 GETTABLE                         R3 R2 R0
        7 JUMPIF                           R3 ; [+6]
        8 GETIMPORT                        R4 K5 [warn]
       10 LOADK                            R5 K6 ["No node disconnection info found for nodeId "]
       11 MOVE                             R6 R0
       12 CALL                             R4 2 0
       13 RETURN                           R0 0
       14 JUMPIF                           R1 ; [+4]
       15 GETTABLEKS                       R4 R3 K7 ["nodeOutputInfo"]
       17 JUMPIF                           R4 ; [+1]
       18 RETURN                           R0 0
       19 JUMPIFNOT                        R1 ; [+18]
       20 GETTABLEKS                       R4 R3 K7 ["nodeOutputInfo"]
       22 JUMPIFNOT                        R4 ; [+15]
       23 LOADB                            R4 1
       24 GETTABLEKS                       R5 R3 K7 ["nodeOutputInfo"]
       26 LOADNIL                          R6
       27 LOADNIL                          R7
       28 FORGPREP                         R5
       29 GETTABLE                         R10 R1 R8
       30 JUMPIFEQ                         R10 R9 ; [+3]
       32 LOADB                            R4 0
       33 JUMP                             ; [+2]
       34 FORGLOOP                         R5 2 ; [-6]
       36 JUMPIFNOT                        R4 ; [+1]
       37 RETURN                           R0 0
       38 DUPTABLE                         R4 K10 [{"connection", "nodeId", "nodeOutputInfo"}]
       39 GETTABLEKS                       R5 R3 K8 ["connection"]
       41 SETTABLEKS                       R5 R4 K8 ["connection"]
       43 SETTABLEKS                       R0 R4 K9 ["nodeId"]
       45 SETTABLEKS                       R1 R4 K7 ["nodeOutputInfo"]
       47 SETTABLE                         R4 R2 R0
       48 GETUPVAL                         R4 1
       49 MOVE                             R5 R2
       50 CALL                             R4 1 0
       51 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K4 [{"nodeDestroyConnectionMapRef", "setNodeDestroyConnectionMap", "observeNodeInfoLookupListRef", "setNodeOutputInfoInDestroyMapRef"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["nodeDestroyConnectionMapRef"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setNodeDestroyConnectionMap"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeNodeInfoLookupListRef"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setNodeOutputInfoInDestroyMapRef"]
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 NEWTABLE                         R3 0 0
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["useRefToState"]
        9 MOVE                             R5 R2
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R7 0 2
       20 MOVE                             R8 R0
       21 MOVE                             R9 R1
       22 SETLIST                          R7 R8 2 [1]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K1 ["useRefToState"]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 NEWTABLE                         R9 0 1
       38 GETTABLEKS                       R10 R4 K4 ["current"]
       40 SETLIST                          R9 R10 1 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K1 ["useRefToState"]
       46 MOVE                             R9 R7
       47 CALL                             R8 1 1
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K2 ["useMemo"]
       51 NEWCLOSURE                       R10 P2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R8
       56 NEWTABLE                         R11 0 0
       58 CALL                             R9 2 -1
       59 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Instances"]
       13 GETTABLEKS                       R2 R2 K8 ["InstanceRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["NativeGraphContext"]
       22 GETTABLEKS                       R3 R3 K11 ["NativeGraphUtils"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Parent"]
       29 GETTABLEKS                       R4 R4 K13 ["NodeGraphing"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["NodeViewTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Parent"]
       41 GETTABLEKS                       R6 R6 K15 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Parent"]
       48 GETTABLEKS                       R7 R7 K16 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K12 ["Parent"]
       55 GETTABLEKS                       R8 R8 K17 ["Signals"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K18 [PROTO_3]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 RETURN                           R8 1
