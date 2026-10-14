PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Link clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"Basic", "WithIndentation", "WithRenderedComponents"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K8 [{["Items"], ["TextWrapped"] = True}]
        6 NEWTABLE                         R4 0 4
        8 LOADK                            R5 K9 ["Bulbasaur"]
        9 LOADK                            R6 K10 ["Charmander"]
       10 LOADK                            R7 K11 ["Squirtle"]
       11 LOADK                            R8 K12 ["This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it."]
       12 SETLIST                          R4 R5 4 [1]
       14 SETTABLEKS                       R4 R3 K5 ["Items"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K0 ["Basic"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K4 ["createElement"]
       22 GETUPVAL                         R2 1
       23 DUPTABLE                         R3 K8 [{["Items"], ["TextWrapped"] = True}]
       24 NEWTABLE                         R4 0 9
       26 LOADK                            R5 K13 ["Grass"]
       27 DUPTABLE                         R6 K17 [{["Text"] = "Bulbasaur", ["Style"] = "SubItem"}]
       28 LOADK                            R7 K18 ["Fire"]
       29 DUPTABLE                         R8 K19 [{["Text"] = "Charmander", ["Style"] = "SubItem"}]
       30 DUPTABLE                         R9 K21 [{["Text"] = "Cyndaquil", ["Style"] = "SubItem"}]
       31 LOADK                            R10 K22 ["Water"]
       32 DUPTABLE                         R11 K23 [{["Text"] = "Squirtle", ["Style"] = "SubItem"}]
       33 DUPTABLE                         R12 K25 [{["Text"] = "Totodile", ["Style"] = "SubItem"}]
       34 DUPTABLE                         R13 K26 [{["Text"] = "This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it.", ["Style"] = "SubItem"}]
       35 SETLIST                          R4 R5 9 [1]
       37 SETTABLEKS                       R4 R3 K5 ["Items"]
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K1 ["WithIndentation"]
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R1 R1 K4 ["createElement"]
       45 GETUPVAL                         R2 1
       46 DUPTABLE                         R3 K8 [{["Items"], ["TextWrapped"] = True}]
       47 NEWTABLE                         R4 0 3
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K4 ["createElement"]
       52 GETUPVAL                         R6 2
       53 DUPTABLE                         R7 K30 [{["Size"], ["Image"] = "rbxasset://textures/ui/common/robux_color@2x.png"}]
       54 GETIMPORT                        R8 K33 [UDim2.fromOffset]
       56 LOADN                            R9 100
       57 LOADN                            R10 100
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K27 ["Size"]
       61 CALL                             R5 2 1
       62 LOADK                            R6 K34 ["As you can see, arbitrary elements can be used as list items"]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K4 ["createElement"]
       66 GETUPVAL                         R8 3
       67 DUPTABLE                         R9 K38 [{["TextWrapped"] = True, ["TextXAlignment"], ["OnClick"], ["Text"] = "And here is a link, displayed as a list element"}]
       68 GETIMPORT                        R10 K41 [Enum.TextXAlignment.Left]
       70 SETTABLEKS                       R10 R9 K35 ["TextXAlignment"]
       72 DUPCLOSURE                       R10 K42 [PROTO_0]
       73 SETTABLEKS                       R10 R9 K36 ["OnClick"]
       75 CALL                             R7 2 -1
       76 SETLIST                          R4 R5 -1 [1]
       78 SETTABLEKS                       R4 R3 K5 ["Items"]
       80 CALL                             R1 2 1
       81 SETTABLEKS                       R1 R0 K2 ["WithRenderedComponents"]
       83 RETURN                           R0 1

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
       22 GETTABLEKS                       R3 R3 K9 ["BulletList"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["LinkText"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["Image"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K12 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 RETURN                           R5 1
