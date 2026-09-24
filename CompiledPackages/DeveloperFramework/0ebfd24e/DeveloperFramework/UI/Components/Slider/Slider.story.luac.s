PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"value"}]
        2 SETTABLEKS                       R0 R3 K0 ["value"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"value"}]
        1 GETTABLEKS                       R2 R0 K2 ["props"]
        3 GETTABLEKS                       R2 R2 K3 ["InitialValue"]
        5 SETTABLEKS                       R2 R1 K0 ["value"]
        7 SETTABLEKS                       R1 R0 K4 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["onValueChanged"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onValueChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K12 [{["Value"], ["Min"], ["Max"], ["Disabled"], ["OnValueChanged"], ["ShowInput"], ["Size"], ["SnapIncrement"], ["VerticalDragTolerance"] = 0}]
        7 GETTABLEKS                       R5 R0 K13 ["state"]
        9 GETTABLEKS                       R5 R5 K14 ["value"]
       11 SETTABLEKS                       R5 R4 K2 ["Value"]
       13 GETTABLEKS                       R5 R1 K3 ["Min"]
       15 SETTABLEKS                       R5 R4 K3 ["Min"]
       17 GETTABLEKS                       R5 R1 K4 ["Max"]
       19 SETTABLEKS                       R5 R4 K4 ["Max"]
       21 GETTABLEKS                       R5 R1 K5 ["Disabled"]
       23 SETTABLEKS                       R5 R4 K5 ["Disabled"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R5 R4 K6 ["OnValueChanged"]
       29 GETTABLEKS                       R5 R1 K7 ["ShowInput"]
       31 SETTABLEKS                       R5 R4 K7 ["ShowInput"]
       33 GETIMPORT                        R5 K17 [UDim2.fromOffset]
       35 LOADN                            R6 300
       36 LOADN                            R7 32
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K8 ["Size"]
       40 GETTABLEKS                       R5 R1 K9 ["SnapIncrement"]
       42 SETTABLEKS                       R5 R4 K9 ["SnapIncrement"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Slider"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K10 ["PureComponent"]
       27 LOADK                            R5 K11 ["SliderStory"]
       28 NAMECALL                         R3 R3 K12 ["extend"]
       30 CALL                             R3 2 1
       31 DUPCLOSURE                       R4 K13 [PROTO_1]
       32 SETTABLEKS                       R4 R3 K14 ["init"]
       34 DUPCLOSURE                       R4 K15 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R4 R3 K16 ["render"]
       39 DUPTABLE                         R4 K18 [{"stories"}]
       40 NEWTABLE                         R5 0 3
       42 DUPTABLE                         R6 K21 [{["name"] = "Slider", ["story"]}]
       43 GETTABLEKS                       R7 R1 K22 ["createElement"]
       45 MOVE                             R8 R3
       46 DUPTABLE                         R9 K30 [{["InitialValue"] = 4, ["Min"] = 0, ["Max"] = 4, ["SnapIncrement"] = 1}]
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K20 ["story"]
       50 DUPTABLE                         R7 K32 [{["name"] = "Slider with input", ["story"]}]
       51 GETTABLEKS                       R8 R1 K22 ["createElement"]
       53 MOVE                             R9 R3
       54 DUPTABLE                         R10 K37 [{["InitialValue"] = 0.5, ["Min"] = 0, ["Max"] = 1, ["ShowInput"] = True, ["SnapIncrement"] = 0.05}]
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K20 ["story"]
       58 DUPTABLE                         R8 K39 [{["name"] = "Disabled slider", ["story"]}]
       59 GETTABLEKS                       R9 R1 K22 ["createElement"]
       61 MOVE                             R10 R3
       62 DUPTABLE                         R11 K43 [{["InitialValue"] = 8, ["Min"] = 0, ["Max"] = 10, ["SnapIncrement"] = 1, ["Disabled"] = True}]
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K20 ["story"]
       66 SETLIST                          R5 R6 3 [1]
       68 SETTABLEKS                       R5 R4 K17 ["stories"]
       70 RETURN                           R4 1
