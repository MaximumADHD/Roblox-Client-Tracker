PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAsyncFullUrl"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["manageableGroupsUrl"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K2 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 2
       10 JUMPIF                           R1 ; [+3]
       11 LOADB                            R3 0
       12 LOADNIL                          R4
       13 RETURN                           R3 2
       14 GETIMPORT                        R3 K2 [pcall]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R2
       19 CALL                             R3 1 2
       20 JUMPIF                           R3 ; [+3]
       21 LOADB                            R5 0
       22 LOADNIL                          R6
       23 RETURN                           R5 2
       24 LOADB                            R5 1
       25 MOVE                             R6 R4
       26 RETURN                           R5 2

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R1 K0 ["data"]
       10 JUMPIF                           R2 ; [+5]
       11 GETTABLEKS                       R2 R1 K1 ["groups"]
       13 JUMPIF                           R2 ; [+2]
       14 NEWTABLE                         R2 0 0
       16 NEWTABLE                         R3 0 0
       18 GETIMPORT                        R4 K3 [ipairs]
       20 MOVE                             R5 R2
       21 CALL                             R4 1 3
       22 FORGPREP_INEXT                   R4
       23 GETTABLEKS                       R9 R8 K4 ["id"]
       25 JUMPIFNOT                        R9 ; [+18]
       26 GETTABLEKS                       R9 R8 K5 ["name"]
       28 JUMPIFNOT                        R9 ; [+15]
       29 DUPTABLE                         R11 K6 [{"id", "name"}]
       30 GETTABLEKS                       R12 R8 K4 ["id"]
       32 SETTABLEKS                       R12 R11 K4 ["id"]
       34 GETTABLEKS                       R12 R8 K5 ["name"]
       36 SETTABLEKS                       R12 R11 K5 ["name"]
       38 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       40 MOVE                             R10 R3
       41 GETIMPORT                        R9 K9 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 [inext] ; [-22]
       46 GETUPVAL                         R4 1
       47 JUMPIFNOT                        R4 ; [+3]
       48 GETUPVAL                         R4 2
       49 MOVE                             R5 R3
       50 CALL                             R4 1 0
       51 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R0 1
        1 GETIMPORT                        R1 K2 [task.spawn]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 1 0
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          REF R0
       10 CLOSEUPVALS                      R0
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 MOVE                             R3 R0
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K1 ["useEffect"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R6 0 1
       17 MOVE                             R7 R3
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 0
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpRbxApiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AvatarCompatibilityPreviewer"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R5 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R7 R2 K13 ["Src"]
       30 GETTABLEKS                       R6 R7 K14 ["Util"]
       32 GETTABLEKS                       R5 R6 K15 ["Url"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K16 [PROTO_2]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 DUPCLOSURE                       R6 K17 [PROTO_6]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 RETURN                           R6 1
