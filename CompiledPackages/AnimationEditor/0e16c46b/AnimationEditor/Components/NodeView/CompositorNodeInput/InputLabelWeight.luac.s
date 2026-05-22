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
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["Weight"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["createElement"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["View"]
       18 DUPTABLE                         R4 K6 [{"tag", "LayoutOrder"}]
       19 LOADK                            R5 K7 ["row auto-y gap-small size-full-0 align-y-center"]
       20 SETTABLEKS                       R5 R4 K4 ["tag"]
       22 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       24 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       26 DUPTABLE                         R5 K10 [{"InputLabel", "InputWeight"}]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K2 ["createElement"]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K11 ["Text"]
       33 DUPTABLE                         R8 K13 [{"tag", "Text", "TextTruncate", "LayoutOrder"}]
       34 LOADK                            R9 K14 ["content-emphasis text-body-small text-align-x-left auto-y fill"]
       35 SETTABLEKS                       R9 R8 K4 ["tag"]
       37 GETTABLEKS                       R9 R0 K15 ["Name"]
       39 SETTABLEKS                       R9 R8 K11 ["Text"]
       41 GETIMPORT                        R9 K18 [Enum.TextTruncate.SplitWord]
       43 SETTABLEKS                       R9 R8 K12 ["TextTruncate"]
       45 LOADN                            R9 1
       46 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K8 ["InputLabel"]
       51 GETTABLEKS                       R7 R0 K19 ["HideWeight"]
       53 JUMPIF                           R7 ; [+30]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K2 ["createElement"]
       57 GETUPVAL                         R7 1
       58 GETTABLEKS                       R7 R7 K11 ["Text"]
       60 DUPTABLE                         R8 K21 [{"tag", "Size", "Text", "LayoutOrder"}]
       61 LOADK                            R9 K22 ["content-muted text-body-small text-align-x-left auto-y"]
       62 SETTABLEKS                       R9 R8 K4 ["tag"]
       64 GETIMPORT                        R9 K25 [UDim2.fromOffset]
       66 LOADN                            R10 30
       67 LOADN                            R11 0
       68 CALL                             R9 2 1
       69 SETTABLEKS                       R9 R8 K20 ["Size"]
       71 LOADK                            R10 K26 ["%*%%"]
       72 ORK                              R12 R1 K27 [0]
       73 NAMECALL                         R10 R10 K28 ["format"]
       75 CALL                             R10 2 1
       76 MOVE                             R9 R10
       77 SETTABLEKS                       R9 R8 K11 ["Text"]
       79 LOADN                            R9 2
       80 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       82 CALL                             R6 2 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R6
       85 SETTABLEKS                       R6 R5 K9 ["InputWeight"]
       87 CALL                             R2 3 -1
       88 RETURN                           R2 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
