PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K2 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+4]
        9 GETTABLEKS                       R2 R1 K4 ["data"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 NEWTABLE                         R3 0 0
       15 FASTCALL1                        TYPE R2 ; [+3]
       16 MOVE                             R5 R2
       17 GETIMPORT                        R4 K2 [type]
       19 CALL                             R4 1 1
       20 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+62]
       22 GETIMPORT                        R4 K6 [ipairs]
       24 MOVE                             R5 R2
       25 CALL                             R4 1 3
       26 FORGPREP_INEXT                   R4
       27 FASTCALL1                        TYPE R8 ; [+3]
       28 MOVE                             R10 R8
       29 GETIMPORT                        R9 K2 [type]
       31 CALL                             R9 1 1
       32 JUMPIFNOTEQKS                    R9 K3 ["table"] ; [+48]
       34 GETTABLEKS                       R10 R8 K7 ["id"]
       36 FASTCALL1                        TYPE R10 ; [+2]
       37 GETIMPORT                        R9 K2 [type]
       39 CALL                             R9 1 1
       40 JUMPIFNOTEQKS                    R9 K8 ["number"] ; [+40]
       42 GETTABLEKS                       R11 R8 K9 ["name"]
       44 FASTCALL1                        TYPE R11 ; [+2]
       45 GETIMPORT                        R10 K2 [type]
       47 CALL                             R10 1 1
       48 JUMPIFNOTEQKS                    R10 K10 ["string"] ; [+4]
       50 GETTABLEKS                       R9 R8 K9 ["name"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R9
       54 GETTABLEKS                       R12 R8 K11 ["privacyType"]
       56 FASTCALL1                        TYPE R12 ; [+2]
       57 GETIMPORT                        R11 K2 [type]
       59 CALL                             R11 1 1
       60 JUMPIFNOTEQKS                    R11 K10 ["string"] ; [+4]
       62 GETTABLEKS                       R10 R8 K11 ["privacyType"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R10
       66 DUPTABLE                         R13 K15 [{"GameId", "Name", "PrivacyType"}]
       67 GETTABLEKS                       R14 R8 K7 ["id"]
       69 SETTABLEKS                       R14 R13 K12 ["GameId"]
       71 SETTABLEKS                       R9 R13 K13 ["Name"]
       73 SETTABLEKS                       R10 R13 K14 ["PrivacyType"]
       75 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       77 MOVE                             R12 R3
       78 GETIMPORT                        R11 K17 [table.insert]
       80 CALL                             R11 2 0
       81 FORGLOOP                         R4 2 [inext] ; [-55]
       83 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETTABLEKS                       R7 R5 K2 ["GameId"]
        7 GETTABLE                         R6 R0 R7
        8 SETTABLEKS                       R6 R5 K3 ["Icon"]
       10 FORGLOOP                         R1 2 [inext] ; [-6]
       12 GETUPVAL                         R1 0
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R9 R6 K2 ["GameId"]
        9 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       11 MOVE                             R8 R1
       12 GETIMPORT                        R7 K5 [table.insert]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 [inext] ; [-9]
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R2 R2 K6 ["andThen"]
       24 CALL                             R2 2 1
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R2 R2 K7 ["catch"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["composeUrl"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["UNIVERSE_SEARCH_URL"]
        9 GETTABLEKS                       R4 R4 K3 ["Prefix"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["UNIVERSE_SEARCH_URL"]
       14 GETTABLEKS                       R5 R5 K4 ["Url"]
       16 DUPTABLE                         R6 K7 [{"creatorType", "creatorTargetId"}]
       17 SETTABLEKS                       R0 R6 K5 ["creatorType"]
       19 FASTCALL1                        TOSTRING R1 ; [+3]
       20 MOVE                             R8 R1
       21 GETIMPORT                        R7 K9 [tostring]
       23 CALL                             R7 1 1
       24 SETTABLEKS                       R7 R6 K6 ["creatorTargetId"]
       26 CALL                             R3 3 1
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R6 2
       29 MOVE                             R8 R3
       30 LOADNIL                          R9
       31 NAMECALL                         R6 R6 K10 ["get"]
       33 CALL                             R6 3 -1
       34 NAMECALL                         R4 R4 K11 ["parseJson"]
       36 CALL                             R4 -1 1
       37 DUPCLOSURE                       R6 K12 [PROTO_0]
       38 NAMECALL                         R4 R4 K13 ["andThen"]
       40 CALL                             R4 2 1
       41 DUPCLOSURE                       R6 K14 [PROTO_3]
       42 CAPTURE                          UPVAL U3
       43 NAMECALL                         R4 R4 K13 ["andThen"]
       45 CALL                             R4 2 -1
       46 RETURN                           R4 -1

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
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Src"]
       31 GETTABLEKS                       R5 R5 K11 ["Network"]
       33 GETTABLEKS                       R5 R5 K13 ["GetUniverseIcons"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R1 K14 ["Http"]
       38 GETTABLEKS                       R5 R5 K15 ["Networking"]
       40 GETTABLEKS                       R5 R5 K16 ["new"]
       42 DUPTABLE                         R6 K19 [{["isInternal"] = True}]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K20 [PROTO_4]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 RETURN                           R6 1
