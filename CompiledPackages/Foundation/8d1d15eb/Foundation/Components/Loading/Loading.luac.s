PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 DUPTABLE                         R5 K7 [{[1] = "icons/graphic/loadingspinner", ["size"], ["style"], ["Rotation"], ["ref"], ["testId"]}]
        9 GETTABLEKS                       R6 R2 K2 ["size"]
       11 SETTABLEKS                       R6 R5 K2 ["size"]
       13 GETTABLEKS                       R6 R4 K8 ["DarkMode"]
       15 GETTABLEKS                       R6 R6 K9 ["Content"]
       17 GETTABLEKS                       R6 R6 K10 ["Emphasis"]
       19 SETTABLEKS                       R6 R5 K3 ["style"]
       21 SETTABLEKS                       R3 R5 K4 ["Rotation"]
       23 SETTABLEKS                       R1 R5 K5 ["ref"]
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R7 R7 K11 ["FoundationLoadingWrapInView"]
       28 JUMPIFNOT                        R7 ; [+8]
       29 LOADK                            R7 K12 ["%*--icon"]
       30 GETTABLEKS                       R9 R2 K6 ["testId"]
       32 NAMECALL                         R7 R7 K13 ["format"]
       34 CALL                             R7 2 1
       35 MOVE                             R6 R7
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 SETTABLEKS                       R6 R5 K6 ["testId"]
       40 GETUPVAL                         R6 5
       41 GETTABLEKS                       R6 R6 K14 ["createElement"]
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R8 R8 K11 ["FoundationLoadingWrapInView"]
       46 JUMPIFNOT                        R8 ; [+2]
       47 GETUPVAL                         R7 6
       48 JUMP                             ; [+3]
       49 GETUPVAL                         R7 5
       50 GETTABLEKS                       R7 R7 K15 ["Fragment"]
       52 GETUPVAL                         R9 4
       53 GETTABLEKS                       R9 R9 K11 ["FoundationLoadingWrapInView"]
       55 JUMPIFNOT                        R9 ; [+5]
       56 GETUPVAL                         R8 7
       57 MOVE                             R9 R2
       58 DUPTABLE                         R10 K18 [{["tag"] = "auto-xy"}]
       59 CALL                             R8 2 1
       60 JUMP                             ; [+2]
       61 NEWTABLE                         R8 0 0
       63 DUPTABLE                         R9 K20 [{"Icon"}]
       64 GETUPVAL                         R10 5
       65 GETTABLEKS                       R10 R10 K14 ["createElement"]
       67 GETUPVAL                         R11 8
       68 GETUPVAL                         R13 4
       69 GETTABLEKS                       R13 R13 K11 ["FoundationLoadingWrapInView"]
       71 JUMPIFNOT                        R13 ; [+2]
       72 MOVE                             R12 R5
       73 JUMP                             ; [+4]
       74 GETUPVAL                         R12 7
       75 MOVE                             R13 R2
       76 MOVE                             R14 R5
       77 CALL                             R12 2 1
       78 CALL                             R10 2 1
       79 SETTABLEKS                       R10 R9 K19 ["Icon"]
       81 CALL                             R6 3 -1
       82 RETURN                           R6 -1

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
       79 DUPTABLE                         R12 K25 [{["size"], ["testId"] = "--foundation-loading"}]
       80 GETTABLEKS                       R13 R5 K26 ["Large"]
       82 SETTABLEKS                       R13 R12 K22 ["size"]
       84 DUPCLOSURE                       R13 K27 [PROTO_0]
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R3
       94 GETTABLEKS                       R14 R2 K28 ["memo"]
       96 GETTABLEKS                       R15 R2 K29 ["forwardRef"]
       98 MOVE                             R16 R13
       99 CALL                             R15 1 -1
      100 CALL                             R14 -1 -1
      101 RETURN                           R14 -1
