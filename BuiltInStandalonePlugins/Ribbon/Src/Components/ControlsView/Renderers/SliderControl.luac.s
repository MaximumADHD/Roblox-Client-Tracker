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
        8 JUMPIF                           R3 ; [+12]
        9 GETTABLEKS                       R3 R0 K3 ["Warn"]
       11 LOADK                            R5 K4 ["Missing Setting field for Slider with id %*"]
       12 GETTABLEKS                       R7 R2 K5 ["Id"]
       14 NAMECALL                         R5 R5 K6 ["format"]
       16 CALL                             R5 2 1
       17 MOVE                             R4 R5
       18 CALL                             R3 1 0
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K7 ["toString"]
       24 GETTABLEKS                       R4 R2 K2 ["Setting"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R5 R0 K8 ["Items"]
       29 GETTABLEKS                       R5 R5 K9 ["Settings"]
       31 GETTABLE                         R4 R5 R3
       32 JUMPIF                           R4 ; [+13]
       33 GETTABLEKS                       R5 R0 K3 ["Warn"]
       35 LOADK                            R7 K10 ["Missing Setting %* for Slider with id %*"]
       36 MOVE                             R9 R3
       37 GETTABLEKS                       R10 R2 K5 ["Id"]
       39 NAMECALL                         R7 R7 K6 ["format"]
       41 CALL                             R7 3 1
       42 MOVE                             R6 R7
       43 CALL                             R5 1 0
       44 LOADNIL                          R5
       45 RETURN                           R5 1
       46 GETTABLEKS                       R6 R4 K11 ["Value"]
       48 FASTCALL1                        TYPEOF R6 ; [+2]
       49 GETIMPORT                        R5 K13 [typeof]
       51 CALL                             R5 1 1
       52 JUMPIFEQKS                       R5 K14 ["number"] ; [+16]
       54 GETTABLEKS                       R5 R0 K3 ["Warn"]
       56 LOADK                            R7 K15 ["Setting %* has an invalid value %* for Slider with id %*"]
       57 MOVE                             R9 R3
       58 GETTABLEKS                       R10 R4 K11 ["Value"]
       60 GETTABLEKS                       R11 R2 K5 ["Id"]
       62 NAMECALL                         R7 R7 K6 ["format"]
       64 CALL                             R7 4 1
       65 MOVE                             R6 R7
       66 CALL                             R5 1 0
       67 LOADNIL                          R5
       68 RETURN                           R5 1
       69 GETTABLEKS                       R5 R4 K16 ["Range"]
       71 JUMPIF                           R5 ; [+13]
       72 GETTABLEKS                       R6 R0 K3 ["Warn"]
       74 LOADK                            R8 K17 ["Setting %* has an invalid Range field for Slider with id %*"]
       75 MOVE                             R10 R3
       76 GETTABLEKS                       R11 R2 K5 ["Id"]
       78 NAMECALL                         R8 R8 K6 ["format"]
       80 CALL                             R8 3 1
       81 MOVE                             R7 R8
       82 CALL                             R6 1 0
       83 LOADNIL                          R6
       84 RETURN                           R6 1
       85 GETIMPORT                        R6 K19 [warn]
       87 LOADK                            R7 K20 ["SliderControl is not design approved and should not be used in production until it is Foundation styled"]
       88 CALL                             R6 1 0
       89 GETUPVAL                         R6 2
       90 GETUPVAL                         R7 3
       91 NEWTABLE                         R8 16 0
       93 GETUPVAL                         R9 1
       94 GETTABLEKS                       R9 R9 K21 ["child"]
       96 GETTABLEKS                       R10 R0 K22 ["WidgetUri"]
       98 GETTABLEKS                       R11 R2 K5 ["Id"]
      100 CALL                             R9 2 1
      101 SETTABLEKS                       R9 R8 K23 ["Uri"]
      103 GETTABLEKS                       R10 R4 K24 ["Enabled"]
      105 NOT                              R9 R10
      106 SETTABLEKS                       R9 R8 K25 ["Disabled"]
      108 GETTABLEKS                       R9 R5 K26 ["Increment"]
      110 SETTABLEKS                       R9 R8 K26 ["Increment"]
      112 GETTABLEKS                       R9 R0 K27 ["LayoutOrder"]
      114 SETTABLEKS                       R9 R8 K27 ["LayoutOrder"]
      116 GETTABLEKS                       R10 R5 K29 ["Minimum"]
      118 ORK                              R9 R10 K28 [0]
      119 SETTABLEKS                       R9 R8 K29 ["Minimum"]
      121 GETTABLEKS                       R10 R5 K31 ["Maximum"]
      123 ORK                              R9 R10 K30 [∞]
      124 SETTABLEKS                       R9 R8 K31 ["Maximum"]
      126 GETTABLEKS                       R9 R5 K32 ["Precision"]
      128 SETTABLEKS                       R9 R8 K32 ["Precision"]
      130 GETTABLEKS                       R9 R4 K11 ["Value"]
      132 SETTABLEKS                       R9 R8 K11 ["Value"]
      134 NEWCLOSURE                       R9 P0
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R2
      137 SETTABLEKS                       R9 R8 K33 ["OnValueChanged"]
      139 GETUPVAL                         R9 4
      140 MOVE                             R10 R1
      141 LOADK                            R11 K34 ["Text"]
      142 MOVE                             R12 R2
      143 MOVE                             R13 R4
      144 CALL                             R9 4 1
      145 SETTABLEKS                       R9 R8 K34 ["Text"]
      147 GETUPVAL                         R9 5
      148 GETTABLEKS                       R9 R9 K35 ["Tag"]
      150 LOADK                            R10 K36 [""]
      151 SETTABLE                         R10 R8 R9
      152 CALL                             R6 2 -1
      153 RETURN                           R6 -1

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
