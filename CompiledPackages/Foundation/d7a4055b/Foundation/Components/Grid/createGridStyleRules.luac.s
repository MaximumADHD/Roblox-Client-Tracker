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
       31 JUMPIFNOTEQKN                    R9 K6 [0] ; [+12]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R10 R10 K7 ["createElement"]
       36 GETUPVAL                         R11 2
       37 DUPTABLE                         R12 K11 [{["Selector"] = ".col-0", ["properties"]}]
       38 DUPTABLE                         R13 K14 [{["Visible"] = False}]
       39 SETTABLEKS                       R13 R12 K10 ["properties"]
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R6 K15 ["ColVisible0"]
       44 FORNLOOP                         R7
       45 GETTABLEKS                       R7 R1 K2 ["order"]
       47 LOADNIL                          R8
       48 LOADNIL                          R9
       49 FORGPREP                         R7
       50 GETTABLEKS                       R13 R1 K16 ["shortNames"]
       52 GETTABLE                         R12 R13 R11
       53 GETTABLEKS                       R14 R2 K3 ["columns"]
       55 GETTABLE                         R13 R14 R11
       56 NEWTABLE                         R14 0 0
       58 LOADN                            R17 0
       59 MOVE                             R15 R13
       60 LOADN                            R16 1
       61 FORNPREP                         R15
       62 LOADK                            R19 K17 ["%*Col%*"]
       63 MOVE                             R21 R11
       64 MOVE                             R22 R17
       65 NAMECALL                         R19 R19 K5 ["format"]
       67 CALL                             R19 3 1
       68 MOVE                             R18 R19
       69 GETUPVAL                         R19 0
       70 MOVE                             R20 R17
       71 MOVE                             R21 R12
       72 CALL                             R19 2 1
       73 SETTABLE                         R19 R14 R18
       74 JUMPIFNOTEQKN                    R17 K6 [0] ; [+25]
       76 LOADK                            R19 K18 ["%*ColVisible0"]
       77 MOVE                             R21 R11
       78 NAMECALL                         R19 R19 K5 ["format"]
       80 CALL                             R19 2 1
       81 MOVE                             R18 R19
       82 GETUPVAL                         R19 1
       83 GETTABLEKS                       R19 R19 K7 ["createElement"]
       85 GETUPVAL                         R20 2
       86 DUPTABLE                         R21 K19 [{"Selector", "properties"}]
       87 LOADK                            R23 K20 [".%*-col-0"]
       88 MOVE                             R25 R12
       89 NAMECALL                         R23 R23 K5 ["format"]
       91 CALL                             R23 2 1
       92 MOVE                             R22 R23
       93 SETTABLEKS                       R22 R21 K8 ["Selector"]
       95 DUPTABLE                         R22 K14 [{["Visible"] = False}]
       96 SETTABLEKS                       R22 R21 K10 ["properties"]
       98 CALL                             R19 2 1
       99 SETTABLE                         R19 R14 R18
      100 FORNLOOP                         R15
      101 SETTABLE                         R14 R5 R11
      102 FORGLOOP                         R7 2 ; [-53]
      104 DUPTABLE                         R7 K23 [{"baseRules", "rulesByBreakpoint"}]
      105 SETTABLEKS                       R6 R7 K21 ["baseRules"]
      107 SETTABLEKS                       R5 R7 K22 ["rulesByBreakpoint"]
      109 RETURN                           R7 1

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
       16 GETTABLEKS                       R4 R0 K8 ["StyleSheet"]
       18 GETTABLEKS                       R4 R4 K9 ["StyleRule"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["Breakpoint"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["BreakpointShortName"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Providers"]
       39 GETTABLEKS                       R7 R7 K14 ["Responsive"]
       41 GETTABLEKS                       R7 R7 K15 ["ResponsiveContext"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K16 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 DUPCLOSURE                       R8 K17 [PROTO_1]
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 RETURN                           R8 1
