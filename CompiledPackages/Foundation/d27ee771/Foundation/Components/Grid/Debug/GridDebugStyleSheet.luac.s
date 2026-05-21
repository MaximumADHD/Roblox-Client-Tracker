PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shortNames"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["columns"]
        8 GETUPVAL                         R3 1
        9 GETTABLE                         R1 R2 R3
       10 NEWTABLE                         R2 0 0
       12 LOADN                            R5 0
       13 MOVE                             R3 R1
       14 LOADN                            R4 1
       15 FORNPREP                         R3
       16 JUMPIFNOT                        R0 ; [+8]
       17 LOADK                            R7 K2 [".%*-col-%*"]
       18 MOVE                             R9 R0
       19 MOVE                             R10 R5
       20 NAMECALL                         R7 R7 K3 ["format"]
       22 CALL                             R7 3 1
       23 MOVE                             R6 R7
       24 JUMP                             ; [+6]
       25 LOADK                            R7 K4 [".col-%*"]
       26 MOVE                             R9 R5
       27 NAMECALL                         R7 R7 K3 ["format"]
       29 CALL                             R7 2 1
       30 MOVE                             R6 R7
       31 LOADK                            R8 K5 ["DebugColColor$%*"]
       32 MOVE                             R10 R5
       33 NAMECALL                         R8 R8 K3 ["format"]
       35 CALL                             R8 2 1
       36 MOVE                             R7 R8
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R8 R8 K6 ["createElement"]
       40 GETUPVAL                         R9 4
       41 DUPTABLE                         R10 K9 [{"Selector", "properties"}]
       42 SETTABLEKS                       R6 R10 K7 ["Selector"]
       44 DUPTABLE                         R11 K11 [{"BackgroundColor3"}]
       45 GETIMPORT                        R12 K14 [Color3.fromRGB]
       47 LOADN                            R17 1
       48 FASTCALL2                        MATH_MAX R17 R1 ; [+4]
       50 MOVE                             R18 R1
       51 GETIMPORT                        R16 K18 [math.max]
       53 CALL                             R16 2 1
       54 DIV                              R15 R5 R16
       55 MULK                             R14 R15 K15 [255]
       56 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       57 GETIMPORT                        R13 K20 [math.floor]
       59 CALL                             R13 1 1
       60 LOADN                            R19 1
       61 FASTCALL2                        MATH_MAX R19 R1 ; [+4]
       63 MOVE                             R20 R1
       64 GETIMPORT                        R18 K18 [math.max]
       66 CALL                             R18 2 1
       67 DIV                              R17 R5 R18
       68 SUBRK                            R16 R21 K17 ["max"]
       69 MULK                             R15 R16 K15 [255]
       70 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       71 GETIMPORT                        R14 K20 [math.floor]
       73 CALL                             R14 1 1
       74 MODK                             R18 R5 K23 [3]
       75 DIVK                             R17 R18 K22 [2]
       76 MULK                             R16 R17 K15 [255]
       77 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       78 GETIMPORT                        R15 K20 [math.floor]
       80 CALL                             R15 1 1
       81 CALL                             R12 3 1
       82 SETTABLEKS                       R12 R11 K10 ["BackgroundColor3"]
       84 SETTABLEKS                       R11 R10 K8 ["properties"]
       86 CALL                             R8 2 1
       87 SETTABLE                         R8 R2 R7
       88 FORNLOOP                         R3
       89 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 0
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 NAMECALL                         R0 R0 K0 ["SetDerives"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K0 ["useState"]
        7 LOADNIL                          R5
        8 CALL                             R4 1 2
        9 GETUPVAL                         R6 3
       10 MOVE                             R7 R1
       11 MOVE                             R8 R5
       12 CALL                             R6 2 1
       13 GETTABLEKS                       R7 R2 K1 ["config"]
       15 GETTABLEKS                       R7 R7 K2 ["breakpoint"]
       17 GETTABLEKS                       R8 R2 K1 ["config"]
       19 GETTABLEKS                       R8 R8 K3 ["grid"]
       21 GETTABLEKS                       R10 R7 K4 ["order"]
       23 GETTABLEKS                       R12 R7 K4 ["order"]
       25 LENGTH                           R11 R12
       26 GETTABLE                         R9 R10 R11
       27 GETTABLEKS                       R11 R0 K2 ["breakpoint"]
       29 OR                               R10 R11 R9
       30 GETUPVAL                         R11 2
       31 GETTABLEKS                       R11 R11 K5 ["useMemo"]
       33 NEWCLOSURE                       R12 P0
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R10
       36 CAPTURE                          VAL R8
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U4
       39 NEWTABLE                         R13 0 3
       41 MOVE                             R14 R10
       42 MOVE                             R15 R7
       43 MOVE                             R16 R8
       44 SETLIST                          R13 R14 3 [1]
       46 CALL                             R11 2 1
       47 GETUPVAL                         R12 2
       48 GETTABLEKS                       R12 R12 K6 ["useLayoutEffect"]
       50 NEWCLOSURE                       R13 P1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 NEWTABLE                         R14 0 2
       55 MOVE                             R15 R4
       56 MOVE                             R16 R3
       57 SETLIST                          R14 R15 2 [1]
       59 CALL                             R12 2 0
       60 GETUPVAL                         R12 2
       61 GETTABLEKS                       R12 R12 K7 ["createElement"]
       63 GETUPVAL                         R13 2
       64 GETTABLEKS                       R13 R13 K8 ["Fragment"]
       66 LOADNIL                          R14
       67 DUPTABLE                         R15 K11 [{"GridDebugStyleSheet", "GridDebugStyleLink"}]
       68 GETUPVAL                         R16 2
       69 GETTABLEKS                       R16 R16 K7 ["createElement"]
       71 LOADK                            R17 K12 ["StyleSheet"]
       72 DUPTABLE                         R18 K14 [{"ref"}]
       73 SETTABLEKS                       R6 R18 K13 ["ref"]
       75 MOVE                             R19 R11
       76 CALL                             R16 3 1
       77 SETTABLEKS                       R16 R15 K9 ["GridDebugStyleSheet"]
       79 GETUPVAL                         R16 2
       80 GETTABLEKS                       R16 R16 K7 ["createElement"]
       82 LOADK                            R17 K15 ["StyleLink"]
       83 DUPTABLE                         R18 K16 [{"StyleSheet"}]
       84 SETTABLEKS                       R4 R18 K12 ["StyleSheet"]
       86 CALL                             R16 2 1
       87 SETTABLEKS                       R16 R15 K10 ["GridDebugStyleLink"]
       89 CALL                             R12 3 -1
       90 RETURN                           R12 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K9 ["useForwardRef"]
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["StyleSheet"]
       25 GETTABLEKS                       R5 R5 K11 ["StyleRule"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Providers"]
       32 GETTABLEKS                       R6 R6 K13 ["Style"]
       34 GETTABLEKS                       R6 R6 K14 ["StyleSheetContext"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R5 R5 K15 ["useStyleSheet"]
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Providers"]
       43 GETTABLEKS                       R7 R7 K16 ["Responsive"]
       45 GETTABLEKS                       R7 R7 K17 ["useResponsive"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K18 ["Enums"]
       52 GETTABLEKS                       R8 R8 K19 ["Breakpoint"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K18 ["Enums"]
       59 GETTABLEKS                       R9 R9 K20 ["BreakpointShortName"]
       61 CALL                             R8 1 1
       62 DUPCLOSURE                       R9 K21 [PROTO_2]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 GETTABLEKS                       R10 R2 K22 ["memo"]
       70 GETTABLEKS                       R11 R2 K23 ["forwardRef"]
       72 MOVE                             R12 R9
       73 CALL                             R11 1 -1
       74 CALL                             R10 -1 -1
       75 RETURN                           R10 -1
