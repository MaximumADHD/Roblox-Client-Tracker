PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Weight"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADN                            R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["Weight"]
       10 MULK                             R1 R2 K1 [100]
       11 FASTCALL1                        MATH_ROUND R1 ; [+2]
       12 GETIMPORT                        R0 K4 [math.round]
       14 CALL                             R0 1 1
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K2 ["Weight"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["createElement"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["View"]
       22 DUPTABLE                         R5 K7 [{"tag", "LayoutOrder"}]
       23 LOADK                            R6 K8 ["row auto-y gap-small size-full-0 align-y-center"]
       24 SETTABLEKS                       R6 R5 K5 ["tag"]
       26 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       28 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       30 DUPTABLE                         R6 K12 [{"InputLabel", "DeleteWeight", "InputWeight"}]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K3 ["createElement"]
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R8 R8 K13 ["Text"]
       37 DUPTABLE                         R9 K15 [{"tag", "Text", "TextTruncate", "LayoutOrder"}]
       38 GETUPVAL                         R11 3
       39 CALL                             R11 0 1
       40 JUMPIFNOT                        R11 ; [+2]
       41 LOADK                            R10 K16 ["content-emphasis text-body-small text-align-x-left auto-xy"]
       42 JUMP                             ; [+1]
       43 LOADK                            R10 K17 ["content-emphasis text-body-small text-align-x-left auto-y fill"]
       44 SETTABLEKS                       R10 R9 K5 ["tag"]
       46 GETTABLEKS                       R10 R0 K18 ["Name"]
       48 SETTABLEKS                       R10 R9 K13 ["Text"]
       50 GETIMPORT                        R10 K21 [Enum.TextTruncate.SplitWord]
       52 SETTABLEKS                       R10 R9 K14 ["TextTruncate"]
       54 MOVE                             R10 R1
       55 CALL                             R10 0 1
       56 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K9 ["InputLabel"]
       61 GETUPVAL                         R8 3
       62 CALL                             R8 0 1
       63 JUMPIFNOT                        R8 ; [+22]
       64 GETTABLEKS                       R8 R0 K22 ["HideWeight"]
       66 JUMPIF                           R8 ; [+19]
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K3 ["createElement"]
       70 GETUPVAL                         R8 4
       71 DUPTABLE                         R9 K24 [{"LayoutOrder", "OnDelete", "Weight"}]
       72 MOVE                             R10 R1
       73 CALL                             R10 0 1
       74 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       76 GETTABLEKS                       R10 R0 K23 ["OnDelete"]
       78 SETTABLEKS                       R10 R9 K23 ["OnDelete"]
       80 GETTABLEKS                       R10 R0 K2 ["Weight"]
       82 SETTABLEKS                       R10 R9 K2 ["Weight"]
       84 CALL                             R7 2 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R7
       87 SETTABLEKS                       R7 R6 K10 ["DeleteWeight"]
       89 GETTABLEKS                       R8 R0 K22 ["HideWeight"]
       91 JUMPIF                           R8 ; [+34]
       92 GETUPVAL                         R8 3
       93 CALL                             R8 0 1
       94 JUMPIF                           R8 ; [+31]
       95 GETUPVAL                         R7 1
       96 GETTABLEKS                       R7 R7 K3 ["createElement"]
       98 GETUPVAL                         R8 2
       99 GETTABLEKS                       R8 R8 K13 ["Text"]
      101 DUPTABLE                         R9 K26 [{"tag", "Size", "Text", "LayoutOrder"}]
      102 LOADK                            R10 K27 ["content-muted text-body-small text-align-x-left auto-y"]
      103 SETTABLEKS                       R10 R9 K5 ["tag"]
      105 GETIMPORT                        R10 K30 [UDim2.fromOffset]
      107 LOADN                            R11 30
      108 LOADN                            R12 0
      109 CALL                             R10 2 1
      110 SETTABLEKS                       R10 R9 K25 ["Size"]
      112 LOADK                            R11 K31 ["%*%%"]
      113 MOVE                             R13 R2
      114 NAMECALL                         R11 R11 K32 ["format"]
      116 CALL                             R11 2 1
      117 MOVE                             R10 R11
      118 SETTABLEKS                       R10 R9 K13 ["Text"]
      120 MOVE                             R10 R1
      121 CALL                             R10 0 1
      122 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      124 CALL                             R7 2 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R7
      127 SETTABLEKS                       R7 R6 K11 ["InputWeight"]
      129 CALL                             R3 3 -1
      130 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeInput"]
       15 GETTABLEKS                       R2 R2 K9 ["DeleteWeightButton"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Flags"]
       43 GETTABLEKS                       R6 R6 K15 ["getFFlagAnimGraphUIDeleteInput"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K16 [PROTO_1]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R1
       52 RETURN                           R6 1
