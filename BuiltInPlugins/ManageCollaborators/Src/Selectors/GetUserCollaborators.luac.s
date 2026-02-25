PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        2 GETTABLEKS                       R1 R2 K1 ["NewPermissions"]
        4 JUMPIF                           R1 ; [+4]
        5 GETTABLEKS                       R2 R0 K0 ["Permissions"]
        7 GETTABLEKS                       R1 R2 K2 ["CurrentPermissions"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["UserSubjectKey"]
       12 GETTABLE                         R2 R1 R3
       13 JUMPIF                           R2 ; [+2]
       14 NEWTABLE                         R2 0 0
       16 GETTABLEKS                       R5 R0 K0 ["Permissions"]
       18 GETTABLEKS                       R4 R5 K2 ["CurrentPermissions"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K3 ["UserSubjectKey"]
       23 GETTABLE                         R3 R4 R5
       24 NEWTABLE                         R4 0 0
       26 GETIMPORT                        R5 K5 [pairs]
       28 MOVE                             R6 R2
       29 CALL                             R5 1 3
       30 FORGPREP_NEXT                    R5
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R11 R12 K6 ["SubjectNameKey"]
       34 GETTABLE                         R10 R9 R11
       35 GETUPVAL                         R11 1
       36 MOVE                             R12 R0
       37 MOVE                             R13 R8
       38 CALL                             R11 2 1
       39 JUMPIF                           R11 ; [+11]
       40 DUPTABLE                         R13 K9 [{"Name", "Id"}]
       41 SETTABLEKS                       R10 R13 K7 ["Name"]
       43 SETTABLEKS                       R8 R13 K8 ["Id"]
       45 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       47 MOVE                             R12 R4
       48 GETIMPORT                        R11 K12 [table.insert]
       50 CALL                             R11 2 0
       51 FORGLOOP                         R5 2 ; [-21]
       53 GETIMPORT                        R5 K14 [table.sort]
       55 MOVE                             R6 R4
       56 DUPCLOSURE                       R7 K15 [PROTO_0]
       57 CALL                             R5 2 0
       58 NEWTABLE                         R5 0 0
       60 NEWTABLE                         R6 0 0
       62 GETIMPORT                        R7 K17 [ipairs]
       64 MOVE                             R8 R4
       65 CALL                             R7 1 3
       66 FORGPREP_INEXT                   R7
       67 GETTABLEKS                       R13 R11 K8 ["Id"]
       69 GETTABLE                         R12 R3 R13
       70 JUMPIF                           R12 ; [+8]
       71 GETTABLEKS                       R14 R11 K8 ["Id"]
       73 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       75 MOVE                             R13 R5
       76 GETIMPORT                        R12 K12 [table.insert]
       78 CALL                             R12 2 0
       79 FORGLOOP                         R7 2 [inext] ; [-13]
       81 GETIMPORT                        R7 K17 [ipairs]
       83 MOVE                             R8 R4
       84 CALL                             R7 1 3
       85 FORGPREP_INEXT                   R7
       86 GETTABLEKS                       R13 R11 K8 ["Id"]
       88 GETTABLE                         R12 R3 R13
       89 JUMPIFNOT                        R12 ; [+8]
       90 GETTABLEKS                       R14 R11 K8 ["Id"]
       92 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       94 MOVE                             R13 R6
       95 GETIMPORT                        R12 K12 [table.insert]
       97 CALL                             R12 2 0
       98 FORGLOOP                         R7 2 [inext] ; [-13]
      100 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["PermissionsConstants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Selectors"]
       24 GETTABLEKS                       R3 R4 K9 ["IsUserOwner"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
