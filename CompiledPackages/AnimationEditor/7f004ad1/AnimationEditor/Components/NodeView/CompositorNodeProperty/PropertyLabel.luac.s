PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 DUPTABLE                         R1 K3 [{"Color3", "Transparency"}]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K4 ["Color"]
        9 GETTABLEKS                       R2 R2 K5 ["Content"]
       11 GETTABLEKS                       R2 R2 K6 ["Emphasis"]
       13 GETTABLEKS                       R2 R2 K1 ["Color3"]
       15 SETTABLEKS                       R2 R1 K1 ["Color3"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K7 ["isDisabled"]
       20 JUMPIFNOT                        R3 ; [+2]
       21 LOADK                            R2 K8 [0.5]
       22 JUMP                             ; [+9]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K4 ["Color"]
       26 GETTABLEKS                       R2 R2 K5 ["Content"]
       28 GETTABLEKS                       R2 R2 K6 ["Emphasis"]
       30 GETTABLEKS                       R2 R2 K2 ["Transparency"]
       32 SETTABLEKS                       R2 R1 K2 ["Transparency"]
       34 SETTABLEKS                       R1 R0 K9 ["textStyle"]
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K7 ["isDisabled"]
       39 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Hooks"]
        8 GETTABLEKS                       R1 R1 K2 ["useTokens"]
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["useMemo"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R0
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K4 ["createElement"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K0 ["Text"]
       30 MOVE                             R5 R2
       31 GETTABLEKS                       R6 R0 K5 ["children"]
       33 CALL                             R3 3 -1
       34 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 RETURN                           R4 1
