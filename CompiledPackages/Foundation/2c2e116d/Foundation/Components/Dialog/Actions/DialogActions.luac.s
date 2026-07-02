PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["join"]
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
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K10 ["Fill"]
       28 SETTABLEKS                       R7 R6 K5 ["fillBehavior"]
       30 CALL                             R4 2 -1
       31 CALL                             R2 -1 -1
       32 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["actions"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["createElement"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["Fragment"]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["map"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["actions"]
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
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K0 ["useMemo"]
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
       26 GETUPVAL                         R7 8
       27 GETTABLEKS                       R7 R7 K3 ["Small"]
       29 JUMPIFEQ                         R6 R7 ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 LOADB                            R6 1
       34 GETTABLEKS                       R7 R1 K4 ["orientation"]
       36 GETUPVAL                         R8 9
       37 GETTABLEKS                       R8 R8 K5 ["Horizontal"]
       39 JUMPIFEQ                         R7 R8 ; [+2]
       41 NOT                              R6 R5
       42 LOADB                            R7 0
       43 GETTABLEKS                       R8 R1 K4 ["orientation"]
       45 GETUPVAL                         R9 9
       46 GETTABLEKS                       R9 R9 K6 ["Vertical"]
       48 JUMPIFNOTEQ                      R8 R9 ; [+2]
       50 MOVE                             R7 R5
       51 GETUPVAL                         R8 4
       52 GETTABLEKS                       R8 R8 K7 ["createElement"]
       54 GETUPVAL                         R9 10
       55 DUPTABLE                         R10 K12 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"], ["testId"]}]
       56 GETTABLEKS                       R11 R1 K10 ["LayoutOrder"]
       58 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       60 LOADK                            R12 K13 ["%*--actions"]
       61 GETTABLEKS                       R14 R3 K11 ["testId"]
       63 NAMECALL                         R12 R12 K14 ["format"]
       65 CALL                             R12 2 1
       66 MOVE                             R11 R12
       67 SETTABLEKS                       R11 R10 K11 ["testId"]
       69 DUPTABLE                         R11 K17 [{"ActionsContainer", "ActionsLabel"}]
       70 GETUPVAL                         R12 4
       71 GETTABLEKS                       R12 R12 K7 ["createElement"]
       73 GETUPVAL                         R13 10
       74 DUPTABLE                         R14 K19 [{["tag"], ["LayoutOrder"] = 1, ["testId"]}]
       75 NEWTABLE                         R15 4 0
       77 LOADB                            R16 1
       78 SETTABLEKS                       R16 R15 K20 ["gap-small size-full-0 auto-y"]
       80 SETTABLEKS                       R6 R15 K21 ["row wrap"]
       82 SETTABLEKS                       R7 R15 K22 ["col flex-x-fill"]
       84 SETTABLEKS                       R15 R14 K8 ["tag"]
       86 LOADK                            R16 K23 ["%*--actions-container"]
       87 GETTABLEKS                       R18 R3 K11 ["testId"]
       89 NAMECALL                         R16 R16 K14 ["format"]
       91 CALL                             R16 2 1
       92 MOVE                             R15 R16
       93 SETTABLEKS                       R15 R14 K11 ["testId"]
       95 DUPTABLE                         R15 K25 [{"Actions"}]
       96 SETTABLEKS                       R4 R15 K24 ["Actions"]
       98 CALL                             R12 3 1
       99 SETTABLEKS                       R12 R11 K15 ["ActionsContainer"]
      101 GETTABLEKS                       R13 R1 K26 ["label"]
      103 JUMPIFNOT                        R13 ; [+26]
      104 GETUPVAL                         R12 4
      105 GETTABLEKS                       R12 R12 K7 ["createElement"]
      107 GETUPVAL                         R13 11
      108 DUPTABLE                         R14 K29 [{["Text"], ["tag"], ["LayoutOrder"] = 2, ["testId"]}]
      109 GETTABLEKS                       R15 R1 K26 ["label"]
      111 SETTABLEKS                       R15 R14 K27 ["Text"]
      113 GETTABLEKS                       R15 R2 K30 ["actionsLabel"]
      115 GETTABLEKS                       R15 R15 K8 ["tag"]
      117 SETTABLEKS                       R15 R14 K8 ["tag"]
      119 LOADK                            R16 K31 ["%*--actions-label"]
      120 GETTABLEKS                       R18 R3 K11 ["testId"]
      122 NAMECALL                         R16 R16 K14 ["format"]
      124 CALL                             R16 2 1
      125 MOVE                             R15 R16
      126 SETTABLEKS                       R15 R14 K11 ["testId"]
      128 CALL                             R12 2 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R12
      131 SETTABLEKS                       R12 R11 K16 ["ActionsLabel"]
      133 CALL                             R8 3 -1
      134 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["DialogSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["FillBehavior"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["Orientation"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R10 K16 ["Text"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Components"]
       65 GETTABLEKS                       R11 R11 K17 ["Types"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["View"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K19 ["Utility"]
       79 GETTABLEKS                       R13 R13 K20 ["withDefaults"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETIMPORT                        R14 K1 [script]
       86 GETTABLEKS                       R14 R14 K4 ["Parent"]
       88 GETTABLEKS                       R14 R14 K4 ["Parent"]
       90 GETTABLEKS                       R14 R14 K21 ["useDialogVariants"]
       92 CALL                             R13 1 1
       93 GETTABLEKS                       R13 R13 K21 ["useDialogVariants"]
       95 GETIMPORT                        R14 K6 [require]
       97 GETIMPORT                        R15 K1 [script]
       99 GETTABLEKS                       R15 R15 K4 ["Parent"]
      101 GETTABLEKS                       R15 R15 K4 ["Parent"]
      103 GETTABLEKS                       R15 R15 K22 ["useDialog"]
      105 CALL                             R14 1 1
      106 DUPTABLE                         R15 K24 [{"orientation"}]
      107 GETTABLEKS                       R16 R8 K25 ["Horizontal"]
      109 SETTABLEKS                       R16 R15 K23 ["orientation"]
      111 DUPCLOSURE                       R16 K26 [PROTO_2]
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R9
      124 RETURN                           R16 1
