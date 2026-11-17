PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provideMockContext"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K1 ["new"]
       11 LOADK                            R5 K2 ["TeamCreateCollaborators"]
       12 LOADNIL                          R6
       13 GETUPVAL                         R7 3
       14 LOADK                            R9 K3 ["Plugin"]
       15 NAMECALL                         R7 R7 K4 ["FindFirstAncestorWhichIsA"]
       17 CALL                             R7 2 -1
       18 CALL                             R4 -1 -1
       19 CALL                             R3 -1 -1
       20 SETLIST                          R2 R3 -1 [1]
       22 DUPTABLE                         R3 K6 [{"ScreenGui"}]
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K7 ["createElement"]
       26 LOADK                            R5 K5 ["ScreenGui"]
       27 LOADNIL                          R6
       28 DUPTABLE                         R7 K9 [{"ContextStack"}]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K7 ["createElement"]
       32 GETUPVAL                         R9 5
       33 GETTABLEKS                       R9 R9 K8 ["ContextStack"]
       35 DUPTABLE                         R10 K11 [{"providers"}]
       36 NEWTABLE                         R11 0 3
       38 GETUPVAL                         R12 4
       39 GETTABLEKS                       R12 R12 K7 ["createElement"]
       41 GETUPVAL                         R13 6
       42 GETTABLEKS                       R13 R13 K12 ["FoundationProvider"]
       44 CALL                             R12 1 1
       45 GETUPVAL                         R13 4
       46 GETTABLEKS                       R13 R13 K7 ["createElement"]
       48 GETUPVAL                         R14 7
       49 DUPTABLE                         R15 K14 [{"mockNetworkConfig"}]
       50 GETTABLEKS                       R17 R0 K13 ["mockNetworkConfig"]
       52 ORK                              R16 R17 K15 []
       53 SETTABLEKS                       R16 R15 K13 ["mockNetworkConfig"]
       55 CALL                             R13 2 1
       56 GETUPVAL                         R14 4
       57 GETTABLEKS                       R14 R14 K7 ["createElement"]
       59 GETUPVAL                         R15 8
       60 DUPTABLE                         R16 K18 [{"collaborators", "universeId"}]
       61 GETTABLEKS                       R17 R0 K16 ["collaborators"]
       63 SETTABLEKS                       R17 R16 K16 ["collaborators"]
       65 GETTABLEKS                       R18 R0 K17 ["universeId"]
       67 ORK                              R17 R18 K19 [0]
       68 SETTABLEKS                       R17 R16 K17 ["universeId"]
       70 CALL                             R14 2 -1
       71 SETLIST                          R11 R12 -1 [1]
       73 SETTABLEKS                       R11 R10 K10 ["providers"]
       75 GETTABLEKS                       R11 R0 K20 ["children"]
       77 CALL                             R8 3 1
       78 SETTABLEKS                       R8 R7 K8 ["ContextStack"]
       80 CALL                             R4 3 1
       81 SETTABLEKS                       R4 R3 K5 ["ScreenGui"]
       83 CALL                             R1 2 -1
       84 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["TestHelpers"]
       37 GETTABLEKS                       R6 R0 K12 ["Src"]
       39 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       41 GETTABLEKS                       R7 R0 K12 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["TestUtil"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R7 K15 ["MockNetworkContextProvider"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R6 K16 ["ControllerContextProvider"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R6 K17 ["ControllerContext"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R7 K18 ["MockNetwork"]
       64 CALL                             R11 1 1
       65 GETTABLEKS                       R12 R4 K19 ["ContextServices"]
       67 GETTABLEKS                       R12 R12 K20 ["Plugin"]
       69 GETTABLEKS                       R13 R4 K11 ["TestHelpers"]
       71 GETTABLEKS                       R13 R13 K21 ["Instances"]
       73 GETTABLEKS                       R13 R13 K22 ["MockPlugin"]
       75 DUPCLOSURE                       R14 K23 [PROTO_0]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 SETGLOBAL                        R14 K24 ["MockWrapper"]
       87 GETGLOBAL                        R14 K24 ["MockWrapper"]
       89 RETURN                           R14 1
