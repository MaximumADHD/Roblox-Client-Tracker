PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ContextStack"]
        6 DUPTABLE                         R3 K3 [{"providers"}]
        7 NEWTABLE                         R4 0 11
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K4 ["UIDataModelProvider"]
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K0 ["createElement"]
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K4 ["UIDataModelProvider"]
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K0 ["createElement"]
       26 GETUPVAL                         R8 4
       27 GETTABLEKS                       R8 R8 K4 ["UIDataModelProvider"]
       29 CALL                             R7 1 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K0 ["createElement"]
       33 GETUPVAL                         R9 5
       34 GETTABLEKS                       R9 R9 K4 ["UIDataModelProvider"]
       36 CALL                             R8 1 1
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K0 ["createElement"]
       40 GETUPVAL                         R10 6
       41 GETTABLEKS                       R10 R10 K4 ["UIDataModelProvider"]
       43 CALL                             R9 1 1
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K0 ["createElement"]
       47 GETUPVAL                         R11 7
       48 GETTABLEKS                       R11 R11 K4 ["UIDataModelProvider"]
       50 CALL                             R10 1 1
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R11 R11 K0 ["createElement"]
       54 GETUPVAL                         R12 8
       55 GETTABLEKS                       R12 R12 K4 ["UIDataModelProvider"]
       57 DUPTABLE                         R13 K6 [{"plugin"}]
       58 GETTABLEKS                       R14 R0 K5 ["plugin"]
       60 SETTABLEKS                       R14 R13 K5 ["plugin"]
       62 CALL                             R11 2 1
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K0 ["createElement"]
       66 GETUPVAL                         R13 9
       67 GETTABLEKS                       R13 R13 K7 ["Provider"]
       69 CALL                             R12 1 1
       70 GETUPVAL                         R13 0
       71 GETTABLEKS                       R13 R13 K0 ["createElement"]
       73 GETUPVAL                         R14 10
       74 GETTABLEKS                       R14 R14 K4 ["UIDataModelProvider"]
       76 CALL                             R13 1 1
       77 GETUPVAL                         R14 0
       78 GETTABLEKS                       R14 R14 K0 ["createElement"]
       80 GETUPVAL                         R15 11
       81 GETTABLEKS                       R15 R15 K4 ["UIDataModelProvider"]
       83 CALL                             R14 1 1
       84 GETUPVAL                         R15 0
       85 GETTABLEKS                       R15 R15 K0 ["createElement"]
       87 GETUPVAL                         R16 12
       88 GETTABLEKS                       R16 R16 K4 ["UIDataModelProvider"]
       90 CALL                             R15 1 -1
       91 SETLIST                          R4 R5 -1 [1]
       93 SETTABLEKS                       R4 R3 K2 ["providers"]
       95 GETTABLEKS                       R4 R0 K8 ["children"]
       97 CALL                             R1 3 -1
       98 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetNameContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["CreateGraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K9 ["CreateScriptContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K10 ["DebugUiContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K11 ["GraphDebugDataContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K12 ["GraphPlayedContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K13 ["GraphTimestampContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       60 GETTABLEKS                       R9 R9 K14 ["NodesSelectedContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       67 GETTABLEKS                       R10 R10 K15 ["ParameterOverrideContext"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K16 ["Parent"]
       74 GETTABLEKS                       R11 R11 K17 ["React"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K16 ["Parent"]
       81 GETTABLEKS                       R12 R12 K18 ["ReactUtils"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Contexts"]
       88 GETTABLEKS                       R13 R13 K19 ["RigListContext"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K6 ["Contexts"]
       95 GETTABLEKS                       R14 R14 K20 ["SelectedGraphContext"]
       97 CALL                             R13 1 1
       98 DUPCLOSURE                       R14 K21 [PROTO_0]
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R9
      112 RETURN                           R14 1
