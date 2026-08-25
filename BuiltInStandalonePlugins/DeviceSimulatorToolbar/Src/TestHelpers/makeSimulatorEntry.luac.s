PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 DUPTABLE                         R3 K3 [{"Name", "Generation", "Config"}]
        5 SETTABLEKS                       R0 R3 K0 ["Name"]
        7 GETTABLEKS                       R5 R2 K5 ["generation"]
        9 ORK                              R4 R5 K4 [1]
       10 SETTABLEKS                       R4 R3 K1 ["Generation"]
       12 DUPTABLE                         R4 K9 [{"InitialIcon", "InitialLabel", "Controls"}]
       13 GETTABLEKS                       R6 R2 K10 ["icon"]
       15 ORK                              R5 R6 K10 ["icon"]
       16 SETTABLEKS                       R5 R4 K6 ["InitialIcon"]
       18 GETTABLEKS                       R6 R2 K11 ["label"]
       20 OR                               R5 R6 R0
       21 SETTABLEKS                       R5 R4 K7 ["InitialLabel"]
       23 GETTABLEKS                       R5 R2 K12 ["controls"]
       25 JUMPIF                           R5 ; [+5]
       26 NEWTABLE                         R5 0 1
       28 DUPTABLE                         R6 K19 [{["Type"] = "Toggle", ["Label"] = "Enabled", ["Id"] = "1"}]
       29 SETLIST                          R5 R6 1 [1]
       31 SETTABLEKS                       R5 R4 K8 ["Controls"]
       33 SETTABLEKS                       R4 R3 K2 ["Config"]
       35 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
