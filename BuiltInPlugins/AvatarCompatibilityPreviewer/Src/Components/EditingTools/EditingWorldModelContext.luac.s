PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["current"]
        4 SUBK                             R1 R2 K0 [1]
        5 SETTABLEKS                       R1 R0 K1 ["current"]
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["current"]
        4 ADDK                             R1 R2 K0 [1]
        5 SETTABLEKS                       R1 R0 K1 ["current"]
        7 NEWCLOSURE                       R0 P0
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADN                            R2 0
        4 JUMPIFLT                         R2 R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 1
       12 MOVE                             R5 R1
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R5 0 1
       23 MOVE                             R6 R1
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 DUPTABLE                         R4 K5 [{"isEditingWorldModel", "getIsEditingWorldModel", "pushIsEditingWorldModel"}]
       28 GETTABLEKS                       R6 R1 K6 ["current"]
       30 LOADN                            R7 0
       31 JUMPIFLT                         R7 R6 ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K2 ["isEditingWorldModel"]
       37 SETTABLEKS                       R3 R4 K3 ["getIsEditingWorldModel"]
       39 SETTABLEKS                       R2 R4 K4 ["pushIsEditingWorldModel"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K7 ["createElement"]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K8 ["Provider"]
       47 DUPTABLE                         R7 K10 [{"value"}]
       48 SETTABLEKS                       R4 R7 K9 ["value"]
       50 GETTABLEKS                       R8 R0 K11 ["children"]
       52 CALL                             R5 3 -1
       53 RETURN                           R5 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["createUnimplemented"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K15 [{["isEditingWorldModel"] = False, ["getIsEditingWorldModel"], ["pushIsEditingWorldModel"]}]
       24 MOVE                             R4 R2
       25 LOADK                            R5 K13 ["getIsEditingWorldModel"]
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R4 R3 K13 ["getIsEditingWorldModel"]
       29 MOVE                             R4 R2
       30 LOADK                            R5 K14 ["pushIsEditingWorldModel"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K14 ["pushIsEditingWorldModel"]
       34 GETTABLEKS                       R4 R1 K16 ["createContext"]
       36 MOVE                             R5 R3
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K17 [PROTO_3]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 DUPTABLE                         R6 K20 [{"Context", "Provider"}]
       42 SETTABLEKS                       R4 R6 K18 ["Context"]
       44 SETTABLEKS                       R5 R6 K19 ["Provider"]
       46 RETURN                           R6 1
