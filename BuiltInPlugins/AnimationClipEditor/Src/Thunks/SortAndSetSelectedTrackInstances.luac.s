PROTO_0:
        0 ORK                              R1 R1 K0 [1]
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R10 0
        6 GETTABLE                         R9 R10 R5
        7 NOT                              R8 R9
        8 FASTCALL2K                       ASSERT R8 K1 ; [+4]
       10 LOADK                            R9 K1 ["Duplicate name in hierarchy"]
       11 GETIMPORT                        R7 K3 [assert]
       13 CALL                             R7 2 0
       14 GETUPVAL                         R7 0
       15 SETTABLE                         R1 R7 R5
       16 GETUPVAL                         R7 1
       17 MOVE                             R8 R6
       18 ADDK                             R9 R1 K0 [1]
       19 CALL                             R7 2 0
       20 FORGLOOP                         R2 2 ; [-16]
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["buildRigHierarchy"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 MOVE                             R4 R3
       11 MOVE                             R5 R1
       12 CALL                             R4 1 0
       13 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R1
        4 GETTABLEKS                       R4 R2 K0 ["depth"]
        6 GETTABLEKS                       R5 R3 K0 ["depth"]
        8 GETTABLEKS                       R6 R2 K1 ["order"]
       10 GETTABLEKS                       R7 R3 K1 ["order"]
       12 JUMPIFNOTLT                      R5 R4 ; [+3]
       14 LOADB                            R8 1
       15 RETURN                           R8 1
       16 JUMPIFNOTLT                      R4 R5 ; [+3]
       18 LOADB                            R8 0
       19 RETURN                           R8 1
       20 JUMPIFLT                         R6 R7 ; [+2]
       22 LOADB                            R8 0 +1
       23 LOADB                            R8 1
       24 RETURN                           R8 1

PROTO_3:
        0 NAMECALL                         R3 R0 K0 ["getState"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["Status"]
        5 GETTABLEKS                       R1 R2 K2 ["RootInstance"]
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 0
       10 JUMPIFNOT                        R2 ; [+42]
       11 GETUPVAL                         R3 0
       12 LENGTH                           R2 R3
       13 LOADN                            R3 1
       14 JUMPIFNOTLT                      R3 R2 ; [+38]
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R1
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 0 0
       21 GETUPVAL                         R4 0
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 LOADK                            R11 K3 ["BoneRef"]
       26 NAMECALL                         R9 R8 K4 ["FindFirstChild"]
       28 CALL                             R9 2 1
       29 DUPTABLE                         R10 K7 [{"depth", "order"}]
       30 JUMPIFNOT                        R9 ; [+5]
       31 GETTABLEKS                       R14 R9 K9 ["Value"]
       33 GETTABLEKS                       R13 R14 K10 ["Name"]
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R13 R8 K10 ["Name"]
       38 GETTABLE                         R12 R2 R13
       39 ORK                              R11 R12 K8 [∞]
       40 SETTABLEKS                       R11 R10 K5 ["depth"]
       42 SETTABLEKS                       R7 R10 K6 ["order"]
       44 SETTABLE                         R10 R3 R8
       45 FORGLOOP                         R4 2 ; [-21]
       47 GETIMPORT                        R4 K13 [table.sort]
       49 GETUPVAL                         R5 0
       50 NEWCLOSURE                       R6 P0
       51 CAPTURE                          VAL R3
       52 CALL                             R4 2 0
       53 GETUPVAL                         R4 2
       54 GETUPVAL                         R5 0
       55 CALL                             R4 1 -1
       56 NAMECALL                         R2 R0 K14 ["dispatch"]
       58 CALL                             R2 -1 0
       59 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["RigInfo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Actions"]
       22 GETTABLEKS                       R3 R4 K10 ["SetSelectedTrackInstances"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 DUPCLOSURE                       R4 K12 [PROTO_4]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 RETURN                           R4 1
