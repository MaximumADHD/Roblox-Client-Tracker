PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Rank"]
        2 GETTABLEKS                       R4 R1 K0 ["Rank"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        2 GETTABLEKS                       R2 R2 K1 ["NewPermissions"]
        4 JUMPIF                           R2 ; [+4]
        5 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        7 GETTABLEKS                       R2 R2 K2 ["CurrentPermissions"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["RoleSubjectKey"]
       12 GETTABLE                         R3 R2 R4
       13 NEWTABLE                         R4 0 0
       15 GETIMPORT                        R5 K5 [pairs]
       17 MOVE                             R6 R3
       18 CALL                             R5 1 3
       19 FORGPREP_NEXT                    R5
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K6 ["GroupIdKey"]
       23 GETTABLE                         R10 R9 R11
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R12 R12 K7 ["SubjectRankKey"]
       27 GETTABLE                         R11 R9 R12
       28 JUMPIFNOTEQ                      R1 R10 ; [+12]
       30 DUPTABLE                         R14 K10 [{"Rank", "Id"}]
       31 SETTABLEKS                       R11 R14 K8 ["Rank"]
       33 SETTABLEKS                       R8 R14 K9 ["Id"]
       35 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       37 MOVE                             R13 R4
       38 GETIMPORT                        R12 K13 [table.insert]
       40 CALL                             R12 2 0
       41 FORGLOOP                         R5 2 ; [-22]
       43 GETIMPORT                        R5 K15 [table.sort]
       45 MOVE                             R6 R4
       46 DUPCLOSURE                       R7 K16 [PROTO_0]
       47 CALL                             R5 2 0
       48 NEWTABLE                         R5 0 0
       50 GETIMPORT                        R6 K18 [ipairs]
       52 MOVE                             R7 R4
       53 CALL                             R6 1 3
       54 FORGPREP_INEXT                   R6
       55 GETTABLEKS                       R13 R10 K9 ["Id"]
       57 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       59 MOVE                             R12 R5
       60 GETIMPORT                        R11 K13 [table.insert]
       62 CALL                             R11 2 0
       63 FORGLOOP                         R6 2 [inext] ; [-9]
       65 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["PermissionsConstants"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
