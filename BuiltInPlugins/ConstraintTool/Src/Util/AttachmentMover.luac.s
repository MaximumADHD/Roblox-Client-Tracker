PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["Anchored"]
        2 SETTABLEKS                       R2 R0 K1 ["_cachedAnchoredState"]
        4 JUMPIFNOT                        R1 ; [+7]
        5 NAMECALL                         R2 R1 K2 ["IsGrounded"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+3]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K0 ["Anchored"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["IsRunning"]
        3 CALL                             R2 1 1
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R0 K1 ["_attachmentsAndParents"]
        8 SETTABLEKS                       R1 R0 K2 ["_attachment"]
       10 LOADK                            R5 K3 ["BasePart"]
       11 NAMECALL                         R3 R1 K4 ["FindFirstAncestorWhichIsA"]
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R0 K5 ["_parent"]
       16 JUMPIFNOT                        R2 ; [+5]
       17 GETTABLEKS                       R5 R0 K5 ["_parent"]
       19 NAMECALL                         R3 R0 K6 ["_anchorIfNeedBe"]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_attachment"]
        2 JUMPIFNOT                        R3 ; [+37]
        3 GETTABLEKS                       R3 R0 K1 ["_parent"]
        5 JUMPIFEQ                         R2 R3 ; [+30]
        7 GETUPVAL                         R3 0
        8 NAMECALL                         R3 R3 K2 ["IsRunning"]
       10 CALL                             R3 1 1
       11 JUMPIFNOT                        R3 ; [+18]
       12 GETTABLEKS                       R3 R0 K1 ["_parent"]
       14 JUMPIFNOT                        R3 ; [+11]
       15 GETTABLEKS                       R4 R0 K1 ["_parent"]
       17 GETTABLEKS                       R3 R4 K3 ["Anchored"]
       19 JUMPIFNOT                        R3 ; [+6]
       20 GETTABLEKS                       R3 R0 K1 ["_parent"]
       22 GETTABLEKS                       R4 R0 K4 ["_cachedAnchoredState"]
       24 SETTABLEKS                       R4 R3 K3 ["Anchored"]
       26 MOVE                             R5 R2
       27 NAMECALL                         R3 R0 K5 ["_anchorIfNeedBe"]
       29 CALL                             R3 2 0
       30 GETTABLEKS                       R3 R0 K0 ["_attachment"]
       32 SETTABLEKS                       R2 R3 K6 ["Parent"]
       34 SETTABLEKS                       R2 R0 K1 ["_parent"]
       36 GETTABLEKS                       R3 R0 K0 ["_attachment"]
       38 SETTABLEKS                       R1 R3 K7 ["WorldCFrame"]
       40 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsRunning"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETTABLEKS                       R1 R0 K1 ["_parent"]
        7 JUMPIFNOT                        R1 ; [+11]
        8 GETTABLEKS                       R2 R0 K1 ["_parent"]
       10 GETTABLEKS                       R1 R2 K2 ["Anchored"]
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETTABLEKS                       R1 R0 K1 ["_parent"]
       15 GETTABLEKS                       R2 R0 K3 ["_cachedAnchoredState"]
       17 SETTABLEKS                       R2 R1 K2 ["Anchored"]
       19 GETIMPORT                        R1 K6 [Instance.new]
       21 LOADK                            R2 K7 ["Attachment"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R3 R0 K8 ["_attachment"]
       25 GETTABLEKS                       R2 R3 K9 ["Parent"]
       27 GETTABLEKS                       R5 R0 K8 ["_attachment"]
       29 GETTABLEKS                       R4 R5 K10 ["WorldCFrame"]
       31 NAMECALL                         R2 R2 K11 ["ToObjectSpace"]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K12 ["CFrame"]
       36 GETTABLEKS                       R3 R0 K8 ["_attachment"]
       38 GETTABLEKS                       R2 R3 K9 ["Parent"]
       40 SETTABLEKS                       R2 R1 K9 ["Parent"]
       42 LOADB                            R2 0
       43 SETTABLEKS                       R2 R0 K3 ["_cachedAnchoredState"]
       45 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 8 0
        9 SETTABLEKS                       R1 R1 K4 ["__index"]
       11 DUPCLOSURE                       R2 K5 [PROTO_0]
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R2 R1 K6 ["new"]
       15 DUPCLOSURE                       R2 K7 [PROTO_1]
       16 SETTABLEKS                       R2 R1 K8 ["_anchorIfNeedBe"]
       18 DUPCLOSURE                       R2 K9 [PROTO_2]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K10 ["setDragged"]
       22 DUPCLOSURE                       R2 K11 [PROTO_3]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R1 K12 ["moveTo"]
       26 DUPCLOSURE                       R2 K13 [PROTO_4]
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R2 R1 K14 ["commit"]
       30 RETURN                           R1 1
