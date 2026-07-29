PROTO_0:
        0 GETIMPORT                        R2 K2 [UDim2.new]
        2 LOADN                            R3 0
        3 LOADN                            R5 0
        4 GETUPVAL                         R7 0
        5 MOVE                             R8 R1
        6 CALL                             R7 1 1
        7 GETTABLEKS                       R7 R7 K3 ["total"]
        9 SUB                              R6 R7 R0
       10 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       12 GETIMPORT                        R4 K6 [math.max]
       14 CALL                             R4 2 1
       15 LOADN                            R5 1
       16 LOADN                            R6 0
       17 CALL                             R2 4 -1
       18 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Frame"]
        2 NEWTABLE                         R3 4 0
        4 LOADN                            R4 -1
        5 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
        7 LOADN                            R4 1
        8 SETTABLEKS                       R4 R3 K2 ["BackgroundTransparency"]
       10 GETUPVAL                         R4 1
       11 DUPCLOSURE                       R5 K3 [PROTO_0]
       12 CAPTURE                          UPVAL U2
       13 GETTABLEKS                       R6 R0 K4 ["scrollWidthObservable"]
       15 GETTABLEKS                       R6 R6 K5 ["getBinding"]
       17 CALL                             R6 0 1
       18 GETTABLEKS                       R7 R0 K6 ["visibleNodeObservable"]
       20 GETTABLEKS                       R7 R7 K5 ["getBinding"]
       22 CALL                             R7 0 -1
       23 CALL                             R4 -1 1
       24 SETTABLEKS                       R4 R3 K7 ["Size"]
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K8 ["Tag"]
       29 LOADK                            R5 K9 ["Explorer-ShrinkX"]
       30 SETTABLE                         R5 R3 R4
       31 CALL                             R1 2 -1
       32 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Observable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["calculateExplorerNodeWidth"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["joinAndMapBindings"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K13 ["useVisibleExplorerNodeRange"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K14 ["createElement"]
       44 DUPCLOSURE                       R7 K15 [PROTO_1]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R2
       49 RETURN                           R7 1
