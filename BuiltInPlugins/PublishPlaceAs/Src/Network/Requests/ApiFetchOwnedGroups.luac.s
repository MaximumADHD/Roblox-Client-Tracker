PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K2 [pairs]
        9 GETTABLEKS                       R4 R1 K3 ["data"]
       11 CALL                             R3 1 3
       12 FORGPREP_NEXT                    R3
       13 GETTABLEKS                       R9 R7 K4 ["role"]
       15 GETTABLEKS                       R8 R9 K5 ["rank"]
       17 JUMPIFNOTEQKN                    R8 K6 [255] ; [+11]
       19 GETTABLEKS                       R11 R7 K7 ["group"]
       21 GETTABLEKS                       R10 R11 K8 ["id"]
       23 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       25 MOVE                             R9 R2
       26 GETIMPORT                        R8 K11 [table.insert]
       28 CALL                             R8 2 0
       29 FORGLOOP                         R3 2 ; [-17]
       31 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 DUPTABLE                         R2 K3 [{"Url", "Method"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K4 ["BuildRobloxUrl"]
        8 LOADK                            R4 K5 ["groups"]
        9 LOADK                            R5 K6 ["v2/users/%d/groups/roles"]
       10 MOVE                             R6 R1
       11 CALL                             R3 3 1
       12 SETTABLEKS                       R3 R2 K1 ["Url"]
       14 LOADK                            R3 K7 ["GET"]
       15 SETTABLEKS                       R3 R2 K2 ["Method"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K8 ["Request"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 DUPCLOSURE                       R5 K9 [PROTO_0]
       23 CAPTURE                          UPVAL U2
       24 NAMECALL                         R3 R3 K10 ["andThen"]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R5 R1 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Network"]
       23 GETTABLEKS                       R3 R4 K11 ["Http"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K1 [game]
       28 LOADK                            R5 K12 ["StudioService"]
       29 NAMECALL                         R3 R3 K3 ["GetService"]
       31 CALL                             R3 2 1
       32 DUPCLOSURE                       R4 K13 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 RETURN                           R4 1
