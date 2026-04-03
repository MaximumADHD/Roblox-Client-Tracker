PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["config"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["join"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["baseRules"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["rulesByBreakpoint"]
        9 GETUPVAL                         R4 2
       10 GETTABLE                         R2 R3 R4
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+68]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["columns"]
        7 GETUPVAL                         R2 2
        8 GETTABLE                         R0 R1 R2
        9 LOADN                            R3 0
       10 GETUPVAL                         R1 3
       11 LOADN                            R2 1
       12 FORNPREP                         R1
       13 FASTCALL2                        MATH_MIN R3 R0 ; [+5]
       15 MOVE                             R5 R3
       16 MOVE                             R6 R0
       17 GETIMPORT                        R4 K4 [math.min]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 4
       21 GETUPVAL                         R7 5
       22 GETTABLEKS                       R6 R7 K5 ["config"]
       24 GETUPVAL                         R7 2
       25 GETUPVAL                         R8 6
       26 MOVE                             R9 R4
       27 CALL                             R5 4 1
       28 GETIMPORT                        R6 K8 [Vector2.new]
       30 GETTABLEKS                       R7 R5 K9 ["cellWidth"]
       32 LOADN                            R8 0
       33 CALL                             R6 2 1
       34 GETIMPORT                        R7 K8 [Vector2.new]
       36 GETTABLEKS                       R8 R5 K9 ["cellWidth"]
       38 LOADK                            R9 K10 [∞]
       39 CALL                             R7 2 1
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R8 R9 K0 ["current"]
       43 LOADK                            R11 K11 ["Col"]
       44 MOVE                             R12 R3
       45 CONCAT                           R10 R11 R12
       46 GETTABLEKS                       R11 R5 K12 ["cellSize"]
       48 NAMECALL                         R8 R8 K13 ["SetAttribute"]
       50 CALL                             R8 3 0
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R8 R9 K0 ["current"]
       54 LOADK                            R11 K14 ["ColMin"]
       55 MOVE                             R12 R3
       56 CONCAT                           R10 R11 R12
       57 MOVE                             R11 R6
       58 NAMECALL                         R8 R8 K13 ["SetAttribute"]
       60 CALL                             R8 3 0
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R8 R9 K0 ["current"]
       64 LOADK                            R11 K15 ["ColMax"]
       65 MOVE                             R12 R3
       66 CONCAT                           R10 R11 R12
       67 MOVE                             R11 R7
       68 NAMECALL                         R8 R8 K13 ["SetAttribute"]
       70 CALL                             R8 3 0
       71 FORNLOOP                         R1
       72 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NEWTABLE                         R2 0 1
        9 GETUPVAL                         R3 1
       10 SETLIST                          R2 R3 1 [1]
       12 NAMECALL                         R0 R0 K1 ["SetDerives"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["useRef"]
        7 LOADNIL                          R3
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 4
       12 CALL                             R4 0 1
       13 GETTABLEKS                       R6 R3 K1 ["config"]
       15 GETTABLEKS                       R5 R6 K2 ["breakpoint"]
       17 GETTABLEKS                       R7 R3 K1 ["config"]
       19 GETTABLEKS                       R6 R7 K3 ["grid"]
       21 GETTABLEKS                       R8 R5 K4 ["order"]
       23 GETTABLEKS                       R10 R5 K4 ["order"]
       25 LENGTH                           R9 R10
       26 GETTABLE                         R7 R8 R9
       27 GETTABLEKS                       R9 R6 K5 ["columns"]
       29 GETTABLE                         R8 R9 R7
       30 GETTABLEKS                       R10 R1 K2 ["breakpoint"]
       32 OR                               R9 R10 R7
       33 LOADN                            R11 1
       34 GETTABLEKS                       R12 R1 K6 ["containerWidth"]
       36 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
       38 GETIMPORT                        R10 K9 [math.max]
       40 CALL                             R10 2 1
       41 GETUPVAL                         R12 2
       42 GETTABLEKS                       R11 R12 K10 ["useMemo"]
       44 NEWCLOSURE                       R12 P0
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R3
       47 NEWTABLE                         R13 0 1
       49 GETTABLEKS                       R14 R3 K1 ["config"]
       51 SETLIST                          R13 R14 1 [1]
       53 CALL                             R11 2 1
       54 GETUPVAL                         R13 2
       55 GETTABLEKS                       R12 R13 K10 ["useMemo"]
       57 NEWCLOSURE                       R13 P1
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R9
       61 NEWTABLE                         R14 0 2
       63 MOVE                             R15 R11
       64 MOVE                             R16 R9
       65 SETLIST                          R14 R15 2 [1]
       67 CALL                             R12 2 1
       68 GETUPVAL                         R14 2
       69 GETTABLEKS                       R13 R14 K11 ["useLayoutEffect"]
       71 NEWCLOSURE                       R14 P2
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 CAPTURE                          UPVAL U7
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R10
       79 NEWTABLE                         R15 0 3
       81 GETTABLEKS                       R16 R3 K1 ["config"]
       83 MOVE                             R17 R10
       84 MOVE                             R18 R9
       85 SETLIST                          R15 R16 3 [1]
       87 CALL                             R13 2 0
       88 GETUPVAL                         R14 2
       89 GETTABLEKS                       R13 R14 K11 ["useLayoutEffect"]
       91 NEWCLOSURE                       R14 P3
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R4
       94 NEWTABLE                         R15 0 1
       96 MOVE                             R16 R4
       97 SETLIST                          R15 R16 1 [1]
       99 CALL                             R13 2 0
      100 GETUPVAL                         R14 2
      101 GETTABLEKS                       R13 R14 K12 ["createElement"]
      103 GETUPVAL                         R15 2
      104 GETTABLEKS                       R14 R15 K13 ["Fragment"]
      106 LOADNIL                          R15
      107 DUPTABLE                         R16 K16 [{"GridStyleSheet", "GridStyleLink"}]
      108 GETUPVAL                         R18 2
      109 GETTABLEKS                       R17 R18 K12 ["createElement"]
      111 LOADK                            R18 K17 ["StyleSheet"]
      112 DUPTABLE                         R19 K19 [{"ref"}]
      113 SETTABLEKS                       R2 R19 K18 ["ref"]
      115 MOVE                             R20 R12
      116 CALL                             R17 3 1
      117 SETTABLEKS                       R17 R16 K14 ["GridStyleSheet"]
      119 GETUPVAL                         R18 2
      120 GETTABLEKS                       R17 R18 K12 ["createElement"]
      122 LOADK                            R18 K20 ["StyleLink"]
      123 DUPTABLE                         R19 K21 [{"StyleSheet"}]
      124 GETTABLEKS                       R20 R2 K22 ["current"]
      126 SETTABLEKS                       R20 R19 K17 ["StyleSheet"]
      128 CALL                             R17 2 1
      129 SETTABLEKS                       R17 R16 K15 ["GridStyleLink"]
      131 CALL                             R13 3 -1
      132 RETURN                           R13 -1

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
       19 GETIMPORT                        R5 K6 [require]
       21 GETTABLEKS                       R8 R0 K9 ["Providers"]
       23 GETTABLEKS                       R7 R8 K10 ["Style"]
       25 GETTABLEKS                       R6 R7 K11 ["StyleSheetContext"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R4 R5 K12 ["useStyleSheet"]
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K13 ["Utility"]
       34 GETTABLEKS                       R6 R7 K14 ["withDefaults"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K13 ["Utility"]
       41 GETTABLEKS                       R7 R8 K15 ["getGridMetrics"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R10 R0 K9 ["Providers"]
       48 GETTABLEKS                       R9 R10 K16 ["Responsive"]
       50 GETTABLEKS                       R8 R9 K17 ["useResponsive"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R10 R0 K18 ["Enums"]
       57 GETTABLEKS                       R9 R10 K19 ["Breakpoint"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETIMPORT                        R12 K1 [script]
       64 GETTABLEKS                       R11 R12 K4 ["Parent"]
       66 GETTABLEKS                       R10 R11 K20 ["createGridStyleRules"]
       68 CALL                             R9 1 1
       69 DUPTABLE                         R10 K22 [{"containerWidth"}]
       70 LOADN                            R11 0
       71 SETTABLEKS                       R11 R10 K21 ["containerWidth"]
       73 DUPCLOSURE                       R11 K23 [PROTO_4]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R6
       82 GETTABLEKS                       R12 R2 K24 ["memo"]
       84 MOVE                             R13 R11
       85 CALL                             R12 1 -1
       86 RETURN                           R12 -1
