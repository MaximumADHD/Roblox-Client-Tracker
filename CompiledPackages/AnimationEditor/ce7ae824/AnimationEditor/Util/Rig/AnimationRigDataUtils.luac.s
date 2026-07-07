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
       14 JUMPIF                           R1 ; [+10]
       15 LOADK                            R3 K3 ["Humanoid"]
       16 NAMECALL                         R1 R0 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIF                           R1 ; [+5]
       20 LOADK                            R3 K4 ["AnimationController"]
       21 NAMECALL                         R1 R0 K1 ["IsA"]
       23 CALL                             R1 2 1
       24 JUMPIFNOT                        R1 ; [+2]
       25 LOADB                            R1 1
       26 RETURN                           R1 1
       27 LOADB                            R1 0
       28 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 LOADK                            R3 K2 ["AnimationController"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["_findAnimatorParentFromAnimSaves"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+1]
       17 RETURN                           R1 1
       18 LOADK                            R4 K0 ["Humanoid"]
       19 NAMECALL                         R2 R0 K4 ["FindFirstAncestorWhichIsA"]
       21 CALL                             R2 2 1
       22 JUMPIF                           R2 ; [+4]
       23 LOADK                            R4 K2 ["AnimationController"]
       24 NAMECALL                         R2 R0 K4 ["FindFirstAncestorWhichIsA"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R2 1
       29 LOADK                            R5 K0 ["Humanoid"]
       30 NAMECALL                         R3 R0 K5 ["FindFirstChildWhichIsA"]
       32 CALL                             R3 2 1
       33 JUMPIF                           R3 ; [+4]
       34 LOADK                            R5 K2 ["AnimationController"]
       35 NAMECALL                         R3 R0 K5 ["FindFirstChildWhichIsA"]
       37 CALL                             R3 2 1
       38 JUMPIFNOT                        R3 ; [+1]
       39 RETURN                           R3 1
       40 LOADK                            R6 K6 ["Model"]
       41 NAMECALL                         R4 R0 K4 ["FindFirstAncestorWhichIsA"]
       43 CALL                             R4 2 1
       44 JUMPIFNOT                        R4 ; [+18]
       45 LOADK                            R7 K0 ["Humanoid"]
       46 NAMECALL                         R5 R4 K5 ["FindFirstChildWhichIsA"]
       48 CALL                             R5 2 1
       49 JUMPIF                           R5 ; [+4]
       50 LOADK                            R7 K2 ["AnimationController"]
       51 NAMECALL                         R5 R4 K5 ["FindFirstChildWhichIsA"]
       53 CALL                             R5 2 1
       54 MOVE                             R3 R5
       55 JUMPIFNOT                        R3 ; [+1]
       56 RETURN                           R3 1
       57 LOADK                            R7 K6 ["Model"]
       58 NAMECALL                         R5 R4 K4 ["FindFirstAncestorWhichIsA"]
       60 CALL                             R5 2 1
       61 MOVE                             R4 R5
       62 JUMPBACK                         ; [-19]
       63 LOADNIL                          R5
       64 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findAnimatorParent"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K1 ["Parent"]
       10 RETURN                           R2 1

PROTO_3:
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
       23 JUMPIF                           R3 ; [+4]
       24 LOADK                            R5 K7 ["AnimationController"]
       25 NAMECALL                         R3 R2 K6 ["FindFirstChildWhichIsA"]
       27 CALL                             R3 2 1
       28 JUMPIF                           R3 ; [+2]
       29 LOADNIL                          R4
       30 RETURN                           R4 1
       31 RETURN                           R3 1

PROTO_4:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 LOADK                            R3 K2 ["AnimationController"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 1
       11 LOADK                            R3 K0 ["Humanoid"]
       12 NAMECALL                         R1 R0 K3 ["FindFirstChildWhichIsA"]
       14 CALL                             R1 2 1
       15 JUMPIF                           R1 ; [+4]
       16 LOADK                            R3 K2 ["AnimationController"]
       17 NAMECALL                         R1 R0 K3 ["FindFirstChildWhichIsA"]
       19 CALL                             R1 2 1
       20 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Humanoid"]
        2 NAMECALL                         R0 R0 K1 ["IsA"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R0 R0 K2 ["LoadFromHumanoid"]
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 1
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 2
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["Parent"]
       17 NAMECALL                         R0 R0 K4 ["LoadFromModel"]
       19 CALL                             R0 2 1
       20 SETUPVAL                         R0 1
       21 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 0
        2 RETURN                           R2 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 LOADNIL                          R2
        7 GETIMPORT                        R3 K1 [pcall]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          REF R2
       12 CAPTURE                          VAL R0
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getOrCreateServerStorageContainer"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["EmptyAnimSaves"]
        5 NAMECALL                         R1 R0 K2 ["FindFirstChild"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+6]
        9 LOADK                            R4 K3 ["ObjectValue"]
       10 NAMECALL                         R2 R1 K4 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R1 1
       15 GETIMPORT                        R2 K7 [Instance.new]
       17 LOADK                            R3 K3 ["ObjectValue"]
       18 CALL                             R2 1 1
       19 LOADK                            R3 K1 ["EmptyAnimSaves"]
       20 SETTABLEKS                       R3 R2 K8 ["Name"]
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R2 K9 ["Value"]
       25 SETTABLEKS                       R0 R2 K10 ["Parent"]
       27 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getOrCreateAnimSavesObjectValue"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["Value"]
        7 JUMPIFNOT                        R2 ; [+17]
        8 GETIMPORT                        R5 K3 [game]
       10 NAMECALL                         R3 R2 K4 ["IsDescendantOf"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+11]
       14 LOADK                            R6 K5 ["ObjectValue"]
       15 NAMECALL                         R4 R2 K6 ["IsA"]
       17 CALL                             R4 2 1
       18 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       20 LOADK                            R5 K7 ["Existing AnimSaves link is not an ObjectValue"]
       21 GETIMPORT                        R3 K9 [assert]
       23 CALL                             R3 2 0
       24 RETURN                           R2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K10 ["getOrCreateServerStorageContainer"]
       28 CALL                             R3 0 1
       29 GETIMPORT                        R4 K13 [Instance.new]
       31 LOADK                            R5 K5 ["ObjectValue"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R0 K14 ["Name"]
       35 SETTABLEKS                       R5 R4 K14 ["Name"]
       37 SETTABLEKS                       R0 R4 K1 ["Value"]
       39 SETTABLEKS                       R3 R4 K15 ["Parent"]
       41 SETTABLEKS                       R4 R1 K1 ["Value"]
       43 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RBX_ANIMSAVES"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K9 ["loadAnimationRig"]
       29 MOVE                             R7 R5
       30 MOVE                             R8 R1
       31 CALL                             R6 2 1
       32 JUMPIF                           R6 ; [+5]
       33 NAMECALL                         R7 R5 K10 ["Destroy"]
       35 CALL                             R7 1 0
       36 LOADNIL                          R7
       37 RETURN                           R7 1
       38 RETURN                           R5 1

PROTO_13:
        0 LOADK                            R3 K0 ["AnimationRigData"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 LOADK                            R4 K0 ["AnimationRigData"]
        6 NAMECALL                         R2 R1 K2 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R2 R0 K3 ["Parent"]
       13 JUMPIFNOT                        R2 ; [+5]
       14 GETTABLEKS                       R4 R2 K4 ["Name"]
       16 LOADK                            R5 K5 ["_"]
       17 CONCAT                           R3 R4 R5
       18 JUMP                             ; [+1]
       19 LOADK                            R3 K6 [""]
       20 GETIMPORT                        R4 K9 [Instance.new]
       22 LOADK                            R5 K0 ["AnimationRigData"]
       23 CALL                             R4 1 1
       24 MOVE                             R6 R3
       25 LOADK                            R7 K0 ["AnimationRigData"]
       26 CONCAT                           R5 R6 R7
       27 SETTABLEKS                       R5 R4 K4 ["Name"]
       29 SETTABLEKS                       R0 R4 K3 ["Parent"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K10 ["loadAnimationRig"]
       34 MOVE                             R6 R4
       35 MOVE                             R7 R0
       36 CALL                             R5 2 1
       37 JUMPIF                           R5 ; [+5]
       38 NAMECALL                         R6 R4 K11 ["Destroy"]
       40 CALL                             R6 1 0
       41 LOADNIL                          R6
       42 RETURN                           R6 1
       43 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ServerStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 16 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 SETTABLEKS                       R2 R1 K5 ["canAnimateSelection"]
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R1 K7 ["findAnimatorParent"]
       16 DUPCLOSURE                       R2 K8 [PROTO_2]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R2 R1 K9 ["findRigFromSelection"]
       20 DUPCLOSURE                       R2 K10 [PROTO_3]
       21 SETTABLEKS                       R2 R1 K11 ["_findAnimatorParentFromAnimSaves"]
       23 DUPCLOSURE                       R2 K12 [PROTO_4]
       24 SETTABLEKS                       R2 R1 K13 ["findAnimatorParentInParent"]
       26 DUPCLOSURE                       R2 K14 [PROTO_6]
       27 SETTABLEKS                       R2 R1 K15 ["loadAnimationRig"]
       29 DUPCLOSURE                       R2 K16 [PROTO_7]
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R2 R1 K17 ["getOrCreateAnimSavesFolderWithNoRig"]
       33 DUPCLOSURE                       R2 K18 [PROTO_8]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R2 R1 K19 ["getOrCreateAnimSavesFolder"]
       37 DUPCLOSURE                       R2 K20 [PROTO_9]
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R2 R1 K21 ["getServerStorageContainer"]
       41 DUPCLOSURE                       R2 K22 [PROTO_10]
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R2 R1 K23 ["getOrCreateServerStorageContainer"]
       45 DUPCLOSURE                       R2 K24 [PROTO_11]
       46 SETTABLEKS                       R2 R1 K25 ["getOrCreateAnimSavesObjectValue"]
       48 DUPCLOSURE                       R2 K26 [PROTO_12]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R2 R1 K27 ["ensureAnimationRigDataInAnimationClip"]
       52 DUPCLOSURE                       R2 K28 [PROTO_13]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R2 R1 K29 ["ensureAnimationRigDataInHumanoid"]
       56 RETURN                           R1 1
