PROTO_0:
        0 DUPTABLE                         R2 K2 [{"plugin", "settingInvokeKeys"}]
        1 SETTABLEKS                       R0 R2 K0 ["plugin"]
        3 SETTABLEKS                       R1 R2 K1 ["settingInvokeKeys"]
        5 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 SETTABLEKS                       R0 R2 K0 ["value"]
        6 GETUPVAL                         R2 2
        7 JUMPIFNOT                        R2 ; [+13]
        8 JUMPIF                           R1 ; [+12]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["plugin"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K2 ["settingInvokeKeys"]
       15 GETTABLEKS                       R4 R5 K3 ["fromPlugin"]
       17 MOVE                             R5 R0
       18 NAMECALL                         R2 R2 K4 ["Invoke"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+13]
        5 JUMPIF                           R1 ; [+12]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K0 ["plugin"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K1 ["settingInvokeKeys"]
       12 GETTABLEKS                       R4 R5 K2 ["fromPlugin"]
       14 MOVE                             R5 R0
       15 NAMECALL                         R2 R2 K3 ["Invoke"]
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useState"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+11]
        8 NEWTABLE                         R4 2 0
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R4 K1 ["value"]
       16 SETTABLEKS                       R5 R4 K2 ["set"]
       18 RETURN                           R4 1
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R1
       22 DUPTABLE                         R5 K3 [{"value", "set"}]
       23 SETTABLEKS                       R2 R5 K1 ["value"]
       25 SETTABLEKS                       R4 R5 K2 ["set"]
       27 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["ProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Flags"]
       29 GETTABLEKS                       R4 R5 K12 ["getFFlagAvatarSettingsStaleStateFix"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K7 ["Util"]
       38 GETTABLEKS                       R5 R6 K13 ["InvokeKeys"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 2 0
       43 DUPCLOSURE                       R6 K14 [PROTO_0]
       44 SETTABLEKS                       R6 R5 K15 ["createInvokeArgs"]
       46 DUPCLOSURE                       R6 K16 [PROTO_3]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R6 R5 K17 ["useSetting"]
       51 RETURN                           R5 1
