PROTO_0:
        0 DUPTABLE                         R0 K6 [{"Move", "AddPoint", "AddTangent", "Done", "DeletePoint", "DeletePoint2"}]
        1 LOADK                            R1 K7 ["v"]
        2 SETTABLEKS                       R1 R0 K0 ["Move"]
        4 LOADK                            R1 K8 ["p"]
        5 SETTABLEKS                       R1 R0 K1 ["AddPoint"]
        7 LOADK                            R1 K9 ["t"]
        8 SETTABLEKS                       R1 R0 K2 ["AddTangent"]
       10 LOADK                            R1 K10 ["return"]
       11 SETTABLEKS                       R1 R0 K3 ["Done"]
       13 LOADK                            R1 K11 ["delete"]
       14 SETTABLEKS                       R1 R0 K4 ["DeletePoint"]
       16 LOADK                            R1 K12 ["backspace"]
       17 SETTABLEKS                       R1 R0 K5 ["DeletePoint2"]
       19 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
