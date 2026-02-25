PROTO_0:
        0 DUPTABLE                         R0 K4 [{"frameColumn", "functionColumn", "lineColumn", "sourceColumn"}]
        1 LOADK                            R1 K5 [""]
        2 SETTABLEKS                       R1 R0 K0 ["frameColumn"]
        4 LOADK                            R1 K5 [""]
        5 SETTABLEKS                       R1 R0 K1 ["functionColumn"]
        7 LOADK                            R1 K5 [""]
        8 SETTABLEKS                       R1 R0 K2 ["lineColumn"]
       10 LOADK                            R1 K5 [""]
       11 SETTABLEKS                       R1 R0 K3 ["sourceColumn"]
       13 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"frameColumn", "functionColumn", "lineColumn", "sourceColumn"}]
        1 GETTABLEKS                       R2 R0 K0 ["frameColumn"]
        3 SETTABLEKS                       R2 R1 K0 ["frameColumn"]
        5 GETTABLEKS                       R2 R0 K1 ["functionColumn"]
        7 SETTABLEKS                       R2 R1 K1 ["functionColumn"]
        9 GETTABLEKS                       R2 R0 K2 ["lineColumn"]
       11 SETTABLEKS                       R2 R1 K2 ["lineColumn"]
       13 GETTABLEKS                       R2 R0 K3 ["sourceColumn"]
       15 SETTABLEKS                       R2 R1 K3 ["sourceColumn"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 NEWTABLE                         R1 2 0
        5 LOADK                            R2 K0 ["rbxasset://textures/Debugger/debugger_arrow.png"]
        6 SETTABLEKS                       R2 R1 K1 ["Image"]
        8 GETIMPORT                        R2 K4 [UDim2.new]
       10 LOADN                            R3 0
       11 LOADN                            R4 14
       12 LOADN                            R5 0
       13 LOADN                            R6 14
       14 CALL                             R2 4 1
       15 SETTABLEKS                       R2 R1 K5 ["Size"]
       17 SETTABLEKS                       R1 R0 K6 ["LeftIcon"]
       19 LOADK                            R1 K7 [""]
       20 SETTABLEKS                       R1 R0 K8 ["Value"]
       22 NEWTABLE                         R1 2 0
       24 NEWTABLE                         R2 2 0
       26 LOADK                            R3 K9 ["rbxasset://textures/Debugger/debugger_arrow_curve_left.png"]
       27 SETTABLEKS                       R3 R2 K1 ["Image"]
       29 GETIMPORT                        R3 K4 [UDim2.new]
       31 LOADN                            R4 0
       32 LOADN                            R5 14
       33 LOADN                            R6 0
       34 LOADN                            R7 14
       35 CALL                             R3 4 1
       36 SETTABLEKS                       R3 R2 K5 ["Size"]
       38 SETTABLEKS                       R2 R1 K6 ["LeftIcon"]
       40 LOADK                            R2 K7 [""]
       41 SETTABLEKS                       R2 R1 K8 ["Value"]
       43 DUPCLOSURE                       R2 K10 [PROTO_0]
       44 DUPCLOSURE                       R3 K11 [PROTO_1]
       45 DUPTABLE                         R4 K15 [{"new", "fromData", "ICON_FRAME_TOP", "ICON_CURRENT_FRAME"}]
       46 SETTABLEKS                       R2 R4 K3 ["new"]
       48 SETTABLEKS                       R3 R4 K12 ["fromData"]
       50 SETTABLEKS                       R0 R4 K13 ["ICON_FRAME_TOP"]
       52 SETTABLEKS                       R1 R4 K14 ["ICON_CURRENT_FRAME"]
       54 RETURN                           R4 1
