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
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["getFFlagShowFullScriptNameTooltip"]
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+13]
       12 GETUPVAL                         R4 2
       13 DUPTABLE                         R5 K4 [{"Uri", "Text"}]
       14 GETUPVAL                         R6 3
       15 SETTABLEKS                       R6 R5 K2 ["Uri"]
       17 GETTABLEKS                       R6 R0 K5 ["tooltipText"]
       19 SETTABLEKS                       R6 R5 K3 ["Text"]
       21 CALL                             R4 1 2
       22 MOVE                             R2 R4
       23 MOVE                             R3 R5
       24 JUMP                             ; [+12]
       25 GETUPVAL                         R4 4
       26 DUPTABLE                         R5 K4 [{"Uri", "Text"}]
       27 GETUPVAL                         R6 3
       28 SETTABLEKS                       R6 R5 K2 ["Uri"]
       30 GETTABLEKS                       R6 R0 K5 ["tooltipText"]
       32 SETTABLEKS                       R6 R5 K3 ["Text"]
       34 CALL                             R4 1 2
       35 MOVE                             R2 R4
       36 MOVE                             R3 R5
       37 GETUPVAL                         R5 5
       38 GETTABLEKS                       R4 R5 K6 ["useCallback"]
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          REF R2
       43 NEWTABLE                         R6 0 1
       45 MOVE                             R7 R2
       46 SETLIST                          R6 R7 1 [1]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R6 5
       50 GETTABLEKS                       R5 R6 K6 ["useCallback"]
       52 NEWCLOSURE                       R6 P1
       53 CAPTURE                          REF R3
       54 CAPTURE                          VAL R1
       55 NEWTABLE                         R7 0 1
       57 MOVE                             R8 R3
       58 SETLIST                          R7 R8 1 [1]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R6 6
       62 LOADK                            R7 K7 ["ImageButton"]
       63 NEWTABLE                         R8 8 0
       65 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       67 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       69 GETUPVAL                         R11 5
       70 GETTABLEKS                       R10 R11 K9 ["Event"]
       72 GETTABLEKS                       R9 R10 K10 ["MouseButton1Up"]
       74 GETTABLEKS                       R10 R0 K11 ["onClick"]
       76 SETTABLE                         R10 R8 R9
       77 GETUPVAL                         R11 5
       78 GETTABLEKS                       R10 R11 K9 ["Event"]
       80 GETTABLEKS                       R9 R10 K12 ["MouseEnter"]
       82 SETTABLE                         R4 R8 R9
       83 GETUPVAL                         R11 5
       84 GETTABLEKS                       R10 R11 K9 ["Event"]
       86 GETTABLEKS                       R9 R10 K13 ["MouseLeave"]
       88 SETTABLE                         R5 R8 R9
       89 GETTABLEKS                       R10 R1 K14 ["enabled"]
       91 JUMPIFNOT                        R10 ; [+4]
       92 GETUPVAL                         R10 7
       93 GETTABLEKS                       R9 R10 K15 ["hoveredTransparency"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R9
       97 SETTABLEKS                       R9 R8 K16 ["BackgroundTransparency"]
       99 GETUPVAL                         R10 5
      100 GETTABLEKS                       R9 R10 K17 ["Tag"]
      102 LOADK                            R10 K18 ["FindReplaceAll-BG-Input FindReplaceAll-ToggleButton"]
      103 SETTABLE                         R10 R8 R9
      104 DUPTABLE                         R9 K20 [{"Icon"}]
      105 GETUPVAL                         R10 6
      106 LOADK                            R11 K21 ["ImageLabel"]
      107 NEWTABLE                         R12 2 0
      109 GETTABLEKS                       R14 R0 K14 ["enabled"]
      111 JUMPIF                           R14 ; [+4]
      112 GETUPVAL                         R14 7
      113 GETTABLEKS                       R13 R14 K22 ["disabledTransparency"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R13
      117 SETTABLEKS                       R13 R12 K23 ["ImageTransparency"]
      119 GETUPVAL                         R14 5
      120 GETTABLEKS                       R13 R14 K17 ["Tag"]
      122 GETUPVAL                         R14 8
      123 LOADK                            R15 K24 ["X-AnchorCenter"]
      124 LOADK                            R16 K25 ["FindReplaceAll-Icon"]
      125 LOADK                            R17 K26 ["FindReplaceAll-Content-Standard"]
      126 GETTABLEKS                       R18 R0 K27 ["tags"]
      128 CALL                             R14 4 1
      129 SETTABLE                         R14 R12 R13
      130 CALL                             R10 2 1
      131 SETTABLEKS                       R10 R9 K19 ["Icon"]
      133 CALL                             R6 3 -1
      134 CLOSEUPVALS                      R2
      135 RETURN                           R6 -1

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
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R10 R0 K10 ["Src"]
       50 GETTABLEKS                       R9 R10 K16 ["Util"]
       52 GETTABLEKS                       R8 R9 K17 ["defineFlags"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R9 R1 K18 ["Styling"]
       57 GETTABLEKS                       R8 R9 K19 ["joinTags"]
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R12 R0 K10 ["Src"]
       63 GETTABLEKS                       R11 R12 K20 ["Hooks"]
       65 GETTABLEKS                       R10 R11 K21 ["useTooltip"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R12 R1 K22 ["UI"]
       70 GETTABLEKS                       R11 R12 K20 ["Hooks"]
       72 GETTABLEKS                       R10 R11 K21 ["useTooltip"]
       74 GETTABLEKS                       R11 R2 K23 ["createElement"]
       76 DUPCLOSURE                       R12 K24 [PROTO_2]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R8
       86 RETURN                           R12 1
