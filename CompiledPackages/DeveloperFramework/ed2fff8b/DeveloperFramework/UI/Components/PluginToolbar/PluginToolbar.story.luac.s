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
        0 DUPTABLE                         R1 K1 [{"activeButton"}]
        1 LOADN                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["activeButton"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["toggleActiveButton"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toggleActiveButton"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toggleActiveButton"]
        3 LOADN                            R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"Button1", "Button2"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["createElement"]
        4 GETUPVAL                         R3 1
        5 DUPTABLE                         R4 K8 [{"Toolbar", "Title", "Active", "OnClick"}]
        6 SETTABLEKS                       R0 R4 K4 ["Toolbar"]
        8 LOADK                            R5 K9 ["Button 1"]
        9 SETTABLEKS                       R5 R4 K5 ["Title"]
       11 GETUPVAL                         R6 2
       12 JUMPIFEQKN                       R6 K10 [1] ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 SETTABLEKS                       R5 R4 K6 ["Active"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U3
       20 SETTABLEKS                       R5 R4 K7 ["OnClick"]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K0 ["Button1"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K3 ["createElement"]
       28 GETUPVAL                         R3 1
       29 DUPTABLE                         R4 K8 [{"Toolbar", "Title", "Active", "OnClick"}]
       30 SETTABLEKS                       R0 R4 K4 ["Toolbar"]
       32 LOADK                            R5 K11 ["Button 2"]
       33 SETTABLEKS                       R5 R4 K5 ["Title"]
       35 GETUPVAL                         R6 2
       36 JUMPIFEQKN                       R6 K12 [2] ; [+2]
       38 LOADB                            R5 0 +1
       39 LOADB                            R5 1
       40 SETTABLEKS                       R5 R4 K6 ["Active"]
       42 NEWCLOSURE                       R5 P1
       43 CAPTURE                          UPVAL U3
       44 SETTABLEKS                       R5 R4 K7 ["OnClick"]
       46 CALL                             R2 2 1
       47 SETTABLEKS                       R2 R1 K1 ["Button2"]
       49 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R2 K1 ["activeButton"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K5 [{"Title", "RenderButtons"}]
        9 LOADK                            R5 K6 ["Test Toolbar"]
       10 SETTABLEKS                       R5 R4 K3 ["Title"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R5 R4 K4 ["RenderButtons"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["This example can only be run once, due to a bug with PluginToolbar and PluginToolbarButton.\nThe bug is filed under CLISTUDIO-20687."]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 LOADB                            R0 1
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K3 ["PureComponent"]
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
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R1 R2 K10 ["createElement"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["PluginToolbar"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["PluginButton"]
       33 CALL                             R3 1 1
       34 LOADB                            R4 0
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          REF R4
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CLOSEUPVALS                      R4
       41 RETURN                           R5 1
