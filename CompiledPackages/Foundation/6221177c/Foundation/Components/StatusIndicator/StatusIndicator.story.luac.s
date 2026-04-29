PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationStatusIndicatorVariantExperiment"]
        3 JUMPIF                           R1 ; [+13]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["Contrast_Experiment"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+9]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["createElement"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K3 ["Fragment"]
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K2 ["createElement"]
       20 GETUPVAL                         R2 3
       21 DUPTABLE                         R3 K5 [{"tag"}]
       22 LOADK                            R4 K6 ["col align-x-center gap-small size-0-0 auto-xy"]
       23 SETTABLEKS                       R4 R3 K4 ["tag"]
       25 DUPTABLE                         R4 K9 [{"Label", "Indicator"}]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R5 R6 K2 ["createElement"]
       29 GETUPVAL                         R6 4
       30 DUPTABLE                         R7 K11 [{"tag", "Text"}]
       31 LOADK                            R8 K12 ["auto-xy text-caption-small text-align-x-center"]
       32 SETTABLEKS                       R8 R7 K4 ["tag"]
       34 SETTABLEKS                       R0 R7 K10 ["Text"]
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K7 ["Label"]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R5 R6 K2 ["createElement"]
       42 GETUPVAL                         R6 5
       43 DUPTABLE                         R7 K14 [{"variant"}]
       44 SETTABLEKS                       R0 R7 K13 ["variant"]
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K8 ["Indicator"]
       49 CALL                             R1 3 -1
       50 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["row align-x-left align-y-center gap-xxlarge size-full-0 auto-y"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K4 ["map"]
       11 GETUPVAL                         R4 3
       12 DUPCLOSURE                       R5 K5 [PROTO_0]
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CALL                             R3 2 -1
       20 CALL                             R0 -1 -1
       21 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationStatusIndicatorVariantExperiment"]
        3 JUMPIF                           R1 ; [+13]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["Contrast_Experiment"]
        7 JUMPIFEQ                         R0 R1 ; [+6]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["Alert"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+4]
       14 NEWTABLE                         R1 0 0
       16 RETURN                           R1 1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K3 ["createElement"]
       20 GETUPVAL                         R2 3
       21 DUPTABLE                         R3 K5 [{"tag"}]
       22 LOADK                            R4 K6 ["col align-x-center gap-small size-0-0 auto-xy"]
       23 SETTABLEKS                       R4 R3 K4 ["tag"]
       25 DUPTABLE                         R4 K9 [{"Label", "Indicator"}]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R5 R6 K3 ["createElement"]
       29 GETUPVAL                         R6 4
       30 DUPTABLE                         R7 K11 [{"tag", "Text"}]
       31 LOADK                            R8 K12 ["auto-xy text-caption-small text-align-x-center"]
       32 SETTABLEKS                       R8 R7 K4 ["tag"]
       34 SETTABLEKS                       R0 R7 K10 ["Text"]
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K7 ["Label"]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R5 R6 K3 ["createElement"]
       42 GETUPVAL                         R6 5
       43 DUPTABLE                         R7 K16 [{"value", "variant", "max"}]
       44 GETUPVAL                         R10 6
       45 GETTABLEKS                       R9 R10 K17 ["controls"]
       47 GETTABLEKS                       R8 R9 K13 ["value"]
       49 SETTABLEKS                       R8 R7 K13 ["value"]
       51 SETTABLEKS                       R0 R7 K14 ["variant"]
       53 GETUPVAL                         R10 6
       54 GETTABLEKS                       R9 R10 K17 ["controls"]
       56 GETTABLEKS                       R8 R9 K15 ["max"]
       58 SETTABLEKS                       R8 R7 K15 ["max"]
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R4 K8 ["Indicator"]
       63 CALL                             R1 3 -1
       64 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["row align-x-left align-y-center gap-xxlarge size-full-0 auto-y"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K4 ["map"]
       11 NEWTABLE                         R5 0 4
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K5 ["Standard"]
       16 GETUPVAL                         R8 3
       17 GETTABLEKS                       R7 R8 K6 ["Emphasis"]
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R8 R9 K7 ["Alert"]
       22 GETUPVAL                         R10 3
       23 GETTABLEKS                       R9 R10 K8 ["Contrast_Experiment"]
       25 SETLIST                          R5 R6 4 [1]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          VAL R0
       35 CALL                             R4 2 -1
       36 CALL                             R1 -1 -1
       37 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R4 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["Dash"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["StatusIndicator"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K13 ["Enums"]
       37 GETTABLEKS                       R7 R8 K14 ["StatusIndicatorVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K11 ["Components"]
       44 GETTABLEKS                       R8 R9 K15 ["Text"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R10 K16 ["View"]
       53 CALL                             R8 1 1
       54 DUPTABLE                         R9 K20 [{"summary", "stories", "controls"}]
       55 LOADK                            R10 K12 ["StatusIndicator"]
       56 SETTABLEKS                       R10 R9 K17 ["summary"]
       58 NEWTABLE                         R10 0 2
       60 DUPTABLE                         R11 K23 [{"name", "summary", "story"}]
       61 LOADK                            R12 K24 ["Default"]
       62 SETTABLEKS                       R12 R11 K21 ["name"]
       64 LOADK                            R12 K25 ["Standard status indicator"]
       65 SETTABLEKS                       R12 R11 K17 ["summary"]
       67 DUPCLOSURE                       R12 K26 [PROTO_1]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R12 R11 K22 ["story"]
       77 DUPTABLE                         R12 K23 [{"name", "summary", "story"}]
       78 LOADK                            R13 K27 ["Numeric"]
       79 SETTABLEKS                       R13 R12 K21 ["name"]
       81 LOADK                            R13 K28 ["Indicator with a numeric value"]
       82 SETTABLEKS                       R13 R12 K17 ["summary"]
       84 DUPCLOSURE                       R13 K29 [PROTO_3]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R5
       92 SETTABLEKS                       R13 R12 K22 ["story"]
       94 SETLIST                          R10 R11 2 [1]
       96 SETTABLEKS                       R10 R9 K18 ["stories"]
       98 DUPTABLE                         R10 K32 [{"value", "max"}]
       99 LOADN                            R11 5
      100 SETTABLEKS                       R11 R10 K30 ["value"]
      102 LOADN                            R11 99
      103 SETTABLEKS                       R11 R10 K31 ["max"]
      105 SETTABLEKS                       R10 R9 K19 ["controls"]
      107 RETURN                           R9 1
