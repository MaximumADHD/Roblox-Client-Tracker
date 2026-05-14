PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["actions"]
        7 JUMP                             ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
       13 CALL                             R2 0 1
       14 MOVE                             R3 R1
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K2 ["createElement"]
       21 GETUPVAL                         R9 3
       22 DUPTABLE                         R10 K5 [{"LayoutOrder", "uuid"}]
       23 MOVE                             R11 R2
       24 CALL                             R11 0 1
       25 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       27 SETTABLEKS                       R7 R10 K4 ["uuid"]
       29 CALL                             R8 2 1
       30 SETTABLE                         R8 R0 R7
       31 FORGLOOP                         R3 2 ; [-14]
       33 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R3 0 1
       10 MOVE                             R4 R0
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Tree"]
       15 GETTABLEKS                       R2 R2 K9 ["Action"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Types"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_1]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 RETURN                           R5 1
