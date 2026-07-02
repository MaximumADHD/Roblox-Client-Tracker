PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K0 ["FoundationStatusIndicatorVariantExperiment"]
        9 JUMPIF                           R6 ; [+5]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K1 ["Contrast_Experiment"]
       13 JUMPIFEQ                         R5 R6 ; [+8]
       15 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R5
       19 GETIMPORT                        R6 K4 [table.insert]
       21 CALL                             R6 2 0
       22 FORGLOOP                         R1 2 ; [-17]
       24 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "col gap-large size-full-0 auto-y"}]
        7 DUPTABLE                         R5 K6 [{"Indicator"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["createElement"]
       11 GETUPVAL                         R7 2
       12 DUPTABLE                         R8 K11 [{"variant", "shape", "value", "max"}]
       13 GETTABLEKS                       R9 R1 K7 ["variant"]
       15 SETTABLEKS                       R9 R8 K7 ["variant"]
       17 GETTABLEKS                       R9 R1 K8 ["shape"]
       19 SETTABLEKS                       R9 R8 K8 ["shape"]
       21 GETTABLEKS                       R10 R1 K9 ["value"]
       23 LOADN                            R11 0
       24 JUMPIFNOTLT                      R11 R10 ; [+4]
       26 GETTABLEKS                       R9 R1 K9 ["value"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R9
       30 SETTABLEKS                       R9 R8 K9 ["value"]
       32 GETTABLEKS                       R9 R1 K10 ["max"]
       34 SETTABLEKS                       R9 R8 K10 ["max"]
       36 CALL                             R6 2 1
       37 SETTABLEKS                       R6 R5 K5 ["Indicator"]
       39 CALL                             R2 3 -1
       40 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"variant", "shape", "LayoutOrder"}]
        5 GETUPVAL                         R5 2
        6 SETTABLEKS                       R5 R4 K1 ["variant"]
        8 SETTABLEKS                       R0 R4 K2 ["shape"]
       10 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_3:
        0 LOADN                            R0 0
        1 NEWTABLE                         R1 0 0
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 3
        5 FORGPREP                         R2
        6 ADDK                             R0 R0 K0 [1]
        7 MOVE                             R8 R6
        8 LOADK                            R9 K1 ["_label"]
        9 CONCAT                           R7 R8 R9
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R8 R8 K2 ["createElement"]
       13 GETUPVAL                         R9 2
       14 DUPTABLE                         R10 K7 [{["Text"], ["tag"] = "auto-xy text-label-medium content-muted", ["LayoutOrder"]}]
       15 SETTABLEKS                       R6 R10 K3 ["Text"]
       17 SETTABLEKS                       R0 R10 K6 ["LayoutOrder"]
       19 CALL                             R8 2 1
       20 SETTABLE                         R8 R1 R7
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R7 R7 K8 ["map"]
       24 GETUPVAL                         R8 4
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R6
       29 CALL                             R7 2 1
       30 GETUPVAL                         R9 6
       31 GETTABLE                         R8 R9 R6
       32 JUMPIFNOT                        R8 ; [+17]
       33 MOVE                             R9 R7
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R10 R10 K2 ["createElement"]
       37 GETUPVAL                         R11 5
       38 DUPTABLE                         R12 K12 [{["variant"], ["value"] = 5, ["LayoutOrder"]}]
       39 SETTABLEKS                       R6 R12 K9 ["variant"]
       41 LENGTH                           R14 R7
       42 ADDK                             R13 R14 K0 [1]
       43 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       45 CALL                             R10 2 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R8 K15 [table.insert]
       49 CALL                             R8 -1 0
       50 ADDK                             R0 R0 K0 [1]
       51 MOVE                             R9 R6
       52 LOADK                            R10 K16 ["_row"]
       53 CONCAT                           R8 R9 R10
       54 GETUPVAL                         R9 1
       55 GETTABLEKS                       R9 R9 K2 ["createElement"]
       57 GETUPVAL                         R10 7
       58 DUPTABLE                         R11 K18 [{["tag"] = "row align-y-center gap-medium auto-xy", ["LayoutOrder"]}]
       59 SETTABLEKS                       R0 R11 K6 ["LayoutOrder"]
       61 MOVE                             R12 R7
       62 CALL                             R9 3 1
       63 SETTABLE                         R9 R1 R8
       64 FORGLOOP                         R2 2 ; [-59]
       66 GETUPVAL                         R2 1
       67 GETTABLEKS                       R2 R2 K2 ["createElement"]
       69 GETUPVAL                         R3 7
       70 DUPTABLE                         R4 K20 [{["tag"] = "col gap-small size-full-0 auto-y"}]
       71 MOVE                             R5 R1
       72 CALL                             R2 3 -1
       73 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["Dash"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["StatusIndicator"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Enums"]
       37 GETTABLEKS                       R7 R7 K14 ["StatusIndicatorShape"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R8 K15 ["StatusIndicatorVariant"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R9 K16 ["Text"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Components"]
       58 GETTABLEKS                       R10 R10 K12 ["StatusIndicator"]
       60 GETTABLEKS                       R10 R10 K17 ["ValidNumericVariants"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K11 ["Components"]
       67 GETTABLEKS                       R11 R11 K18 ["View"]
       69 CALL                             R10 1 1
       70 DUPCLOSURE                       R11 K19 [PROTO_0]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 DUPCLOSURE                       R12 K20 [PROTO_1]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R5
       77 NEWTABLE                         R13 0 3
       79 GETTABLEKS                       R14 R6 K21 ["Circle"]
       81 GETTABLEKS                       R15 R6 K22 ["Ring"]
       83 GETTABLEKS                       R16 R6 K23 ["Square"]
       85 SETLIST                          R13 R14 3 [1]
       87 DUPCLOSURE                       R14 K24 [PROTO_3]
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R10
       96 DUPTABLE                         R15 K28 [{["summary"] = "StatusIndicator", ["stories"], ["controls"]}]
       97 NEWTABLE                         R16 0 2
       99 DUPTABLE                         R17 K32 [{["name"] = "Playground", ["story"]}]
      100 SETTABLEKS                       R12 R17 K31 ["story"]
      102 DUPTABLE                         R18 K35 [{["name"] = "All Variants", ["summary"] = "All variant × shape permutations, plus numeric where supported", ["story"]}]
      103 SETTABLEKS                       R14 R18 K31 ["story"]
      105 SETLIST                          R16 R17 2 [1]
      107 SETTABLEKS                       R16 R15 K26 ["stories"]
      109 DUPTABLE                         R16 K42 [{["variant"], ["shape"], ["value"] = 0, ["max"] = 99}]
      110 GETTABLEKS                       R17 R4 K43 ["values"]
      112 MOVE                             R18 R7
      113 CALL                             R17 1 1
      114 SETTABLEKS                       R17 R16 K36 ["variant"]
      116 NEWTABLE                         R17 0 3
      118 GETTABLEKS                       R18 R6 K21 ["Circle"]
      120 GETTABLEKS                       R19 R6 K22 ["Ring"]
      122 GETTABLEKS                       R20 R6 K23 ["Square"]
      124 SETLIST                          R17 R18 3 [1]
      126 SETTABLEKS                       R17 R16 K37 ["shape"]
      128 SETTABLEKS                       R16 R15 K27 ["controls"]
      130 RETURN                           R15 1
