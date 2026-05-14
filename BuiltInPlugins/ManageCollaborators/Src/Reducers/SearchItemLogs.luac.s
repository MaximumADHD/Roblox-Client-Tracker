PROTO_0:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["COLLABORATORTYPE_USER"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLE                         R2 R0 R1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["COLLABORATORTYPE_GROUP"]
       11 NEWTABLE                         R2 0 0
       13 SETTABLE                         R2 R0 R1
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab8766_LogCollabSearchItemClickedEventV4"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+57]
        8 GETIMPORT                        R1 K5 [script]
       10 LOADK                            R3 K6 ["ManageCollaborators"]
       11 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K9 [require]
       16 GETTABLEKS                       R3 R1 K10 ["Packages"]
       18 GETTABLEKS                       R3 R3 K11 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R1 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K12 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K13 ["Src"]
       30 GETTABLEKS                       R4 R4 K14 ["Actions"]
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R4 K15 ["SetSearchItemLogs"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K9 [require]
       39 GETTABLEKS                       R7 R1 K13 ["Src"]
       41 GETTABLEKS                       R7 R7 K16 ["Util"]
       43 GETTABLEKS                       R7 R7 K17 ["Constants"]
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K18 [PROTO_0]
       47 CAPTURE                          VAL R6
       48 GETTABLEKS                       R8 R2 K19 ["createReducer"]
       50 NEWTABLE                         R9 0 0
       52 NEWTABLE                         R10 2 0
       54 DUPCLOSURE                       R11 K20 [PROTO_1]
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R11 R10 K21 ["ResetStore"]
       58 GETTABLEKS                       R11 R5 K22 ["name"]
       60 DUPCLOSURE                       R12 K23 [PROTO_2]
       61 CAPTURE                          VAL R3
       62 SETTABLE                         R12 R10 R11
       63 CALL                             R8 2 -1
       64 RETURN                           R8 -1
       65 RETURN                           R0 0
