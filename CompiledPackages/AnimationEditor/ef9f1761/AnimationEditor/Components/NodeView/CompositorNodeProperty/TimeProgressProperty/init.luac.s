PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+20]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["SettingsContext"]
        6 GETTABLEKS                       R0 R0 K1 ["formatSeconds"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["Value"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K2 ["Value"]
       15 GETTABLEKS                       R1 R1 K3 ["Time"]
       17 JUMPIF                           R1 ; [+1]
       18 LOADN                            R1 0
       19 GETUPVAL                         R2 3
       20 LOADB                            R3 0
       21 CALL                             R0 3 -1
       22 RETURN                           R0 -1
       23 GETUPVAL                         R0 4
       24 GETTABLEKS                       R0 R0 K4 ["formatTimestamp"]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K2 ["Value"]
       29 JUMPIFNOT                        R2 ; [+6]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K2 ["Value"]
       33 GETTABLEKS                       R1 R1 K3 ["Time"]
       35 JUMPIF                           R1 ; [+1]
       36 LOADN                            R1 0
       37 LOADB                            R2 0
       38 CALL                             R0 2 -1
       39 RETURN                           R0 -1

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
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["SettingsContext"]
        8 GETTABLEKS                       R3 R3 K2 ["Context"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U4
       20 NEWTABLE                         R5 0 2
       22 GETTABLEKS                       R6 R0 K4 ["Value"]
       24 MOVE                             R7 R2
       25 SETLIST                          R5 R6 2 [1]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       31 NEWCLOSURE                       R5 P1
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R6 0 4
       36 GETTABLEKS                       R7 R0 K4 ["Value"]
       38 JUMPIFNOT                        R7 ; [+4]
       39 GETTABLEKS                       R7 R0 K4 ["Value"]
       41 GETTABLEKS                       R7 R7 K6 ["Duration"]
       43 GETTABLEKS                       R8 R0 K4 ["Value"]
       45 JUMPIFNOT                        R8 ; [+4]
       46 GETTABLEKS                       R8 R0 K4 ["Value"]
       48 GETTABLEKS                       R8 R8 K7 ["StartTime"]
       50 GETTABLEKS                       R9 R0 K4 ["Value"]
       52 JUMPIFNOT                        R9 ; [+4]
       53 GETTABLEKS                       R9 R0 K4 ["Value"]
       55 GETTABLEKS                       R9 R9 K8 ["EndTime"]
       57 GETTABLEKS                       R10 R0 K4 ["Value"]
       59 JUMPIFNOT                        R10 ; [+4]
       60 GETTABLEKS                       R10 R0 K4 ["Value"]
       62 GETTABLEKS                       R10 R10 K9 ["Time"]
       64 SETLIST                          R6 R7 4 [1]
       66 CALL                             R4 2 1
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K10 ["createElement"]
       70 GETUPVAL                         R6 6
       71 GETTABLEKS                       R6 R6 K11 ["View"]
       73 DUPTABLE                         R7 K16 [{"tag", "backgroundStyle", "LayoutOrder", "testId"}]
       74 GETUPVAL                         R8 6
       75 GETTABLEKS                       R8 R8 K17 ["Hooks"]
       77 GETTABLEKS                       R8 R8 K18 ["useDefaultTags"]
       79 GETTABLEKS                       R9 R0 K19 ["tags"]
       81 LOADK                            R10 K20 ["row auto-y gap-small size-full-700 align-y-center padding-small flex-x-fill"]
       82 CALL                             R8 2 1
       83 SETTABLEKS                       R8 R7 K12 ["tag"]
       85 GETTABLEKS                       R8 R1 K21 ["Color"]
       87 GETTABLEKS                       R8 R8 K22 ["Surface"]
       89 GETTABLEKS                       R8 R8 K23 ["Surface_0"]
       91 SETTABLEKS                       R8 R7 K13 ["backgroundStyle"]
       93 GETTABLEKS                       R8 R0 K14 ["LayoutOrder"]
       95 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
       97 GETTABLEKS                       R8 R0 K15 ["testId"]
       99 SETTABLEKS                       R8 R7 K15 ["testId"]
      101 DUPTABLE                         R8 K26 [{"CompositorNodeInputLabel", "Input"}]
      102 GETUPVAL                         R9 1
      103 GETTABLEKS                       R9 R9 K10 ["createElement"]
      105 GETUPVAL                         R10 7
      106 DUPTABLE                         R11 K32 [{["tag"] = "no-flex auto-y text-body-small text-align-x-left", ["Size"], ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
      107 GETIMPORT                        R12 K35 [UDim2.new]
      109 LOADN                            R13 0
      110 LOADN                            R14 40
      111 LOADN                            R15 0
      112 LOADN                            R16 0
      113 CALL                             R12 4 1
      114 SETTABLEKS                       R12 R11 K28 ["Size"]
      116 SETTABLEKS                       R3 R11 K29 ["Text"]
      118 GETTABLEKS                       R13 R0 K37 ["IsDisabled"]
      120 ORK                              R12 R13 K36 [False]
      121 SETTABLEKS                       R12 R11 K31 ["isDisabled"]
      123 CALL                             R9 2 1
      124 SETTABLEKS                       R9 R8 K24 ["CompositorNodeInputLabel"]
      126 GETUPVAL                         R9 1
      127 GETTABLEKS                       R9 R9 K10 ["createElement"]
      129 GETUPVAL                         R10 8
      130 DUPTABLE                         R11 K42 [{["tag"] = "size-full-700", ["gradient"], ["value"], ["LayoutOrder"] = 2}]
      131 SETTABLEKS                       R4 R11 K39 ["gradient"]
      133 GETTABLEKS                       R13 R0 K4 ["Value"]
      135 JUMPIFNOT                        R13 ; [+5]
      136 GETTABLEKS                       R12 R0 K4 ["Value"]
      138 GETTABLEKS                       R12 R12 K9 ["Time"]
      140 JUMPIF                           R12 ; [+1]
      141 LOADN                            R12 0
      142 SETTABLEKS                       R12 R11 K40 ["value"]
      144 CALL                             R9 2 1
      145 SETTABLEKS                       R9 R8 K25 ["Input"]
      147 CALL                             R5 3 -1
      148 RETURN                           R5 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K11 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R4 K12 ["PropertyLabel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Components"]
       36 GETTABLEKS                       R5 R5 K10 ["NodeView"]
       38 GETTABLEKS                       R5 R5 K11 ["CompositorNodeProperty"]
       40 GETTABLEKS                       R5 R5 K13 ["PropertyUtils"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Parent"]
       47 GETTABLEKS                       R6 R6 K14 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETIMPORT                        R7 K1 [script]
       54 GETTABLEKS                       R7 R7 K15 ["TimeProgressBar"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETIMPORT                        R8 K1 [script]
       61 GETTABLEKS                       R8 R8 K16 ["Types"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETIMPORT                        R9 K1 [script]
       68 GETTABLEKS                       R9 R9 K17 ["getGradientNumberSequence"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K18 ["Flags"]
       75 GETTABLEKS                       R10 R10 K19 ["getFFlagAnimGraphUITimestampFrames"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R10 R1 K20 ["Hooks"]
       80 GETTABLEKS                       R10 R10 K21 ["useTokens"]
       82 DUPCLOSURE                       R11 K22 [PROTO_2]
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R6
       92 RETURN                           R11 1
