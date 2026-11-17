PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["_pages"]
        2 GETTABLEKS                       R3 R0 K1 ["_idx"]
        4 GETTABLE                         R1 R2 R3
        5 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K1 ["_idx"]
        2 ADDK                             R1 R2 K0 [1]
        3 SETTABLEKS                       R1 R0 K1 ["_idx"]
        5 GETTABLEKS                       R2 R0 K1 ["_idx"]
        7 GETTABLEKS                       R4 R0 K2 ["_pages"]
        9 LENGTH                           R3 R4
       10 JUMPIFLT                         R3 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 SETTABLEKS                       R1 R0 K3 ["IsFinished"]
       16 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K5 [{[1], ["_idx"] = 1, ["IsFinished"] = False}]
        1 SETTABLEKS                       R0 R1 K0 ["_pages"]
        3 DUPCLOSURE                       R2 K6 [PROTO_0]
        4 SETTABLEKS                       R2 R1 K7 ["GetCurrentPage"]
        6 DUPCLOSURE                       R2 K8 [PROTO_1]
        7 SETTABLEKS                       R2 R1 K9 ["AdvanceToNextPageAsync"]
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 2
        3 NEWTABLE                         R2 0 2
        5 DUPTABLE                         R3 K2 [{[1] = 1}]
        6 DUPTABLE                         R4 K4 [{[1] = 2}]
        7 SETLIST                          R2 R3 2 [1]
        9 NEWTABLE                         R3 0 1
       11 DUPTABLE                         R4 K6 [{[1] = 3}]
       12 SETLIST                          R3 R4 1 [1]
       14 SETLIST                          R1 R2 2 [1]
       16 CALL                             R0 1 1
       17 LOADNIL                          R1
       18 MOVE                             R2 R0
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 1
       21 LENGTH                           R3 R1
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R2 R2 K7 ["toEqual"]
       25 LOADN                            R3 3
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 1
       28 GETTABLEN                        R3 R1 1
       29 GETTABLEKS                       R3 R3 K0 ["foo"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R2 R2 K7 ["toEqual"]
       34 LOADN                            R3 1
       35 CALL                             R2 1 0
       36 GETUPVAL                         R2 1
       37 GETTABLEN                        R3 R1 2
       38 GETTABLEKS                       R3 R3 K0 ["foo"]
       40 CALL                             R2 1 1
       41 GETTABLEKS                       R2 R2 K7 ["toEqual"]
       43 LOADN                            R3 2
       44 CALL                             R2 1 0
       45 GETUPVAL                         R2 1
       46 GETTABLEN                        R3 R1 3
       47 GETTABLEKS                       R3 R3 K0 ["foo"]
       49 CALL                             R2 1 1
       50 GETTABLEKS                       R2 R2 K7 ["toEqual"]
       52 LOADN                            R3 3
       53 CALL                             R2 1 0
       54 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 1
        3 NEWTABLE                         R2 0 1
        5 DUPTABLE                         R3 K2 [{[1] = "only"}]
        6 SETLIST                          R2 R3 1 [1]
        8 SETLIST                          R1 R2 1 [1]
       10 CALL                             R0 1 1
       11 LOADNIL                          R1
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 1
       15 LENGTH                           R3 R1
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K3 ["toEqual"]
       19 LOADN                            R3 1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 1
       22 GETTABLEN                        R3 R1 1
       23 GETTABLEKS                       R3 R3 K0 ["foo"]
       25 CALL                             R2 1 1
       26 GETTABLEKS                       R2 R2 K3 ["toEqual"]
       28 LOADK                            R3 K1 ["only"]
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 1
        4 NAMECALL                         R1 R0 K0 ["AdvanceToNextPageAsync"]
        6 CALL                             R1 1 0
        7 LOADNIL                          R1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 1
       11 LENGTH                           R3 R1
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R2 R2 K1 ["toEqual"]
       15 LOADN                            R3 0
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["collects items across multiple pages"]
        2 DUPCLOSURE                       R2 K1 [PROTO_3]
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 0
        7 LOADK                            R1 K2 ["handles a single page"]
        8 DUPCLOSURE                       R2 K3 [PROTO_4]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 0
       13 LOADK                            R1 K4 ["returns empty for no pages"]
       14 DUPCLOSURE                       R2 K5 [PROTO_5]
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R4
        7 NAMECALL                         R2 R0 K1 ["getUserFriendsNew"]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 1
       11 GETTABLEKS                       R1 R1 K2 ["toEqual"]
       13 NEWTABLE                         R2 0 0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 2
        3 NEWTABLE                         R2 0 2
        5 DUPTABLE                         R3 K2 [{[1] = "A"}]
        6 DUPTABLE                         R4 K4 [{[1] = "B"}]
        7 SETLIST                          R2 R3 2 [1]
        9 NEWTABLE                         R3 0 1
       11 DUPTABLE                         R4 K6 [{[1] = "C"}]
       12 SETLIST                          R3 R4 1 [1]
       14 SETLIST                          R1 R2 2 [1]
       16 CALL                             R0 1 1
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["new"]
       20 LOADNIL                          R2
       21 CALL                             R1 1 1
       22 MOVE                             R4 R0
       23 NAMECALL                         R2 R1 K8 ["getUserFriendsNew"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 2
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R3 R3 K9 ["toEqual"]
       31 NEWTABLE                         R4 0 3
       33 LOADK                            R5 K1 ["A"]
       34 LOADK                            R6 K3 ["B"]
       35 LOADK                            R7 K5 ["C"]
       36 SETLIST                          R4 R5 3 [1]
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["returns empty list if passed nil"]
        2 DUPCLOSURE                       R2 K1 [PROTO_7]
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 0
        7 LOADK                            R1 K2 ["extracts .Id from each item"]
        8 DUPCLOSURE                       R2 K3 [PROTO_8]
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["SocialController"]
        4 CALL                             R0 1 1
        5 GETIMPORT                        R1 K4 [script]
        7 LOADK                            R3 K2 ["SocialController"]
        8 NAMECALL                         R1 R1 K5 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K1 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Packages"]
       15 GETTABLEKS                       R3 R3 K7 ["Dev"]
       17 GETTABLEKS                       R3 R3 K8 ["JestGlobals"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K9 ["describe"]
       22 GETTABLEKS                       R4 R2 K10 ["expect"]
       24 GETTABLEKS                       R5 R2 K11 ["it"]
       26 GETTABLEKS                       R6 R0 K12 ["getUserFriendsNew"]
       28 DUPCLOSURE                       R6 K13 [PROTO_2]
       29 MOVE                             R7 R3
       30 LOADK                            R8 K14 ["pagesToTable"]
       31 DUPCLOSURE                       R9 K15 [PROTO_6]
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R4
       35 CALL                             R7 2 0
       36 MOVE                             R7 R3
       37 LOADK                            R8 K16 ["SocialController:getUserFriendsNew"]
       38 DUPCLOSURE                       R9 K17 [PROTO_9]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R6
       43 CALL                             R7 2 0
       44 RETURN                           R0 0
