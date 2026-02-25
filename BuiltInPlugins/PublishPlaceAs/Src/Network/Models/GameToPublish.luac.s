PROTO_0:
        0 DUPTABLE                         R0 K5 [{"creatorTargetId", "rootPlaceId", "name", "universeId", "privateType"}]
        1 LOADK                            R1 K6 [22915773]
        2 SETTABLEKS                       R1 R0 K0 ["creatorTargetId"]
        4 LOADK                            R1 K7 [10395446]
        5 SETTABLEKS                       R1 R0 K1 ["rootPlaceId"]
        7 LOADK                            R1 K8 ["yeet game"]
        8 SETTABLEKS                       R1 R0 K2 ["name"]
       10 LOADK                            R1 K9 [149757]
       11 SETTABLEKS                       R1 R0 K3 ["universeId"]
       13 LOADK                            R1 K10 ["Public"]
       14 SETTABLEKS                       R1 R0 K4 ["privateType"]
       16 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["creatorTargetId"]
        2 NOT                              R1 R2
        3 GETTABLEKS                       R3 R0 K1 ["rootPlaceId"]
        5 NOT                              R2 R3
        6 GETTABLEKS                       R3 R0 K2 ["id"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 JUMPIF                           R1 ; [+1]
       10 JUMPIFNOT                        R2 ; [+3]
       11 LOADB                            R3 0
       12 LOADK                            R4 K3 ["Game.fromJsonData received JSON without required fields"]
       13 RETURN                           R3 2
       14 GETTABLEKS                       R4 R0 K2 ["id"]
       16 FASTCALL1                        TYPE R4 ; [+2]
       17 GETIMPORT                        R3 K5 [type]
       19 CALL                             R3 1 1
       20 JUMPIFEQKS                       R3 K6 ["number"] ; [+4]
       22 LOADB                            R3 0
       23 LOADK                            R4 K7 ["Game.fromJsonData expects id to be a number"]
       24 RETURN                           R3 2
       25 GETTABLEKS                       R4 R0 K0 ["creatorTargetId"]
       27 FASTCALL1                        TYPE R4 ; [+2]
       28 GETIMPORT                        R3 K5 [type]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K6 ["number"] ; [+4]
       33 LOADB                            R3 0
       34 LOADK                            R4 K8 ["Game.fromJsonData expects creatorId to be a number"]
       35 RETURN                           R3 2
       36 GETTABLEKS                       R4 R0 K1 ["rootPlaceId"]
       38 FASTCALL1                        TYPE R4 ; [+2]
       39 GETIMPORT                        R3 K5 [type]
       41 CALL                             R3 1 1
       42 JUMPIFEQKS                       R3 K6 ["number"] ; [+4]
       44 LOADB                            R3 0
       45 LOADK                            R4 K9 ["Game.fromJsonData expects rootPlaceId to be a number"]
       46 RETURN                           R3 2
       47 GETTABLEKS                       R4 R0 K10 ["name"]
       49 FASTCALL1                        TYPE R4 ; [+2]
       50 GETIMPORT                        R3 K5 [type]
       52 CALL                             R3 1 1
       53 JUMPIFEQKS                       R3 K11 ["string"] ; [+4]
       55 LOADB                            R3 0
       56 LOADK                            R4 K12 ["Game.fromJsonData expects name to be a string"]
       57 RETURN                           R3 2
       58 GETTABLEKS                       R4 R0 K13 ["privacyType"]
       60 FASTCALL1                        TYPE R4 ; [+2]
       61 GETIMPORT                        R3 K5 [type]
       63 CALL                             R3 1 1
       64 JUMPIFEQKS                       R3 K11 ["string"] ; [+4]
       66 LOADB                            R3 0
       67 LOADK                            R4 K14 ["Game.fromJsonData expects privacyType to be a string"]
       68 RETURN                           R3 2
       69 LOADB                            R3 1
       70 DUPTABLE                         R4 K17 [{"creatorId", "rootPlaceId", "name", "universeId", "privacyType"}]
       71 GETTABLEKS                       R5 R0 K0 ["creatorTargetId"]
       73 SETTABLEKS                       R5 R4 K15 ["creatorId"]
       75 GETTABLEKS                       R5 R0 K1 ["rootPlaceId"]
       77 SETTABLEKS                       R5 R4 K1 ["rootPlaceId"]
       79 GETTABLEKS                       R5 R0 K10 ["name"]
       81 SETTABLEKS                       R5 R4 K10 ["name"]
       83 GETTABLEKS                       R5 R0 K2 ["id"]
       85 SETTABLEKS                       R5 R4 K16 ["universeId"]
       87 GETTABLEKS                       R5 R0 K13 ["privacyType"]
       89 SETTABLEKS                       R5 R4 K13 ["privacyType"]
       91 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["mock"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["fromJsonData"]
        9 RETURN                           R0 1
