PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R0 K1 ["Weight"]
        6 JUMPIFNOTEQKNIL                  R3 ; [+3]
        8 LOADN                            R2 0
        9 JUMP                             ; [+7]
       10 GETTABLEKS                       R4 R0 K1 ["Weight"]
       12 MULK                             R3 R4 K2 [100]
       13 FASTCALL1                        MATH_ROUND R3 ; [+2]
       14 GETIMPORT                        R2 K5 [math.round]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R0 K6 ["OnDelete"]
       19 JUMPIFNOT                        R3 ; [+2]
       20 GETTABLEKS                       R3 R0 K7 ["IsHovered"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K8 ["createElement"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K9 ["View"]
       28 DUPTABLE                         R6 K12 [{"tag", "LayoutOrder"}]
       29 LOADK                            R7 K13 ["row auto-y gap-small size-full-0 align-y-center"]
       30 SETTABLEKS                       R7 R6 K10 ["tag"]
       32 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       34 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       36 DUPTABLE                         R7 K17 [{"InputLabel", "InputDelete", "InputWeight"}]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K8 ["createElement"]
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R9 R9 K18 ["Text"]
       43 DUPTABLE                         R10 K20 [{"tag", "Text", "TextTruncate", "LayoutOrder"}]
       44 GETUPVAL                         R12 3
       45 CALL                             R12 0 1
       46 JUMPIFNOT                        R12 ; [+2]
       47 LOADK                            R11 K21 ["content-emphasis text-body-small text-align-x-left auto-xy"]
       48 JUMP                             ; [+1]
       49 LOADK                            R11 K22 ["content-emphasis text-body-small text-align-x-left auto-y fill"]
       50 SETTABLEKS                       R11 R10 K10 ["tag"]
       52 GETTABLEKS                       R11 R0 K23 ["Name"]
       54 SETTABLEKS                       R11 R10 K18 ["Text"]
       56 GETIMPORT                        R11 K26 [Enum.TextTruncate.SplitWord]
       58 SETTABLEKS                       R11 R10 K19 ["TextTruncate"]
       60 MOVE                             R11 R1
       61 CALL                             R11 0 1
       62 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K14 ["InputLabel"]
       67 GETUPVAL                         R9 3
       68 CALL                             R9 0 1
       69 JUMPIFNOT                        R9 ; [+16]
       70 JUMPIFNOT                        R3 ; [+15]
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R8 R8 K8 ["createElement"]
       74 GETUPVAL                         R9 4
       75 DUPTABLE                         R10 K27 [{"LayoutOrder", "OnDelete"}]
       76 MOVE                             R11 R1
       77 CALL                             R11 0 1
       78 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       80 GETTABLEKS                       R11 R0 K6 ["OnDelete"]
       82 SETTABLEKS                       R11 R10 K6 ["OnDelete"]
       84 CALL                             R8 2 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R8
       87 SETTABLEKS                       R8 R7 K15 ["InputDelete"]
       89 GETTABLEKS                       R9 R0 K28 ["HideWeight"]
       91 JUMPIF                           R9 ; [+40]
       92 GETUPVAL                         R9 3
       93 CALL                             R9 0 1
       94 JUMPIFNOT                        R9 ; [+1]
       95 JUMPIF                           R3 ; [+36]
       96 GETUPVAL                         R8 1
       97 GETTABLEKS                       R8 R8 K8 ["createElement"]
       99 GETUPVAL                         R9 2
      100 GETTABLEKS                       R9 R9 K18 ["Text"]
      102 DUPTABLE                         R10 K30 [{"tag", "Size", "Text", "LayoutOrder"}]
      103 GETUPVAL                         R12 3
      104 CALL                             R12 0 1
      105 JUMPIFNOT                        R12 ; [+2]
      106 LOADK                            R11 K31 ["content-muted text-body-small text-align-x-left auto-y fill"]
      107 JUMP                             ; [+1]
      108 LOADK                            R11 K32 ["content-muted text-body-small text-align-x-left auto-y"]
      109 SETTABLEKS                       R11 R10 K10 ["tag"]
      111 GETIMPORT                        R11 K35 [UDim2.fromOffset]
      113 LOADN                            R12 30
      114 LOADN                            R13 0
      115 CALL                             R11 2 1
      116 SETTABLEKS                       R11 R10 K29 ["Size"]
      118 LOADK                            R12 K36 ["%*%%"]
      119 ORK                              R14 R2 K37 [0]
      120 NAMECALL                         R12 R12 K38 ["format"]
      122 CALL                             R12 2 1
      123 MOVE                             R11 R12
      124 SETTABLEKS                       R11 R10 K18 ["Text"]
      126 MOVE                             R11 R1
      127 CALL                             R11 0 1
      128 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      130 CALL                             R8 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R8
      133 SETTABLEKS                       R8 R7 K16 ["InputWeight"]
      135 CALL                             R4 3 -1
      136 RETURN                           R4 -1

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
       15 GETTABLEKS                       R2 R2 K9 ["DeleteInputButton"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["NodeGraphing"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R3 K15 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
       48 DUPCLOSURE                       R7 K16 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R1
       54 RETURN                           R7 1
