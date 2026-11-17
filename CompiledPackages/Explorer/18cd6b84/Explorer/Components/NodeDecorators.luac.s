PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        2 LOADN                            R3 0
        3 GETTABLEKS                       R5 R1 K3 ["yPixels"]
        5 SUB                              R4 R5 R0
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["datum"]
        2 GETTABLEKS                       R2 R2 K1 ["id"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["nilId"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Frame"]
        2 DUPTABLE                         R4 K6 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["Visible"]}]
        3 GETUPVAL                         R5 1
        4 DUPCLOSURE                       R6 K7 [PROTO_1]
        5 GETUPVAL                         R7 2
        6 GETTABLEKS                       R7 R7 K8 ["scrollHeightObservable"]
        8 GETTABLEKS                       R7 R7 K9 ["getBinding"]
       10 CALL                             R7 0 1
       11 GETTABLEKS                       R8 R0 K9 ["getBinding"]
       13 CALL                             R8 0 -1
       14 CALL                             R5 -1 1
       15 SETTABLEKS                       R5 R4 K3 ["Position"]
       17 GETIMPORT                        R5 K12 [UDim2.new]
       19 LOADN                            R6 1
       20 LOADN                            R7 0
       21 LOADN                            R8 0
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R9 R9 K13 ["explorerRowHeight"]
       25 CALL                             R5 4 1
       26 SETTABLEKS                       R5 R4 K4 ["Size"]
       28 GETTABLEKS                       R5 R0 K9 ["getBinding"]
       30 CALL                             R5 0 1
       31 DUPCLOSURE                       R7 K14 [PROTO_2]
       32 CAPTURE                          UPVAL U3
       33 NAMECALL                         R5 R5 K15 ["map"]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K5 ["Visible"]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K16 ["render"]
       41 MOVE                             R6 R0
       42 MOVE                             R7 R1
       43 CALL                             R5 2 -1
       44 CALL                             R2 -1 -1
       45 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Frame"]
        2 NEWTABLE                         R3 4 0
        4 LOADB                            R4 1
        5 SETTABLEKS                       R4 R3 K1 ["ClipsDescendants"]
        7 GETTABLEKS                       R4 R0 K2 ["viewportSizeBinding"]
        9 DUPCLOSURE                       R6 K3 [PROTO_0]
       10 NAMECALL                         R4 R4 K4 ["map"]
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K5 ["Size"]
       15 GETTABLEKS                       R4 R0 K6 ["zIndex"]
       17 SETTABLEKS                       R4 R3 K7 ["ZIndex"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K8 ["Tag"]
       22 LOADK                            R5 K9 ["Explorer-View"]
       23 SETTABLE                         R5 R3 R4
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R5 R0 K10 ["visibleNodeObservables"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U4
       32 CALL                             R4 2 1
       33 GETTABLEKS                       R5 R0 K11 ["children"]
       35 CALL                             R1 4 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["Observable"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["RpcTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Util"]
       37 GETTABLEKS                       R6 R6 K12 ["joinAndMapBindings"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Util"]
       44 GETTABLEKS                       R7 R7 K13 ["mapValues"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       51 GETTABLEKS                       R8 R8 K15 ["useVisibleExplorerNodeRange"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R3 K16 ["createElement"]
       56 DUPCLOSURE                       R9 K17 [PROTO_4]
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R1
       62 RETURN                           R9 1
