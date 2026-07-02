PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{["Items"], ["TextWrapped"] = True}]
        5 NEWTABLE                         R3 0 4
        7 LOADK                            R4 K5 ["Bulbasaur"]
        8 LOADK                            R5 K6 ["Charmander"]
        9 LOADK                            R6 K7 ["Squirtle"]
       10 LOADK                            R7 K8 ["This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it."]
       11 SETLIST                          R3 R4 4 [1]
       13 SETTABLEKS                       R3 R2 K1 ["Items"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{["Items"], ["TextWrapped"] = True}]
        5 NEWTABLE                         R3 0 9
        7 LOADK                            R4 K5 ["Grass"]
        8 DUPTABLE                         R5 K10 [{["Text"] = "Bulbasaur", ["Style"] = "SubItem"}]
        9 LOADK                            R6 K11 ["Fire"]
       10 DUPTABLE                         R7 K13 [{["Text"] = "Charmander", ["Style"] = "SubItem"}]
       11 DUPTABLE                         R8 K15 [{["Text"] = "Cyndaquil", ["Style"] = "SubItem"}]
       12 LOADK                            R9 K16 ["Water"]
       13 DUPTABLE                         R10 K18 [{["Text"] = "Squirtle", ["Style"] = "SubItem"}]
       14 DUPTABLE                         R11 K20 [{["Text"] = "Totodile", ["Style"] = "SubItem"}]
       15 DUPTABLE                         R12 K22 [{["Text"] = "This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it.", ["Style"] = "SubItem"}]
       16 SETLIST                          R3 R4 9 [1]
       18 SETTABLEKS                       R3 R2 K1 ["Items"]
       20 CALL                             R0 2 -1
       21 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R1 R0 K0 ["Color"]
        4 GETTABLEKS                       R1 R1 K1 ["Content"]
        6 GETTABLEKS                       R1 R1 K2 ["Link"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createElement"]
       11 GETUPVAL                         R3 2
       12 DUPTABLE                         R4 K7 [{["Items"], ["TextWrapped"] = True}]
       13 NEWTABLE                         R5 0 3
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K3 ["createElement"]
       18 GETUPVAL                         R7 3
       19 DUPTABLE                         R8 K11 [{["Size"], ["Image"] = "rbxasset://textures/ui/common/robux_color@2x.png"}]
       20 GETIMPORT                        R9 K14 [UDim2.fromOffset]
       22 LOADN                            R10 100
       23 LOADN                            R11 100
       24 CALL                             R9 2 1
       25 SETTABLEKS                       R9 R8 K8 ["Size"]
       27 CALL                             R6 2 1
       28 LOADK                            R7 K15 ["As you can see, arbitrary elements can be used as list items"]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K3 ["createElement"]
       32 GETUPVAL                         R9 4
       33 DUPTABLE                         R10 K22 [{["TextXAlignment"], ["AutomaticSize"], ["onActivated"], ["textStyle"], ["Text"] = "And here is a link, displayed as a list element"}]
       34 GETIMPORT                        R11 K25 [Enum.TextXAlignment.Left]
       36 SETTABLEKS                       R11 R10 K16 ["TextXAlignment"]
       38 GETIMPORT                        R11 K27 [Enum.AutomaticSize.XY]
       40 SETTABLEKS                       R11 R10 K17 ["AutomaticSize"]
       42 DUPCLOSURE                       R11 K28 [PROTO_2]
       43 SETTABLEKS                       R11 R10 K18 ["onActivated"]
       45 SETTABLEKS                       R1 R10 K19 ["textStyle"]
       47 CALL                             R8 2 -1
       48 SETLIST                          R5 R6 -1 [1]
       50 SETTABLEKS                       R5 R4 K4 ["Items"]
       52 CALL                             R2 2 -1
       53 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K1 [script]
       11 LOADK                            R3 K5 ["Packages"]
       12 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K7 [require]
       17 GETTABLEKS                       R3 R1 K8 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useTokens"]
       29 GETTABLEKS                       R5 R3 K12 ["Image"]
       31 GETTABLEKS                       R6 R3 K13 ["Text"]
       33 GETIMPORT                        R7 K7 [require]
       35 GETTABLEKS                       R8 R0 K2 ["Components"]
       37 GETTABLEKS                       R8 R8 K14 ["BulletList"]
       39 CALL                             R7 1 1
       40 DUPTABLE                         R8 K18 [{["summary"] = "An array of strings and/or elements displayed as a bulleted list.", ["stories"]}]
       41 NEWTABLE                         R9 0 3
       43 DUPTABLE                         R10 K23 [{["name"] = "Basic", ["summary"] = "A basic bullet list with string items.", ["story"]}]
       44 DUPCLOSURE                       R11 K24 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R7
       47 SETTABLEKS                       R11 R10 K22 ["story"]
       49 DUPTABLE                         R11 K27 [{["name"] = "With Indentation", ["summary"] = "A bullet list with indented sub-items.", ["story"]}]
       50 DUPCLOSURE                       R12 K28 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R7
       53 SETTABLEKS                       R12 R11 K22 ["story"]
       55 DUPTABLE                         R12 K31 [{["name"] = "With Rendered Components", ["summary"] = "BulletList can render custom components as items.", ["story"]}]
       56 DUPCLOSURE                       R13 K32 [PROTO_3]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 SETTABLEKS                       R13 R12 K22 ["story"]
       64 SETLIST                          R9 R10 3 [1]
       66 SETTABLEKS                       R9 R8 K17 ["stories"]
       68 RETURN                           R8 1
