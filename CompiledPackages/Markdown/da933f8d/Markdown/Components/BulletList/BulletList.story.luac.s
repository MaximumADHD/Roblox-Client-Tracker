PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"Items", "TextWrapped"}]
        5 NEWTABLE                         R3 0 4
        7 LOADK                            R4 K4 ["Bulbasaur"]
        8 LOADK                            R5 K5 ["Charmander"]
        9 LOADK                            R6 K6 ["Squirtle"]
       10 LOADK                            R7 K7 ["This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it."]
       11 SETLIST                          R3 R4 4 [1]
       13 SETTABLEKS                       R3 R2 K1 ["Items"]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K2 ["TextWrapped"]
       18 CALL                             R0 2 -1
       19 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"Items", "TextWrapped"}]
        5 NEWTABLE                         R3 0 9
        7 LOADK                            R4 K4 ["Grass"]
        8 DUPTABLE                         R5 K7 [{"Text", "Style"}]
        9 LOADK                            R6 K8 ["Bulbasaur"]
       10 SETTABLEKS                       R6 R5 K5 ["Text"]
       12 LOADK                            R6 K9 ["SubItem"]
       13 SETTABLEKS                       R6 R5 K6 ["Style"]
       15 LOADK                            R6 K10 ["Fire"]
       16 DUPTABLE                         R7 K7 [{"Text", "Style"}]
       17 LOADK                            R8 K11 ["Charmander"]
       18 SETTABLEKS                       R8 R7 K5 ["Text"]
       20 LOADK                            R8 K9 ["SubItem"]
       21 SETTABLEKS                       R8 R7 K6 ["Style"]
       23 DUPTABLE                         R8 K7 [{"Text", "Style"}]
       24 LOADK                            R9 K12 ["Cyndaquil"]
       25 SETTABLEKS                       R9 R8 K5 ["Text"]
       27 LOADK                            R9 K9 ["SubItem"]
       28 SETTABLEKS                       R9 R8 K6 ["Style"]
       30 LOADK                            R9 K13 ["Water"]
       31 DUPTABLE                         R10 K7 [{"Text", "Style"}]
       32 LOADK                            R11 K14 ["Squirtle"]
       33 SETTABLEKS                       R11 R10 K5 ["Text"]
       35 LOADK                            R11 K9 ["SubItem"]
       36 SETTABLEKS                       R11 R10 K6 ["Style"]
       38 DUPTABLE                         R11 K7 [{"Text", "Style"}]
       39 LOADK                            R12 K15 ["Totodile"]
       40 SETTABLEKS                       R12 R11 K5 ["Text"]
       42 LOADK                            R12 K9 ["SubItem"]
       43 SETTABLEKS                       R12 R11 K6 ["Style"]
       45 DUPTABLE                         R12 K7 [{"Text", "Style"}]
       46 LOADK                            R13 K16 ["This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it."]
       47 SETTABLEKS                       R13 R12 K5 ["Text"]
       49 LOADK                            R13 K9 ["SubItem"]
       50 SETTABLEKS                       R13 R12 K6 ["Style"]
       52 SETLIST                          R3 R4 9 [1]
       54 SETTABLEKS                       R3 R2 K1 ["Items"]
       56 LOADB                            R3 1
       57 SETTABLEKS                       R3 R2 K2 ["TextWrapped"]
       59 CALL                             R0 2 -1
       60 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R3 R0 K0 ["Color"]
        4 GETTABLEKS                       R2 R3 K1 ["Content"]
        6 GETTABLEKS                       R1 R2 K2 ["Link"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["createElement"]
       11 GETUPVAL                         R3 2
       12 DUPTABLE                         R4 K6 [{"Items", "TextWrapped"}]
       13 NEWTABLE                         R5 0 3
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K3 ["createElement"]
       18 GETUPVAL                         R7 3
       19 DUPTABLE                         R8 K9 [{"Size", "Image"}]
       20 GETIMPORT                        R9 K12 [UDim2.fromOffset]
       22 LOADN                            R10 100
       23 LOADN                            R11 100
       24 CALL                             R9 2 1
       25 SETTABLEKS                       R9 R8 K7 ["Size"]
       27 LOADK                            R9 K13 ["rbxasset://textures/ui/common/robux_color@2x.png"]
       28 SETTABLEKS                       R9 R8 K8 ["Image"]
       30 CALL                             R6 2 1
       31 LOADK                            R7 K14 ["As you can see, arbitrary elements can be used as list items"]
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R8 R9 K3 ["createElement"]
       35 GETUPVAL                         R9 4
       36 DUPTABLE                         R10 K20 [{"TextXAlignment", "AutomaticSize", "onActivated", "textStyle", "Text"}]
       37 GETIMPORT                        R11 K23 [Enum.TextXAlignment.Left]
       39 SETTABLEKS                       R11 R10 K15 ["TextXAlignment"]
       41 GETIMPORT                        R11 K25 [Enum.AutomaticSize.XY]
       43 SETTABLEKS                       R11 R10 K16 ["AutomaticSize"]
       45 DUPCLOSURE                       R11 K26 [PROTO_2]
       46 SETTABLEKS                       R11 R10 K17 ["onActivated"]
       48 SETTABLEKS                       R1 R10 K18 ["textStyle"]
       50 LOADK                            R11 K27 ["And here is a link, displayed as a list element"]
       51 SETTABLEKS                       R11 R10 K19 ["Text"]
       53 CALL                             R8 2 -1
       54 SETLIST                          R5 R6 -1 [1]
       56 SETTABLEKS                       R5 R4 K4 ["Items"]
       58 LOADB                            R5 1
       59 SETTABLEKS                       R5 R4 K5 ["TextWrapped"]
       61 CALL                             R2 2 -1
       62 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Components"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
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
       25 GETTABLEKS                       R5 R3 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R5 K11 ["useTokens"]
       29 GETTABLEKS                       R5 R3 K12 ["Image"]
       31 GETTABLEKS                       R6 R3 K13 ["Text"]
       33 GETIMPORT                        R7 K7 [require]
       35 GETTABLEKS                       R9 R0 K2 ["Components"]
       37 GETTABLEKS                       R8 R9 K14 ["BulletList"]
       39 CALL                             R7 1 1
       40 DUPTABLE                         R8 K17 [{"summary", "stories"}]
       41 LOADK                            R9 K18 ["An array of strings and/or elements displayed as a bulleted list."]
       42 SETTABLEKS                       R9 R8 K15 ["summary"]
       44 NEWTABLE                         R9 0 3
       46 DUPTABLE                         R10 K21 [{"name", "summary", "story"}]
       47 LOADK                            R11 K22 ["Basic"]
       48 SETTABLEKS                       R11 R10 K19 ["name"]
       50 LOADK                            R11 K23 ["A basic bullet list with string items."]
       51 SETTABLEKS                       R11 R10 K15 ["summary"]
       53 DUPCLOSURE                       R11 K24 [PROTO_0]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R11 R10 K20 ["story"]
       58 DUPTABLE                         R11 K21 [{"name", "summary", "story"}]
       59 LOADK                            R12 K25 ["With Indentation"]
       60 SETTABLEKS                       R12 R11 K19 ["name"]
       62 LOADK                            R12 K26 ["A bullet list with indented sub-items."]
       63 SETTABLEKS                       R12 R11 K15 ["summary"]
       65 DUPCLOSURE                       R12 K27 [PROTO_1]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R12 R11 K20 ["story"]
       70 DUPTABLE                         R12 K21 [{"name", "summary", "story"}]
       71 LOADK                            R13 K28 ["With Rendered Components"]
       72 SETTABLEKS                       R13 R12 K19 ["name"]
       74 LOADK                            R13 K29 ["BulletList can render custom components as items."]
       75 SETTABLEKS                       R13 R12 K15 ["summary"]
       77 DUPCLOSURE                       R13 K30 [PROTO_3]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R13 R12 K20 ["story"]
       85 SETLIST                          R9 R10 3 [1]
       87 SETTABLEKS                       R9 R8 K16 ["stories"]
       89 RETURN                           R8 1
