PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 GETUPVAL                         R2 2
        7 DUPTABLE                         R3 K2 [{"name"}]
        8 SETTABLEKS                       R0 R3 K1 ["name"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["createElement"]
       15 GETUPVAL                         R2 3
       16 DUPTABLE                         R3 K5 [{"Text", "tag"}]
       17 LOADK                            R4 K6 ["No BuilderIcon associated with your current platform."]
       18 SETTABLEKS                       R4 R3 K3 ["Text"]
       20 LOADK                            R4 K7 ["size-full-0 auto-y text-align-x-left"]
       21 SETTABLEKS                       R4 R3 K4 ["tag"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Icon"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Text"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K11 ["getBuilderIconForCurrentPlatform"]
       36 CALL                             R5 1 1
       37 DUPTABLE                         R6 K14 [{"name", "story"}]
       38 LOADK                            R7 K11 ["getBuilderIconForCurrentPlatform"]
       39 SETTABLEKS                       R7 R6 K12 ["name"]
       41 DUPCLOSURE                       R7 K15 [PROTO_0]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R7 R6 K13 ["story"]
       48 RETURN                           R6 1
