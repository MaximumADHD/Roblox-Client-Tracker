PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFNOT                        R0 ; [+27]
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K2 ["SubjectType"]
       10 GETTABLE                         R7 R6 R8
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K3 ["All"]
       14 JUMPIFNOTEQ                      R7 R8 ; [+12]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K4 ["Action"]
       19 GETTABLE                         R7 R6 R8
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K5 ["UseAction"]
       23 JUMPIFNOTEQ                      R7 R8 ; [+3]
       25 LOADB                            R1 1
       26 RETURN                           R1 1
       27 FORGLOOP                         R2 2 ; [-21]
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["Permissions"]
       17 GETTABLEKS                       R2 R2 K8 ["Constants"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R1 R1 K9 ["webKeys"]
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R3 R0 K5 ["Src"]
       26 GETTABLEKS                       R3 R3 K10 ["Types"]
       28 GETTABLEKS                       R3 R3 K11 ["PermissionTypes"]
       30 CALL                             R2 1 1
       31 NEWTABLE                         R3 1 0
       33 DUPCLOSURE                       R4 K12 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R4 R3 K13 ["isAssetPublic"]
       37 RETURN                           R3 1
