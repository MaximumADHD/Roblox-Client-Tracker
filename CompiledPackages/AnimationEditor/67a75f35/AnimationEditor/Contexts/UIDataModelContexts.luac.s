PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ContextStack"]
        6 DUPTABLE                         R3 K3 [{"providers"}]
        7 NEWTABLE                         R4 0 10
        9 GETUPVAL                         R6 2
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+8]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K4 ["UIDataModelProvider"]
       18 CALL                             R5 1 1
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["createElement"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K5 ["Fragment"]
       26 CALL                             R5 1 1
       27 GETUPVAL                         R7 2
       28 CALL                             R7 0 1
       29 JUMPIFNOT                        R7 ; [+8]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K0 ["createElement"]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R7 R7 K4 ["UIDataModelProvider"]
       36 CALL                             R6 1 1
       37 JUMP                             ; [+7]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K0 ["createElement"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K5 ["Fragment"]
       44 CALL                             R6 1 1
       45 GETUPVAL                         R8 2
       46 CALL                             R8 0 1
       47 JUMPIFNOT                        R8 ; [+8]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K0 ["createElement"]
       51 GETUPVAL                         R8 5
       52 GETTABLEKS                       R8 R8 K4 ["UIDataModelProvider"]
       54 CALL                             R7 1 1
       55 JUMP                             ; [+7]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K0 ["createElement"]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K5 ["Fragment"]
       62 CALL                             R7 1 1
       63 GETUPVAL                         R9 2
       64 CALL                             R9 0 1
       65 JUMPIFNOT                        R9 ; [+8]
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R8 R8 K0 ["createElement"]
       69 GETUPVAL                         R9 6
       70 GETTABLEKS                       R9 R9 K4 ["UIDataModelProvider"]
       72 CALL                             R8 1 1
       73 JUMP                             ; [+7]
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R8 R8 K0 ["createElement"]
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K5 ["Fragment"]
       80 CALL                             R8 1 1
       81 GETUPVAL                         R10 2
       82 CALL                             R10 0 1
       83 JUMPIFNOT                        R10 ; [+8]
       84 GETUPVAL                         R9 0
       85 GETTABLEKS                       R9 R9 K0 ["createElement"]
       87 GETUPVAL                         R10 7
       88 GETTABLEKS                       R10 R10 K4 ["UIDataModelProvider"]
       90 CALL                             R9 1 1
       91 JUMP                             ; [+7]
       92 GETUPVAL                         R9 0
       93 GETTABLEKS                       R9 R9 K0 ["createElement"]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K5 ["Fragment"]
       98 CALL                             R9 1 1
       99 GETUPVAL                         R11 2
      100 CALL                             R11 0 1
      101 JUMPIFNOT                        R11 ; [+13]
      102 GETUPVAL                         R10 0
      103 GETTABLEKS                       R10 R10 K0 ["createElement"]
      105 GETUPVAL                         R11 8
      106 GETTABLEKS                       R11 R11 K4 ["UIDataModelProvider"]
      108 DUPTABLE                         R12 K7 [{"plugin"}]
      109 GETTABLEKS                       R13 R0 K6 ["plugin"]
      111 SETTABLEKS                       R13 R12 K6 ["plugin"]
      113 CALL                             R10 2 1
      114 JUMP                             ; [+7]
      115 GETUPVAL                         R10 0
      116 GETTABLEKS                       R10 R10 K0 ["createElement"]
      118 GETUPVAL                         R11 0
      119 GETTABLEKS                       R11 R11 K5 ["Fragment"]
      121 CALL                             R10 1 1
      122 GETUPVAL                         R11 0
      123 GETTABLEKS                       R11 R11 K0 ["createElement"]
      125 GETUPVAL                         R12 9
      126 GETTABLEKS                       R12 R12 K8 ["Provider"]
      128 CALL                             R11 1 1
      129 GETUPVAL                         R12 0
      130 GETTABLEKS                       R12 R12 K0 ["createElement"]
      132 GETUPVAL                         R13 10
      133 GETTABLEKS                       R13 R13 K4 ["UIDataModelProvider"]
      135 CALL                             R12 1 1
      136 GETUPVAL                         R13 0
      137 GETTABLEKS                       R13 R13 K0 ["createElement"]
      139 GETUPVAL                         R14 11
      140 GETTABLEKS                       R14 R14 K4 ["UIDataModelProvider"]
      142 CALL                             R13 1 1
      143 GETUPVAL                         R14 0
      144 GETTABLEKS                       R14 R14 K0 ["createElement"]
      146 GETUPVAL                         R15 12
      147 GETTABLEKS                       R15 R15 K4 ["UIDataModelProvider"]
      149 CALL                             R14 1 -1
      150 SETLIST                          R4 R5 -1 [1]
      152 SETTABLEKS                       R4 R3 K2 ["providers"]
      154 GETTABLEKS                       R4 R0 K9 ["children"]
      156 CALL                             R1 3 -1
      157 RETURN                           R1 -1

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
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K11 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["GraphPlayedContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETIMPORT                        R7 K1 [script]
       48 GETTABLEKS                       R7 R7 K11 ["Parent"]
       50 GETTABLEKS                       R7 R7 K13 ["GraphTimestampContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K14 ["NodesSelectedContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       64 GETTABLEKS                       R9 R9 K15 ["ParameterOverrideContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K11 ["Parent"]
       71 GETTABLEKS                       R10 R10 K16 ["React"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K11 ["Parent"]
       78 GETTABLEKS                       R11 R11 K17 ["ReactUtils"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETIMPORT                        R12 K1 [script]
       85 GETTABLEKS                       R12 R12 K11 ["Parent"]
       87 GETTABLEKS                       R12 R12 K18 ["RigListContext"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K6 ["Contexts"]
       94 GETTABLEKS                       R13 R13 K19 ["SelectedGraphContext"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K20 ["Flags"]
      101 GETTABLEKS                       R14 R14 K21 ["getFFlagAnimGraphUI_RunTimeDebug"]
      103 CALL                             R13 1 1
      104 DUPCLOSURE                       R14 K22 [PROTO_0]
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R8
      118 RETURN                           R14 1
