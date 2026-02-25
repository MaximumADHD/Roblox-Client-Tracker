PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provideMockContext"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["new"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K1 ["new"]
       11 LOADK                            R5 K2 ["PlaceVersionHistory"]
       12 LOADNIL                          R6
       13 GETUPVAL                         R7 3
       14 LOADK                            R9 K3 ["Plugin"]
       15 NAMECALL                         R7 R7 K4 ["FindFirstAncestorWhichIsA"]
       17 CALL                             R7 2 -1
       18 CALL                             R4 -1 -1
       19 CALL                             R3 -1 -1
       20 SETLIST                          R2 R3 -1 [1]
       22 DUPTABLE                         R3 K6 [{"ScreenGui"}]
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R4 R5 K7 ["createElement"]
       26 LOADK                            R5 K5 ["ScreenGui"]
       27 LOADNIL                          R6
       28 DUPTABLE                         R7 K9 [{"ContextStack"}]
       29 GETUPVAL                         R9 4
       30 GETTABLEKS                       R8 R9 K7 ["createElement"]
       32 GETUPVAL                         R10 5
       33 GETTABLEKS                       R9 R10 K8 ["ContextStack"]
       35 DUPTABLE                         R10 K11 [{"providers"}]
       36 NEWTABLE                         R11 0 7
       38 GETUPVAL                         R13 4
       39 GETTABLEKS                       R12 R13 K7 ["createElement"]
       41 GETUPVAL                         R14 6
       42 GETTABLEKS                       R13 R14 K12 ["FoundationProvider"]
       44 CALL                             R12 1 1
       45 GETUPVAL                         R14 4
       46 GETTABLEKS                       R13 R14 K7 ["createElement"]
       48 GETUPVAL                         R14 7
       49 CALL                             R13 1 1
       50 GETUPVAL                         R15 4
       51 GETTABLEKS                       R14 R15 K7 ["createElement"]
       53 GETUPVAL                         R15 8
       54 CALL                             R14 1 1
       55 GETUPVAL                         R16 4
       56 GETTABLEKS                       R15 R16 K7 ["createElement"]
       58 GETUPVAL                         R16 9
       59 DUPTABLE                         R17 K14 [{"mockNetworkConfig"}]
       60 GETTABLEKS                       R18 R0 K13 ["mockNetworkConfig"]
       62 SETTABLEKS                       R18 R17 K13 ["mockNetworkConfig"]
       64 CALL                             R15 2 1
       65 GETUPVAL                         R17 4
       66 GETTABLEKS                       R16 R17 K7 ["createElement"]
       68 GETUPVAL                         R17 10
       69 CALL                             R16 1 1
       70 GETUPVAL                         R18 4
       71 GETTABLEKS                       R17 R18 K7 ["createElement"]
       73 GETUPVAL                         R18 11
       74 CALL                             R17 1 1
       75 GETUPVAL                         R19 4
       76 GETTABLEKS                       R18 R19 K7 ["createElement"]
       78 GETUPVAL                         R19 12
       79 CALL                             R18 1 -1
       80 SETLIST                          R11 R12 -1 [1]
       82 SETTABLEKS                       R11 R10 K10 ["providers"]
       84 GETTABLEKS                       R11 R0 K15 ["children"]
       86 CALL                             R8 3 1
       87 SETTABLEKS                       R8 R7 K8 ["ContextStack"]
       89 CALL                             R4 3 1
       90 SETTABLEKS                       R4 R3 K5 ["ScreenGui"]
       92 CALL                             R1 2 -1
       93 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["TestHelpers"]
       37 GETTABLEKS                       R7 R0 K12 ["Src"]
       39 GETTABLEKS                       R6 R7 K13 ["Contexts"]
       41 GETTABLEKS                       R8 R0 K12 ["Src"]
       43 GETTABLEKS                       R7 R8 K14 ["TestUtil"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R6 K15 ["WidgetContextProvider"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R6 K16 ["SettingContextProvider"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R7 K17 ["MockNetworkContextProvider"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R6 K18 ["StudioContextProvider"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K5 [require]
       67 GETTABLEKS                       R13 R6 K19 ["ControllerContextProvider"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R14 R6 K20 ["DialogContextProvider"]
       74 CALL                             R13 1 1
       75 GETTABLEKS                       R15 R4 K21 ["ContextServices"]
       77 GETTABLEKS                       R14 R15 K22 ["Plugin"]
       79 GETTABLEKS                       R17 R4 K11 ["TestHelpers"]
       81 GETTABLEKS                       R16 R17 K23 ["Instances"]
       83 GETTABLEKS                       R15 R16 K24 ["MockPlugin"]
       85 GETIMPORT                        R16 K5 [require]
       87 GETTABLEKS                       R17 R7 K25 ["MockNetwork"]
       89 CALL                             R16 1 1
       90 DUPCLOSURE                       R17 K26 [PROTO_0]
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R12
      104 SETGLOBAL                        R17 K27 ["MockWrapper"]
      106 GETGLOBAL                        R17 K27 ["MockWrapper"]
      108 RETURN                           R17 1
