PROTO_0:
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K2 ["Studio"]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 LOADK                            R4 K3 ["Camera Speed"]
        8 CALL                             R2 2 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["useBinding"]
       12 LOADN                            R5 0
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K5 ["createElement"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K18 [{["Value"], ["SetValue"], ["Min"] = 0.1, ["Max"] = 20, ["Exponent"] = 2.2, ["Transparency"], ["Size"], ["LayoutOrder"], ["ZIndex"] = 20}]
       19 SETTABLEKS                       R2 R7 K6 ["Value"]
       21 SETTABLEKS                       R3 R7 K7 ["SetValue"]
       23 SETTABLEKS                       R4 R7 K14 ["Transparency"]
       25 GETTABLEKS                       R8 R0 K15 ["Size"]
       27 JUMPIF                           R8 ; [+7]
       28 GETIMPORT                        R8 K21 [UDim2.new]
       30 LOADN                            R9 0
       31 LOADN                            R10 83
       32 LOADN                            R11 0
       33 LOADN                            R12 22
       34 CALL                             R8 4 1
       35 SETTABLEKS                       R8 R7 K15 ["Size"]
       37 GETTABLEKS                       R8 R0 K16 ["LayoutOrder"]
       39 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       41 CALL                             R5 2 -1
       42 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioCameraUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Slider"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["usePropertyBinding"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1
