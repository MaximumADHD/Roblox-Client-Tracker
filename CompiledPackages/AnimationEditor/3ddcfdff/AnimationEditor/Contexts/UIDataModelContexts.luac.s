PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ContextStack"]
        6 DUPTABLE                         R3 K3 [{"providers"}]
        7 NEWTABLE                         R4 0 11
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
      101 JUMPIFNOT                        R11 ; [+8]
      102 GETUPVAL                         R10 0
      103 GETTABLEKS                       R10 R10 K0 ["createElement"]
      105 GETUPVAL                         R11 8
      106 GETTABLEKS                       R11 R11 K4 ["UIDataModelProvider"]
      108 CALL                             R10 1 1
      109 JUMP                             ; [+7]
      110 GETUPVAL                         R10 0
      111 GETTABLEKS                       R10 R10 K0 ["createElement"]
      113 GETUPVAL                         R11 0
      114 GETTABLEKS                       R11 R11 K5 ["Fragment"]
      116 CALL                             R10 1 1
      117 GETUPVAL                         R12 2
      118 CALL                             R12 0 1
      119 JUMPIFNOT                        R12 ; [+13]
      120 GETUPVAL                         R11 0
      121 GETTABLEKS                       R11 R11 K0 ["createElement"]
      123 GETUPVAL                         R12 9
      124 GETTABLEKS                       R12 R12 K4 ["UIDataModelProvider"]
      126 DUPTABLE                         R13 K7 [{"plugin"}]
      127 GETTABLEKS                       R14 R0 K6 ["plugin"]
      129 SETTABLEKS                       R14 R13 K6 ["plugin"]
      131 CALL                             R11 2 1
      132 JUMP                             ; [+7]
      133 GETUPVAL                         R11 0
      134 GETTABLEKS                       R11 R11 K0 ["createElement"]
      136 GETUPVAL                         R12 0
      137 GETTABLEKS                       R12 R12 K5 ["Fragment"]
      139 CALL                             R11 1 1
      140 GETUPVAL                         R12 0
      141 GETTABLEKS                       R12 R12 K0 ["createElement"]
      143 GETUPVAL                         R13 10
      144 GETTABLEKS                       R13 R13 K8 ["Provider"]
      146 CALL                             R12 1 1
      147 GETUPVAL                         R13 0
      148 GETTABLEKS                       R13 R13 K0 ["createElement"]
      150 GETUPVAL                         R14 11
      151 GETTABLEKS                       R14 R14 K4 ["UIDataModelProvider"]
      153 CALL                             R13 1 1
      154 GETUPVAL                         R14 0
      155 GETTABLEKS                       R14 R14 K0 ["createElement"]
      157 GETUPVAL                         R15 12
      158 GETTABLEKS                       R15 R15 K4 ["UIDataModelProvider"]
      160 CALL                             R14 1 1
      161 GETUPVAL                         R15 0
      162 GETTABLEKS                       R15 R15 K0 ["createElement"]
      164 GETUPVAL                         R16 13
      165 GETTABLEKS                       R16 R16 K4 ["UIDataModelProvider"]
      167 CALL                             R15 1 -1
      168 SETLIST                          R4 R5 -1 [1]
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
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K21 ["Flags"]
      102 GETTABLEKS                       R15 R15 K22 ["getFFlagAnimGraphUI_RunTimeDebug"]
      104 CALL                             R14 1 1
      105 DUPCLOSURE                       R15 K23 [PROTO_0]
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R9
      120 RETURN                           R15 1
