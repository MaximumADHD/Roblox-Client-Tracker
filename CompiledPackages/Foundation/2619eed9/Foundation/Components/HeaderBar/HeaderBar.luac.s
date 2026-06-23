PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["useState"]
        7 LOADNIL                          R3
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R2
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K1 ["createElement"]
       15 GETUPVAL                         R6 4
       16 GETUPVAL                         R7 5
       17 MOVE                             R8 R1
       18 DUPTABLE                         R9 K4 [{"tag", "ref"}]
       19 NEWTABLE                         R10 4 0
       21 LOADB                            R11 1
       22 SETTABLEKS                       R11 R10 K5 ["row flex-between gap-small padding-medium"]
       24 GETTABLEKS                       R11 R1 K6 ["hasBackground"]
       26 SETTABLEKS                       R11 R10 K7 ["bg-surface-0"]
       28 GETUPVAL                         R12 6
       29 GETTABLE                         R11 R12 R4
       30 LOADB                            R12 1
       31 SETTABLE                         R12 R10 R11
       32 SETTABLEKS                       R10 R9 K2 ["tag"]
       34 SETTABLEKS                       R3 R9 K3 ["ref"]
       36 CALL                             R7 2 1
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R8 R8 K1 ["createElement"]
       40 GETUPVAL                         R9 7
       41 GETTABLEKS                       R9 R9 K8 ["Provider"]
       43 DUPTABLE                         R10 K10 [{"testId"}]
       44 GETTABLEKS                       R11 R1 K9 ["testId"]
       46 SETTABLEKS                       R11 R10 K9 ["testId"]
       48 GETTABLEKS                       R11 R1 K11 ["children"]
       50 CALL                             R8 3 -1
       51 CALL                             R5 -1 -1
       52 RETURN                           R5 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["Breakpoint"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["HeaderBar"]
       27 GETTABLEKS                       R5 R5 K12 ["HeaderBarContext"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Components"]
       34 GETTABLEKS                       R6 R6 K13 ["Types"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Components"]
       41 GETTABLEKS                       R7 R7 K14 ["View"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Providers"]
       48 GETTABLEKS                       R8 R8 K16 ["Responsive"]
       50 GETTABLEKS                       R8 R8 K17 ["Hooks"]
       52 GETTABLEKS                       R8 R8 K18 ["useBreakpoint"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K19 ["Utility"]
       59 GETTABLEKS                       R9 R9 K20 ["withCommonProps"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K19 ["Utility"]
       66 GETTABLEKS                       R10 R10 K21 ["withDefaults"]
       68 CALL                             R9 1 1
       69 NEWTABLE                         R10 8 0
       71 GETTABLEKS                       R11 R3 K22 ["XSmall"]
       73 LOADK                            R12 K23 ["size-full-1400"]
       74 SETTABLE                         R12 R10 R11
       75 GETTABLEKS                       R11 R3 K24 ["Small"]
       77 LOADK                            R12 K23 ["size-full-1400"]
       78 SETTABLE                         R12 R10 R11
       79 GETTABLEKS                       R11 R3 K25 ["Medium"]
       81 LOADK                            R12 K26 ["size-full-1600"]
       82 SETTABLE                         R12 R10 R11
       83 GETTABLEKS                       R11 R3 K27 ["Large"]
       85 LOADK                            R12 K26 ["size-full-1600"]
       86 SETTABLE                         R12 R10 R11
       87 GETTABLEKS                       R11 R3 K28 ["XLarge"]
       89 LOADK                            R12 K29 ["size-full-1800"]
       90 SETTABLE                         R12 R10 R11
       91 GETTABLEKS                       R11 R3 K30 ["XXLarge"]
       93 LOADK                            R12 K29 ["size-full-1800"]
       94 SETTABLE                         R12 R10 R11
       95 DUPTABLE                         R11 K33 [{"hasBackground", "testId"}]
       96 LOADB                            R12 1
       97 SETTABLEKS                       R12 R11 K31 ["hasBackground"]
       99 LOADK                            R12 K34 ["--foundation-header-bar"]
      100 SETTABLEKS                       R12 R11 K32 ["testId"]
      102 DUPCLOSURE                       R12 K35 [PROTO_0]
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R4
      111 GETTABLEKS                       R13 R2 K36 ["memo"]
      113 MOVE                             R14 R12
      114 CALL                             R13 1 -1
      115 RETURN                           R13 -1
