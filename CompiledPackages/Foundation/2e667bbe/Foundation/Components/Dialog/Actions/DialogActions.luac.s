PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["join"]
        7 MOVE                             R5 R0
        8 DUPTABLE                         R6 K6 [{"key", "Name", "LayoutOrder", "fillBehavior"}]
        9 LOADK                            R8 K7 ["%*-%*"]
       10 MOVE                             R10 R1
       11 GETTABLEKS                       R11 R0 K8 ["text"]
       13 NAMECALL                         R8 R8 K9 ["format"]
       15 CALL                             R8 3 1
       16 MOVE                             R7 R8
       17 SETTABLEKS                       R7 R6 K2 ["key"]
       19 GETTABLEKS                       R7 R0 K8 ["text"]
       21 SETTABLEKS                       R7 R6 K3 ["Name"]
       23 SETTABLEKS                       R1 R6 K4 ["LayoutOrder"]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R7 R8 K10 ["Fill"]
       28 SETTABLEKS                       R7 R6 K5 ["fillBehavior"]
       30 CALL                             R4 2 -1
       31 CALL                             R2 -1 -1
       32 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["actions"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["createElement"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["Fragment"]
       12 LOADNIL                          R2
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K3 ["map"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K0 ["actions"]
       19 DUPCLOSURE                       R5 K4 [PROTO_0]
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U4
       24 CALL                             R3 2 -1
       25 CALL                             R0 -1 -1
       26 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R5 4
        9 GETTABLEKS                       R4 R5 K0 ["useMemo"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 NEWTABLE                         R6 0 1
       19 GETTABLEKS                       R7 R1 K1 ["actions"]
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 1
       24 GETTABLEKS                       R6 R3 K2 ["responsiveSize"]
       26 GETUPVAL                         R8 8
       27 GETTABLEKS                       R7 R8 K3 ["Small"]
       29 JUMPIFEQ                         R6 R7 ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 LOADB                            R6 1
       34 GETTABLEKS                       R7 R1 K4 ["orientation"]
       36 GETUPVAL                         R9 9
       37 GETTABLEKS                       R8 R9 K5 ["Horizontal"]
       39 JUMPIFEQ                         R7 R8 ; [+2]
       41 NOT                              R6 R5
       42 LOADB                            R7 0
       43 GETTABLEKS                       R8 R1 K4 ["orientation"]
       45 GETUPVAL                         R10 9
       46 GETTABLEKS                       R9 R10 K6 ["Vertical"]
       48 JUMPIFNOTEQ                      R8 R9 ; [+2]
       50 MOVE                             R7 R5
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R8 R9 K7 ["createElement"]
       54 GETUPVAL                         R9 10
       55 DUPTABLE                         R10 K11 [{"tag", "LayoutOrder", "testId"}]
       56 LOADK                            R12 K12 ["col auto-y size-full-0 %*"]
       57 GETUPVAL                         R16 11
       58 GETTABLEKS                       R15 R16 K13 ["FoundationDialogActionsUpdate"]
       60 JUMPIFNOT                        R15 ; [+2]
       61 LOADK                            R14 K14 [""]
       62 JUMP                             ; [+1]
       63 LOADK                            R14 K15 ["gap-large"]
       64 NAMECALL                         R12 R12 K16 ["format"]
       66 CALL                             R12 2 1
       67 MOVE                             R11 R12
       68 SETTABLEKS                       R11 R10 K8 ["tag"]
       70 GETTABLEKS                       R11 R1 K9 ["LayoutOrder"]
       72 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       74 LOADK                            R12 K17 ["%*--actions"]
       75 GETTABLEKS                       R14 R3 K10 ["testId"]
       77 NAMECALL                         R12 R12 K16 ["format"]
       79 CALL                             R12 2 1
       80 MOVE                             R11 R12
       81 SETTABLEKS                       R11 R10 K10 ["testId"]
       83 DUPTABLE                         R11 K20 [{"ActionsContainer", "ActionsLabel"}]
       84 GETUPVAL                         R13 4
       85 GETTABLEKS                       R12 R13 K7 ["createElement"]
       87 GETUPVAL                         R13 10
       88 DUPTABLE                         R14 K11 [{"tag", "LayoutOrder", "testId"}]
       89 NEWTABLE                         R15 4 0
       91 LOADK                            R17 K21 ["auto-y size-full-0 %*"]
       92 GETUPVAL                         R21 11
       93 GETTABLEKS                       R20 R21 K13 ["FoundationDialogActionsUpdate"]
       95 JUMPIFNOT                        R20 ; [+2]
       96 LOADK                            R19 K22 ["gap-small"]
       97 JUMP                             ; [+1]
       98 LOADK                            R19 K15 ["gap-large"]
       99 NAMECALL                         R17 R17 K16 ["format"]
      101 CALL                             R17 2 1
      102 MOVE                             R16 R17
      103 LOADB                            R17 1
      104 SETTABLE                         R17 R15 R16
      105 SETTABLEKS                       R6 R15 K23 ["row wrap"]
      107 SETTABLEKS                       R7 R15 K24 ["col flex-x-fill"]
      109 SETTABLEKS                       R15 R14 K8 ["tag"]
      111 LOADN                            R15 1
      112 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      114 LOADK                            R16 K25 ["%*--actions-container"]
      115 GETTABLEKS                       R18 R3 K10 ["testId"]
      117 NAMECALL                         R16 R16 K16 ["format"]
      119 CALL                             R16 2 1
      120 MOVE                             R15 R16
      121 SETTABLEKS                       R15 R14 K10 ["testId"]
      123 DUPTABLE                         R15 K27 [{"Actions"}]
      124 SETTABLEKS                       R4 R15 K26 ["Actions"]
      126 CALL                             R12 3 1
      127 SETTABLEKS                       R12 R11 K18 ["ActionsContainer"]
      129 GETTABLEKS                       R13 R1 K28 ["label"]
      131 JUMPIFNOT                        R13 ; [+29]
      132 GETUPVAL                         R13 4
      133 GETTABLEKS                       R12 R13 K7 ["createElement"]
      135 GETUPVAL                         R13 12
      136 DUPTABLE                         R14 K30 [{"Text", "tag", "LayoutOrder", "testId"}]
      137 GETTABLEKS                       R15 R1 K28 ["label"]
      139 SETTABLEKS                       R15 R14 K29 ["Text"]
      141 GETTABLEKS                       R16 R2 K31 ["actionsLabel"]
      143 GETTABLEKS                       R15 R16 K8 ["tag"]
      145 SETTABLEKS                       R15 R14 K8 ["tag"]
      147 LOADN                            R15 2
      148 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      150 LOADK                            R16 K32 ["%*--actions-label"]
      151 GETTABLEKS                       R18 R3 K10 ["testId"]
      153 NAMECALL                         R16 R16 K16 ["format"]
      155 CALL                             R16 2 1
      156 MOVE                             R15 R16
      157 SETTABLEKS                       R15 R14 K10 ["testId"]
      159 CALL                             R12 2 1
      160 JUMP                             ; [+1]
      161 LOADNIL                          R12
      162 SETTABLEKS                       R12 R11 K19 ["ActionsLabel"]
      164 CALL                             R8 3 -1
      165 RETURN                           R8 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["FillBehavior"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["Orientation"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R10 K15 ["DialogSize"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R11 K16 ["Text"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K9 ["Components"]
       65 GETTABLEKS                       R11 R12 K17 ["View"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K9 ["Components"]
       72 GETTABLEKS                       R12 R13 K18 ["Types"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R14 R0 K19 ["Utility"]
       79 GETTABLEKS                       R13 R14 K20 ["withDefaults"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R15 R0 K19 ["Utility"]
       86 GETTABLEKS                       R14 R15 K21 ["Flags"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R15 K6 [require]
       91 GETIMPORT                        R19 K1 [script]
       93 GETTABLEKS                       R18 R19 K4 ["Parent"]
       95 GETTABLEKS                       R17 R18 K4 ["Parent"]
       97 GETTABLEKS                       R16 R17 K22 ["useDialogVariants"]
       99 CALL                             R15 1 1
      100 GETTABLEKS                       R14 R15 K22 ["useDialogVariants"]
      102 GETIMPORT                        R15 K6 [require]
      104 GETIMPORT                        R19 K1 [script]
      106 GETTABLEKS                       R18 R19 K4 ["Parent"]
      108 GETTABLEKS                       R17 R18 K4 ["Parent"]
      110 GETTABLEKS                       R16 R17 K23 ["useDialog"]
      112 CALL                             R15 1 1
      113 DUPTABLE                         R16 K25 [{"orientation"}]
      114 GETTABLEKS                       R17 R7 K26 ["Horizontal"]
      116 SETTABLEKS                       R17 R16 K24 ["orientation"]
      118 DUPCLOSURE                       R17 K27 [PROTO_2]
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R9
      132 RETURN                           R17 1
