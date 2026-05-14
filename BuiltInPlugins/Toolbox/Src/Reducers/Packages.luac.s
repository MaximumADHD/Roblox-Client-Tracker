PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["permissionsTable"]
        2 JUMPIF                           R2 ; [+4]
        3 NEWTABLE                         R2 0 0
        5 SETTABLEKS                       R2 R0 K0 ["permissionsTable"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
       10 GETTABLEKS                       R2 R2 K2 ["join"]
       12 GETTABLEKS                       R3 R0 K0 ["permissionsTable"]
       14 GETTABLEKS                       R4 R1 K3 ["packagePermissions"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R0 K0 ["permissionsTable"]
       19 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R4 K9 ["Actions"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["SetPackagePermission"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R3 K11 ["createReducer"]
       32 DUPTABLE                         R7 K13 [{"permissionsTable"}]
       33 NEWTABLE                         R8 0 0
       35 SETTABLEKS                       R8 R7 K12 ["permissionsTable"]
       37 NEWTABLE                         R8 1 0
       39 GETTABLEKS                       R9 R5 K14 ["name"]
       41 DUPCLOSURE                       R10 K15 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 SETTABLE                         R10 R8 R9
       44 CALL                             R6 2 -1
       45 RETURN                           R6 -1
