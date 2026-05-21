PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Hover"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+13]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["current"]
        8 JUMPIFEQ                         R2 R1 ; [+25]
       10 GETUPVAL                         R2 1
       11 SETTABLEKS                       R1 R2 K1 ["current"]
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K2 ["Default"]
       20 JUMPIFNOTEQ                      R0 R2 ; [+13]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K1 ["current"]
       25 JUMPIFNOTEQ                      R2 R1 ; [+8]
       27 GETUPVAL                         R2 1
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K1 ["current"]
       31 GETUPVAL                         R2 2
       32 LOADNIL                          R3
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["id"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["id"]
        3 JUMPIFEQ                         R0 R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 GETUPVAL                         R2 1
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K0 ["id"]
       12 JUMPIFEQ                         R0 R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETUPVAL                         R4 2
       17 JUMPIF                           R4 ; [+5]
       18 MOVE                             R4 R1
       19 JUMPIF                           R4 ; [+3]
       20 GETUPVAL                         R4 3
       21 JUMPIF                           R4 ; [+1]
       22 MOVE                             R4 R2
       23 NOT                              R3 R4
       24 JUMPIFNOT                        R3 ; [+8]
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K1 ["Color"]
       28 GETTABLEKS                       R4 R4 K2 ["Stroke"]
       30 GETTABLEKS                       R4 R4 K3 ["Default"]
       32 RETURN                           R4 1
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K1 ["Color"]
       36 GETTABLEKS                       R4 R4 K4 ["None"]
       38 RETURN                           R4 1

PROTO_3:
        0 SUBK                             R4 R1 K0 [1]
        1 MULK                             R3 R4 K1 [2]
        2 ADDK                             R2 R3 K0 [1]
        3 ADDK                             R3 R2 K0 [1]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K2 ["segments"]
        7 LENGTH                           R5 R6
        8 JUMPIFEQ                         R1 R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K2 ["segments"]
       15 ADDK                             R7 R1 K0 [1]
       16 GETTABLE                         R5 R6 R7
       17 GETTABLEKS                       R7 R0 K3 ["id"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K4 ["value"]
       22 JUMPIFEQ                         R7 R8 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 MOVE                             R7 R5
       27 JUMPIFNOT                        R7 ; [+9]
       28 GETTABLEKS                       R8 R5 K3 ["id"]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K4 ["value"]
       33 JUMPIFEQ                         R8 R9 ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K5 ["createElement"]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K6 ["Fragment"]
       43 DUPTABLE                         R10 K8 [{"key"}]
       44 GETTABLEKS                       R12 R0 K3 ["id"]
       46 FASTCALL1                        TOSTRING R12 ; [+2]
       47 GETIMPORT                        R11 K10 [tostring]
       49 CALL                             R11 1 1
       50 SETTABLEKS                       R11 R10 K7 ["key"]
       52 DUPTABLE                         R11 K13 [{"Segment", "Divider"}]
       53 GETUPVAL                         R12 1
       54 GETTABLEKS                       R12 R12 K5 ["createElement"]
       56 GETUPVAL                         R13 2
       57 DUPTABLE                         R14 K21 [{"id", "size", "text", "isActive", "onStateChanged", "onActivated", "LayoutOrder", "testId"}]
       58 GETTABLEKS                       R15 R0 K3 ["id"]
       60 SETTABLEKS                       R15 R14 K3 ["id"]
       62 GETUPVAL                         R15 0
       63 GETTABLEKS                       R15 R15 K14 ["size"]
       65 SETTABLEKS                       R15 R14 K14 ["size"]
       67 GETTABLEKS                       R15 R0 K15 ["text"]
       69 SETTABLEKS                       R15 R14 K15 ["text"]
       71 GETTABLEKS                       R16 R0 K3 ["id"]
       73 GETUPVAL                         R17 0
       74 GETTABLEKS                       R17 R17 K4 ["value"]
       76 JUMPIFEQ                         R16 R17 ; [+2]
       78 LOADB                            R15 0 +1
       79 LOADB                            R15 1
       80 SETTABLEKS                       R15 R14 K16 ["isActive"]
       82 NEWCLOSURE                       R15 P0
       83 CAPTURE                          UPVAL U3
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R15 R14 K17 ["onStateChanged"]
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R15 R15 K18 ["onActivated"]
       90 SETTABLEKS                       R15 R14 K18 ["onActivated"]
       92 SETTABLEKS                       R2 R14 K19 ["LayoutOrder"]
       94 LOADK                            R16 K22 ["%*--segment-%*"]
       95 GETUPVAL                         R18 0
       96 GETTABLEKS                       R18 R18 K20 ["testId"]
       98 GETTABLEKS                       R19 R0 K3 ["id"]
      100 NAMECALL                         R16 R16 K23 ["format"]
      102 CALL                             R16 3 1
      103 MOVE                             R15 R16
      104 SETTABLEKS                       R15 R14 K20 ["testId"]
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K11 ["Segment"]
      109 JUMPIFNOT                        R4 ; [+2]
      110 LOADNIL                          R12
      111 JUMP                             ; [+34]
      112 GETUPVAL                         R12 1
      113 GETTABLEKS                       R12 R12 K5 ["createElement"]
      115 GETUPVAL                         R13 4
      116 DUPTABLE                         R14 K27 [{"tag", "backgroundStyle", "Size", "LayoutOrder"}]
      117 GETUPVAL                         R15 5
      118 GETTABLEKS                       R15 R15 K28 ["divider"]
      120 GETTABLEKS                       R15 R15 K24 ["tag"]
      122 SETTABLEKS                       R15 R14 K24 ["tag"]
      124 GETUPVAL                         R15 6
      125 NEWCLOSURE                       R17 P1
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R7
      130 CAPTURE                          UPVAL U7
      131 NAMECALL                         R15 R15 K29 ["map"]
      133 CALL                             R15 2 1
      134 SETTABLEKS                       R15 R14 K25 ["backgroundStyle"]
      136 GETUPVAL                         R15 5
      137 GETTABLEKS                       R15 R15 K28 ["divider"]
      139 GETTABLEKS                       R15 R15 K26 ["Size"]
      141 SETTABLEKS                       R15 R14 K26 ["Size"]
      143 SETTABLEKS                       R3 R14 K19 ["LayoutOrder"]
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K12 ["Divider"]
      148 CALL                             R8 3 -1
      149 RETURN                           R8 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useBinding"]
        7 LOADNIL                          R4
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 3
       10 CALL                             R5 0 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K1 ["useRef"]
       14 LOADNIL                          R7
       15 CALL                             R6 1 1
       16 GETUPVAL                         R7 4
       17 MOVE                             R8 R5
       18 GETTABLEKS                       R9 R2 K2 ["size"]
       20 CALL                             R7 2 1
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       24 NEWCLOSURE                       R9 P0
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R6
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R10 0 1
       30 MOVE                             R11 R3
       31 SETLIST                          R10 R11 1 [1]
       33 CALL                             R8 2 1
       34 GETUPVAL                         R9 2
       35 GETTABLEKS                       R9 R9 K4 ["createElement"]
       37 GETUPVAL                         R10 6
       38 GETUPVAL                         R11 7
       39 MOVE                             R12 R2
       40 DUPTABLE                         R13 K8 [{"tag", "ref", "testId"}]
       41 GETTABLEKS                       R14 R7 K9 ["container"]
       43 GETTABLEKS                       R14 R14 K5 ["tag"]
       45 SETTABLEKS                       R14 R13 K5 ["tag"]
       47 SETTABLEKS                       R1 R13 K6 ["ref"]
       49 LOADK                            R14 K10 ["--foundation-segmented-control"]
       50 SETTABLEKS                       R14 R13 K7 ["testId"]
       52 CALL                             R11 2 1
       53 GETUPVAL                         R12 8
       54 GETTABLEKS                       R12 R12 K11 ["map"]
       56 GETTABLEKS                       R13 R2 K12 ["segments"]
       58 NEWCLOSURE                       R14 P1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          VAL R8
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R5
       67 CALL                             R12 2 -1
       68 CALL                             R9 -1 -1
       69 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["ControlState"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Providers"]
       51 GETTABLEKS                       R9 R9 K16 ["Style"]
       53 GETTABLEKS                       R9 R9 K17 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K18 ["Utility"]
       60 GETTABLEKS                       R10 R10 K19 ["withDefaults"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Utility"]
       67 GETTABLEKS                       R11 R11 K20 ["withCommonProps"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETIMPORT                        R12 K1 [script]
       74 GETTABLEKS                       R12 R12 K4 ["Parent"]
       76 GETTABLEKS                       R12 R12 K21 ["useSegmentedControlVariants"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETIMPORT                        R13 K1 [script]
       83 GETTABLEKS                       R13 R13 K4 ["Parent"]
       85 GETTABLEKS                       R13 R13 K22 ["Segment"]
       87 CALL                             R12 1 1
       88 DUPTABLE                         R13 K25 [{"size", "testId"}]
       89 GETTABLEKS                       R14 R7 K26 ["Medium"]
       91 SETTABLEKS                       R14 R13 K23 ["size"]
       93 LOADK                            R14 K27 ["--foundation-segmented-control"]
       94 SETTABLEKS                       R14 R13 K24 ["testId"]
       96 DUPCLOSURE                       R14 K28 [PROTO_4]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R12
      107 GETTABLEKS                       R15 R2 K29 ["memo"]
      109 GETTABLEKS                       R16 R2 K30 ["forwardRef"]
      111 MOVE                             R17 R14
      112 CALL                             R16 1 -1
      113 CALL                             R15 -1 -1
      114 RETURN                           R15 -1
