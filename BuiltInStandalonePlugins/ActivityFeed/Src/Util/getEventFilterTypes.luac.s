PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{"Experience", "Monetization", "Permissions", "Place", "Publish", "Package", "Scripts"}]
        2 LOADK                            R1 K0 ["Experience"]
        3 SETTABLEKS                       R1 R0 K0 ["Experience"]
        5 LOADK                            R1 K1 ["Monetization"]
        6 SETTABLEKS                       R1 R0 K1 ["Monetization"]
        8 LOADK                            R1 K2 ["Permissions"]
        9 SETTABLEKS                       R1 R0 K2 ["Permissions"]
       11 LOADK                            R1 K3 ["Place"]
       12 SETTABLEKS                       R1 R0 K3 ["Place"]
       14 LOADK                            R1 K4 ["Publish"]
       15 SETTABLEKS                       R1 R0 K4 ["Publish"]
       17 LOADK                            R1 K5 ["Package"]
       18 SETTABLEKS                       R1 R0 K5 ["Package"]
       20 LOADK                            R1 K6 ["Scripts"]
       21 SETTABLEKS                       R1 R0 K6 ["Scripts"]
       23 DUPCLOSURE                       R1 K8 [PROTO_0]
       24 CAPTURE                          VAL R0
       25 RETURN                           R1 1
