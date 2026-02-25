PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Packages"]
        5 GETTABLEKS                       R2 R3 K3 ["React"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K1 [require]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["Packages"]
       13 GETTABLEKS                       R3 R4 K4 ["ReactRoblox"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K1 [require]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K5 ["Src"]
       21 GETTABLEKS                       R4 R5 K6 ["MainPlugin"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R1 K7 ["createElement"]
       26 MOVE                             R5 R3
       27 DUPTABLE                         R6 K9 [{"Plugin"}]
       28 SETTABLEKS                       R0 R6 K8 ["Plugin"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [Instance.new]
       33 LOADK                            R6 K13 ["Frame"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R2 K14 ["createRoot"]
       37 MOVE                             R7 R5
       38 CALL                             R6 1 1
       39 FASTCALL1                        ASSERT R6 ; [+3]
       40 MOVE                             R8 R6
       41 GETIMPORT                        R7 K16 [assert]
       43 CALL                             R7 1 0
       44 MOVE                             R9 R4
       45 NAMECALL                         R7 R6 K17 ["render"]
       47 CALL                             R7 2 0
       48 GETTABLEKS                       R7 R0 K18 ["Unloading"]
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          REF R6
       52 NAMECALL                         R7 R7 K19 ["Connect"]
       54 CALL                             R7 2 0
       55 CLOSEUPVALS                      R6
       56 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
