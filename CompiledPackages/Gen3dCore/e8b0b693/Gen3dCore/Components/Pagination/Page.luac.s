PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R3
        2 RETURN                           R3 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["createElement"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["Button"]
        9 DUPTABLE                         R5 K9 [{"LayoutOrder", "text", "onActivated", "isDisabled", "size", "variant", "testId"}]
       10 SETTABLEKS                       R2 R5 K2 ["LayoutOrder"]
       12 GETTABLEKS                       R6 R0 K3 ["text"]
       14 SETTABLEKS                       R6 R5 K3 ["text"]
       16 GETTABLEKS                       R6 R0 K4 ["onActivated"]
       18 SETTABLEKS                       R6 R5 K4 ["onActivated"]
       20 GETTABLEKS                       R6 R0 K5 ["isDisabled"]
       22 SETTABLEKS                       R6 R5 K5 ["isDisabled"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K10 ["Enums"]
       27 GETTABLEKS                       R6 R6 K11 ["InputSize"]
       29 GETTABLEKS                       R6 R6 K12 ["XSmall"]
       31 SETTABLEKS                       R6 R5 K6 ["size"]
       33 JUMPIFNOT                        R1 ; [+8]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K10 ["Enums"]
       37 GETTABLEKS                       R6 R6 K13 ["ButtonVariant"]
       39 GETTABLEKS                       R6 R6 K14 ["Emphasis"]
       41 JUMP                             ; [+7]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K10 ["Enums"]
       45 GETTABLEKS                       R6 R6 K13 ["ButtonVariant"]
       47 GETTABLEKS                       R6 R6 K15 ["Standard"]
       49 SETTABLEKS                       R6 R5 K7 ["variant"]
       51 GETTABLEKS                       R6 R0 K8 ["testId"]
       53 SETTABLEKS                       R6 R5 K8 ["testId"]
       55 CALL                             R3 2 -1
       56 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K5 [{["tag"] = "col gap-small size-full-0 auto-y"}]
       11 DUPTABLE                         R5 K8 [{"Content", "Actions"}]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K1 ["createElement"]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K2 ["View"]
       18 DUPTABLE                         R8 K10 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y"}]
       19 MOVE                             R9 R1
       20 CALL                             R9 0 1
       21 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       23 GETTABLEKS                       R9 R0 K11 ["content"]
       25 CALL                             R6 3 1
       26 SETTABLEKS                       R6 R5 K6 ["Content"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K1 ["createElement"]
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R7 R7 K2 ["View"]
       34 DUPTABLE                         R8 K14 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["testId"]}]
       35 MOVE                             R9 R1
       36 CALL                             R9 0 1
       37 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       39 GETTABLEKS                       R9 R0 K15 ["actionsTestId"]
       41 SETTABLEKS                       R9 R8 K13 ["testId"]
       43 DUPTABLE                         R9 K21 [{"Back", "Leading", "Spacer", "Secondary", "Primary"}]
       44 GETTABLEKS                       R11 R0 K22 ["onBack"]
       46 JUMPIFNOT                        R11 ; [+51]
       47 GETUPVAL                         R10 1
       48 GETTABLEKS                       R10 R10 K1 ["createElement"]
       50 GETUPVAL                         R11 2
       51 GETTABLEKS                       R11 R11 K23 ["IconButton"]
       53 DUPTABLE                         R12 K28 [{"LayoutOrder", "icon", "onActivated", "size", "variant", "testId"}]
       54 MOVE                             R13 R1
       55 CALL                             R13 0 1
       56 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       58 DUPTABLE                         R13 K30 [{"name"}]
       59 GETUPVAL                         R14 2
       60 GETTABLEKS                       R14 R14 K31 ["Enums"]
       62 GETTABLEKS                       R14 R14 K32 ["IconName"]
       64 GETTABLEKS                       R14 R14 K33 ["ChevronLargeLeft"]
       66 SETTABLEKS                       R14 R13 K29 ["name"]
       68 SETTABLEKS                       R13 R12 K24 ["icon"]
       70 GETTABLEKS                       R13 R0 K22 ["onBack"]
       72 SETTABLEKS                       R13 R12 K25 ["onActivated"]
       74 GETUPVAL                         R13 2
       75 GETTABLEKS                       R13 R13 K31 ["Enums"]
       77 GETTABLEKS                       R13 R13 K34 ["InputSize"]
       79 GETTABLEKS                       R13 R13 K35 ["XSmall"]
       81 SETTABLEKS                       R13 R12 K26 ["size"]
       83 GETUPVAL                         R13 2
       84 GETTABLEKS                       R13 R13 K31 ["Enums"]
       86 GETTABLEKS                       R13 R13 K36 ["ButtonVariant"]
       88 GETTABLEKS                       R13 R13 K37 ["Utility"]
       90 SETTABLEKS                       R13 R12 K27 ["variant"]
       92 GETTABLEKS                       R13 R0 K38 ["backTestId"]
       94 SETTABLEKS                       R13 R12 K13 ["testId"]
       96 CALL                             R10 2 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R10
       99 SETTABLEKS                       R10 R9 K16 ["Back"]
      101 GETUPVAL                         R10 1
      102 GETTABLEKS                       R10 R10 K1 ["createElement"]
      104 GETUPVAL                         R11 2
      105 GETTABLEKS                       R11 R11 K2 ["View"]
      107 DUPTABLE                         R12 K40 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xsmall auto-xy"}]
      108 MOVE                             R13 R1
      109 CALL                             R13 0 1
      110 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      112 GETTABLEKS                       R13 R0 K41 ["leadingActions"]
      114 CALL                             R10 3 1
      115 SETTABLEKS                       R10 R9 K17 ["Leading"]
      117 GETUPVAL                         R10 1
      118 GETTABLEKS                       R10 R10 K1 ["createElement"]
      120 GETUPVAL                         R11 2
      121 GETTABLEKS                       R11 R11 K2 ["View"]
      123 DUPTABLE                         R12 K43 [{["LayoutOrder"], ["tag"] = "fill"}]
      124 MOVE                             R13 R1
      125 CALL                             R13 0 1
      126 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K18 ["Spacer"]
      131 GETUPVAL                         R10 3
      132 GETTABLEKS                       R11 R0 K44 ["secondaryAction"]
      134 LOADB                            R12 0
      135 MOVE                             R13 R1
      136 CALL                             R13 0 -1
      137 CALL                             R10 -1 1
      138 SETTABLEKS                       R10 R9 K19 ["Secondary"]
      140 GETUPVAL                         R10 3
      141 GETTABLEKS                       R11 R0 K45 ["primaryAction"]
      143 LOADB                            R12 1
      144 MOVE                             R13 R1
      145 CALL                             R13 0 -1
      146 CALL                             R10 -1 1
      147 SETTABLEKS                       R10 R9 K20 ["Primary"]
      149 CALL                             R6 3 1
      150 SETTABLEKS                       R6 R5 K7 ["Actions"]
      152 CALL                             R2 3 -1
      153 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 DUPCLOSURE                       R5 K10 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 DUPCLOSURE                       R6 K11 [PROTO_1]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R5
       32 RETURN                           R6 1
