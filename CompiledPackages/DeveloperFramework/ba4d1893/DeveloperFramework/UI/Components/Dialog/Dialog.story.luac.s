PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["enabled"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["open"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["close"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Style", "Text", "Size", "OnClick"}]
        5 LOADK                            R4 K6 ["Round"]
        6 SETTABLEKS                       R4 R3 K1 ["Style"]
        8 LOADK                            R4 K7 ["Open Dialog"]
        9 SETTABLEKS                       R4 R3 K2 ["Text"]
       11 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       13 LOADN                            R5 120
       14 LOADN                            R6 32
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K3 ["Size"]
       18 GETTABLEKS                       R4 R0 K11 ["open"]
       20 SETTABLEKS                       R4 R3 K4 ["OnClick"]
       22 DUPTABLE                         R4 K13 [{"Dialog"}]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K0 ["createElement"]
       26 GETUPVAL                         R6 2
       27 DUPTABLE                         R7 K18 [{"Title", "Enabled", "Size", "OnClose", "Modal"}]
       28 LOADK                            R8 K19 ["A Vanilla Dialog"]
       29 SETTABLEKS                       R8 R7 K14 ["Title"]
       31 GETTABLEKS                       R8 R0 K20 ["state"]
       33 GETTABLEKS                       R8 R8 K21 ["enabled"]
       35 SETTABLEKS                       R8 R7 K15 ["Enabled"]
       37 GETIMPORT                        R8 K24 [Vector2.new]
       39 LOADN                            R9 44
       40 LOADN                            R10 120
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K3 ["Size"]
       44 GETTABLEKS                       R8 R0 K25 ["close"]
       46 SETTABLEKS                       R8 R7 K16 ["OnClose"]
       48 LOADB                            R8 1
       49 SETTABLEKS                       R8 R7 K17 ["Modal"]
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K12 ["Dialog"]
       54 CALL                             R1 3 -1
       55 RETURN                           R1 -1

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
