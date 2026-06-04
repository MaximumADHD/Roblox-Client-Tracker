PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["grid"]
        2 GETTABLEKS                       R4 R4 K1 ["columns"]
        4 GETTABLE                         R3 R4 R1
        5 MOVE                             R4 R3
        6 JUMPIFNOT                        R2 ; [+23]
        7 FASTCALL1                        TYPE R2 ; [+3]
        8 MOVE                             R6 R2
        9 GETIMPORT                        R5 K3 [type]
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQKS                    R5 K4 ["table"] ; [+8]
       14 GETTABLEKS                       R7 R0 K5 ["breakpoint"]
       16 GETTABLEKS                       R7 R7 K6 ["shortNames"]
       18 GETTABLE                         R6 R7 R1
       19 GETTABLE                         R5 R2 R6
       20 OR                               R2 R5 R3
       21 LOADN                            R7 0
       22 FASTCALL3                        MATH_CLAMP R2 R7 R3
       24 MOVE                             R6 R2
       25 MOVE                             R8 R3
       26 GETIMPORT                        R5 K9 [math.clamp]
       28 CALL                             R5 3 1
       29 MOVE                             R4 R5
       30 LOADN                            R6 0
       31 SUBK                             R7 R4 K10 [1]
       32 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       34 GETIMPORT                        R5 K12 [math.max]
       36 CALL                             R5 2 1
       37 DUPTABLE                         R6 K15 [{"colCount", "gutterCount"}]
       38 SETTABLEKS                       R4 R6 K13 ["colCount"]
       40 SETTABLEKS                       R5 R6 K14 ["gutterCount"]
       42 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R3 ; [+6]
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 MOVE                             R8 R3
        9 CALL                             R5 3 1
       10 JUMP                             ; [+1]
       11 MOVE                             R5 R4
       12 GETTABLEKS                       R6 R0 K0 ["grid"]
       14 GETTABLEKS                       R8 R6 K1 ["gaps"]
       16 GETTABLE                         R7 R8 R1
       17 GETTABLEKS                       R9 R6 K2 ["gutters"]
       19 GETTABLE                         R8 R9 R1
       20 GETTABLEKS                       R10 R6 K3 ["margins"]
       22 GETTABLE                         R9 R10 R1
       23 LOADN                            R11 0
       24 MULK                             R13 R9 K4 [2]
       25 SUB                              R12 R2 R13
       26 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
       28 GETIMPORT                        R10 K7 [math.max]
       30 CALL                             R10 2 1
       31 GETTABLEKS                       R12 R4 K8 ["gutterCount"]
       33 MUL                              R11 R12 R8
       34 GETTABLEKS                       R13 R5 K8 ["gutterCount"]
       36 MUL                              R12 R13 R8
       37 LOADN                            R14 0
       38 SUB                              R16 R10 R11
       39 GETTABLEKS                       R17 R4 K9 ["colCount"]
       41 DIV                              R15 R16 R17
       42 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
       44 GETIMPORT                        R13 K7 [math.max]
       46 CALL                             R13 2 1
       47 JUMPIFNOTLT                      R11 R10 ; [+10]
       49 GETTABLEKS                       R17 R5 K9 ["colCount"]
       51 MUL                              R16 R13 R17
       52 ADD                              R15 R16 R12
       53 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       54 GETIMPORT                        R14 K11 [math.floor]
       56 CALL                             R14 1 1
       57 JUMP                             ; [+1]
       58 LOADN                            R14 0
       59 GETIMPORT                        R15 K14 [UDim2.new]
       61 LOADN                            R16 0
       62 MOVE                             R17 R14
       63 LOADN                            R18 0
       64 LOADN                            R19 0
       65 CALL                             R15 4 1
       66 GETUPVAL                         R16 1
       67 GETTABLEKS                       R16 R16 K15 ["assign"]
       69 DUPTABLE                         R17 K24 [{"full", "margin", "colWidth", "gapHeight", "gutterWidth", "gridWidth", "cellSize", "cellWidth"}]
       70 GETUPVAL                         R18 1
       71 GETTABLEKS                       R18 R18 K15 ["assign"]
       73 MOVE                             R19 R4
       74 DUPTABLE                         R20 K25 [{"margin"}]
       75 SETTABLEKS                       R9 R20 K17 ["margin"]
       77 CALL                             R18 2 1
       78 SETTABLEKS                       R18 R17 K16 ["full"]
       80 SETTABLEKS                       R9 R17 K17 ["margin"]
       82 SETTABLEKS                       R13 R17 K18 ["colWidth"]
       84 SETTABLEKS                       R7 R17 K19 ["gapHeight"]
       86 SETTABLEKS                       R8 R17 K20 ["gutterWidth"]
       88 SETTABLEKS                       R10 R17 K21 ["gridWidth"]
       90 SETTABLEKS                       R15 R17 K22 ["cellSize"]
       92 SETTABLEKS                       R14 R17 K23 ["cellWidth"]
       94 MOVE                             R18 R5
       95 CALL                             R16 2 -1
       96 RETURN                           R16 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["Breakpoint"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Providers"]
       32 GETTABLEKS                       R6 R6 K13 ["Responsive"]
       34 GETTABLEKS                       R6 R6 K14 ["ResponsiveContext"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K15 [PROTO_0]
       38 DUPCLOSURE                       R7 K16 [PROTO_1]
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R2
       41 RETURN                           R7 1
