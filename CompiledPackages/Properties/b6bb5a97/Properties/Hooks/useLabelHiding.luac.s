PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R3 R4 K1 ["X"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["ScrollBar"]
        7 GETTABLEKS                       R4 R5 K3 ["Width"]
        9 SUB                              R2 R3 R4
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K4 ["PropertyRow"]
       13 GETTABLEKS                       R4 R5 K5 ["Value"]
       15 GETTABLEKS                       R3 R4 K6 ["MinWidth"]
       17 SUB                              R1 R2 R3
       18 GETUPVAL                         R2 1
       19 LOADN                            R5 0
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K4 ["PropertyRow"]
       23 GETTABLEKS                       R7 R8 K7 ["Label"]
       25 GETTABLEKS                       R6 R7 K8 ["MaxWidth"]
       27 FASTCALL3                        MATH_CLAMP R1 R5 R6
       29 MOVE                             R4 R1
       30 GETIMPORT                        R3 K11 [math.clamp]
       32 CALL                             R3 3 1
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useBinding"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["useCallback"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 0
       15 CALL                             R3 2 1
       16 DUPTABLE                         R4 K4 [{"labelWidthBinding", "onAbsoluteSizeChanged"}]
       17 SETTABLEKS                       R0 R4 K2 ["labelWidthBinding"]
       19 SETTABLEKS                       R3 R4 K3 ["onAbsoluteSizeChanged"]
       21 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R4 K9 ["useVisualValues"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
