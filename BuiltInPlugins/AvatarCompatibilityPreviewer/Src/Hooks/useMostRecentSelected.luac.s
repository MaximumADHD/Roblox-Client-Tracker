PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 DUPTABLE                         R0 K5 [{[1] = , ["avatar"], ["isSelected"] = True}]
        5 GETUPVAL                         R1 0
        6 SETTABLEKS                       R1 R0 K2 ["avatar"]
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R0 3
       12 JUMPIFNOT                        R0 ; [+5]
       13 DUPTABLE                         R0 K6 [{[1], ["avatar"] = , ["isSelected"] = True}]
       14 GETUPVAL                         R1 2
       15 SETTABLEKS                       R1 R0 K0 ["autoSetupTarget"]
       17 RETURN                           R0 1
       18 GETUPVAL                         R0 0
       19 JUMPIFNOT                        R0 ; [+5]
       20 DUPTABLE                         R0 K8 [{[1] = , ["avatar"], ["isSelected"] = False}]
       21 GETUPVAL                         R1 0
       22 SETTABLEKS                       R1 R0 K2 ["avatar"]
       24 RETURN                           R0 1
       25 LOADNIL                          R0
       26 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"selection", "clearAvatar"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["selection"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["clearAvatar"]
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 3
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 CALL                             R3 1 2
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K0 ["useMemo"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R4
       13 NEWTABLE                         R7 0 4
       15 MOVE                             R8 R0
       16 MOVE                             R9 R1
       17 MOVE                             R10 R3
       18 MOVE                             R11 R4
       19 SETLIST                          R7 R8 4 [1]
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K0 ["useMemo"]
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R8 0 2
       30 MOVE                             R9 R5
       31 MOVE                             R10 R2
       32 SETLIST                          R8 R9 2 [1]
       34 CALL                             R6 2 -1
       35 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useSelectedAutoSetupTarget"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K12 ["useSelectedAvatar"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K13 [PROTO_2]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 RETURN                           R5 1
