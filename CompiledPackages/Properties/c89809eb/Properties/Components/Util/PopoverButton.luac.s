PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K4 [{"LayoutOrder", "clickableViewProps", "affordanceViewProps", "onActivated"}]
        5 GETTABLEKS                       R5 R0 K5 ["layoutOrder"]
        7 SETTABLEKS                       R5 R4 K0 ["LayoutOrder"]
        9 DUPTABLE                         R5 K7 [{"tag"}]
       10 LOADK                            R6 K8 ["size-600-600"]
       11 SETTABLEKS                       R6 R5 K6 ["tag"]
       13 SETTABLEKS                       R5 R4 K1 ["clickableViewProps"]
       15 DUPTABLE                         R5 K10 [{"tag", "children"}]
       16 LOADK                            R6 K11 ["size-800-600 radius-small"]
       17 SETTABLEKS                       R6 R5 K6 ["tag"]
       19 DUPTABLE                         R6 K13 [{"UIGradient"}]
       20 GETUPVAL                         R7 1
       21 LOADK                            R8 K12 ["UIGradient"]
       22 DUPTABLE                         R9 K15 [{"Transparency"}]
       23 GETIMPORT                        R10 K18 [NumberSequence.new]
       25 NEWTABLE                         R11 0 4
       27 GETIMPORT                        R12 K20 [NumberSequenceKeypoint.new]
       29 LOADN                            R13 0
       30 LOADN                            R14 0
       31 CALL                             R12 2 1
       32 GETIMPORT                        R13 K20 [NumberSequenceKeypoint.new]
       34 GETTABLEKS                       R15 R1 K21 ["Size"]
       36 GETTABLEKS                       R15 R15 K22 ["Size_600"]
       38 GETTABLEKS                       R16 R1 K21 ["Size"]
       40 GETTABLEKS                       R16 R16 K23 ["Size_800"]
       42 DIV                              R14 R15 R16
       43 LOADN                            R15 0
       44 CALL                             R13 2 1
       45 GETIMPORT                        R14 K20 [NumberSequenceKeypoint.new]
       47 GETTABLEKS                       R16 R1 K21 ["Size"]
       49 GETTABLEKS                       R16 R16 K22 ["Size_600"]
       51 GETTABLEKS                       R17 R1 K21 ["Size"]
       53 GETTABLEKS                       R17 R17 K23 ["Size_800"]
       55 DIV                              R15 R16 R17
       56 LOADN                            R16 1
       57 CALL                             R14 2 1
       58 GETIMPORT                        R15 K20 [NumberSequenceKeypoint.new]
       60 LOADN                            R16 1
       61 LOADN                            R17 1
       62 CALL                             R15 2 -1
       63 SETLIST                          R11 R12 -1 [1]
       65 CALL                             R10 1 1
       66 SETTABLEKS                       R10 R9 K14 ["Transparency"]
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K12 ["UIGradient"]
       71 SETTABLEKS                       R6 R5 K9 ["children"]
       73 SETTABLEKS                       R5 R4 K2 ["affordanceViewProps"]
       75 GETTABLEKS                       R5 R0 K3 ["onActivated"]
       77 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       79 GETTABLEKS                       R5 R0 K9 ["children"]
       81 CALL                             R2 3 -1
       82 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["SeparatedView"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["createElement"]
       32 GETTABLEKS                       R5 R1 K13 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K14 ["useTokens"]
       36 DUPCLOSURE                       R6 K15 [PROTO_0]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 RETURN                           R6 1
