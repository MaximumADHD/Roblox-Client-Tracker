PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["React"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K1 [require]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["Packages"]
       13 GETTABLEKS                       R3 R3 K4 ["ReactRoblox"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K1 [require]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K5 ["Src"]
       21 GETTABLEKS                       R4 R4 K6 ["MainPlugin"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [Instance.new]
       26 LOADK                            R5 K10 ["Frame"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R1 K11 ["createElement"]
       30 MOVE                             R6 R3
       31 DUPTABLE                         R7 K14 [{"plugin", "rootHandle"}]
       32 SETTABLEKS                       R0 R7 K12 ["plugin"]
       34 SETTABLEKS                       R4 R7 K13 ["rootHandle"]
       36 CALL                             R5 2 1
       37 GETTABLEKS                       R6 R2 K15 ["createRoot"]
       39 MOVE                             R7 R4
       40 CALL                             R6 1 1
       41 MOVE                             R9 R5
       42 NAMECALL                         R7 R6 K16 ["render"]
       44 CALL                             R7 2 0
       45 GETTABLEKS                       R7 R0 K17 ["Unloading"]
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          VAL R6
       49 NAMECALL                         R7 R7 K18 ["Once"]
       51 CALL                             R7 2 0
       52 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
