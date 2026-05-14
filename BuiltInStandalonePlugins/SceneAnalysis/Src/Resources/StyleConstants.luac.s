PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K5 ["tooltipStrokeColors"]
       12 GETTABLE                         R1 R2 R0
       13 JUMPIF                           R1 ; [+5]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K5 ["tooltipStrokeColors"]
       17 GETTABLEKS                       R1 R1 K6 ["Dark"]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADN                            R1 32
        4 SETTABLEKS                       R1 R0 K0 ["rowHeight"]
        6 LOADN                            R1 23
        7 SETTABLEKS                       R1 R0 K1 ["headerHeight"]
        9 LOADN                            R1 252
       10 SETTABLEKS                       R1 R0 K2 ["columnWidthOffset"]
       12 LOADN                            R1 12
       13 SETTABLEKS                       R1 R0 K3 ["scrollBarThickness"]
       15 GETIMPORT                        R1 K7 [Enum.Font.SourceSans]
       17 SETTABLEKS                       R1 R0 K8 ["defaultFont"]
       19 DUPTABLE                         R1 K11 [{"Dark", "Light"}]
       20 GETIMPORT                        R2 K14 [Color3.fromRGB]
       22 LOADN                            R3 80
       23 LOADN                            R4 80
       24 LOADN                            R5 85
       25 CALL                             R2 3 1
       26 SETTABLEKS                       R2 R1 K9 ["Dark"]
       28 GETIMPORT                        R2 K14 [Color3.fromRGB]
       30 LOADN                            R3 180
       31 LOADN                            R4 180
       32 LOADN                            R5 185
       33 CALL                             R2 3 1
       34 SETTABLEKS                       R2 R1 K10 ["Light"]
       36 SETTABLEKS                       R1 R0 K15 ["tooltipStrokeColors"]
       38 DUPCLOSURE                       R1 K16 [PROTO_0]
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K17 ["getTooltipStrokeColor"]
       42 RETURN                           R0 1
