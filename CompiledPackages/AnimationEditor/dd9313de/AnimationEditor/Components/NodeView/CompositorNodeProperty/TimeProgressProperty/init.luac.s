PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["formatTimestamp"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Value"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["Value"]
       10 GETTABLEKS                       R1 R2 K2 ["Time"]
       12 JUMPIF                           R1 ; [+1]
       13 LOADN                            R1 0
       14 LOADB                            R2 0
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Value"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["Value"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K2 ["useCallback"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R4 0 4
       21 GETTABLEKS                       R5 R0 K1 ["Value"]
       23 JUMPIFNOT                        R5 ; [+4]
       24 GETTABLEKS                       R6 R0 K1 ["Value"]
       26 GETTABLEKS                       R5 R6 K3 ["Duration"]
       28 GETTABLEKS                       R6 R0 K1 ["Value"]
       30 JUMPIFNOT                        R6 ; [+4]
       31 GETTABLEKS                       R7 R0 K1 ["Value"]
       33 GETTABLEKS                       R6 R7 K4 ["StartTime"]
       35 GETTABLEKS                       R7 R0 K1 ["Value"]
       37 JUMPIFNOT                        R7 ; [+4]
       38 GETTABLEKS                       R8 R0 K1 ["Value"]
       40 GETTABLEKS                       R7 R8 K5 ["EndTime"]
       42 GETTABLEKS                       R8 R0 K1 ["Value"]
       44 JUMPIFNOT                        R8 ; [+4]
       45 GETTABLEKS                       R9 R0 K1 ["Value"]
       47 GETTABLEKS                       R8 R9 K6 ["Time"]
       49 SETLIST                          R4 R5 4 [1]
       51 CALL                             R2 2 1
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R3 R4 K7 ["createElement"]
       55 GETUPVAL                         R5 3
       56 GETTABLEKS                       R4 R5 K8 ["View"]
       58 DUPTABLE                         R5 K12 [{"tag", "backgroundStyle", "LayoutOrder"}]
       59 GETUPVAL                         R8 3
       60 GETTABLEKS                       R7 R8 K13 ["Hooks"]
       62 GETTABLEKS                       R6 R7 K14 ["useDefaultTags"]
       64 GETTABLEKS                       R7 R0 K15 ["tags"]
       66 LOADK                            R8 K16 ["row auto-y gap-small size-full-700 align-y-center padding-small flex-x-fill"]
       67 CALL                             R6 2 1
       68 SETTABLEKS                       R6 R5 K9 ["tag"]
       70 DUPTABLE                         R6 K18 [{"Color3"}]
       71 GETIMPORT                        R7 K20 [Color3.fromRGB]
       73 LOADN                            R8 25
       74 LOADN                            R9 25
       75 LOADN                            R10 25
       76 CALL                             R7 3 1
       77 SETTABLEKS                       R7 R6 K17 ["Color3"]
       79 SETTABLEKS                       R6 R5 K10 ["backgroundStyle"]
       81 GETTABLEKS                       R6 R0 K11 ["LayoutOrder"]
       83 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       85 DUPTABLE                         R6 K23 [{"CompositorNodeInputLabel", "Input"}]
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R7 R8 K7 ["createElement"]
       89 GETUPVAL                         R8 4
       90 DUPTABLE                         R9 K27 [{"tag", "Size", "Text", "LayoutOrder", "isDisabled"}]
       91 LOADK                            R10 K28 ["text-body-small text-align-x-left auto-y no-flex"]
       92 SETTABLEKS                       R10 R9 K9 ["tag"]
       94 GETIMPORT                        R10 K31 [UDim2.new]
       96 LOADN                            R11 0
       97 LOADN                            R12 40
       98 LOADN                            R13 0
       99 LOADN                            R14 0
      100 CALL                             R10 4 1
      101 SETTABLEKS                       R10 R9 K24 ["Size"]
      103 SETTABLEKS                       R1 R9 K25 ["Text"]
      105 LOADN                            R10 1
      106 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
      108 GETTABLEKS                       R10 R0 K32 ["IsReadOnly"]
      110 JUMPIF                           R10 ; [+4]
      111 GETTABLEKS                       R10 R0 K33 ["IsDisabled"]
      113 JUMPIF                           R10 ; [+1]
      114 LOADB                            R10 0
      115 SETTABLEKS                       R10 R9 K26 ["isDisabled"]
      117 CALL                             R7 2 1
      118 SETTABLEKS                       R7 R6 K21 ["CompositorNodeInputLabel"]
      120 GETUPVAL                         R8 0
      121 GETTABLEKS                       R7 R8 K7 ["createElement"]
      123 GETUPVAL                         R8 5
      124 DUPTABLE                         R9 K36 [{"tag", "gradient", "value", "LayoutOrder"}]
      125 LOADK                            R10 K37 ["size-full-700"]
      126 SETTABLEKS                       R10 R9 K9 ["tag"]
      128 SETTABLEKS                       R2 R9 K34 ["gradient"]
      130 GETTABLEKS                       R11 R0 K1 ["Value"]
      132 JUMPIFNOT                        R11 ; [+5]
      133 GETTABLEKS                       R11 R0 K1 ["Value"]
      135 GETTABLEKS                       R10 R11 K6 ["Time"]
      137 JUMPIF                           R10 ; [+1]
      138 LOADN                            R10 0
      139 SETTABLEKS                       R10 R9 K35 ["value"]
      141 LOADN                            R10 2
      142 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
      144 CALL                             R7 2 1
      145 SETTABLEKS                       R7 R6 K22 ["Input"]
      147 CALL                             R3 3 -1
      148 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeProperty"]
       22 GETTABLEKS                       R3 R4 K11 ["PropertyLabel"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K8 ["Components"]
       29 GETTABLEKS                       R6 R7 K9 ["NodeView"]
       31 GETTABLEKS                       R5 R6 K10 ["CompositorNodeProperty"]
       33 GETTABLEKS                       R4 R5 K12 ["PropertyUtils"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Parent"]
       40 GETTABLEKS                       R5 R6 K13 ["React"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R7 K1 [script]
       47 GETTABLEKS                       R6 R7 K14 ["TimeProgressBar"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETIMPORT                        R8 K1 [script]
       54 GETTABLEKS                       R7 R8 K15 ["Types"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETIMPORT                        R9 K1 [script]
       61 GETTABLEKS                       R8 R9 K16 ["getGradientNumberSequence"]
       63 CALL                             R7 1 1
       64 DUPCLOSURE                       R8 K17 [PROTO_2]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 RETURN                           R8 1
