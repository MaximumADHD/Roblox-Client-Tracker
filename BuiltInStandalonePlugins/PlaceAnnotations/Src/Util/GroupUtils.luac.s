PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["data"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K2 [ipairs]
        8 GETTABLEKS                       R2 R0 K0 ["data"]
       10 CALL                             R1 1 3
       11 FORGPREP_INEXT                   R1
       12 DUPTABLE                         R6 K5 [{"Username", "UserId"}]
       13 GETTABLEKS                       R7 R5 K6 ["username"]
       15 SETTABLEKS                       R7 R6 K3 ["Username"]
       17 GETTABLEKS                       R7 R5 K7 ["userId"]
       19 SETTABLEKS                       R7 R6 K4 ["UserId"]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R8 R5 K6 ["username"]
       24 SETTABLE                         R6 R7 R8
       25 GETUPVAL                         R8 1
       26 ADDK                             R7 R8 K8 [1]
       27 SETUPVAL                         R7 1
       28 FORGLOOP                         R1 2 [inext] ; [-17]
       30 GETTABLEKS                       R1 R0 K9 ["nextPageCursor"]
       32 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 1
        5 NAMECALL                         R0 R0 K0 ["await"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 2
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R2 4
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 SETUPVAL                         R2 3
       13 GETUPVAL                         R2 3
       14 RETURN                           R2 1
       15 GETUPVAL                         R2 5
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R2
        1 NEWTABLE                         R3 0 0
        3 GETUPVAL                         R5 0
        4 ORK                              R4 R5 K0 [0]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R3
        7 CAPTURE                          REF R4
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          REF R2
       13 CAPTURE                          VAL R5
       14 CAPTURE                          VAL R1
       15 GETIMPORT                        R7 K2 [pcall]
       17 NEWCLOSURE                       R8 P2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          REF R2
       22 CALL                             R7 1 2
       23 JUMPIFNOT                        R7 ; [+5]
       24 MOVE                             R9 R5
       25 MOVE                             R10 R8
       26 CALL                             R9 1 1
       27 MOVE                             R2 R9
       28 JUMP                             ; [+4]
       29 MOVE                             R9 R1
       30 MOVE                             R10 R8
       31 CALL                             R9 1 0
       32 LOADNIL                          R2
       33 JUMPIFEQKNIL                     R2 ; [+23]
       35 LOADN                            R7 136
       36 JUMPIFNOTLT                      R4 R7 ; [+20]
       38 GETIMPORT                        R7 K2 [pcall]
       40 NEWCLOSURE                       R8 P2
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          REF R2
       45 CALL                             R7 1 2
       46 JUMPIFNOT                        R7 ; [+5]
       47 MOVE                             R9 R5
       48 MOVE                             R10 R8
       49 CALL                             R9 1 1
       50 MOVE                             R2 R9
       51 JUMP                             ; [+4]
       52 MOVE                             R9 R1
       53 MOVE                             R10 R8
       54 CALL                             R9 1 0
       55 LOADNIL                          R2
       56 JUMPBACK                         ; [-24]
       57 MOVE                             R7 R0
       58 MOVE                             R8 R3
       59 CALL                             R7 1 0
       60 CLOSEUPVALS                      R2
       61 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 GETIMPORT                        R5 K1 [pairs]
        6 MOVE                             R6 R1
        7 CALL                             R5 1 3
        8 FORGPREP_NEXT                    R5
        9 MOVE                             R11 R4
       10 GETUPVAL                         R12 0
       11 MOVE                             R13 R0
       12 MOVE                             R14 R9
       13 MOVE                             R15 R2
       14 CALL                             R12 3 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R10 K4 [table.insert]
       18 CALL                             R10 -1 0
       19 FORGLOOP                         R5 2 ; [-11]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K5 ["all"]
       24 MOVE                             R6 R4
       25 CALL                             R5 1 1
       26 NAMECALL                         R5 R5 K6 ["await"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K8 [ipairs]
       31 MOVE                             R7 R5
       32 CALL                             R6 1 3
       33 FORGPREP_INEXT                   R6
       34 LOADNIL                          R11
       35 GETTABLEN                        R12 R10 1
       36 JUMPIFNOT                        R12 ; [+9]
       37 GETTABLEN                        R13 R10 1
       38 FASTCALL1                        TYPE R13 ; [+2]
       39 GETIMPORT                        R12 K10 [type]
       41 CALL                             R12 1 1
       42 JUMPIFNOTEQKS                    R12 K2 ["table"] ; [+3]
       44 GETTABLEN                        R11 R10 1
       45 JUMP                             ; [+1]
       46 MOVE                             R11 R10
       47 JUMPIFNOT                        R11 ; [+9]
       48 GETUPVAL                         R12 2
       49 GETTABLEKS                       R12 R12 K11 ["Dictionary"]
       51 GETTABLEKS                       R12 R12 K12 ["join"]
       53 MOVE                             R13 R3
       54 MOVE                             R14 R11
       55 CALL                             R12 2 1
       56 MOVE                             R3 R12
       57 FORGLOOP                         R6 2 [inext] ; [-24]
       59 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K0 ["await"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+33]
        7 GETTABLEKS                       R2 R1 K1 ["data"]
        9 JUMPIFNOT                        R2 ; [+30]
       10 NEWTABLE                         R2 0 0
       12 GETIMPORT                        R3 K3 [ipairs]
       14 GETTABLEKS                       R4 R1 K1 ["data"]
       16 CALL                             R3 1 3
       17 FORGPREP_INEXT                   R3
       18 GETTABLEKS                       R8 R7 K4 ["name"]
       20 NAMECALL                         R8 R8 K5 ["lower"]
       22 CALL                             R8 1 1
       23 NAMECALL                         R10 R0 K5 ["lower"]
       25 CALL                             R10 1 -1
       26 NAMECALL                         R8 R8 K6 ["find"]
       28 CALL                             R8 -1 1
       29 JUMPIFNOT                        R8 ; [+7]
       30 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       32 MOVE                             R9 R2
       33 MOVE                             R10 R7
       34 GETIMPORT                        R8 K9 [table.insert]
       36 CALL                             R8 2 0
       37 FORGLOOP                         R3 2 [inext] ; [-20]
       39 RETURN                           R2 1
       40 NEWTABLE                         R2 0 0
       42 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 NAMECALL                         R3 R3 K0 ["await"]
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+32]
        7 GETTABLEKS                       R4 R3 K1 ["data"]
        9 JUMPIFNOT                        R4 ; [+29]
       10 JUMPIFNOT                        R2 ; [+28]
       11 GETIMPORT                        R4 K3 [ipairs]
       13 GETTABLEKS                       R5 R3 K1 ["data"]
       15 CALL                             R4 1 3
       16 FORGPREP_INEXT                   R4
       17 GETTABLEKS                       R9 R8 K4 ["group"]
       19 JUMPIFNOT                        R9 ; [+17]
       20 GETTABLEKS                       R9 R8 K4 ["group"]
       22 GETTABLEKS                       R9 R9 K5 ["id"]
       24 JUMPIFNOTEQ                      R9 R0 ; [+12]
       26 GETTABLEKS                       R9 R8 K6 ["role"]
       28 JUMPIFNOT                        R9 ; [+8]
       29 GETTABLEKS                       R10 R8 K6 ["role"]
       31 GETTABLEKS                       R10 R10 K5 ["id"]
       33 GETTABLE                         R9 R2 R10
       34 JUMPIFNOT                        R9 ; [+2]
       35 LOADB                            R9 1
       36 RETURN                           R9 1
       37 FORGLOOP                         R4 2 [inext] ; [-21]
       39 LOADB                            R4 0
       40 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 NAMECALL                         R2 R2 K0 ["await"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+28]
        7 GETTABLEKS                       R3 R2 K1 ["data"]
        9 JUMPIFNOT                        R3 ; [+25]
       10 GETIMPORT                        R3 K3 [ipairs]
       12 GETTABLEKS                       R4 R2 K1 ["data"]
       14 CALL                             R3 1 3
       15 FORGPREP_INEXT                   R3
       16 GETTABLEKS                       R8 R7 K4 ["group"]
       18 JUMPIFNOT                        R8 ; [+14]
       19 GETTABLEKS                       R8 R7 K4 ["group"]
       21 GETTABLEKS                       R8 R8 K5 ["id"]
       23 JUMPIFNOTEQ                      R8 R0 ; [+9]
       25 GETTABLEKS                       R8 R7 K6 ["role"]
       27 JUMPIFNOT                        R8 ; [+5]
       28 GETTABLEKS                       R8 R7 K6 ["role"]
       30 GETTABLEKS                       R8 R8 K5 ["id"]
       32 RETURN                           R8 1
       33 FORGLOOP                         R3 2 [inext] ; [-18]
       35 LOADNIL                          R3
       36 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Networking"]
       20 GETTABLEKS                       R3 R3 K10 ["Requests"]
       22 GETTABLEKS                       R3 R3 K11 ["GetUserSearchResults"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Networking"]
       31 GETTABLEKS                       R4 R4 K10 ["Requests"]
       33 GETTABLEKS                       R4 R4 K12 ["GetUsersGroupRoles"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K8 ["Src"]
       40 GETTABLEKS                       R5 R5 K9 ["Networking"]
       42 GETTABLEKS                       R5 R5 K10 ["Requests"]
       44 GETTABLEKS                       R5 R5 K13 ["GetUsersInRoleset"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K8 ["Src"]
       51 GETTABLEKS                       R6 R6 K14 ["Util"]
       53 GETTABLEKS                       R6 R6 K15 ["TypedPromise"]
       55 CALL                             R5 1 1
       56 GETTABLEKS                       R5 R5 K16 ["PromiseFactory"]
       58 DUPCLOSURE                       R6 K17 [PROTO_4]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 DUPCLOSURE                       R7 K18 [PROTO_5]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R1
       65 DUPCLOSURE                       R8 K19 [PROTO_6]
       66 CAPTURE                          VAL R2
       67 DUPCLOSURE                       R9 K20 [PROTO_7]
       68 CAPTURE                          VAL R3
       69 DUPCLOSURE                       R10 K21 [PROTO_8]
       70 CAPTURE                          VAL R3
       71 DUPTABLE                         R11 K27 [{"getRolesetUsersPromise", "getAllUsersInRolesets", "searchUsers", "userHasRoleset", "maybeGetUserRolesetInGroup"}]
       72 SETTABLEKS                       R6 R11 K22 ["getRolesetUsersPromise"]
       74 SETTABLEKS                       R7 R11 K23 ["getAllUsersInRolesets"]
       76 SETTABLEKS                       R8 R11 K24 ["searchUsers"]
       78 SETTABLEKS                       R9 R11 K25 ["userHasRoleset"]
       80 SETTABLEKS                       R10 R11 K26 ["maybeGetUserRolesetInGroup"]
       82 RETURN                           R11 1
