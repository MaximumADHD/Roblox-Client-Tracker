PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R3 R4 K1 ["X"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["scrollBarWidth"]
        7 SUB                              R2 R3 R4
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["minValueWidth"]
       11 SUB                              R1 R2 R3
       12 GETUPVAL                         R2 1
       13 LOADN                            R5 0
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K4 ["maxLabelWidth"]
       17 FASTCALL3                        MATH_CLAMP R1 R5 R6
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K7 [math.clamp]
       22 CALL                             R3 3 1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useBinding"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 1
       14 DUPTABLE                         R3 K4 [{"labelWidthBinding", "onAbsoluteSizeChanged"}]
       15 SETTABLEKS                       R0 R3 K2 ["labelWidthBinding"]
       17 SETTABLEKS                       R2 R3 K3 ["onAbsoluteSizeChanged"]
       19 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
