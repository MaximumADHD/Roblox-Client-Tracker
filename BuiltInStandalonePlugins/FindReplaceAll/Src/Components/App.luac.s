PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ContextStack"]
        4 DUPTABLE                         R3 K2 [{"providers"}]
        5 NEWTABLE                         R4 0 2
        7 GETUPVAL                         R5 0
        8 GETUPVAL                         R6 2
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 0
       11 GETUPVAL                         R7 3
       12 CALL                             R6 1 -1
       13 SETLIST                          R4 R5 -1 [1]
       15 SETTABLEKS                       R4 R3 K1 ["providers"]
       17 DUPTABLE                         R4 K4 [{"FindReplaceAllMainView"}]
       18 GETUPVAL                         R5 0
       19 GETUPVAL                         R6 4
       20 DUPTABLE                         R7 K8 [{"findActivationData", "enabled", "textBoxRef"}]
       21 GETTABLEKS                       R8 R0 K5 ["findActivationData"]
       23 SETTABLEKS                       R8 R7 K5 ["findActivationData"]
       25 GETTABLEKS                       R8 R0 K6 ["enabled"]
       27 SETTABLEKS                       R8 R7 K6 ["enabled"]
       29 GETTABLEKS                       R8 R0 K7 ["textBoxRef"]
       31 SETTABLEKS                       R8 R7 K7 ["textBoxRef"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K3 ["FindReplaceAllMainView"]
       36 CALL                             R1 3 -1
       37 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["FindReplaceMainView"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Providers"]
       36 GETTABLEKS                       R5 R5 K13 ["ThemeContextProvider"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Providers"]
       45 GETTABLEKS                       R6 R6 K14 ["MouseContextProvider"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R1 K15 ["createElement"]
       50 DUPCLOSURE                       R7 K16 [PROTO_0]
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R3
       56 RETURN                           R7 1
