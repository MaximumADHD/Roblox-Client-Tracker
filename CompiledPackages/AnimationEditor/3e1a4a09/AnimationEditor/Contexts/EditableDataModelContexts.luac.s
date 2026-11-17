PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["ContextStack"]
        8 DUPTABLE                         R3 K3 [{"providers"}]
        9 NEWTABLE                         R4 0 15
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K0 ["createElement"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K4 ["Provider"]
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K0 ["createElement"]
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R7 R7 K5 ["EditableDataModelProvider"]
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K0 ["createElement"]
       28 GETUPVAL                         R8 5
       29 GETTABLEKS                       R8 R8 K5 ["EditableDataModelProvider"]
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K0 ["createElement"]
       35 GETUPVAL                         R9 6
       36 GETTABLEKS                       R9 R9 K5 ["EditableDataModelProvider"]
       38 CALL                             R8 1 1
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K0 ["createElement"]
       42 GETUPVAL                         R10 7
       43 GETTABLEKS                       R10 R10 K5 ["EditableDataModelProvider"]
       45 CALL                             R9 1 1
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K0 ["createElement"]
       49 GETUPVAL                         R11 8
       50 GETTABLEKS                       R11 R11 K5 ["EditableDataModelProvider"]
       52 CALL                             R10 1 1
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R11 R11 K0 ["createElement"]
       56 GETUPVAL                         R12 9
       57 GETTABLEKS                       R12 R12 K5 ["EditableDataModelProvider"]
       59 CALL                             R11 1 1
       60 GETUPVAL                         R12 1
       61 GETTABLEKS                       R12 R12 K0 ["createElement"]
       63 GETUPVAL                         R13 10
       64 GETTABLEKS                       R13 R13 K5 ["EditableDataModelProvider"]
       66 CALL                             R12 1 1
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R13 R13 K0 ["createElement"]
       70 GETUPVAL                         R14 11
       71 GETTABLEKS                       R14 R14 K5 ["EditableDataModelProvider"]
       73 DUPTABLE                         R15 K7 [{"plugin"}]
       74 GETTABLEKS                       R16 R0 K6 ["plugin"]
       76 SETTABLEKS                       R16 R15 K6 ["plugin"]
       78 CALL                             R13 2 1
       79 GETUPVAL                         R14 1
       80 GETTABLEKS                       R14 R14 K0 ["createElement"]
       82 GETUPVAL                         R15 12
       83 GETTABLEKS                       R15 R15 K5 ["EditableDataModelProvider"]
       85 CALL                             R14 1 1
       86 GETUPVAL                         R15 1
       87 GETTABLEKS                       R15 R15 K0 ["createElement"]
       89 GETUPVAL                         R16 13
       90 GETTABLEKS                       R16 R16 K5 ["EditableDataModelProvider"]
       92 CALL                             R15 1 1
       93 GETUPVAL                         R16 1
       94 GETTABLEKS                       R16 R16 K0 ["createElement"]
       96 GETUPVAL                         R17 14
       97 GETTABLEKS                       R17 R17 K5 ["EditableDataModelProvider"]
       99 CALL                             R16 1 1
      100 GETUPVAL                         R17 1
      101 GETTABLEKS                       R17 R17 K0 ["createElement"]
      103 GETUPVAL                         R18 15
      104 GETTABLEKS                       R18 R18 K5 ["EditableDataModelProvider"]
      106 CALL                             R17 1 1
      107 GETUPVAL                         R18 1
      108 GETTABLEKS                       R18 R18 K0 ["createElement"]
      110 GETUPVAL                         R19 16
      111 GETTABLEKS                       R19 R19 K5 ["EditableDataModelProvider"]
      113 CALL                             R18 1 1
      114 GETTABLEKS                       R20 R0 K6 ["plugin"]
      116 JUMPIFNOT                        R20 ; [+13]
      117 GETUPVAL                         R19 1
      118 GETTABLEKS                       R19 R19 K0 ["createElement"]
      120 GETUPVAL                         R20 17
      121 GETTABLEKS                       R20 R20 K4 ["Provider"]
      123 DUPTABLE                         R21 K7 [{"plugin"}]
      124 GETTABLEKS                       R22 R0 K6 ["plugin"]
      126 SETTABLEKS                       R22 R21 K6 ["plugin"]
      128 CALL                             R19 2 1
      129 JUMP                             ; [+7]
      130 GETUPVAL                         R19 1
      131 GETTABLEKS                       R19 R19 K0 ["createElement"]
      133 GETUPVAL                         R20 1
      134 GETTABLEKS                       R20 R20 K8 ["Fragment"]
      136 CALL                             R19 1 1
      137 SETLIST                          R4 R5 15 [1]
      139 SETTABLEKS                       R4 R3 K2 ["providers"]
      141 GETTABLEKS                       R4 R0 K9 ["children"]
      143 CALL                             R1 3 -1
      144 RETURN                           R1 -1

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
       57 GETTABLEKS                       R8 R8 K14 ["LastOpenedGraphContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       64 GETTABLEKS                       R9 R9 K15 ["NodePropertyOverrideContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       71 GETTABLEKS                       R10 R10 K16 ["NodeSelectionContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K6 ["Contexts"]
       78 GETTABLEKS                       R11 R11 K17 ["NodesSelectedContext"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K6 ["Contexts"]
       85 GETTABLEKS                       R12 R12 K18 ["ParameterOverrideContext"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Contexts"]
       92 GETTABLEKS                       R13 R13 K19 ["PasteHookContext"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K11 ["Parent"]
       99 GETTABLEKS                       R14 R14 K20 ["React"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K11 ["Parent"]
      106 GETTABLEKS                       R15 R15 K21 ["ReactUtils"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETIMPORT                        R16 K1 [script]
      113 GETTABLEKS                       R16 R16 K11 ["Parent"]
      115 GETTABLEKS                       R16 R16 K22 ["RigListContext"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K6 ["Contexts"]
      122 GETTABLEKS                       R17 R17 K23 ["SelectedGraphContext"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K6 ["Contexts"]
      129 GETTABLEKS                       R18 R18 K24 ["SpotlightedNodeContext"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K25 ["Hooks"]
      136 GETTABLEKS                       R19 R19 K26 ["useVisibleAnalytics"]
      138 CALL                             R18 1 1
      139 DUPCLOSURE                       R19 K27 [PROTO_0]
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R12
      158 RETURN                           R19 1
