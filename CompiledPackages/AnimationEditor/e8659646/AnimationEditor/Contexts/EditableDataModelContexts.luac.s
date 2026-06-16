PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["ContextStack"]
        8 DUPTABLE                         R3 K3 [{"providers"}]
        9 NEWTABLE                         R4 0 10
       11 GETUPVAL                         R6 3
       12 CALL                             R6 0 1
       13 JUMPIFNOT                        R6 ; [+8]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K0 ["createElement"]
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R6 R6 K4 ["EditableDataModelProvider"]
       20 CALL                             R5 1 1
       21 JUMP                             ; [+7]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K0 ["createElement"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K5 ["Fragment"]
       28 CALL                             R5 1 1
       29 GETUPVAL                         R7 3
       30 CALL                             R7 0 1
       31 JUMPIFNOT                        R7 ; [+8]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K0 ["createElement"]
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R7 R7 K4 ["EditableDataModelProvider"]
       38 CALL                             R6 1 1
       39 JUMP                             ; [+7]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K0 ["createElement"]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K5 ["Fragment"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R8 3
       48 CALL                             R8 0 1
       49 JUMPIFNOT                        R8 ; [+8]
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K0 ["createElement"]
       53 GETUPVAL                         R8 6
       54 GETTABLEKS                       R8 R8 K4 ["EditableDataModelProvider"]
       56 CALL                             R7 1 1
       57 JUMP                             ; [+7]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K0 ["createElement"]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K5 ["Fragment"]
       64 CALL                             R7 1 1
       65 GETUPVAL                         R9 3
       66 CALL                             R9 0 1
       67 JUMPIFNOT                        R9 ; [+8]
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R8 R8 K0 ["createElement"]
       71 GETUPVAL                         R9 7
       72 GETTABLEKS                       R9 R9 K4 ["EditableDataModelProvider"]
       74 CALL                             R8 1 1
       75 JUMP                             ; [+7]
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R8 R8 K0 ["createElement"]
       79 GETUPVAL                         R9 1
       80 GETTABLEKS                       R9 R9 K5 ["Fragment"]
       82 CALL                             R8 1 1
       83 GETUPVAL                         R10 3
       84 CALL                             R10 0 1
       85 JUMPIFNOT                        R10 ; [+8]
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K0 ["createElement"]
       89 GETUPVAL                         R10 8
       90 GETTABLEKS                       R10 R10 K4 ["EditableDataModelProvider"]
       92 CALL                             R9 1 1
       93 JUMP                             ; [+7]
       94 GETUPVAL                         R9 1
       95 GETTABLEKS                       R9 R9 K0 ["createElement"]
       97 GETUPVAL                         R10 1
       98 GETTABLEKS                       R10 R10 K5 ["Fragment"]
      100 CALL                             R9 1 1
      101 GETUPVAL                         R11 3
      102 CALL                             R11 0 1
      103 JUMPIFNOT                        R11 ; [+13]
      104 GETUPVAL                         R10 1
      105 GETTABLEKS                       R10 R10 K0 ["createElement"]
      107 GETUPVAL                         R11 9
      108 GETTABLEKS                       R11 R11 K4 ["EditableDataModelProvider"]
      110 DUPTABLE                         R12 K7 [{"plugin"}]
      111 GETTABLEKS                       R13 R0 K6 ["plugin"]
      113 SETTABLEKS                       R13 R12 K6 ["plugin"]
      115 CALL                             R10 2 1
      116 JUMP                             ; [+7]
      117 GETUPVAL                         R10 1
      118 GETTABLEKS                       R10 R10 K0 ["createElement"]
      120 GETUPVAL                         R11 1
      121 GETTABLEKS                       R11 R11 K5 ["Fragment"]
      123 CALL                             R10 1 1
      124 GETUPVAL                         R11 1
      125 GETTABLEKS                       R11 R11 K0 ["createElement"]
      127 GETUPVAL                         R12 10
      128 GETTABLEKS                       R12 R12 K4 ["EditableDataModelProvider"]
      130 CALL                             R11 1 1
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R12 R12 K0 ["createElement"]
      134 GETUPVAL                         R13 11
      135 GETTABLEKS                       R13 R13 K4 ["EditableDataModelProvider"]
      137 CALL                             R12 1 1
      138 GETUPVAL                         R13 1
      139 GETTABLEKS                       R13 R13 K0 ["createElement"]
      141 GETUPVAL                         R14 12
      142 GETTABLEKS                       R14 R14 K4 ["EditableDataModelProvider"]
      144 CALL                             R13 1 1
      145 GETTABLEKS                       R15 R0 K6 ["plugin"]
      147 JUMPIFNOT                        R15 ; [+13]
      148 GETUPVAL                         R14 1
      149 GETTABLEKS                       R14 R14 K0 ["createElement"]
      151 GETUPVAL                         R15 13
      152 GETTABLEKS                       R15 R15 K8 ["Provider"]
      154 DUPTABLE                         R16 K7 [{"plugin"}]
      155 GETTABLEKS                       R17 R0 K6 ["plugin"]
      157 SETTABLEKS                       R17 R16 K6 ["plugin"]
      159 CALL                             R14 2 1
      160 JUMP                             ; [+7]
      161 GETUPVAL                         R14 1
      162 GETTABLEKS                       R14 R14 K0 ["createElement"]
      164 GETUPVAL                         R15 1
      165 GETTABLEKS                       R15 R15 K5 ["Fragment"]
      167 CALL                             R14 1 1
      168 SETLIST                          R4 R5 10 [1]
      170 SETTABLEKS                       R4 R3 K2 ["providers"]
      172 GETTABLEKS                       R4 R0 K9 ["children"]
      174 CALL                             R1 3 -1
      175 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["CreateGraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["CreateScriptContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K9 ["DebugUiContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["GraphPlayedContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K10 ["Parent"]
       43 GETTABLEKS                       R6 R6 K12 ["GraphTimestampContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K13 ["NodesSelectedContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K14 ["ParameterOverrideContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       64 GETTABLEKS                       R9 R9 K15 ["PasteHookContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K10 ["Parent"]
       71 GETTABLEKS                       R10 R10 K16 ["React"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K10 ["Parent"]
       78 GETTABLEKS                       R11 R11 K17 ["ReactUtils"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETIMPORT                        R12 K1 [script]
       85 GETTABLEKS                       R12 R12 K10 ["Parent"]
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
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K22 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K23 ["useVisibleAnalytics"]
      110 CALL                             R14 1 1
      111 DUPCLOSURE                       R15 K24 [PROTO_0]
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R8
      126 RETURN                           R15 1
