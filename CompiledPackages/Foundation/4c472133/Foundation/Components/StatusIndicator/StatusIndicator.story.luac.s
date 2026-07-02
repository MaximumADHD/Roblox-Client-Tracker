PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationStatusIndicatorVariantExperiment"]
        3 JUMPIF                           R1 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Contrast_Experiment"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+9]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["createElement"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["Fragment"]
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K2 ["createElement"]
       20 GETUPVAL                         R2 3
       21 DUPTABLE                         R3 K6 [{["tag"] = "col align-x-center gap-small size-0-0 auto-xy"}]
       22 DUPTABLE                         R4 K9 [{"Label", "Indicator"}]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K2 ["createElement"]
       26 GETUPVAL                         R6 4
       27 DUPTABLE                         R7 K12 [{["tag"] = "auto-xy text-caption-small text-align-x-center", ["Text"]}]
       28 SETTABLEKS                       R0 R7 K11 ["Text"]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K7 ["Label"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K2 ["createElement"]
       36 GETUPVAL                         R6 5
       37 DUPTABLE                         R7 K14 [{"variant"}]
       38 SETTABLEKS                       R0 R7 K13 ["variant"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K8 ["Indicator"]
       43 CALL                             R1 3 -1
       44 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "row align-x-left align-y-center gap-xxlarge size-full-0 auto-y"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K4 ["map"]
        8 GETUPVAL                         R4 3
        9 DUPCLOSURE                       R5 K5 [PROTO_0]
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CALL                             R3 2 -1
       17 CALL                             R0 -1 -1
       18 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationStatusIndicatorVariantExperiment"]
        3 JUMPIF                           R1 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Contrast_Experiment"]
        7 JUMPIFEQ                         R0 R1 ; [+6]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["Alert"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+4]
       14 NEWTABLE                         R1 0 0
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K3 ["createElement"]
       20 GETUPVAL                         R2 3
       21 DUPTABLE                         R3 K6 [{["tag"] = "col align-x-center gap-small size-0-0 auto-xy"}]
       22 DUPTABLE                         R4 K9 [{"Label", "Indicator"}]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K3 ["createElement"]
       26 GETUPVAL                         R6 4
       27 DUPTABLE                         R7 K12 [{["tag"] = "auto-xy text-caption-small text-align-x-center", ["Text"]}]
       28 SETTABLEKS                       R0 R7 K11 ["Text"]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K7 ["Label"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K3 ["createElement"]
       36 GETUPVAL                         R6 5
       37 DUPTABLE                         R7 K16 [{"value", "variant", "max"}]
       38 GETUPVAL                         R8 6
       39 GETTABLEKS                       R8 R8 K17 ["controls"]
       41 GETTABLEKS                       R8 R8 K13 ["value"]
       43 SETTABLEKS                       R8 R7 K13 ["value"]
       45 SETTABLEKS                       R0 R7 K14 ["variant"]
       47 GETUPVAL                         R8 6
       48 GETTABLEKS                       R8 R8 K17 ["controls"]
       50 GETTABLEKS                       R8 R8 K15 ["max"]
       52 SETTABLEKS                       R8 R7 K15 ["max"]
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K8 ["Indicator"]
       57 CALL                             R1 3 -1
       58 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row align-x-left align-y-center gap-xxlarge size-full-0 auto-y"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["map"]
        8 NEWTABLE                         R5 0 4
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R6 R6 K5 ["Standard"]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R7 R7 K6 ["Emphasis"]
       16 GETUPVAL                         R8 3
       17 GETTABLEKS                       R8 R8 K7 ["Alert"]
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R9 R9 K8 ["Contrast_Experiment"]
       22 SETLIST                          R5 R6 4 [1]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          VAL R0
       32 CALL                             R4 2 -1
       33 CALL                             R1 -1 -1
       34 RETURN                           R1 -1

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
       37 GETTABLEKS                       R7 R7 K14 ["StatusIndicatorVariant"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Components"]
       44 GETTABLEKS                       R8 R8 K15 ["Text"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R9 K16 ["View"]
       53 CALL                             R8 1 1
       54 DUPTABLE                         R9 K20 [{["summary"] = "StatusIndicator", ["stories"], ["controls"]}]
       55 NEWTABLE                         R10 0 2
       57 DUPTABLE                         R11 K25 [{["name"] = "Default", ["summary"] = "Standard status indicator", ["story"]}]
       58 DUPCLOSURE                       R12 K26 [PROTO_1]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 SETTABLEKS                       R12 R11 K24 ["story"]
       68 DUPTABLE                         R12 K29 [{["name"] = "Numeric", ["summary"] = "Indicator with a numeric value", ["story"]}]
       69 DUPCLOSURE                       R13 K30 [PROTO_3]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R13 R12 K24 ["story"]
       79 SETLIST                          R10 R11 2 [1]
       81 SETTABLEKS                       R10 R9 K18 ["stories"]
       83 DUPTABLE                         R10 K35 [{["value"] = 5, ["max"] = 99}]
       84 SETTABLEKS                       R10 R9 K19 ["controls"]
       86 RETURN                           R9 1
