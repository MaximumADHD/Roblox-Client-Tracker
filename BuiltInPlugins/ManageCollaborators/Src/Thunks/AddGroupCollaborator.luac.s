PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["groupMetadataController"]
        5 GETUPVAL                         R6 0
        6 NAMECALL                         R4 R3 K2 ["getGroupMetadata"]
        8 CALL                             R4 2 1
        9 GETTABLEKS                       R4 R4 K3 ["name"]
       11 GETTABLEKS                       R5 R2 K4 ["GroupMetadata"]
       13 GETTABLEKS                       R5 R5 K5 ["NewGroupMetadata"]
       15 JUMPIF                           R5 ; [+4]
       16 GETTABLEKS                       R5 R2 K4 ["GroupMetadata"]
       18 GETTABLEKS                       R5 R5 K6 ["CurrentGroupMetadata"]
       20 GETUPVAL                         R6 1
       21 MOVE                             R7 R5
       22 NEWTABLE                         R8 1 0
       24 GETUPVAL                         R9 0
       25 DUPTABLE                         R10 K8 [{"Name"}]
       26 SETTABLEKS                       R4 R10 K7 ["Name"]
       28 SETTABLE                         R10 R8 R9
       29 CALL                             R6 2 1
       30 GETTABLEKS                       R7 R2 K9 ["Permissions"]
       32 GETTABLEKS                       R7 R7 K10 ["NewPermissions"]
       34 JUMPIF                           R7 ; [+4]
       35 GETTABLEKS                       R7 R2 K9 ["Permissions"]
       37 GETTABLEKS                       R7 R7 K11 ["CurrentPermissions"]
       39 GETUPVAL                         R10 0
       40 NAMECALL                         R8 R3 K12 ["getRolesets"]
       42 CALL                             R8 2 1
       43 GETIMPORT                        R9 K14 [pairs]
       45 MOVE                             R10 R8
       46 CALL                             R9 1 3
       47 FORGPREP_NEXT                    R9
       48 GETUPVAL                         R14 1
       49 MOVE                             R15 R7
       50 NEWTABLE                         R16 1 0
       52 GETUPVAL                         R17 2
       53 GETTABLEKS                       R17 R17 K15 ["RoleSubjectKey"]
       55 NEWTABLE                         R18 1 0
       57 NEWTABLE                         R19 4 0
       59 GETUPVAL                         R20 2
       60 GETTABLEKS                       R20 R20 K16 ["GroupIdKey"]
       62 GETUPVAL                         R21 0
       63 SETTABLE                         R21 R19 R20
       64 GETUPVAL                         R20 2
       65 GETTABLEKS                       R20 R20 K17 ["SubjectNameKey"]
       67 GETTABLEKS                       R21 R13 K3 ["name"]
       69 SETTABLE                         R21 R19 R20
       70 GETUPVAL                         R20 2
       71 GETTABLEKS                       R20 R20 K18 ["SubjectRankKey"]
       73 GETTABLEKS                       R21 R13 K19 ["rank"]
       75 SETTABLE                         R21 R19 R20
       76 GETUPVAL                         R20 2
       77 GETTABLEKS                       R20 R20 K20 ["ActionKey"]
       79 GETUPVAL                         R21 3
       80 SETTABLE                         R21 R19 R20
       81 SETTABLE                         R19 R18 R12
       82 SETTABLE                         R18 R16 R17
       83 CALL                             R14 2 1
       84 MOVE                             R7 R14
       85 FORGLOOP                         R9 2 ; [-38]
       87 GETUPVAL                         R11 4
       88 MOVE                             R12 R7
       89 CALL                             R11 1 -1
       90 NAMECALL                         R9 R0 K21 ["dispatch"]
       92 CALL                             R9 -1 0
       93 GETUPVAL                         R11 5
       94 MOVE                             R12 R6
       95 CALL                             R11 1 -1
       96 NAMECALL                         R9 R0 K21 ["dispatch"]
       98 CALL                             R9 -1 0
       99 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R2 K8 ["deepJoin"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K9 ["Src"]
       24 GETTABLEKS                       R4 R4 K10 ["Actions"]
       26 GETTABLEKS                       R4 R4 K11 ["SetUserPermission"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R5 R0 K9 ["Src"]
       33 GETTABLEKS                       R5 R5 K10 ["Actions"]
       35 GETTABLEKS                       R5 R5 K12 ["SetGroupMetadata"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R0 K9 ["Src"]
       42 GETTABLEKS                       R6 R6 K7 ["Util"]
       44 GETTABLEKS                       R6 R6 K13 ["PermissionsConstants"]
       46 CALL                             R5 1 1
       47 DUPCLOSURE                       R6 K14 [PROTO_1]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 RETURN                           R6 1
