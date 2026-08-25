PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 GETIMPORT                        R2 K4 [string.format]
        4 LOADK                            R3 K5 ["Button %s was clicked."]
        5 MOVE                             R4 R0
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K7 [{"activeButton"}]
       10 SETTABLEKS                       R0 R3 K6 ["activeButton"]
       12 NAMECALL                         R1 R1 K8 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = 1}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["toggleActiveButton"]
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleActiveButton"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleActiveButton"]
        3 LOADN                            R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"Button1", "Button2"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["createElement"]
        4 GETUPVAL                         R3 1
        5 DUPTABLE                         R4 K9 [{["Toolbar"], ["Title"] = "Button 1", ["Active"], ["OnClick"]}]
        6 SETTABLEKS                       R0 R4 K4 ["Toolbar"]
        8 GETUPVAL                         R6 2
        9 JUMPIFEQKN                       R6 K10 [1] ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 SETTABLEKS                       R5 R4 K7 ["Active"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U3
       17 SETTABLEKS                       R5 R4 K8 ["OnClick"]
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R1 K0 ["Button1"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K3 ["createElement"]
       25 GETUPVAL                         R3 1
       26 DUPTABLE                         R4 K12 [{["Toolbar"], ["Title"] = "Button 2", ["Active"], ["OnClick"]}]
       27 SETTABLEKS                       R0 R4 K4 ["Toolbar"]
       29 GETUPVAL                         R6 2
       30 JUMPIFEQKN                       R6 K13 [2] ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 SETTABLEKS                       R5 R4 K7 ["Active"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          UPVAL U3
       38 SETTABLEKS                       R5 R4 K8 ["OnClick"]
       40 CALL                             R2 2 1
       41 SETTABLEKS                       R2 R1 K1 ["Button2"]
       43 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["activeButton"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K6 [{["Title"] = "Test Toolbar", ["RenderButtons"]}]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R5 R4 K5 ["RenderButtons"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["This example can only be run once, due to a bug with PluginToolbar and PluginToolbarButton.\nThe bug is filed under CLISTUDIO-20687."]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 LOADB                            R0 1
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K3 ["PureComponent"]
       12 LOADK                            R2 K4 ["ExampleToolbar"]
       13 NAMECALL                         R0 R0 K5 ["extend"]
       15 CALL                             R0 2 1
       16 DUPCLOSURE                       R1 K6 [PROTO_1]
       17 SETTABLEKS                       R1 R0 K7 ["init"]
       19 DUPCLOSURE                       R1 K8 [PROTO_5]
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 SETTABLEKS                       R1 R0 K9 ["render"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K10 ["createElement"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1

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
       22 GETTABLEKS                       R3 R3 K9 ["PluginToolbar"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["PluginButton"]
       33 CALL                             R3 1 1
       34 LOADB                            R4 0
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          REF R4
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CLOSEUPVALS                      R4
       41 RETURN                           R5 1
