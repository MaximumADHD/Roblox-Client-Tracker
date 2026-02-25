PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Workspace"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+2]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 LOADK                            R3 K2 ["Model"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+5]
       15 LOADK                            R3 K3 ["Humanoid"]
       16 NAMECALL                         R1 R0 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+2]
       20 LOADB                            R1 1
       21 RETURN                           R1 1
       22 LOADB                            R1 0
       23 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["findAnimatorParentFromAnimSaves"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R1 1
        7 LOADK                            R4 K1 ["Humanoid"]
        8 NAMECALL                         R2 R0 K2 ["FindFirstAncestorWhichIsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R2 1
       13 LOADK                            R5 K3 ["Model"]
       14 NAMECALL                         R3 R0 K2 ["FindFirstAncestorWhichIsA"]
       16 CALL                             R3 2 1
       17 JUMPIFNOT                        R3 ; [+13]
       18 LOADK                            R6 K1 ["Humanoid"]
       19 NAMECALL                         R4 R3 K4 ["FindFirstChildWhichIsA"]
       21 CALL                             R4 2 1
       22 MOVE                             R2 R4
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R2 1
       25 LOADK                            R6 K3 ["Model"]
       26 NAMECALL                         R4 R3 K2 ["FindFirstAncestorWhichIsA"]
       28 CALL                             R4 2 1
       29 MOVE                             R3 R4
       30 JUMPBACK                         ; [-14]
       31 LOADNIL                          R4
       32 RETURN                           R4 1

PROTO_2:
        0 LOADK                            R3 K0 ["ObjectValue"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 MOVE                             R2 R1
        8 JUMPIFNOT                        R2 ; [+2]
        9 GETTABLEKS                       R2 R1 K2 ["Value"]
       11 JUMPIFNOT                        R2 ; [+5]
       12 LOADK                            R5 K3 ["Model"]
       13 NAMECALL                         R3 R2 K4 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+2]
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 LOADK                            R5 K5 ["Humanoid"]
       20 NAMECALL                         R3 R2 K6 ["FindFirstChildWhichIsA"]
       22 CALL                             R3 2 1
       23 JUMPIF                           R3 ; [+2]
       24 LOADNIL                          R4
       25 RETURN                           R4 1
       26 RETURN                           R3 1

PROTO_3:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 LOADK                            R3 K0 ["Humanoid"]
        7 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["LoadFromHumanoid"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_5:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 0
        2 RETURN                           R2 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 LOADNIL                          R2
        7 GETIMPORT                        R3 K1 [pcall]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CALL                             R3 1 2
       14 JUMPIFNOT                        R3 ; [+1]
       15 JUMPIF                           R2 ; [+8]
       16 JUMPIFNOT                        R4 ; [+4]
       17 GETIMPORT                        R5 K3 [warn]
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 LOADB                            R5 0
       22 CLOSEUPVALS                      R2
       23 RETURN                           R5 1
       24 LOADB                            R5 1
       25 CLOSEUPVALS                      R2
       26 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getOrCreateAnimSavesObjectValue"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K1 ["Value"]
       10 JUMPIFNOT                        R2 ; [+17]
       11 GETIMPORT                        R5 K3 [game]
       13 NAMECALL                         R3 R2 K4 ["IsDescendantOf"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+11]
       17 LOADK                            R6 K5 ["ObjectValue"]
       18 NAMECALL                         R4 R2 K6 ["IsA"]
       20 CALL                             R4 2 1
       21 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       23 LOADK                            R5 K7 ["Existing AnimSaves link is not an ObjectValue"]
       24 GETIMPORT                        R3 K9 [assert]
       26 CALL                             R3 2 0
       27 RETURN                           R2 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K10 ["getOrCreateServerStorageContainer"]
       31 CALL                             R3 0 1
       32 GETIMPORT                        R4 K13 [Instance.new]
       34 LOADK                            R5 K5 ["ObjectValue"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R0 K14 ["Name"]
       38 SETTABLEKS                       R5 R4 K14 ["Name"]
       40 SETTABLEKS                       R0 R4 K1 ["Value"]
       42 SETTABLEKS                       R3 R4 K15 ["Parent"]
       44 SETTABLEKS                       R4 R1 K1 ["Value"]
       46 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RBX_ANIMSAVES"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 1
        7 GETIMPORT                        R1 K4 [Instance.new]
        9 LOADK                            R2 K5 ["Model"]
       10 CALL                             R1 1 1
       11 LOADK                            R2 K0 ["RBX_ANIMSAVES"]
       12 SETTABLEKS                       R2 R1 K6 ["Name"]
       14 GETUPVAL                         R2 0
       15 SETTABLEKS                       R2 R1 K7 ["Parent"]
       17 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R3 K0 ["AnimSaves"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 LOADK                            R4 K2 ["ObjectValue"]
        6 NAMECALL                         R2 R1 K3 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R1 1
       11 GETIMPORT                        R2 K6 [Instance.new]
       13 LOADK                            R3 K2 ["ObjectValue"]
       14 CALL                             R2 1 1
       15 LOADK                            R3 K0 ["AnimSaves"]
       16 SETTABLEKS                       R3 R2 K7 ["Name"]
       18 SETTABLEKS                       R0 R2 K8 ["Parent"]
       20 RETURN                           R2 1

PROTO_9:
        0 LOADK                            R4 K0 ["AnimationRigData"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R2 1
        6 GETTABLEKS                       R3 R1 K2 ["Parent"]
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETTABLEKS                       R5 R3 K3 ["Name"]
       11 LOADK                            R6 K4 ["_"]
       12 CONCAT                           R4 R5 R6
       13 JUMP                             ; [+1]
       14 LOADK                            R4 K5 [""]
       15 GETIMPORT                        R5 K8 [Instance.new]
       17 LOADK                            R6 K0 ["AnimationRigData"]
       18 CALL                             R5 1 1
       19 MOVE                             R7 R4
       20 LOADK                            R8 K0 ["AnimationRigData"]
       21 CONCAT                           R6 R7 R8
       22 SETTABLEKS                       R6 R5 K3 ["Name"]
       24 SETTABLEKS                       R0 R5 K2 ["Parent"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K9 ["loadAnimationRig"]
       29 MOVE                             R7 R5
       30 MOVE                             R8 R1
       31 CALL                             R6 2 1
       32 JUMPIF                           R6 ; [+5]
       33 NAMECALL                         R7 R5 K10 ["Destroy"]
       35 CALL                             R7 1 0
       36 LOADNIL                          R7
       37 RETURN                           R7 1
       38 RETURN                           R5 1

PROTO_10:
        0 LOADK                            R3 K0 ["AnimationRigData"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R2 R0 K2 ["Parent"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETTABLEKS                       R4 R2 K3 ["Name"]
       11 LOADK                            R5 K4 ["_"]
       12 CONCAT                           R3 R4 R5
       13 JUMP                             ; [+1]
       14 LOADK                            R3 K5 [""]
       15 GETIMPORT                        R4 K8 [Instance.new]
       17 LOADK                            R5 K0 ["AnimationRigData"]
       18 CALL                             R4 1 1
       19 MOVE                             R6 R3
       20 LOADK                            R7 K0 ["AnimationRigData"]
       21 CONCAT                           R5 R6 R7
       22 SETTABLEKS                       R5 R4 K3 ["Name"]
       24 SETTABLEKS                       R0 R4 K2 ["Parent"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K9 ["loadAnimationRig"]
       29 MOVE                             R6 R4
       30 MOVE                             R7 R0
       31 CALL                             R5 2 1
       32 JUMPIF                           R5 ; [+5]
       33 NAMECALL                         R6 R4 K10 ["Destroy"]
       35 CALL                             R6 1 0
       36 LOADNIL                          R6
       37 RETURN                           R6 1
       38 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ServerStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 16 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 SETTABLEKS                       R2 R1 K5 ["canAnimate"]
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R1 K7 ["findAnimatorParent"]
       16 DUPCLOSURE                       R2 K8 [PROTO_2]
       17 SETTABLEKS                       R2 R1 K9 ["findAnimatorParentFromAnimSaves"]
       19 DUPCLOSURE                       R2 K10 [PROTO_3]
       20 SETTABLEKS                       R2 R1 K11 ["findHumanoidInParent"]
       22 DUPCLOSURE                       R2 K12 [PROTO_5]
       23 SETTABLEKS                       R2 R1 K13 ["loadAnimationRig"]
       25 DUPCLOSURE                       R2 K14 [PROTO_6]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R2 R1 K15 ["getOrCreateAnimSavesFolder"]
       29 DUPCLOSURE                       R2 K16 [PROTO_7]
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R2 R1 K17 ["getOrCreateServerStorageContainer"]
       33 DUPCLOSURE                       R2 K18 [PROTO_8]
       34 SETTABLEKS                       R2 R1 K19 ["getOrCreateAnimSavesObjectValue"]
       36 DUPCLOSURE                       R2 K20 [PROTO_9]
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R2 R1 K21 ["ensureAnimationRigDataInAnimationClip"]
       40 DUPCLOSURE                       R2 K22 [PROTO_10]
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R2 R1 K23 ["ensureAnimationRigDataInHumanoid"]
       44 RETURN                           R1 1
