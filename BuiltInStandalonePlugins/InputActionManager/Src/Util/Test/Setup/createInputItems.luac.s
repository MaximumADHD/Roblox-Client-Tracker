PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["createPortal"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["createElement"]
        7 LOADK                            R4 K2 ["Folder"]
        8 NEWTABLE                         R5 0 0
       10 MOVE                             R6 R0
       11 CALL                             R3 3 1
       12 GETUPVAL                         R4 3
       13 CALL                             R2 2 -1
       14 CALL                             R1 -1 1
       15 GETTABLEKS                       R1 R1 K3 ["container"]
       17 GETUPVAL                         R2 4
       18 CALL                             R2 0 0
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactRoblox"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Dev"]
       33 GETTABLEKS                       R5 R5 K14 ["ReactTestingLibrary"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K15 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Util"]
       42 GETTABLEKS                       R6 R6 K17 ["Test"]
       44 GETTABLEKS                       R6 R6 K18 ["Helpers"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R4 K19 ["render"]
       49 GETTABLEKS                       R7 R5 K20 ["awaitDeferAsync"]
       51 DUPCLOSURE                       R8 K21 [PROTO_0]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R7
       57 RETURN                           R8 1
