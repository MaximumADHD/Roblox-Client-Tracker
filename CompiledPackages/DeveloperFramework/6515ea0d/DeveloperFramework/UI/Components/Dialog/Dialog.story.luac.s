PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["open"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["close"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["Style"] = "Round", ["Text"] = "Open Dialog", ["Size"], ["OnClick"]}]
        5 GETIMPORT                        R4 K10 [UDim2.fromOffset]
        7 LOADN                            R5 120
        8 LOADN                            R6 32
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K5 ["Size"]
       12 GETTABLEKS                       R4 R0 K11 ["open"]
       14 SETTABLEKS                       R4 R3 K6 ["OnClick"]
       16 DUPTABLE                         R4 K13 [{"Dialog"}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K0 ["createElement"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K20 [{["Title"] = "A Vanilla Dialog", ["Enabled"], ["Size"], ["OnClose"], ["Modal"] = True}]
       22 GETTABLEKS                       R8 R0 K21 ["state"]
       24 GETTABLEKS                       R8 R8 K22 ["enabled"]
       26 SETTABLEKS                       R8 R7 K16 ["Enabled"]
       28 GETIMPORT                        R8 K25 [Vector2.new]
       30 LOADN                            R9 300
       31 LOADN                            R10 120
       32 CALL                             R8 2 1
       33 SETTABLEKS                       R8 R7 K5 ["Size"]
       35 GETTABLEKS                       R8 R0 K26 ["close"]
       37 SETTABLEKS                       R8 R7 K17 ["OnClose"]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K12 ["Dialog"]
       42 CALL                             R1 3 -1
       43 RETURN                           R1 -1

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
       22 GETTABLEKS                       R3 R3 K9 ["DEPRECATED_Button"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Dialog"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["ExampleDialog"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K14 [PROTO_2]
       41 SETTABLEKS                       R5 R4 K15 ["init"]
       43 DUPCLOSURE                       R5 K16 [PROTO_3]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R5 R4 K17 ["render"]
       49 RETURN                           R4 1
