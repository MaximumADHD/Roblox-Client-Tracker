PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LocalPlayer"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getLocalPlayer"]
        3 CALL                             R0 0 1
        4 FASTCALL1                        ASSERT R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["_getOrCreateBoundEvent"]
       12 LOADK                            R2 K4 ["LOCAL_PLAYER"]
       13 CALL                             R1 1 1
       14 MOVE                             R3 R0
       15 NAMECALL                         R1 R1 K5 ["Fire"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getLocalPlayer"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 MOVE                             R2 R0
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["_connectionUtil"]
       11 LOADK                            R4 K2 ["LOCAL_PLAYER"]
       12 GETUPVAL                         R5 1
       13 LOADK                            R7 K3 ["LocalPlayer"]
       14 NAMECALL                         R5 R5 K4 ["GetPropertyChangedSignal"]
       16 CALL                             R5 2 1
       17 DUPCLOSURE                       R7 K5 [PROTO_1]
       18 CAPTURE                          UPVAL U0
       19 NAMECALL                         R5 R5 K6 ["Connect"]
       21 CALL                             R5 2 -1
       22 NAMECALL                         R2 R2 K7 ["trackConnection"]
       24 CALL                             R2 -1 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K8 ["_getOrCreateBoundEvent"]
       28 LOADK                            R3 K2 ["LOCAL_PLAYER"]
       29 CALL                             R2 1 1
       30 GETTABLEKS                       R3 R2 K9 ["Event"]
       32 MOVE                             R5 R0
       33 NAMECALL                         R3 R3 K6 ["Connect"]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getLocalPlayer"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["Character"]
        9 RETURN                           R1 1

PROTO_4:
        0 FASTCALL1                        ASSERT R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["_getOrCreateBoundEvent"]
        8 LOADK                            R2 K3 ["CHARACTER_ADDED"]
        9 CALL                             R1 1 1
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K4 ["Fire"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCharacter"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["_connectionUtil"]
       11 LOADK                            R4 K2 ["CHARACTER_ADDED"]
       12 GETTABLEKS                       R5 R0 K3 ["CharacterAdded"]
       14 DUPCLOSURE                       R7 K4 [PROTO_4]
       15 CAPTURE                          UPVAL U0
       16 NAMECALL                         R5 R5 K5 ["Connect"]
       18 CALL                             R5 2 -1
       19 NAMECALL                         R2 R2 K6 ["trackConnection"]
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_connectionUtil"]
        3 LOADK                            R3 K1 ["ON_LOCAL_PLAYER"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["onLocalPlayer"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CALL                             R4 1 -1
       11 NAMECALL                         R1 R1 K3 ["trackConnection"]
       13 CALL                             R1 -1 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["_getOrCreateBoundEvent"]
       17 LOADK                            R2 K5 ["CHARACTER_ADDED"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K6 ["Event"]
       21 MOVE                             R4 R0
       22 NAMECALL                         R2 R2 K7 ["Connect"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getCharacter"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+6]
       12 MOVE                             R6 R1
       13 NAMECALL                         R4 R3 K2 ["IsA"]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R4 ; [+1]
       17 RETURN                           R3 1
       18 LOADNIL                          R4
       19 RETURN                           R4 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+18]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+12]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["_getOrCreateBoundEvent"]
       13 LOADK                            R3 K3 ["CHARACTER_CHILD_ADDED"]
       14 GETUPVAL                         R4 0
       15 GETUPVAL                         R5 1
       16 CONCAT                           R2 R3 R5
       17 CALL                             R1 1 1
       18 MOVE                             R3 R0
       19 NAMECALL                         R1 R1 K4 ["Fire"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getChild"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETUPVAL                         R2 3
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["_connectionUtil"]
       13 LOADK                            R4 K2 ["CHARACTER_CHILD_ADDED"]
       14 GETTABLEKS                       R5 R0 K3 ["ChildAdded"]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U0
       20 NAMECALL                         R5 R5 K4 ["Connect"]
       22 CALL                             R5 2 -1
       23 NAMECALL                         R2 R2 K5 ["trackConnection"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_connectionUtil"]
        3 LOADK                            R5 K1 ["ON_CHARACTER"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K2 ["onCharacter"]
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CALL                             R6 1 -1
       13 NAMECALL                         R3 R3 K3 ["trackConnection"]
       15 CALL                             R3 -1 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K4 ["_getOrCreateBoundEvent"]
       19 LOADK                            R5 K5 ["CHARACTER_CHILD_ADDED"]
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 CONCAT                           R4 R5 R7
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R3 K6 ["Event"]
       26 MOVE                             R6 R2
       27 NAMECALL                         R4 R4 K7 ["Connect"]
       29 CALL                             R4 2 -1
       30 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_boundEvents"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+8]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["_boundEvents"]
        8 GETIMPORT                        R2 K3 [Instance.new]
       10 LOADK                            R3 K4 ["BindableEvent"]
       11 CALL                             R2 1 1
       12 SETTABLE                         R2 R1 R0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["_boundEvents"]
       16 GETTABLE                         R1 R2 R0
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K9 ["get"]
       16 LOADK                            R3 K10 ["ConnectionUtil"]
       17 CALL                             R2 1 1
       18 DUPTABLE                         R3 K16 [{["LOCAL_PLAYER"] = "LOCAL_PLAYER", ["ON_LOCAL_PLAYER"] = "ON_LOCAL_PLAYER", ["CHARACTER_ADDED"] = "CHARACTER_ADDED", ["ON_CHARACTER"] = "ON_CHARACTER", ["CHARACTER_CHILD_ADDED"] = "CHARACTER_CHILD_ADDED"}]
       19 NEWTABLE                         R4 0 0
       21 GETTABLEKS                       R5 R2 K17 ["new"]
       23 CALL                             R5 0 1
       24 SETTABLEKS                       R5 R4 K18 ["_connectionUtil"]
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K19 ["_boundEvents"]
       30 DUPCLOSURE                       R5 K20 [PROTO_0]
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R5 R4 K21 ["getLocalPlayer"]
       34 DUPCLOSURE                       R5 K22 [PROTO_2]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R5 R4 K23 ["onLocalPlayer"]
       39 DUPCLOSURE                       R5 K24 [PROTO_3]
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R5 R4 K25 ["getCharacter"]
       43 DUPCLOSURE                       R5 K26 [PROTO_6]
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R5 R4 K27 ["onCharacter"]
       47 DUPCLOSURE                       R5 K28 [PROTO_7]
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R5 R4 K29 ["getChild"]
       51 DUPCLOSURE                       R5 K30 [PROTO_10]
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R5 R4 K31 ["onChild"]
       55 DUPCLOSURE                       R5 K32 [PROTO_11]
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R5 R4 K33 ["_getOrCreateBoundEvent"]
       59 RETURN                           R4 1
