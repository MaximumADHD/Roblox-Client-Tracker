PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Select"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Uri"]
        6 SUBK                             R4 R0 K2 [1]
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R2 R1 K1 ["Setting"]
        4 JUMPIF                           R2 ; [+11]
        5 GETTABLEKS                       R2 R0 K2 ["Warn"]
        7 LOADK                            R3 K3 ["Missing Setting field for SegmentedButton with id %*"]
        8 GETTABLEKS                       R5 R1 K4 ["Id"]
       10 NAMECALL                         R3 R3 K5 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["toString"]
       19 GETTABLEKS                       R3 R1 K1 ["Setting"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R4 R0 K7 ["Items"]
       24 GETTABLEKS                       R4 R4 K8 ["Settings"]
       26 GETTABLE                         R3 R4 R2
       27 JUMPIF                           R3 ; [+12]
       28 GETTABLEKS                       R4 R0 K2 ["Warn"]
       30 LOADK                            R5 K9 ["Missing Setting %* for SegmentedButton with id %*"]
       31 MOVE                             R7 R2
       32 GETTABLEKS                       R8 R1 K4 ["Id"]
       34 NAMECALL                         R5 R5 K5 ["format"]
       36 CALL                             R5 3 1
       37 CALL                             R4 1 0
       38 LOADNIL                          R4
       39 RETURN                           R4 1
       40 GETTABLEKS                       R4 R3 K10 ["Values"]
       42 JUMPIF                           R4 ; [+12]
       43 GETTABLEKS                       R4 R0 K2 ["Warn"]
       45 LOADK                            R5 K11 ["Setting %* has no Values field to display for SegmentedButton with id %*"]
       46 MOVE                             R7 R2
       47 GETTABLEKS                       R8 R1 K4 ["Id"]
       49 NAMECALL                         R5 R5 K5 ["format"]
       51 CALL                             R5 3 1
       52 CALL                             R4 1 0
       53 LOADNIL                          R4
       54 RETURN                           R4 1
       55 GETTABLEKS                       R5 R3 K12 ["Value"]
       57 FASTCALL1                        TYPEOF R5 ; [+2]
       58 GETIMPORT                        R4 K14 [typeof]
       60 CALL                             R4 1 1
       61 JUMPIFEQKS                       R4 K15 ["number"] ; [+15]
       63 GETTABLEKS                       R4 R0 K2 ["Warn"]
       65 LOADK                            R5 K16 ["Setting %* has an invalid value %* for SegmentedButton with id %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R8 R3 K12 ["Value"]
       69 GETTABLEKS                       R9 R1 K4 ["Id"]
       71 NAMECALL                         R5 R5 K5 ["format"]
       73 CALL                             R5 4 1
       74 CALL                             R4 1 0
       75 LOADNIL                          R4
       76 RETURN                           R4 1
       77 GETUPVAL                         R4 1
       78 GETUPVAL                         R5 2
       79 DUPTABLE                         R6 K21 [{"Uri", "LayoutOrder", "SelectedIndex", "Items", "OnItemActivated"}]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K22 ["child"]
       83 GETTABLEKS                       R8 R0 K23 ["WidgetUri"]
       85 GETTABLEKS                       R9 R1 K4 ["Id"]
       87 CALL                             R7 2 1
       88 SETTABLEKS                       R7 R6 K17 ["Uri"]
       90 GETTABLEKS                       R7 R0 K18 ["LayoutOrder"]
       92 SETTABLEKS                       R7 R6 K18 ["LayoutOrder"]
       94 GETTABLEKS                       R8 R3 K12 ["Value"]
       96 ADDK                             R7 R8 K24 [1]
       97 SETTABLEKS                       R7 R6 K19 ["SelectedIndex"]
       99 GETTABLEKS                       R7 R3 K10 ["Values"]
      101 SETTABLEKS                       R7 R6 K7 ["Items"]
      103 NEWCLOSURE                       R7 P0
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R3
      106 SETTABLEKS                       R7 R6 K20 ["OnItemActivated"]
      108 CALL                             R4 2 -1
      109 RETURN                           R4 -1

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
       33 GETTABLEKS                       R6 R6 K14 ["RibbonSegmentedButton"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Components"]
       42 GETTABLEKS                       R7 R7 K15 ["ControlsView"]
       44 GETTABLEKS                       R7 R7 K16 ["ControlProps"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Src"]
       51 GETTABLEKS                       R8 R8 K17 ["Types"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K18 [PROTO_1]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 RETURN                           R8 1
