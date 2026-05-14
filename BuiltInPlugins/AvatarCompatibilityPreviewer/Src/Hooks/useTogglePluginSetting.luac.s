PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_2]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 2
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["useCallback"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 NEWTABLE                         R6 0 0
       11 CALL                             R4 2 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R7 0 0
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K0 ["useCallback"]
       23 NEWCLOSURE                       R7 P2
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R8 0 0
       27 CALL                             R6 2 1
       28 DUPTABLE                         R7 K6 [{"enabled", "enable", "disable", "set", "toggle"}]
       29 SETTABLEKS                       R2 R7 K1 ["enabled"]
       31 SETTABLEKS                       R4 R7 K2 ["enable"]
       33 SETTABLEKS                       R5 R7 K3 ["disable"]
       35 SETTABLEKS                       R3 R7 K4 ["set"]
       37 SETTABLEKS                       R6 R7 K5 ["toggle"]
       39 RETURN                           R7 1

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
       18 GETTABLEKS                       R3 R3 K9 ["Hooks"]
       20 GETTABLEKS                       R3 R3 K10 ["usePluginSetting"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_4]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
