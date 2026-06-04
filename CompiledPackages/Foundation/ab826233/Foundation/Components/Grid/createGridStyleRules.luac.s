PROTO_0:
        0 JUMPIFNOT                        R1 ; [+8]
        1 LOADK                            R3 K0 [".%*-col-%*"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R0
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 3 1
        7 MOVE                             R2 R3
        8 JUMP                             ; [+6]
        9 LOADK                            R3 K2 [".col-%*"]
       10 MOVE                             R5 R0
       11 NAMECALL                         R3 R3 K1 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["createElement"]
       18 GETUPVAL                         R4 1
       19 DUPTABLE                         R5 K6 [{"Selector", "properties"}]
       20 LOADK                            R7 K7 ["%* ::UISizeConstraint"]
       21 MOVE                             R9 R2
       22 NAMECALL                         R7 R7 K1 ["format"]
       24 CALL                             R7 2 1
       25 MOVE                             R6 R7
       26 SETTABLEKS                       R6 R5 K4 ["Selector"]
       28 DUPTABLE                         R6 K10 [{"MinSize", "MaxSize"}]
       29 LOADK                            R8 K11 ["$ColMin%*"]
       30 MOVE                             R10 R0
       31 NAMECALL                         R8 R8 K1 ["format"]
       33 CALL                             R8 2 1
       34 MOVE                             R7 R8
       35 SETTABLEKS                       R7 R6 K8 ["MinSize"]
       37 LOADK                            R8 K12 ["$ColMax%*"]
       38 MOVE                             R10 R0
       39 NAMECALL                         R8 R8 K1 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 SETTABLEKS                       R7 R6 K9 ["MaxSize"]
       45 SETTABLEKS                       R6 R5 K5 ["properties"]
       47 CALL                             R3 2 -1
       48 RETURN                           R3 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["breakpoint"]
        2 GETTABLEKS                       R2 R0 K1 ["grid"]
        4 GETTABLEKS                       R4 R1 K2 ["order"]
        6 GETTABLEKS                       R6 R1 K2 ["order"]
        8 LENGTH                           R5 R6
        9 GETTABLE                         R3 R4 R5
       10 GETTABLEKS                       R5 R2 K3 ["columns"]
       12 GETTABLE                         R4 R5 R3
       13 NEWTABLE                         R5 0 0
       15 NEWTABLE                         R6 0 0
       17 LOADN                            R9 0
       18 MOVE                             R7 R4
       19 LOADN                            R8 1
       20 FORNPREP                         R7
       21 LOADK                            R11 K4 ["Col%*"]
       22 MOVE                             R13 R9
       23 NAMECALL                         R11 R11 K5 ["format"]
       25 CALL                             R11 2 1
       26 MOVE                             R10 R11
       27 GETUPVAL                         R11 0
       28 MOVE                             R12 R9
       29 CALL                             R11 1 1
       30 SETTABLE                         R11 R6 R10
       31 JUMPIFNOTEQKN                    R9 K6 [0] ; [+18]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R10 R10 K7 ["createElement"]
       36 GETUPVAL                         R11 2
       37 DUPTABLE                         R12 K10 [{"Selector", "properties"}]
       38 LOADK                            R13 K11 [".col-0"]
       39 SETTABLEKS                       R13 R12 K8 ["Selector"]
       41 DUPTABLE                         R13 K13 [{"Visible"}]
       42 LOADB                            R14 0
       43 SETTABLEKS                       R14 R13 K12 ["Visible"]
       45 SETTABLEKS                       R13 R12 K9 ["properties"]
       47 CALL                             R10 2 1
       48 SETTABLEKS                       R10 R6 K14 ["ColVisible0"]
       50 FORNLOOP                         R7
       51 GETTABLEKS                       R7 R1 K2 ["order"]
       53 LOADNIL                          R8
       54 LOADNIL                          R9
       55 FORGPREP                         R7
       56 GETTABLEKS                       R13 R1 K15 ["shortNames"]
       58 GETTABLE                         R12 R13 R11
       59 GETTABLEKS                       R14 R2 K3 ["columns"]
       61 GETTABLE                         R13 R14 R11
       62 NEWTABLE                         R14 0 0
       64 LOADN                            R17 0
       65 MOVE                             R15 R13
       66 LOADN                            R16 1
       67 FORNPREP                         R15
       68 LOADK                            R19 K16 ["%*Col%*"]
       69 MOVE                             R21 R11
       70 MOVE                             R22 R17
       71 NAMECALL                         R19 R19 K5 ["format"]
       73 CALL                             R19 3 1
       74 MOVE                             R18 R19
       75 GETUPVAL                         R19 0
       76 MOVE                             R20 R17
       77 MOVE                             R21 R12
       78 CALL                             R19 2 1
       79 SETTABLE                         R19 R14 R18
       80 JUMPIFNOTEQKN                    R17 K6 [0] ; [+28]
       82 LOADK                            R19 K17 ["%*ColVisible0"]
       83 MOVE                             R21 R11
       84 NAMECALL                         R19 R19 K5 ["format"]
       86 CALL                             R19 2 1
       87 MOVE                             R18 R19
       88 GETUPVAL                         R19 1
       89 GETTABLEKS                       R19 R19 K7 ["createElement"]
       91 GETUPVAL                         R20 2
       92 DUPTABLE                         R21 K10 [{"Selector", "properties"}]
       93 LOADK                            R23 K18 [".%*-col-0"]
       94 MOVE                             R25 R12
       95 NAMECALL                         R23 R23 K5 ["format"]
       97 CALL                             R23 2 1
       98 MOVE                             R22 R23
       99 SETTABLEKS                       R22 R21 K8 ["Selector"]
      101 DUPTABLE                         R22 K13 [{"Visible"}]
      102 LOADB                            R23 0
      103 SETTABLEKS                       R23 R22 K12 ["Visible"]
      105 SETTABLEKS                       R22 R21 K9 ["properties"]
      107 CALL                             R19 2 1
      108 SETTABLE                         R19 R14 R18
      109 FORNLOOP                         R15
      110 SETTABLE                         R14 R5 R11
      111 FORGLOOP                         R7 2 ; [-56]
      113 DUPTABLE                         R7 K21 [{"baseRules", "rulesByBreakpoint"}]
      114 SETTABLEKS                       R6 R7 K19 ["baseRules"]
      116 SETTABLEKS                       R5 R7 K20 ["rulesByBreakpoint"]
      118 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["Breakpoint"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Enums"]
       20 GETTABLEKS                       R4 R4 K9 ["BreakpointShortName"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K10 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Providers"]
       32 GETTABLEKS                       R6 R6 K12 ["Responsive"]
       34 GETTABLEKS                       R6 R6 K13 ["ResponsiveContext"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K14 ["StyleSheet"]
       41 GETTABLEKS                       R7 R7 K15 ["StyleRule"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K16 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R6
       47 DUPCLOSURE                       R8 K17 [PROTO_1]
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R6
       51 RETURN                           R8 1
