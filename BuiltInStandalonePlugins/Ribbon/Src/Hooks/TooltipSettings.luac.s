PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["panel"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["panel"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K2 ["cancelShowTooltip"]
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
        4 LOADN                            R3 44
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 1
        8 GETIMPORT                        R1 K1 [game]
       10 LOADK                            R3 K4 ["TooltipHideDelay"]
       11 LOADN                            R4 44
       12 NAMECALL                         R1 R1 K3 ["DefineFastInt"]
       14 CALL                             R1 3 1
       15 DUPTABLE                         R2 K10 [{"showDelay", "hideDelay", "uniqueTooltipId", "disableAllTooltips", "panel"}]
       16 DIVK                             R3 R0 K11 [1000]
       17 SETTABLEKS                       R3 R2 K5 ["showDelay"]
       19 DIVK                             R3 R1 K11 [1000]
       20 SETTABLEKS                       R3 R2 K6 ["hideDelay"]
       22 LOADN                            R3 0
       23 SETTABLEKS                       R3 R2 K7 ["uniqueTooltipId"]
       25 LOADB                            R3 0
       26 SETTABLEKS                       R3 R2 K8 ["disableAllTooltips"]
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K9 ["panel"]
       31 DUPCLOSURE                       R3 K12 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R3 R2 K13 ["closeTooltips"]
       35 DUPCLOSURE                       R3 K14 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R3 R2 K15 ["cancelShowTooltip"]
       39 RETURN                           R2 1
