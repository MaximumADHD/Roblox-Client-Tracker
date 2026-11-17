PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Select"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Setting"]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K2 ["Value"]
        9 NOT                              R4 R5
       10 MOVE                             R5 R1
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["Item"]
        6 GETTABLEKS                       R3 R2 K2 ["Setting"]
        8 JUMPIF                           R3 ; [+11]
        9 GETTABLEKS                       R3 R0 K3 ["Warn"]
       11 LOADK                            R4 K4 ["Missing Setting field for Checkbox with id %*"]
       12 GETTABLEKS                       R6 R2 K5 ["Id"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 1
       17 CALL                             R3 1 0
       18 LOADNIL                          R3
       19 RETURN                           R3 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K7 ["toString"]
       23 GETTABLEKS                       R4 R2 K2 ["Setting"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R5 R0 K8 ["Items"]
       28 GETTABLEKS                       R5 R5 K9 ["Settings"]
       30 GETTABLE                         R4 R5 R3
       31 JUMPIF                           R4 ; [+12]
       32 GETTABLEKS                       R5 R0 K3 ["Warn"]
       34 LOADK                            R6 K10 ["Missing Setting %* for Checkbox with id %*"]
       35 MOVE                             R8 R3
       36 GETTABLEKS                       R9 R2 K5 ["Id"]
       38 NAMECALL                         R6 R6 K6 ["format"]
       40 CALL                             R6 3 1
       41 CALL                             R5 1 0
       42 LOADNIL                          R5
       43 RETURN                           R5 1
       44 GETTABLEKS                       R6 R2 K11 ["IconOnly"]
       46 JUMPIFEQKNIL                     R6 ; [+6]
       48 GETTABLEKS                       R6 R2 K11 ["IconOnly"]
       50 JUMPIFNOT                        R6 ; [+2]
       51 LOADNIL                          R5
       52 JUMP                             ; [+6]
       53 GETUPVAL                         R5 2
       54 MOVE                             R6 R1
       55 LOADK                            R7 K12 ["Text"]
       56 MOVE                             R8 R2
       57 MOVE                             R9 R4
       58 CALL                             R5 4 1
       59 GETTABLEKS                       R7 R0 K13 ["WidgetUri"]
       61 JUMPIFNOT                        R7 ; [+12]
       62 GETTABLEKS                       R7 R2 K5 ["Id"]
       64 JUMPIFNOT                        R7 ; [+9]
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R6 R6 K14 ["child"]
       68 GETTABLEKS                       R7 R0 K13 ["WidgetUri"]
       70 GETTABLEKS                       R8 R2 K5 ["Id"]
       72 CALL                             R6 2 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R6
       75 GETUPVAL                         R7 3
       76 GETUPVAL                         R8 4
       77 DUPTABLE                         R9 K21 [{"Uri", "Checked", "Disabled", "LayoutOrder", "OnClick", "Size", "Text"}]
       78 SETTABLEKS                       R6 R9 K15 ["Uri"]
       80 GETTABLEKS                       R10 R4 K22 ["Value"]
       82 SETTABLEKS                       R10 R9 K16 ["Checked"]
       84 GETTABLEKS                       R11 R4 K23 ["Enabled"]
       86 NOT                              R10 R11
       87 SETTABLEKS                       R10 R9 K17 ["Disabled"]
       89 GETTABLEKS                       R10 R0 K18 ["LayoutOrder"]
       91 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
       93 NEWCLOSURE                       R10 P0
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R4
       97 SETTABLEKS                       R10 R9 K19 ["OnClick"]
       99 GETTABLEKS                       R11 R2 K20 ["Size"]
      101 ORK                              R10 R11 K24 ["Large"]
      102 SETTABLEKS                       R10 R9 K20 ["Size"]
      104 SETTABLEKS                       R5 R9 K12 ["Text"]
      106 CALL                             R7 2 -1
      107 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["StudioUri"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Components"]
       33 GETTABLEKS                       R6 R6 K14 ["RibbonCheckbox"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Components"]
       42 GETTABLEKS                       R7 R7 K15 ["ControlsView"]
       44 GETTABLEKS                       R7 R7 K16 ["getLocalizedField"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Packages"]
       51 GETTABLEKS                       R8 R8 K17 ["Framework"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R7 K18 ["ContextServices"]
       56 GETTABLEKS                       R9 R8 K19 ["Localization"]
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K12 ["Src"]
       62 GETTABLEKS                       R11 R11 K13 ["Components"]
       64 GETTABLEKS                       R11 R11 K15 ["ControlsView"]
       66 GETTABLEKS                       R11 R11 K20 ["ControlProps"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R12 R0 K12 ["Src"]
       73 GETTABLEKS                       R12 R12 K21 ["Types"]
       75 CALL                             R11 1 1
       76 DUPCLOSURE                       R12 K22 [PROTO_1]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R5
       82 RETURN                           R12 1
