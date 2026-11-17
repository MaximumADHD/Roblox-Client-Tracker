PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["panel"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["panel"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["cancelShowTooltip"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["uniqueTooltipId"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["uniqueTooltipId"]
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TooltipShowDelay"]
        4 LOADN                            R3 300
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 1
        8 GETIMPORT                        R1 K1 [game]
       10 LOADK                            R3 K4 ["TooltipHideDelay"]
       11 LOADN                            R4 300
       12 NAMECALL                         R1 R1 K3 ["DefineFastInt"]
       14 CALL                             R1 3 1
       15 DUPTABLE                         R2 K13 [{["showDelay"], ["hideDelay"], ["uniqueTooltipId"] = 0, ["disableAllTooltips"] = False, ["panel"] = }]
       16 DIVK                             R3 R0 K14 [1000]
       17 SETTABLEKS                       R3 R2 K5 ["showDelay"]
       19 DIVK                             R3 R1 K14 [1000]
       20 SETTABLEKS                       R3 R2 K6 ["hideDelay"]
       22 DUPCLOSURE                       R3 K15 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R2 K16 ["closeTooltips"]
       26 DUPCLOSURE                       R3 K17 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R3 R2 K18 ["cancelShowTooltip"]
       30 RETURN                           R2 1
