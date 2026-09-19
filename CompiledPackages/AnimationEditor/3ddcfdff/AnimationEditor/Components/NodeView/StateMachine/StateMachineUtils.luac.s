PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["StateMachineStateDefinition"]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [Instance.new]
        6 LOADK                            R1 K4 ["StateMachineTransitionDefinition"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NODE_CONFIGURATION_NAME"]
        3 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        5 CALL                             R1 2 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["NODE_ATTRIBUTES"]
       13 GETTABLEKS                       R4 R4 K3 ["Position"]
       15 NAMECALL                         R2 R1 K4 ["GetAttribute"]
       17 CALL                             R2 2 1
       18 FASTCALL1                        TYPEOF R2 ; [+3]
       19 MOVE                             R5 R2
       20 GETIMPORT                        R4 K6 [typeof]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQKS                    R4 K7 ["Vector2"] ; [+3]
       25 MOVE                             R3 R2
       26 RETURN                           R3 1
       27 LOADNIL                          R3
       28 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setNodePosition"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["NativeGraphContext"]
       20 GETTABLEKS                       R3 R3 K10 ["NativeGraphUtils"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 4 0
       25 GETIMPORT                        R4 K12 [pcall]
       27 DUPCLOSURE                       R5 K13 [PROTO_0]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K14 ["supportsInstances"]
       31 DUPCLOSURE                       R4 K15 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R4 R3 K16 ["getStatePosition"]
       35 DUPCLOSURE                       R4 K17 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R4 R3 K18 ["setStatePosition"]
       39 RETURN                           R3 1
