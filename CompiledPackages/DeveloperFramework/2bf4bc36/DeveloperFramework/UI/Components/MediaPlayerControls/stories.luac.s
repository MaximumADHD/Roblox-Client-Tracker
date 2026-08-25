PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K11 [{[1] = False, ["IsLoaded"] = True, ["OnPause"], ["OnPlay"], ["OnScrub"], ["TimeLength"] = 90, ["CurrentTime"] = 0}]
        1 DUPCLOSURE                       R1 K12 [PROTO_0]
        2 SETTABLEKS                       R1 R0 K4 ["OnPause"]
        4 DUPCLOSURE                       R1 K13 [PROTO_1]
        5 SETTABLEKS                       R1 R0 K5 ["OnPlay"]
        7 DUPCLOSURE                       R1 K14 [PROTO_2]
        8 SETTABLEKS                       R1 R0 K6 ["OnScrub"]
       10 DUPTABLE                         R1 K20 [{"Paused", "Playing", "Loading", "WithProgress", "ScrubbingDisabled"}]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K21 ["createElement"]
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R0
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K15 ["Paused"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K21 ["createElement"]
       22 GETUPVAL                         R3 1
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K22 ["Dictionary"]
       26 GETTABLEKS                       R4 R4 K23 ["join"]
       28 MOVE                             R5 R0
       29 DUPTABLE                         R6 K24 [{[1] = True}]
       30 CALL                             R4 2 -1
       31 CALL                             R2 -1 1
       32 SETTABLEKS                       R2 R1 K16 ["Playing"]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K21 ["createElement"]
       37 GETUPVAL                         R3 1
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K22 ["Dictionary"]
       41 GETTABLEKS                       R4 R4 K23 ["join"]
       43 MOVE                             R5 R0
       44 DUPTABLE                         R6 K25 [{["IsLoaded"] = False}]
       45 CALL                             R4 2 -1
       46 CALL                             R2 -1 1
       47 SETTABLEKS                       R2 R1 K17 ["Loading"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K21 ["createElement"]
       52 GETUPVAL                         R3 1
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R4 R4 K22 ["Dictionary"]
       56 GETTABLEKS                       R4 R4 K23 ["join"]
       58 MOVE                             R5 R0
       59 DUPTABLE                         R6 K27 [{[1] = True, ["CurrentTime"] = 50}]
       60 CALL                             R4 2 -1
       61 CALL                             R2 -1 1
       62 SETTABLEKS                       R2 R1 K18 ["WithProgress"]
       64 GETUPVAL                         R2 0
       65 GETTABLEKS                       R2 R2 K21 ["createElement"]
       67 GETUPVAL                         R3 1
       68 GETUPVAL                         R4 2
       69 GETTABLEKS                       R4 R4 K22 ["Dictionary"]
       71 GETTABLEKS                       R4 R4 K23 ["join"]
       73 MOVE                             R5 R0
       74 DUPTABLE                         R6 K28 [{[1] = True, ["CurrentTime"] = 50, ["OnScrub"]}]
       75 GETUPVAL                         R7 2
       76 GETTABLEKS                       R7 R7 K29 ["None"]
       78 SETTABLEKS                       R7 R6 K6 ["OnScrub"]
       80 CALL                             R4 2 -1
       81 CALL                             R2 -1 1
       82 SETTABLEKS                       R2 R1 K19 ["ScrubbingDisabled"]
       84 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K4 ["Parent"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K9 [PROTO_3]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 RETURN                           R4 1
