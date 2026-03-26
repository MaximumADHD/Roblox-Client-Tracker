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
        5 JUMPIFNOTEQKNIL                  R1 ; [+8]
        7 JUMPIF                           R0 ; [+5]
        8 GETUPVAL                         R2 2
        9 LOADK                            R4 K0 ["marketplaceManageableGroupsFailure"]
       10 NAMECALL                         R2 R2 K1 ["report"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R2 R1 K2 ["data"]
       16 JUMPIF                           R2 ; [+5]
       17 GETTABLEKS                       R2 R1 K3 ["groups"]
       19 JUMPIF                           R2 ; [+2]
       20 NEWTABLE                         R2 0 0
       22 NEWTABLE                         R3 0 0
       24 GETIMPORT                        R4 K5 [ipairs]
       26 MOVE                             R5 R2
       27 CALL                             R4 1 3
       28 FORGPREP_INEXT                   R4
       29 GETTABLEKS                       R9 R8 K6 ["id"]
       31 JUMPIFNOT                        R9 ; [+18]
       32 GETTABLEKS                       R9 R8 K7 ["name"]
       34 JUMPIFNOT                        R9 ; [+15]
       35 DUPTABLE                         R11 K8 [{"id", "name"}]
       36 GETTABLEKS                       R12 R8 K6 ["id"]
       38 SETTABLEKS                       R12 R11 K6 ["id"]
       40 GETTABLEKS                       R12 R8 K7 ["name"]
       42 SETTABLEKS                       R12 R11 K7 ["name"]
       44 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       46 MOVE                             R10 R3
       47 GETIMPORT                        R9 K11 [table.insert]
       49 CALL                             R9 2 0
       50 FORGLOOP                         R4 2 [inext] ; [-22]
       52 GETUPVAL                         R4 1
       53 JUMPIFNOT                        R4 ; [+3]
       54 GETUPVAL                         R4 3
       55 MOVE                             R5 R3
       56 CALL                             R4 1 0
       57 RETURN                           R0 0

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
        7 CAPTURE                          UPVAL U2
        8 CALL                             R1 1 0
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          REF R0
       11 CLOSEUPVALS                      R0
       12 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useState"]
        7 NEWTABLE                         R3 0 0
        9 CALL                             R2 1 2
       10 MOVE                             R4 R0
       11 JUMPIF                           R4 ; [+1]
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R7 0 1
       22 MOVE                             R8 R4
       23 SETLIST                          R7 R8 1 [1]
       25 CALL                             R5 2 0
       26 RETURN                           R2 1

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
       23 GETTABLEKS                       R4 R5 K12 ["Framework"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R5 R3 K13 ["ContextServices"]
       28 GETTABLEKS                       R4 R5 K14 ["Analytics"]
       30 GETIMPORT                        R5 K10 [require]
       32 GETTABLEKS                       R7 R2 K11 ["Packages"]
       34 GETTABLEKS                       R6 R7 K15 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K10 [require]
       39 GETTABLEKS                       R9 R2 K16 ["Src"]
       41 GETTABLEKS                       R8 R9 K17 ["Util"]
       43 GETTABLEKS                       R7 R8 K18 ["Url"]
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K19 [PROTO_2]
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R0
       50 DUPCLOSURE                       R8 K20 [PROTO_6]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R7
       54 RETURN                           R8 1
