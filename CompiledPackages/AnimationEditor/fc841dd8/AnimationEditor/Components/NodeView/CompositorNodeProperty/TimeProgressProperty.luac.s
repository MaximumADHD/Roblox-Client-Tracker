PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Value"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADN                            R0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["Value"]
        9 GETTABLEKS                       R1 R2 K2 ["startOffset"]
       11 ORK                              R0 R1 K1 [0]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["Value"]
       15 GETTABLEKS                       R2 R3 K3 ["endOffset"]
       17 JUMPIFEQKN                       R2 K1 [0] ; [+7]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K0 ["Value"]
       22 GETTABLEKS                       R1 R2 K3 ["endOffset"]
       24 JUMP                             ; [+5]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K0 ["Value"]
       28 GETTABLEKS                       R1 R2 K4 ["duration"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K0 ["Value"]
       33 GETTABLEKS                       R3 R4 K5 ["time"]
       35 ORK                              R2 R3 K1 [0]
       36 SUB                              R3 R1 R0
       37 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
       39 LOADN                            R4 0
       40 RETURN                           R4 1
       41 SUB                              R5 R2 R0
       42 DIV                              R4 R5 R3
       43 LOADN                            R7 100
       44 MUL                              R6 R7 R4
       45 LOADN                            R7 0
       46 LOADN                            R8 100
       47 FASTCALL                         MATH_CLAMP ; [+2]
       48 GETIMPORT                        R5 K8 [math.clamp]
       50 CALL                             R5 3 1
       51 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["formatTimestamp"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Value"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["Value"]
       10 GETTABLEKS                       R1 R2 K2 ["time"]
       12 JUMPIF                           R1 ; [+1]
       13 LOADN                            R1 0
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["Value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R4 0 1
       20 GETTABLEKS                       R5 R0 K1 ["Value"]
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K2 ["createElement"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K3 ["View"]
       31 DUPTABLE                         R5 K6 [{"tag", "LayoutOrder"}]
       32 LOADK                            R6 K7 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       33 SETTABLEKS                       R6 R5 K4 ["tag"]
       35 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       37 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       39 DUPTABLE                         R6 K10 [{"CompositorNodeInputLabel", "Input"}]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R7 R8 K2 ["createElement"]
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R8 R9 K11 ["Text"]
       46 DUPTABLE                         R9 K12 [{"tag", "Text", "LayoutOrder"}]
       47 LOADK                            R10 K13 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       48 SETTABLEKS                       R10 R9 K4 ["tag"]
       50 SETTABLEKS                       R2 R9 K11 ["Text"]
       52 LOADN                            R10 1
       53 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       55 CALL                             R7 2 1
       56 SETTABLEKS                       R7 R6 K8 ["CompositorNodeInputLabel"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R7 R8 K2 ["createElement"]
       61 GETUPVAL                         R9 2
       62 GETTABLEKS                       R8 R9 K14 ["Progress"]
       64 DUPTABLE                         R9 K19 [{"shape", "value", "size", "width", "LayoutOrder"}]
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R12 R13 K20 ["Enums"]
       68 GETTABLEKS                       R11 R12 K21 ["ProgressShape"]
       70 GETTABLEKS                       R10 R11 K22 ["Bar"]
       72 SETTABLEKS                       R10 R9 K15 ["shape"]
       74 SETTABLEKS                       R1 R9 K16 ["value"]
       76 GETUPVAL                         R13 2
       77 GETTABLEKS                       R12 R13 K20 ["Enums"]
       79 GETTABLEKS                       R11 R12 K23 ["InputSize"]
       81 GETTABLEKS                       R10 R11 K24 ["Medium"]
       83 SETTABLEKS                       R10 R9 K17 ["size"]
       85 GETIMPORT                        R10 K27 [UDim.new]
       87 LOADN                            R11 0
       88 LOADN                            R12 90
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K18 ["width"]
       92 LOADN                            R10 2
       93 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       95 CALL                             R7 2 1
       96 SETTABLEKS                       R7 R6 K9 ["Input"]
       98 CALL                             R3 3 -1
       99 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeProperty"]
       22 GETTABLEKS                       R3 R4 K11 ["PropertyUtils"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Parent"]
       29 GETTABLEKS                       R4 R5 K12 ["React"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_2]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 RETURN                           R4 1
