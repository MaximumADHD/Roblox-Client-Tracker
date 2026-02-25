PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["parentGame"]
        3 LOADN                            R3 1
        4 GETTABLEKS                       R4 R0 K1 ["places"]
        6 LENGTH                           R1 R4
        7 LOADN                            R2 1
        8 FORNPREP                         R1
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R7 1
       11 LENGTH                           R6 R7
       12 ADDK                             R5 R6 K2 [1]
       13 GETTABLEKS                       R7 R0 K1 ["places"]
       15 GETTABLE                         R6 R7 R3
       16 SETTABLE                         R6 R4 R5
       17 FORNLOOP                         R1
       18 GETUPVAL                         R1 1
       19 SETTABLEKS                       R1 R0 K1 ["places"]
       21 GETUPVAL                         R1 2
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R0
       24 CALL                             R3 1 -1
       25 NAMECALL                         R1 R1 K3 ["dispatch"]
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R6 2
        3 GETTABLEKS                       R5 R6 K0 ["QUERY_STATE"]
        5 GETTABLEKS                       R4 R5 K1 ["QUERY_STATE_FAILED"]
        7 CALL                             R3 1 -1
        8 NAMECALL                         R1 R1 K2 ["dispatch"]
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOTEQ                      R1 R2 ; [+3]
        4 GETUPVAL                         R1 0
        5 JUMPIF                           R1 ; [+78]
        6 GETUPVAL                         R1 0
        7 SETUPVAL                         R1 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K0 ["name"]
       11 FASTCALL1                        TYPE R4 ; [+2]
       12 GETIMPORT                        R3 K2 [type]
       14 CALL                             R3 1 1
       15 JUMPIFEQKS                       R3 K3 ["string"] ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       21 LOADK                            R3 K4 ["LoadExistingPlaces.parentGame must have a string name"]
       22 GETIMPORT                        R1 K6 [assert]
       24 CALL                             R1 2 0
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R4 R5 K7 ["universeId"]
       28 FASTCALL1                        TYPE R4 ; [+2]
       29 GETIMPORT                        R3 K2 [type]
       31 CALL                             R3 1 1
       32 JUMPIFEQKS                       R3 K8 ["number"] ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       38 LOADK                            R3 K9 ["LoadExistingPlaces.parentGame must have a number universeId"]
       39 GETIMPORT                        R1 K6 [assert]
       41 CALL                             R1 2 0
       42 GETUPVAL                         R3 3
       43 GETUPVAL                         R4 2
       44 CALL                             R3 1 -1
       45 NAMECALL                         R1 R0 K10 ["dispatch"]
       47 CALL                             R1 -1 0
       48 GETUPVAL                         R1 0
       49 JUMPIF                           R1 ; [+10]
       50 GETUPVAL                         R3 4
       51 GETUPVAL                         R6 5
       52 GETTABLEKS                       R5 R6 K11 ["QUERY_STATE"]
       54 GETTABLEKS                       R4 R5 K12 ["QUERY_STATE_QUERYING"]
       56 CALL                             R3 1 -1
       57 NAMECALL                         R1 R0 K10 ["dispatch"]
       59 CALL                             R1 -1 0
       60 GETUPVAL                         R1 6
       61 DUPTABLE                         R2 K13 [{"universeId"}]
       62 GETUPVAL                         R4 2
       63 GETTABLEKS                       R3 R4 K7 ["universeId"]
       65 SETTABLEKS                       R3 R2 K7 ["universeId"]
       67 DUPTABLE                         R3 K15 [{"cursor"}]
       68 GETUPVAL                         R4 0
       69 SETTABLEKS                       R4 R3 K14 ["cursor"]
       71 CALL                             R1 2 1
       72 NEWCLOSURE                       R4 P0
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U8
       77 NEWCLOSURE                       R5 P1
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          UPVAL U5
       81 NAMECALL                         R2 R1 K16 ["andThen"]
       83 CALL                             R2 3 0
       84 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Actions"]
       15 GETTABLEKS                       R2 R3 K7 ["SetPlaceInfo"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K6 ["Actions"]
       24 GETTABLEKS                       R3 R4 K8 ["SetChoosePlaceQueryState"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R6 R0 K5 ["Src"]
       31 GETTABLEKS                       R5 R6 K6 ["Actions"]
       33 GETTABLEKS                       R4 R5 K9 ["SetSelectedGame"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R8 R0 K5 ["Src"]
       40 GETTABLEKS                       R7 R8 K10 ["Network"]
       42 GETTABLEKS                       R6 R7 K11 ["Requests"]
       44 GETTABLEKS                       R5 R6 K12 ["ApiFetchPlacesByUniverseId"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R8 R0 K5 ["Src"]
       51 GETTABLEKS                       R7 R8 K13 ["Resources"]
       53 GETTABLEKS                       R6 R7 K14 ["Constants"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K16 [game]
       58 LOADK                            R8 K17 ["RbxAnalyticsService"]
       59 NAMECALL                         R6 R6 K18 ["GetService"]
       61 CALL                             R6 2 1
       62 LOADNIL                          R7
       63 NEWTABLE                         R8 0 0
       65 NEWCLOSURE                       R9 P0
       66 CAPTURE                          REF R7
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R1
       73 CLOSEUPVALS                      R7
       74 RETURN                           R9 1
