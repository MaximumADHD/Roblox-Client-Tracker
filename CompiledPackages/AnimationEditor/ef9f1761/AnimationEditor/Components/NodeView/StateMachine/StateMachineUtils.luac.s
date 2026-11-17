PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setNodePosition"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+3]
        7 MOVE                             R2 R0
        8 RETURN                           R2 1
        9 MOVE                             R2 R1
       10 RETURN                           R2 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+3]
        7 MOVE                             R2 R0
        8 RETURN                           R2 1
        9 MOVE                             R2 R1
       10 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+8]
        7 GETTABLEKS                       R1 R0 K3 ["EnumType"]
        9 GETIMPORT                        R2 K6 [Enum.PoseEasingStyle]
       11 JUMPIFNOTEQ                      R1 R2 ; [+2]
       13 RETURN                           R0 1
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K1 [typeof]
       18 CALL                             R1 1 1
       19 JUMPIFNOTEQKS                    R1 K7 ["number"] ; [+15]
       21 GETIMPORT                        R1 K6 [Enum.PoseEasingStyle]
       23 MOVE                             R3 R0
       24 NAMECALL                         R1 R1 K8 ["FromValue"]
       26 CALL                             R1 2 1
       27 FASTCALL1                        TYPEOF R1 ; [+3]
       28 MOVE                             R3 R1
       29 GETIMPORT                        R2 K1 [typeof]
       31 CALL                             R2 1 1
       32 JUMPIFNOTEQKS                    R2 K2 ["EnumItem"] ; [+2]
       34 RETURN                           R1 1
       35 GETIMPORT                        R1 K10 [Enum.PoseEasingStyle.Linear]
       37 RETURN                           R1 1

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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Components"]
       27 GETTABLEKS                       R4 R4 K12 ["NodeView"]
       29 GETTABLEKS                       R4 R4 K13 ["StateMachine"]
       31 GETTABLEKS                       R4 R4 K14 ["supportsStateMachineNode"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 8 0
       36 SETTABLEKS                       R3 R4 K15 ["supportsInstances"]
       38 DUPCLOSURE                       R5 K16 [PROTO_0]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R5 R4 K17 ["getStatePosition"]
       42 DUPCLOSURE                       R5 K18 [PROTO_1]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R5 R4 K19 ["setStatePosition"]
       46 DUPCLOSURE                       R5 K20 [PROTO_2]
       47 SETTABLEKS                       R5 R4 K21 ["coerceNumber"]
       49 DUPCLOSURE                       R5 K22 [PROTO_3]
       50 SETTABLEKS                       R5 R4 K23 ["coerceString"]
       52 DUPCLOSURE                       R5 K24 [PROTO_4]
       53 SETTABLEKS                       R5 R4 K25 ["coerceCurve"]
       55 RETURN                           R4 1
