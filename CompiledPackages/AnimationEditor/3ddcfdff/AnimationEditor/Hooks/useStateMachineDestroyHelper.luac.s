PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeStateMachineNodeInfoLookupList"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"stateMachineDestroyConnectionMapRef", "setStateMachineDestroyConnectionMap", "observeStateMachineNodeInfoLookupListRef"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["stateMachineDestroyConnectionMapRef"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setStateMachineDestroyConnectionMap"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeStateMachineNodeInfoLookupListRef"]
       10 RETURN                           R0 1

PROTO_2:
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
       31 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R6
       37 NEWTABLE                         R9 0 0
       39 CALL                             R7 2 -1
       40 RETURN                           R7 -1

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
       34 GETTABLEKS                       R5 R0 K12 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K12 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K12 ["Parent"]
       50 GETTABLEKS                       R7 R7 K16 ["Signals"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K17 [PROTO_2]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R2
       57 RETURN                           R7 1
