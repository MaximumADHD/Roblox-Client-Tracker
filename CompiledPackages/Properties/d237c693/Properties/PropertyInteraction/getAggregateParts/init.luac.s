PROTO_0:
        0 DUPTABLE                         R1 K1 [{"value"}]
        1 DUPTABLE                         R2 K4 [{[1], ["multiple"] = False}]
        2 SETTABLEKS                       R0 R2 K0 ["value"]
        4 SETTABLEKS                       R2 R1 K0 ["value"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K0 ["aggregateParts"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 JUMPIFNOT                        R2 ; [+9]
       10 JUMPIFNOT                        R3 ; [+5]
       11 GETTABLEKS                       R4 R2 K1 ["fromValue"]
       13 MOVE                             R5 R1
       14 CALL                             R4 1 1
       15 RETURN                           R4 1
       16 GETTABLEKS                       R4 R2 K2 ["allMultiple"]
       18 RETURN                           R4 1
       19 JUMPIFNOT                        R3 ; [+7]
       20 DUPTABLE                         R4 K4 [{"value"}]
       21 DUPTABLE                         R5 K7 [{["value"], ["multiple"] = False}]
       22 SETTABLEKS                       R1 R5 K3 ["value"]
       24 SETTABLEKS                       R5 R4 K3 ["value"]
       26 RETURN                           R4 1
       27 GETUPVAL                         R4 1
       28 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["PropertyInteraction"]
       16 GETTABLEKS                       R3 R3 K8 ["genericMultiplePart"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Guest"]
       23 GETTABLEKS                       R4 R4 K10 ["getValueAggregator"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_0]
       27 DUPTABLE                         R5 K13 [{"value"}]
       28 SETTABLEKS                       R2 R5 K12 ["value"]
       30 DUPCLOSURE                       R6 K14 [PROTO_1]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 RETURN                           R6 1
