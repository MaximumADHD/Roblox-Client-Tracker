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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useState"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 NEWTABLE                         R4 2 0
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R4 K1 ["value"]
       13 SETTABLEKS                       R5 R4 K2 ["set"]
       15 RETURN                           R4 1

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
       27 GETTABLEKS                       R5 R6 K7 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["InvokeKeys"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 2 0
       34 DUPCLOSURE                       R5 K12 [PROTO_0]
       35 SETTABLEKS                       R5 R4 K13 ["createInvokeArgs"]
       37 DUPCLOSURE                       R5 K14 [PROTO_2]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R5 R4 K15 ["useSetting"]
       41 RETURN                           R4 1
