PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Select"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Setting"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["Item"]
        6 GETTABLEKS                       R3 R2 K2 ["Setting"]
        8 JUMPIF                           R3 ; [+11]
        9 GETTABLEKS                       R3 R0 K3 ["Warn"]
       11 LOADK                            R4 K4 ["Missing Setting field for Slider with id %*"]
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
       34 LOADK                            R6 K10 ["Missing Setting %* for Slider with id %*"]
       35 MOVE                             R8 R3
       36 GETTABLEKS                       R9 R2 K5 ["Id"]
       38 NAMECALL                         R6 R6 K6 ["format"]
       40 CALL                             R6 3 1
       41 CALL                             R5 1 0
       42 LOADNIL                          R5
       43 RETURN                           R5 1
       44 GETTABLEKS                       R6 R4 K11 ["Value"]
       46 FASTCALL1                        TYPEOF R6 ; [+2]
       47 GETIMPORT                        R5 K13 [typeof]
       49 CALL                             R5 1 1
       50 JUMPIFEQKS                       R5 K14 ["number"] ; [+15]
       52 GETTABLEKS                       R5 R0 K3 ["Warn"]
       54 LOADK                            R6 K15 ["Setting %* has an invalid value %* for Slider with id %*"]
       55 MOVE                             R8 R3
       56 GETTABLEKS                       R9 R4 K11 ["Value"]
       58 GETTABLEKS                       R10 R2 K5 ["Id"]
       60 NAMECALL                         R6 R6 K6 ["format"]
       62 CALL                             R6 4 1
       63 CALL                             R5 1 0
       64 LOADNIL                          R5
       65 RETURN                           R5 1
       66 GETTABLEKS                       R5 R4 K16 ["Range"]
       68 JUMPIF                           R5 ; [+12]
       69 GETTABLEKS                       R6 R0 K3 ["Warn"]
       71 LOADK                            R7 K17 ["Setting %* has an invalid Range field for Slider with id %*"]
       72 MOVE                             R9 R3
       73 GETTABLEKS                       R10 R2 K5 ["Id"]
       75 NAMECALL                         R7 R7 K6 ["format"]
       77 CALL                             R7 3 1
       78 CALL                             R6 1 0
       79 LOADNIL                          R6
       80 RETURN                           R6 1
       81 GETIMPORT                        R6 K19 [warn]
       83 LOADK                            R7 K20 ["SliderControl is not design approved and should not be used in production until it is Foundation styled"]
       84 CALL                             R6 1 0
       85 GETUPVAL                         R6 2
       86 GETUPVAL                         R7 3
       87 NEWTABLE                         R8 16 0
       89 GETUPVAL                         R9 1
       90 GETTABLEKS                       R9 R9 K21 ["child"]
       92 GETTABLEKS                       R10 R0 K22 ["WidgetUri"]
       94 GETTABLEKS                       R11 R2 K5 ["Id"]
       96 CALL                             R9 2 1
       97 SETTABLEKS                       R9 R8 K23 ["Uri"]
       99 GETTABLEKS                       R10 R4 K24 ["Enabled"]
      101 NOT                              R9 R10
      102 SETTABLEKS                       R9 R8 K25 ["Disabled"]
      104 GETTABLEKS                       R9 R5 K26 ["Increment"]
      106 SETTABLEKS                       R9 R8 K26 ["Increment"]
      108 GETTABLEKS                       R9 R0 K27 ["LayoutOrder"]
      110 SETTABLEKS                       R9 R8 K27 ["LayoutOrder"]
      112 GETTABLEKS                       R10 R5 K29 ["Minimum"]
      114 ORK                              R9 R10 K28 [0]
      115 SETTABLEKS                       R9 R8 K29 ["Minimum"]
      117 GETTABLEKS                       R10 R5 K31 ["Maximum"]
      119 ORK                              R9 R10 K30 [∞]
      120 SETTABLEKS                       R9 R8 K31 ["Maximum"]
      122 GETTABLEKS                       R9 R5 K32 ["Precision"]
      124 SETTABLEKS                       R9 R8 K32 ["Precision"]
      126 GETTABLEKS                       R9 R4 K11 ["Value"]
      128 SETTABLEKS                       R9 R8 K11 ["Value"]
      130 NEWCLOSURE                       R9 P0
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R2
      133 SETTABLEKS                       R9 R8 K33 ["OnValueChanged"]
      135 GETUPVAL                         R9 4
      136 MOVE                             R10 R1
      137 LOADK                            R11 K34 ["Text"]
      138 MOVE                             R12 R2
      139 MOVE                             R13 R4
      140 CALL                             R9 4 1
      141 SETTABLEKS                       R9 R8 K34 ["Text"]
      143 GETUPVAL                         R9 5
      144 GETTABLEKS                       R9 R9 K35 ["Tag"]
      146 LOADK                            R10 K36 [""]
      147 SETTABLE                         R10 R8 R9
      148 CALL                             R6 2 -1
      149 RETURN                           R6 -1

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
       33 GETTABLEKS                       R6 R6 K14 ["RibbonSlider"]
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
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R1
       83 RETURN                           R12 1
