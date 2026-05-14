PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["provide"]
        5 NEWTABLE                         R2 0 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["ContextServices"]
       10 GETTABLEKS                       R3 R3 K2 ["Plugin"]
       12 GETTABLEKS                       R3 R3 K3 ["new"]
       14 GETTABLEKS                       R4 R0 K2 ["Plugin"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K0 ["ContextServices"]
       20 GETTABLEKS                       R4 R4 K4 ["Mouse"]
       22 GETTABLEKS                       R4 R4 K3 ["new"]
       24 GETTABLEKS                       R5 R0 K2 ["Plugin"]
       26 NAMECALL                         R5 R5 K5 ["GetMouse"]
       28 CALL                             R5 1 -1
       29 CALL                             R4 -1 -1
       30 SETLIST                          R2 R3 -1 [1]
       32 DUPTABLE                         R3 K7 [{"ContextStack"}]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K8 ["createElement"]
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K6 ["ContextStack"]
       39 DUPTABLE                         R6 K10 [{"providers"}]
       40 NEWTABLE                         R7 0 2
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K8 ["createElement"]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R9 R9 K11 ["NetworkingContext"]
       48 GETTABLEKS                       R9 R9 K12 ["EditableDataModelProvider"]
       50 CALL                             R8 1 1
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K8 ["createElement"]
       54 GETUPVAL                         R10 3
       55 GETTABLEKS                       R10 R10 K13 ["GraphPlayedContext"]
       57 GETTABLEKS                       R10 R10 K14 ["PreviewDataModelProvider"]
       59 CALL                             R9 1 -1
       60 SETLIST                          R7 R8 -1 [1]
       62 SETTABLEKS                       R7 R6 K9 ["providers"]
       64 CALL                             R4 2 1
       65 SETTABLEKS                       R4 R3 K6 ["ContextStack"]
       67 CALL                             R1 2 -1
       68 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K11 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
