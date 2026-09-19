PROTO_0:
        0 GETIMPORT                        R1 K3 [Enum.Material.Air]
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 GETUPVAL                         R1 0
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K5 [Enum.Material.Water]
        8 JUMPIFNOTEQ                      R0 R1 ; [+3]
       10 GETUPVAL                         R1 1
       11 RETURN                           R1 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1], ["color"], ["transparency"] = 0.5}]
        2 GETIMPORT                        R1 K8 [Enum.Material.Glass]
        4 SETTABLEKS                       R1 R0 K0 ["material"]
        6 GETIMPORT                        R1 K11 [Color3.fromRGB]
        8 LOADN                            R2 255
        9 LOADN                            R3 255
       10 LOADN                            R4 255
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["color"]
       14 DUPTABLE                         R1 K4 [{[1], ["color"], ["transparency"] = 0.5}]
       15 GETIMPORT                        R2 K13 [Enum.Material.Glacier]
       17 SETTABLEKS                       R2 R1 K0 ["material"]
       19 GETIMPORT                        R2 K11 [Color3.fromRGB]
       21 LOADN                            R3 33
       22 LOADN                            R4 84
       23 LOADN                            R5 185
       24 CALL                             R2 3 1
       25 SETTABLEKS                       R2 R1 K1 ["color"]
       27 DUPCLOSURE                       R2 K14 [PROTO_0]
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 RETURN                           R2 1
