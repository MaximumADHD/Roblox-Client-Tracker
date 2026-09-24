PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K2 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+13]
       12 GETTABLEKS                       R2 R1 K4 ["placeVersions"]
       14 JUMPIFEQKNIL                     R2 ; [+13]
       16 GETTABLEKS                       R3 R1 K4 ["placeVersions"]
       18 FASTCALL1                        TYPE R3 ; [+2]
       19 GETIMPORT                        R2 K2 [type]
       21 CALL                             R2 1 1
       22 JUMPIFEQKS                       R2 K3 ["table"] ; [+5]
       24 GETIMPORT                        R2 K6 [error]
       26 LOADK                            R3 K7 ["Place version history response did not contain a placeVersions array"]
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K8 ["hasPublishedVersion"]
       31 MOVE                             R3 R1
       32 CALL                             R2 1 -1
       33 RETURN                           R2 -1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{[1], ["Method"] = "GET", ["Params"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K5 ["BuildRobloxUrl"]
        4 LOADK                            R3 K6 ["apis"]
        5 LOADK                            R4 K7 ["place-version-history-api/v1/%d/history"]
        6 MOVE                             R5 R0
        7 CALL                             R2 3 1
        8 SETTABLEKS                       R2 R1 K0 ["Url"]
       10 DUPTABLE                         R2 K12 [{["isPublished"] = "true", ["pageSize"] = "1"}]
       11 SETTABLEKS                       R2 R1 K3 ["Params"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K13 ["Request"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 1
       18 DUPCLOSURE                       R4 K14 [PROTO_0]
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 NAMECALL                         R2 R2 K15 ["andThen"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Network"]
       23 GETTABLEKS                       R3 R3 K11 ["Http"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R4 R1 K9 ["Src"]
       30 GETTABLEKS                       R4 R4 K12 ["Util"]
       32 GETTABLEKS                       R4 R4 K13 ["PublishedVersionUtils"]
       34 CALL                             R3 1 1
       35 DUPCLOSURE                       R4 K14 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R3
       39 RETURN                           R4 1
