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
        0 DUPTABLE                         R1 K3 [{"_pages", "_idx", "IsFinished"}]
        1 SETTABLEKS                       R0 R1 K0 ["_pages"]
        3 LOADN                            R2 1
        4 SETTABLEKS                       R2 R1 K1 ["_idx"]
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K2 ["IsFinished"]
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 SETTABLEKS                       R2 R1 K5 ["GetCurrentPage"]
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 SETTABLEKS                       R2 R1 K7 ["AdvanceToNextPageAsync"]
       15 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 2
        3 NEWTABLE                         R2 0 2
        5 DUPTABLE                         R3 K1 [{"foo"}]
        6 LOADN                            R4 1
        7 SETTABLEKS                       R4 R3 K0 ["foo"]
        9 DUPTABLE                         R4 K1 [{"foo"}]
       10 LOADN                            R5 2
       11 SETTABLEKS                       R5 R4 K0 ["foo"]
       13 SETLIST                          R2 R3 2 [1]
       15 NEWTABLE                         R3 0 1
       17 DUPTABLE                         R4 K1 [{"foo"}]
       18 LOADN                            R5 3
       19 SETTABLEKS                       R5 R4 K0 ["foo"]
       21 SETLIST                          R3 R4 1 [1]
       23 SETLIST                          R1 R2 2 [1]
       25 CALL                             R0 1 1
       26 LOADNIL                          R1
       27 MOVE                             R2 R0
       28 CALL                             R1 1 1
       29 GETUPVAL                         R2 1
       30 LENGTH                           R3 R1
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R2 R2 K2 ["toEqual"]
       34 LOADN                            R3 3
       35 CALL                             R2 1 0
       36 GETUPVAL                         R2 1
       37 GETTABLEN                        R3 R1 1
       38 GETTABLEKS                       R3 R3 K0 ["foo"]
       40 CALL                             R2 1 1
       41 GETTABLEKS                       R2 R2 K2 ["toEqual"]
       43 LOADN                            R3 1
       44 CALL                             R2 1 0
       45 GETUPVAL                         R2 1
       46 GETTABLEN                        R3 R1 2
       47 GETTABLEKS                       R3 R3 K0 ["foo"]
       49 CALL                             R2 1 1
       50 GETTABLEKS                       R2 R2 K2 ["toEqual"]
       52 LOADN                            R3 2
       53 CALL                             R2 1 0
       54 GETUPVAL                         R2 1
       55 GETTABLEN                        R3 R1 3
       56 GETTABLEKS                       R3 R3 K0 ["foo"]
       58 CALL                             R2 1 1
       59 GETTABLEKS                       R2 R2 K2 ["toEqual"]
       61 LOADN                            R3 3
       62 CALL                             R2 1 0
       63 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 1
        3 NEWTABLE                         R2 0 1
        5 DUPTABLE                         R3 K1 [{"foo"}]
        6 LOADK                            R4 K2 ["only"]
        7 SETTABLEKS                       R4 R3 K0 ["foo"]
        9 SETLIST                          R2 R3 1 [1]
       11 SETLIST                          R1 R2 1 [1]
       13 CALL                             R0 1 1
       14 LOADNIL                          R1
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 1
       18 LENGTH                           R3 R1
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R2 R2 K3 ["toEqual"]
       22 LOADN                            R3 1
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 1
       25 GETTABLEN                        R3 R1 1
       26 GETTABLEKS                       R3 R3 K0 ["foo"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R2 R2 K3 ["toEqual"]
       31 LOADK                            R3 K2 ["only"]
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

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
        5 DUPTABLE                         R3 K1 [{"Id"}]
        6 LOADK                            R4 K2 ["A"]
        7 SETTABLEKS                       R4 R3 K0 ["Id"]
        9 DUPTABLE                         R4 K1 [{"Id"}]
       10 LOADK                            R5 K3 ["B"]
       11 SETTABLEKS                       R5 R4 K0 ["Id"]
       13 SETLIST                          R2 R3 2 [1]
       15 NEWTABLE                         R3 0 1
       17 DUPTABLE                         R4 K1 [{"Id"}]
       18 LOADK                            R5 K4 ["C"]
       19 SETTABLEKS                       R5 R4 K0 ["Id"]
       21 SETLIST                          R3 R4 1 [1]
       23 SETLIST                          R1 R2 2 [1]
       25 CALL                             R0 1 1
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K5 ["new"]
       29 LOADNIL                          R2
       30 CALL                             R1 1 1
       31 MOVE                             R4 R0
       32 NAMECALL                         R2 R1 K6 ["getUserFriendsNew"]
       34 CALL                             R2 2 1
       35 GETUPVAL                         R3 2
       36 MOVE                             R4 R2
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R3 R3 K7 ["toEqual"]
       40 NEWTABLE                         R4 0 3
       42 LOADK                            R5 K2 ["A"]
       43 LOADK                            R6 K3 ["B"]
       44 LOADK                            R7 K4 ["C"]
       45 SETLIST                          R4 R5 3 [1]
       47 CALL                             R3 1 0
       48 RETURN                           R0 0

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
