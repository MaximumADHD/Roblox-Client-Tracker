PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["formatTimestamp"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Value"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["Value"]
       10 GETTABLEKS                       R1 R1 K2 ["Time"]
       12 JUMPIF                           R1 ; [+1]
       13 LOADN                            R1 0
       14 LOADB                            R2 0
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Value"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 NEWTABLE                         R4 0 1
       10 GETTABLEKS                       R5 R0 K1 ["Value"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R5 0 4
       23 GETTABLEKS                       R6 R0 K1 ["Value"]
       25 JUMPIFNOT                        R6 ; [+4]
       26 GETTABLEKS                       R6 R0 K1 ["Value"]
       28 GETTABLEKS                       R6 R6 K3 ["Duration"]
       30 GETTABLEKS                       R7 R0 K1 ["Value"]
       32 JUMPIFNOT                        R7 ; [+4]
       33 GETTABLEKS                       R7 R0 K1 ["Value"]
       35 GETTABLEKS                       R7 R7 K4 ["StartTime"]
       37 GETTABLEKS                       R8 R0 K1 ["Value"]
       39 JUMPIFNOT                        R8 ; [+4]
       40 GETTABLEKS                       R8 R0 K1 ["Value"]
       42 GETTABLEKS                       R8 R8 K5 ["EndTime"]
       44 GETTABLEKS                       R9 R0 K1 ["Value"]
       46 JUMPIFNOT                        R9 ; [+4]
       47 GETTABLEKS                       R9 R0 K1 ["Value"]
       49 GETTABLEKS                       R9 R9 K6 ["Time"]
       51 SETLIST                          R5 R6 4 [1]
       53 CALL                             R3 2 1
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R4 R4 K7 ["createElement"]
       57 GETUPVAL                         R5 4
       58 GETTABLEKS                       R5 R5 K8 ["View"]
       60 DUPTABLE                         R6 K13 [{"tag", "backgroundStyle", "LayoutOrder", "testId"}]
       61 GETUPVAL                         R7 4
       62 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       64 GETTABLEKS                       R7 R7 K15 ["useDefaultTags"]
       66 GETTABLEKS                       R8 R0 K16 ["tags"]
       68 LOADK                            R9 K17 ["row auto-y gap-small size-full-700 align-y-center padding-small flex-x-fill"]
       69 CALL                             R7 2 1
       70 SETTABLEKS                       R7 R6 K9 ["tag"]
       72 GETTABLEKS                       R7 R1 K18 ["Color"]
       74 GETTABLEKS                       R7 R7 K19 ["Surface"]
       76 GETTABLEKS                       R7 R7 K20 ["Surface_0"]
       78 SETTABLEKS                       R7 R6 K10 ["backgroundStyle"]
       80 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       82 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       84 GETTABLEKS                       R7 R0 K12 ["testId"]
       86 SETTABLEKS                       R7 R6 K12 ["testId"]
       88 DUPTABLE                         R7 K23 [{"CompositorNodeInputLabel", "Input"}]
       89 GETUPVAL                         R8 1
       90 GETTABLEKS                       R8 R8 K7 ["createElement"]
       92 GETUPVAL                         R9 5
       93 DUPTABLE                         R10 K27 [{"tag", "Size", "Text", "LayoutOrder", "isDisabled"}]
       94 LOADK                            R11 K28 ["text-body-small text-align-x-left auto-y no-flex"]
       95 SETTABLEKS                       R11 R10 K9 ["tag"]
       97 GETIMPORT                        R11 K31 [UDim2.new]
       99 LOADN                            R12 0
      100 LOADN                            R13 40
      101 LOADN                            R14 0
      102 LOADN                            R15 0
      103 CALL                             R11 4 1
      104 SETTABLEKS                       R11 R10 K24 ["Size"]
      106 SETTABLEKS                       R2 R10 K25 ["Text"]
      108 LOADN                            R11 1
      109 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      111 GETTABLEKS                       R12 R0 K33 ["IsDisabled"]
      113 ORK                              R11 R12 K32 [False]
      114 SETTABLEKS                       R11 R10 K26 ["isDisabled"]
      116 CALL                             R8 2 1
      117 SETTABLEKS                       R8 R7 K21 ["CompositorNodeInputLabel"]
      119 GETUPVAL                         R8 1
      120 GETTABLEKS                       R8 R8 K7 ["createElement"]
      122 GETUPVAL                         R9 6
      123 DUPTABLE                         R10 K36 [{"tag", "gradient", "value", "LayoutOrder"}]
      124 LOADK                            R11 K37 ["size-full-700"]
      125 SETTABLEKS                       R11 R10 K9 ["tag"]
      127 SETTABLEKS                       R3 R10 K34 ["gradient"]
      129 GETTABLEKS                       R12 R0 K1 ["Value"]
      131 JUMPIFNOT                        R12 ; [+5]
      132 GETTABLEKS                       R11 R0 K1 ["Value"]
      134 GETTABLEKS                       R11 R11 K6 ["Time"]
      136 JUMPIF                           R11 ; [+1]
      137 LOADN                            R11 0
      138 SETTABLEKS                       R11 R10 K35 ["value"]
      140 LOADN                            R11 2
      141 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      143 CALL                             R8 2 1
      144 SETTABLEKS                       R8 R7 K22 ["Input"]
      146 CALL                             R4 3 -1
      147 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R3 K10 ["CompositorNodeProperty"]
       22 GETTABLEKS                       R3 R3 K11 ["PropertyLabel"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Components"]
       29 GETTABLEKS                       R4 R4 K9 ["NodeView"]
       31 GETTABLEKS                       R4 R4 K10 ["CompositorNodeProperty"]
       33 GETTABLEKS                       R4 R4 K12 ["PropertyUtils"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Parent"]
       40 GETTABLEKS                       R5 R5 K13 ["React"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R6 K1 [script]
       47 GETTABLEKS                       R6 R6 K14 ["TimeProgressBar"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETIMPORT                        R7 K1 [script]
       54 GETTABLEKS                       R7 R7 K15 ["Types"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETIMPORT                        R8 K1 [script]
       61 GETTABLEKS                       R8 R8 K16 ["getGradientNumberSequence"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R1 K17 ["Hooks"]
       66 GETTABLEKS                       R8 R8 K18 ["useTokens"]
       68 DUPCLOSURE                       R9 K19 [PROTO_2]
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R5
       76 RETURN                           R9 1
