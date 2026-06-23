PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["ContextStack"]
        8 DUPTABLE                         R3 K3 [{"providers"}]
        9 NEWTABLE                         R4 0 11
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
      103 JUMPIFNOT                        R11 ; [+8]
      104 GETUPVAL                         R10 1
      105 GETTABLEKS                       R10 R10 K0 ["createElement"]
      107 GETUPVAL                         R11 9
      108 GETTABLEKS                       R11 R11 K4 ["EditableDataModelProvider"]
      110 CALL                             R10 1 1
      111 JUMP                             ; [+7]
      112 GETUPVAL                         R10 1
      113 GETTABLEKS                       R10 R10 K0 ["createElement"]
      115 GETUPVAL                         R11 1
      116 GETTABLEKS                       R11 R11 K5 ["Fragment"]
      118 CALL                             R10 1 1
      119 GETUPVAL                         R12 3
      120 CALL                             R12 0 1
      121 JUMPIFNOT                        R12 ; [+13]
      122 GETUPVAL                         R11 1
      123 GETTABLEKS                       R11 R11 K0 ["createElement"]
      125 GETUPVAL                         R12 10
      126 GETTABLEKS                       R12 R12 K4 ["EditableDataModelProvider"]
      128 DUPTABLE                         R13 K7 [{"plugin"}]
      129 GETTABLEKS                       R14 R0 K6 ["plugin"]
      131 SETTABLEKS                       R14 R13 K6 ["plugin"]
      133 CALL                             R11 2 1
      134 JUMP                             ; [+7]
      135 GETUPVAL                         R11 1
      136 GETTABLEKS                       R11 R11 K0 ["createElement"]
      138 GETUPVAL                         R12 1
      139 GETTABLEKS                       R12 R12 K5 ["Fragment"]
      141 CALL                             R11 1 1
      142 GETUPVAL                         R12 1
      143 GETTABLEKS                       R12 R12 K0 ["createElement"]
      145 GETUPVAL                         R13 11
      146 GETTABLEKS                       R13 R13 K4 ["EditableDataModelProvider"]
      148 CALL                             R12 1 1
      149 GETUPVAL                         R13 1
      150 GETTABLEKS                       R13 R13 K0 ["createElement"]
      152 GETUPVAL                         R14 12
      153 GETTABLEKS                       R14 R14 K4 ["EditableDataModelProvider"]
      155 CALL                             R13 1 1
      156 GETUPVAL                         R14 1
      157 GETTABLEKS                       R14 R14 K0 ["createElement"]
      159 GETUPVAL                         R15 13
      160 GETTABLEKS                       R15 R15 K4 ["EditableDataModelProvider"]
      162 CALL                             R14 1 1
      163 GETTABLEKS                       R16 R0 K6 ["plugin"]
      165 JUMPIFNOT                        R16 ; [+13]
      166 GETUPVAL                         R15 1
      167 GETTABLEKS                       R15 R15 K0 ["createElement"]
      169 GETUPVAL                         R16 14
      170 GETTABLEKS                       R16 R16 K8 ["Provider"]
      172 DUPTABLE                         R17 K7 [{"plugin"}]
      173 GETTABLEKS                       R18 R0 K6 ["plugin"]
      175 SETTABLEKS                       R18 R17 K6 ["plugin"]
      177 CALL                             R15 2 1
      178 JUMP                             ; [+7]
      179 GETUPVAL                         R15 1
      180 GETTABLEKS                       R15 R15 K0 ["createElement"]
      182 GETUPVAL                         R16 1
      183 GETTABLEKS                       R16 R16 K5 ["Fragment"]
      185 CALL                             R15 1 1
      186 SETLIST                          R4 R5 11 [1]
      188 SETTABLEKS                       R4 R3 K2 ["providers"]
      190 GETTABLEKS                       R4 R0 K9 ["children"]
      192 CALL                             R1 3 -1
      193 RETURN                           R1 -1

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
       30 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K10 ["GraphDebugDataContext"]
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
       69 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       71 GETTABLEKS                       R10 R10 K16 ["PasteHookContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K11 ["Parent"]
       78 GETTABLEKS                       R11 R11 K17 ["React"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K11 ["Parent"]
       85 GETTABLEKS                       R12 R12 K18 ["ReactUtils"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETIMPORT                        R13 K1 [script]
       92 GETTABLEKS                       R13 R13 K11 ["Parent"]
       94 GETTABLEKS                       R13 R13 K19 ["RigListContext"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K6 ["Contexts"]
      101 GETTABLEKS                       R14 R14 K20 ["SelectedGraphContext"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K21 ["Flags"]
      108 GETTABLEKS                       R15 R15 K22 ["getFFlagAnimGraphUI_RunTimeDebug"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K23 ["Hooks"]
      115 GETTABLEKS                       R16 R16 K24 ["useVisibleAnalytics"]
      117 CALL                             R15 1 1
      118 DUPCLOSURE                       R16 K25 [PROTO_0]
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R9
      134 RETURN                           R16 1
