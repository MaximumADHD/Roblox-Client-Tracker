PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Past"}]
        7 GETTABLEKS                       R5 R1 K4 ["past"]
        9 SETTABLEKS                       R5 R4 K2 ["Past"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Future"}]
        7 GETTABLEKS                       R5 R1 K4 ["future"]
        9 SETTABLEKS                       R5 R4 K2 ["Future"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"MaxWaypointSize"}]
        7 GETTABLEKS                       R5 R1 K4 ["maxSize"]
        9 SETTABLEKS                       R5 R4 K2 ["MaxWaypointSize"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["createReducer"]
       32 DUPTABLE                         R5 K16 [{"Past", "Future", "MaxWaypointSize"}]
       33 NEWTABLE                         R6 0 0
       35 SETTABLEKS                       R6 R5 K13 ["Past"]
       37 NEWTABLE                         R6 0 0
       39 SETTABLEKS                       R6 R5 K14 ["Future"]
       41 GETTABLEKS                       R6 R3 K17 ["MAX_WAYPOINT_SIZE"]
       43 SETTABLEKS                       R6 R5 K15 ["MaxWaypointSize"]
       45 DUPTABLE                         R6 K21 [{"SetPast", "SetFuture", "SetMaxWaypointSize"}]
       46 DUPCLOSURE                       R7 K22 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R7 R6 K18 ["SetPast"]
       50 DUPCLOSURE                       R7 K23 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R7 R6 K19 ["SetFuture"]
       54 DUPCLOSURE                       R7 K24 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R7 R6 K20 ["SetMaxWaypointSize"]
       58 CALL                             R4 2 -1
       59 RETURN                           R4 -1
