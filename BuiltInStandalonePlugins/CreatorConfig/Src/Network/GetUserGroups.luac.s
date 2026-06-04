PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K2 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+4]
        9 GETTABLEKS                       R2 R1 K4 ["groups"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 NEWTABLE                         R3 0 0
       15 FASTCALL1                        TYPE R2 ; [+3]
       16 MOVE                             R5 R2
       17 GETIMPORT                        R4 K2 [type]
       19 CALL                             R4 1 1
       20 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+48]
       22 GETIMPORT                        R4 K6 [ipairs]
       24 MOVE                             R5 R2
       25 CALL                             R4 1 3
       26 FORGPREP_INEXT                   R4
       27 FASTCALL1                        TYPE R8 ; [+3]
       28 MOVE                             R10 R8
       29 GETIMPORT                        R9 K2 [type]
       31 CALL                             R9 1 1
       32 JUMPIFNOTEQKS                    R9 K3 ["table"] ; [+34]
       34 GETTABLEKS                       R10 R8 K7 ["id"]
       36 FASTCALL1                        TYPE R10 ; [+2]
       37 GETIMPORT                        R9 K2 [type]
       39 CALL                             R9 1 1
       40 JUMPIFNOTEQKS                    R9 K8 ["number"] ; [+26]
       42 GETTABLEKS                       R11 R8 K9 ["name"]
       44 FASTCALL1                        TYPE R11 ; [+2]
       45 GETIMPORT                        R10 K2 [type]
       47 CALL                             R10 1 1
       48 JUMPIFNOTEQKS                    R10 K10 ["string"] ; [+4]
       50 GETTABLEKS                       R9 R8 K9 ["name"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R9
       54 DUPTABLE                         R12 K11 [{"id", "name"}]
       55 GETTABLEKS                       R13 R8 K7 ["id"]
       57 SETTABLEKS                       R13 R12 K7 ["id"]
       59 SETTABLEKS                       R9 R12 K9 ["name"]
       61 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       63 MOVE                             R11 R3
       64 GETIMPORT                        R10 K13 [table.insert]
       66 CALL                             R10 2 0
       67 FORGLOOP                         R4 2 [inext] ; [-41]
       69 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["composeUrl"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["CREATOR_GROUPS_SEARCH_URL"]
        9 GETTABLEKS                       R2 R2 K3 ["Prefix"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["CREATOR_GROUPS_SEARCH_URL"]
       14 GETTABLEKS                       R3 R3 K4 ["Url"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 2
       18 GETUPVAL                         R4 2
       19 MOVE                             R6 R1
       20 LOADNIL                          R7
       21 NAMECALL                         R4 R4 K5 ["get"]
       23 CALL                             R4 3 -1
       24 NAMECALL                         R2 R2 K6 ["parseJson"]
       26 CALL                             R2 -1 1
       27 DUPCLOSURE                       R4 K7 [PROTO_0]
       28 NAMECALL                         R2 R2 K8 ["andThen"]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorConfig"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["RobloxAPI"]
       16 GETTABLEKS                       R2 R2 K9 ["Url"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Network"]
       24 GETTABLEKS                       R4 R4 K12 ["Urls"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R1 K13 ["Http"]
       29 GETTABLEKS                       R4 R4 K14 ["Networking"]
       31 GETTABLEKS                       R4 R4 K15 ["new"]
       33 DUPTABLE                         R5 K17 [{"isInternal"}]
       34 LOADB                            R6 1
       35 SETTABLEKS                       R6 R5 K16 ["isInternal"]
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K18 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 RETURN                           R5 1
