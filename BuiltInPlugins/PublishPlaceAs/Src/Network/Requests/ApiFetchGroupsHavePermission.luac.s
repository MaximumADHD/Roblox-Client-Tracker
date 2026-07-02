PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R1 K1 ["groups"]
        7 DUPTABLE                         R3 K2 [{"groups"}]
        8 NEWTABLE                         R4 0 0
       10 SETTABLEKS                       R4 R3 K1 ["groups"]
       12 GETIMPORT                        R4 K4 [pairs]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 3
       16 FORGPREP_NEXT                    R4
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K5 ["fromJsonData"]
       20 MOVE                             R10 R8
       21 CALL                             R9 1 2
       22 JUMPIFNOT                        R9 ; [+9]
       23 GETTABLEKS                       R12 R3 K1 ["groups"]
       25 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
       27 MOVE                             R13 R10
       28 GETIMPORT                        R11 K8 [table.insert]
       30 CALL                             R11 2 0
       31 JUMP                             ; [+6]
       32 GETIMPORT                        R11 K10 [error]
       34 LOADK                            R13 K11 ["Parsing error for ApiFetchGroupsCanManage: "]
       35 MOVE                             R14 R10
       36 CONCAT                           R12 R13 R14
       37 CALL                             R11 1 0
       38 FORGLOOP                         R4 2 ; [-22]
       40 RETURN                           R3 1

PROTO_1:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R1 ; [+5]
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R2 K0 ["StudioPublishNewPlace"]
        4 JUMP                             ; [+6]
        5 LOADK                            R2 K1 ["StudioSaveNewPlace"]
        6 JUMP                             ; [+4]
        7 JUMPIFNOT                        R0 ; [+2]
        8 LOADK                            R2 K2 ["StudioPublishExistingPlace"]
        9 JUMP                             ; [+1]
       10 LOADK                            R2 K3 ["StudioSaveExistingPlace"]
       11 DUPTABLE                         R3 K8 [{["Url"], ["Method"] = "GET", ["Params"]}]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K9 ["BuildRobloxUrl"]
       15 LOADK                            R5 K10 ["apis"]
       16 LOADK                            R6 K11 ["creator-home-api/v1/groups"]
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K4 ["Url"]
       20 DUPTABLE                         R4 K13 [{"surface"}]
       21 SETTABLEKS                       R2 R4 K12 ["surface"]
       23 SETTABLEKS                       R4 R3 K7 ["Params"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K14 ["Request"]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R6 K15 [PROTO_0]
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U2
       33 NAMECALL                         R4 R4 K16 ["andThen"]
       35 CALL                             R4 2 -1
       36 RETURN                           R4 -1

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
       30 GETTABLEKS                       R4 R4 K10 ["Network"]
       32 GETTABLEKS                       R4 R4 K12 ["Models"]
       34 GETTABLEKS                       R4 R4 K13 ["Group"]
       36 CALL                             R3 1 1
       37 DUPCLOSURE                       R4 K14 [PROTO_1]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 RETURN                           R4 1
