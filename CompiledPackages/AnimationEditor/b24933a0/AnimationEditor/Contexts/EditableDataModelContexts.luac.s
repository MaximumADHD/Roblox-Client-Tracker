PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["ContextStack"]
        8 DUPTABLE                         R3 K3 [{"providers"}]
        9 NEWTABLE                         R4 0 13
       11 GETUPVAL                         R6 3
       12 CALL                             R6 0 1
       13 JUMPIFNOT                        R6 ; [+8]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K0 ["createElement"]
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R6 R6 K4 ["Provider"]
       20 CALL                             R5 1 1
       21 JUMP                             ; [+7]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K0 ["createElement"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K5 ["Fragment"]
       28 CALL                             R5 1 1
       29 GETUPVAL                         R7 5
       30 CALL                             R7 0 1
       31 JUMPIFNOT                        R7 ; [+8]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K0 ["createElement"]
       35 GETUPVAL                         R7 6
       36 GETTABLEKS                       R7 R7 K6 ["EditableDataModelProvider"]
       38 CALL                             R6 1 1
       39 JUMP                             ; [+7]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K0 ["createElement"]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K5 ["Fragment"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R8 5
       48 CALL                             R8 0 1
       49 JUMPIFNOT                        R8 ; [+8]
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K0 ["createElement"]
       53 GETUPVAL                         R8 7
       54 GETTABLEKS                       R8 R8 K6 ["EditableDataModelProvider"]
       56 CALL                             R7 1 1
       57 JUMP                             ; [+7]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K0 ["createElement"]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K5 ["Fragment"]
       64 CALL                             R7 1 1
       65 GETUPVAL                         R9 5
       66 CALL                             R9 0 1
       67 JUMPIFNOT                        R9 ; [+8]
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R8 R8 K0 ["createElement"]
       71 GETUPVAL                         R9 8
       72 GETTABLEKS                       R9 R9 K6 ["EditableDataModelProvider"]
       74 CALL                             R8 1 1
       75 JUMP                             ; [+7]
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R8 R8 K0 ["createElement"]
       79 GETUPVAL                         R9 1
       80 GETTABLEKS                       R9 R9 K5 ["Fragment"]
       82 CALL                             R8 1 1
       83 GETUPVAL                         R10 5
       84 CALL                             R10 0 1
       85 JUMPIFNOT                        R10 ; [+8]
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K0 ["createElement"]
       89 GETUPVAL                         R10 9
       90 GETTABLEKS                       R10 R10 K6 ["EditableDataModelProvider"]
       92 CALL                             R9 1 1
       93 JUMP                             ; [+7]
       94 GETUPVAL                         R9 1
       95 GETTABLEKS                       R9 R9 K0 ["createElement"]
       97 GETUPVAL                         R10 1
       98 GETTABLEKS                       R10 R10 K5 ["Fragment"]
      100 CALL                             R9 1 1
      101 GETUPVAL                         R11 5
      102 CALL                             R11 0 1
      103 JUMPIFNOT                        R11 ; [+8]
      104 GETUPVAL                         R10 1
      105 GETTABLEKS                       R10 R10 K0 ["createElement"]
      107 GETUPVAL                         R11 10
      108 GETTABLEKS                       R11 R11 K6 ["EditableDataModelProvider"]
      110 CALL                             R10 1 1
      111 JUMP                             ; [+7]
      112 GETUPVAL                         R10 1
      113 GETTABLEKS                       R10 R10 K0 ["createElement"]
      115 GETUPVAL                         R11 1
      116 GETTABLEKS                       R11 R11 K5 ["Fragment"]
      118 CALL                             R10 1 1
      119 GETUPVAL                         R12 5
      120 CALL                             R12 0 1
      121 JUMPIFNOT                        R12 ; [+8]
      122 GETUPVAL                         R11 1
      123 GETTABLEKS                       R11 R11 K0 ["createElement"]
      125 GETUPVAL                         R12 11
      126 GETTABLEKS                       R12 R12 K6 ["EditableDataModelProvider"]
      128 CALL                             R11 1 1
      129 JUMP                             ; [+7]
      130 GETUPVAL                         R11 1
      131 GETTABLEKS                       R11 R11 K0 ["createElement"]
      133 GETUPVAL                         R12 1
      134 GETTABLEKS                       R12 R12 K5 ["Fragment"]
      136 CALL                             R11 1 1
      137 GETUPVAL                         R13 5
      138 CALL                             R13 0 1
      139 JUMPIFNOT                        R13 ; [+13]
      140 GETUPVAL                         R12 1
      141 GETTABLEKS                       R12 R12 K0 ["createElement"]
      143 GETUPVAL                         R13 12
      144 GETTABLEKS                       R13 R13 K6 ["EditableDataModelProvider"]
      146 DUPTABLE                         R14 K8 [{"plugin"}]
      147 GETTABLEKS                       R15 R0 K7 ["plugin"]
      149 SETTABLEKS                       R15 R14 K7 ["plugin"]
      151 CALL                             R12 2 1
      152 JUMP                             ; [+7]
      153 GETUPVAL                         R12 1
      154 GETTABLEKS                       R12 R12 K0 ["createElement"]
      156 GETUPVAL                         R13 1
      157 GETTABLEKS                       R13 R13 K5 ["Fragment"]
      159 CALL                             R12 1 1
      160 GETUPVAL                         R13 1
      161 GETTABLEKS                       R13 R13 K0 ["createElement"]
      163 GETUPVAL                         R14 13
      164 GETTABLEKS                       R14 R14 K6 ["EditableDataModelProvider"]
      166 CALL                             R13 1 1
      167 GETUPVAL                         R14 1
      168 GETTABLEKS                       R14 R14 K0 ["createElement"]
      170 GETUPVAL                         R15 14
      171 GETTABLEKS                       R15 R15 K6 ["EditableDataModelProvider"]
      173 CALL                             R14 1 1
      174 GETUPVAL                         R15 1
      175 GETTABLEKS                       R15 R15 K0 ["createElement"]
      177 GETUPVAL                         R16 15
      178 GETTABLEKS                       R16 R16 K6 ["EditableDataModelProvider"]
      180 CALL                             R15 1 1
      181 GETUPVAL                         R17 16
      182 CALL                             R17 0 1
      183 JUMPIFNOT                        R17 ; [+8]
      184 GETUPVAL                         R16 1
      185 GETTABLEKS                       R16 R16 K0 ["createElement"]
      187 GETUPVAL                         R17 17
      188 GETTABLEKS                       R17 R17 K6 ["EditableDataModelProvider"]
      190 CALL                             R16 1 1
      191 JUMP                             ; [+7]
      192 GETUPVAL                         R16 1
      193 GETTABLEKS                       R16 R16 K0 ["createElement"]
      195 GETUPVAL                         R17 1
      196 GETTABLEKS                       R17 R17 K5 ["Fragment"]
      198 CALL                             R16 1 1
      199 GETTABLEKS                       R18 R0 K7 ["plugin"]
      201 JUMPIFNOT                        R18 ; [+13]
      202 GETUPVAL                         R17 1
      203 GETTABLEKS                       R17 R17 K0 ["createElement"]
      205 GETUPVAL                         R18 18
      206 GETTABLEKS                       R18 R18 K4 ["Provider"]
      208 DUPTABLE                         R19 K8 [{"plugin"}]
      209 GETTABLEKS                       R20 R0 K7 ["plugin"]
      211 SETTABLEKS                       R20 R19 K7 ["plugin"]
      213 CALL                             R17 2 1
      214 JUMP                             ; [+7]
      215 GETUPVAL                         R17 1
      216 GETTABLEKS                       R17 R17 K0 ["createElement"]
      218 GETUPVAL                         R18 1
      219 GETTABLEKS                       R18 R18 K5 ["Fragment"]
      221 CALL                             R17 1 1
      222 SETLIST                          R4 R5 13 [1]
      224 SETTABLEKS                       R4 R3 K2 ["providers"]
      226 GETTABLEKS                       R4 R0 K9 ["children"]
      228 CALL                             R1 3 -1
      229 RETURN                           R1 -1

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
       57 GETTABLEKS                       R8 R8 K14 ["NodeSelectionContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       64 GETTABLEKS                       R9 R9 K15 ["NodesSelectedContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       71 GETTABLEKS                       R10 R10 K16 ["ParameterOverrideContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K6 ["Contexts"]
       78 GETTABLEKS                       R11 R11 K17 ["PasteHookContext"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K11 ["Parent"]
       85 GETTABLEKS                       R12 R12 K18 ["React"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K11 ["Parent"]
       92 GETTABLEKS                       R13 R13 K19 ["ReactUtils"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETIMPORT                        R14 K1 [script]
       99 GETTABLEKS                       R14 R14 K11 ["Parent"]
      101 GETTABLEKS                       R14 R14 K20 ["RigListContext"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K6 ["Contexts"]
      108 GETTABLEKS                       R15 R15 K21 ["SelectedGraphContext"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K6 ["Contexts"]
      115 GETTABLEKS                       R16 R16 K22 ["SpotlightedNodeContext"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K23 ["Flags"]
      122 GETTABLEKS                       R17 R17 K24 ["getFFlagAnimGraphUIStudioActionOverrides"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K23 ["Flags"]
      129 GETTABLEKS                       R18 R18 K25 ["getFFlagAnimGraphUI_RunTimeDebug"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K23 ["Flags"]
      136 GETTABLEKS                       R19 R19 K26 ["getFFlagAnimGraphUI_SpotlightNodes"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K27 ["Hooks"]
      143 GETTABLEKS                       R20 R20 K28 ["useVisibleAnalytics"]
      145 CALL                             R19 1 1
      146 DUPCLOSURE                       R20 K29 [PROTO_0]
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R10
      166 RETURN                           R20 1
