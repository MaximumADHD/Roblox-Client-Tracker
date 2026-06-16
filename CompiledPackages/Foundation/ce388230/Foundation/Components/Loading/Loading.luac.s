PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 DUPTABLE                         R5 K6 [{"name", "size", "style", "Rotation", "ref", "testId"}]
        9 LOADK                            R6 K7 ["icons/graphic/loadingspinner"]
       10 SETTABLEKS                       R6 R5 K0 ["name"]
       12 GETTABLEKS                       R6 R2 K1 ["size"]
       14 SETTABLEKS                       R6 R5 K1 ["size"]
       16 GETTABLEKS                       R6 R4 K8 ["DarkMode"]
       18 GETTABLEKS                       R6 R6 K9 ["Content"]
       20 GETTABLEKS                       R6 R6 K10 ["Emphasis"]
       22 SETTABLEKS                       R6 R5 K2 ["style"]
       24 SETTABLEKS                       R3 R5 K3 ["Rotation"]
       26 SETTABLEKS                       R1 R5 K4 ["ref"]
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R7 R7 K11 ["FoundationLoadingWrapInView"]
       31 JUMPIFNOT                        R7 ; [+8]
       32 LOADK                            R7 K12 ["%*--icon"]
       33 GETTABLEKS                       R9 R2 K5 ["testId"]
       35 NAMECALL                         R7 R7 K13 ["format"]
       37 CALL                             R7 2 1
       38 MOVE                             R6 R7
       39 JUMP                             ; [+1]
       40 LOADNIL                          R6
       41 SETTABLEKS                       R6 R5 K5 ["testId"]
       43 GETUPVAL                         R6 5
       44 GETTABLEKS                       R6 R6 K14 ["createElement"]
       46 GETUPVAL                         R8 4
       47 GETTABLEKS                       R8 R8 K11 ["FoundationLoadingWrapInView"]
       49 JUMPIFNOT                        R8 ; [+2]
       50 GETUPVAL                         R7 6
       51 JUMP                             ; [+3]
       52 GETUPVAL                         R7 5
       53 GETTABLEKS                       R7 R7 K15 ["Fragment"]
       55 GETUPVAL                         R9 4
       56 GETTABLEKS                       R9 R9 K11 ["FoundationLoadingWrapInView"]
       58 JUMPIFNOT                        R9 ; [+8]
       59 GETUPVAL                         R8 7
       60 MOVE                             R9 R2
       61 DUPTABLE                         R10 K17 [{"tag"}]
       62 LOADK                            R11 K18 ["auto-xy"]
       63 SETTABLEKS                       R11 R10 K16 ["tag"]
       65 CALL                             R8 2 1
       66 JUMP                             ; [+2]
       67 NEWTABLE                         R8 0 0
       69 DUPTABLE                         R9 K20 [{"Icon"}]
       70 GETUPVAL                         R10 5
       71 GETTABLEKS                       R10 R10 K14 ["createElement"]
       73 GETUPVAL                         R11 8
       74 GETUPVAL                         R13 4
       75 GETTABLEKS                       R13 R13 K11 ["FoundationLoadingWrapInView"]
       77 JUMPIFNOT                        R13 ; [+2]
       78 MOVE                             R12 R5
       79 JUMP                             ; [+4]
       80 GETUPVAL                         R12 7
       81 MOVE                             R13 R2
       82 MOVE                             R14 R5
       83 CALL                             R12 2 1
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K19 ["Icon"]
       87 CALL                             R6 3 -1
       88 RETURN                           R6 -1

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
       25 GETTABLEKS                       R5 R5 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["IconSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Utility"]
       39 GETTABLEKS                       R7 R7 K14 ["Flags"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K15 ["Types"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K13 ["Utility"]
       53 GETTABLEKS                       R9 R9 K16 ["useRotation"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Providers"]
       60 GETTABLEKS                       R10 R10 K18 ["Style"]
       62 GETTABLEKS                       R10 R10 K19 ["useTokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K13 ["Utility"]
       69 GETTABLEKS                       R11 R11 K20 ["withCommonProps"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K13 ["Utility"]
       76 GETTABLEKS                       R12 R12 K21 ["withDefaults"]
       78 CALL                             R11 1 1
       79 DUPTABLE                         R12 K24 [{"size", "testId"}]
       80 GETTABLEKS                       R13 R5 K25 ["Large"]
       82 SETTABLEKS                       R13 R12 K22 ["size"]
       84 LOADK                            R13 K26 ["--foundation-loading"]
       85 SETTABLEKS                       R13 R12 K23 ["testId"]
       87 DUPCLOSURE                       R13 K27 [PROTO_0]
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R3
       97 GETTABLEKS                       R14 R2 K28 ["memo"]
       99 GETTABLEKS                       R15 R2 K29 ["forwardRef"]
      101 MOVE                             R16 R13
      102 CALL                             R15 1 -1
      103 CALL                             R14 -1 -1
      104 RETURN                           R14 -1
