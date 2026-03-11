PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["enable"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+33]
        6 GETIMPORT                        R1 K3 [Vector2.new]
        8 LOADN                            R2 0
        9 LOADN                            R3 2
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 1
       12 DUPTABLE                         R3 K5 [{"AttachmentInfo"}]
       13 DUPTABLE                         R4 K9 [{"TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       14 GETIMPORT                        R5 K3 [Vector2.new]
       16 LOADN                            R6 0
       17 LOADN                            R7 0
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K6 ["TargetAnchorPoint"]
       21 GETIMPORT                        R5 K3 [Vector2.new]
       23 LOADN                            R6 0
       24 LOADN                            R7 0
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K7 ["SubjectAnchorPoint"]
       28 GETTABLEKS                       R7 R0 K10 ["AbsolutePosition"]
       30 GETTABLEKS                       R8 R0 K11 ["AbsoluteSize"]
       32 ADD                              R6 R7 R8
       33 ADD                              R5 R6 R1
       34 SETTABLEKS                       R5 R4 K8 ["Offset"]
       36 SETTABLEKS                       R4 R3 K4 ["AttachmentInfo"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["disable"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useToggleState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 DUPTABLE                         R3 K3 [{"Uri", "Text"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K1 ["Uri"]
       10 GETTABLEKS                       R4 R0 K4 ["tooltipText"]
       12 SETTABLEKS                       R4 R3 K2 ["Text"]
       14 CALL                             R2 1 2
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K5 ["useCallback"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R6 0 1
       23 MOVE                             R7 R2
       24 SETLIST                          R6 R7 1 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 NEWTABLE                         R7 0 1
       35 MOVE                             R8 R3
       36 SETLIST                          R7 R8 1 [1]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 4
       40 LOADK                            R7 K6 ["ImageButton"]
       41 NEWTABLE                         R8 8 0
       43 GETTABLEKS                       R9 R0 K7 ["LayoutOrder"]
       45 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       47 GETUPVAL                         R11 3
       48 GETTABLEKS                       R10 R11 K8 ["Event"]
       50 GETTABLEKS                       R9 R10 K9 ["MouseButton1Up"]
       52 GETTABLEKS                       R10 R0 K10 ["onClick"]
       54 SETTABLE                         R10 R8 R9
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R10 R11 K8 ["Event"]
       58 GETTABLEKS                       R9 R10 K11 ["MouseEnter"]
       60 SETTABLE                         R4 R8 R9
       61 GETUPVAL                         R11 3
       62 GETTABLEKS                       R10 R11 K8 ["Event"]
       64 GETTABLEKS                       R9 R10 K12 ["MouseLeave"]
       66 SETTABLE                         R5 R8 R9
       67 GETTABLEKS                       R10 R1 K13 ["enabled"]
       69 JUMPIFNOT                        R10 ; [+4]
       70 GETUPVAL                         R10 5
       71 GETTABLEKS                       R9 R10 K14 ["hoveredTransparency"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R9
       75 SETTABLEKS                       R9 R8 K15 ["BackgroundTransparency"]
       77 GETUPVAL                         R10 3
       78 GETTABLEKS                       R9 R10 K16 ["Tag"]
       80 LOADK                            R10 K17 ["FindReplaceAll-BG-Input FindReplaceAll-ToggleButton"]
       81 SETTABLE                         R10 R8 R9
       82 DUPTABLE                         R9 K19 [{"Icon"}]
       83 GETUPVAL                         R10 4
       84 LOADK                            R11 K20 ["ImageLabel"]
       85 NEWTABLE                         R12 2 0
       87 GETTABLEKS                       R14 R0 K13 ["enabled"]
       89 JUMPIF                           R14 ; [+4]
       90 GETUPVAL                         R14 5
       91 GETTABLEKS                       R13 R14 K21 ["disabledTransparency"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R13
       95 SETTABLEKS                       R13 R12 K22 ["ImageTransparency"]
       97 GETUPVAL                         R14 3
       98 GETTABLEKS                       R13 R14 K16 ["Tag"]
      100 GETUPVAL                         R14 6
      101 LOADK                            R15 K23 ["X-AnchorCenter"]
      102 LOADK                            R16 K24 ["FindReplaceAll-Icon"]
      103 LOADK                            R17 K25 ["FindReplaceAll-Content-Standard"]
      104 GETTABLEKS                       R18 R0 K26 ["tags"]
      106 CALL                             R14 4 1
      107 SETTABLE                         R14 R12 R13
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K18 ["Icon"]
      111 CALL                             R6 3 -1
      112 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Resources"]
       34 GETTABLEKS                       R5 R6 K12 ["StyleConstants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K1 [script]
       39 LOADK                            R7 K13 ["Plugin"]
       40 NAMECALL                         R5 R5 K14 ["FindFirstAncestorWhichIsA"]
       42 CALL                             R5 2 1
       43 NAMECALL                         R6 R5 K15 ["GetUri"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R8 R1 K16 ["Styling"]
       48 GETTABLEKS                       R7 R8 K17 ["joinTags"]
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K10 ["Src"]
       54 GETTABLEKS                       R10 R11 K18 ["Hooks"]
       56 GETTABLEKS                       R9 R10 K19 ["useTooltip"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R2 K20 ["createElement"]
       61 DUPCLOSURE                       R10 K21 [PROTO_2]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R7
       69 RETURN                           R10 1
