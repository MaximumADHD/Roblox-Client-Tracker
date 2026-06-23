PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K2 ["value"]
       10 GETTABLEKS                       R4 R0 K4 ["children"]
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContextActionService"]
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
       20 NAMECALL                         R3 R0 K12 ["GetInputSchemaKeyCodeTree"]
       22 CALL                             R3 1 1
       23 MOVE                             R4 R3
       24 LOADNIL                          R5
       25 LOADNIL                          R6
       26 FORGPREP                         R4
       27 MOVE                             R9 R8
       28 LOADNIL                          R10
       29 LOADNIL                          R11
       30 FORGPREP                         R9
       31 GETIMPORT                        R14 K15 [table.sort]
       33 MOVE                             R15 R13
       34 DUPCLOSURE                       R16 K16 [PROTO_0]
       35 CALL                             R14 2 0
       36 FORGLOOP                         R9 2 ; [-6]
       38 FORGLOOP                         R4 2 ; [-12]
       40 GETTABLEKS                       R4 R2 K17 ["createContext"]
       42 MOVE                             R5 R3
       43 CALL                             R4 1 1
       44 DUPCLOSURE                       R5 K18 [PROTO_1]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 DUPTABLE                         R6 K21 [{"Context", "Provider"}]
       49 SETTABLEKS                       R4 R6 K19 ["Context"]
       51 SETTABLEKS                       R5 R6 K20 ["Provider"]
       53 RETURN                           R6 1
