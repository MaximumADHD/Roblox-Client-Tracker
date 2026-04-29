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
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["React"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R3 K9 ["Hooks"]
       23 GETTABLEKS                       R4 R5 K10 ["useTokens"]
       25 GETTABLEKS                       R5 R3 K11 ["Image"]
       27 GETTABLEKS                       R6 R3 K12 ["Text"]
       29 GETIMPORT                        R7 K6 [require]
       31 GETTABLEKS                       R9 R0 K2 ["Components"]
       33 GETTABLEKS                       R8 R9 K13 ["BulletList"]
       35 CALL                             R7 1 1
       36 DUPTABLE                         R8 K16 [{"summary", "stories"}]
       37 LOADK                            R9 K17 ["An array of strings and/or elements displayed as a bulleted list."]
       38 SETTABLEKS                       R9 R8 K14 ["summary"]
       40 NEWTABLE                         R9 0 3
       42 DUPTABLE                         R10 K20 [{"name", "summary", "story"}]
       43 LOADK                            R11 K21 ["Basic"]
       44 SETTABLEKS                       R11 R10 K18 ["name"]
       46 LOADK                            R11 K22 ["A basic bullet list with string items."]
       47 SETTABLEKS                       R11 R10 K14 ["summary"]
       49 DUPCLOSURE                       R11 K23 [PROTO_0]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R7
       52 SETTABLEKS                       R11 R10 K19 ["story"]
       54 DUPTABLE                         R11 K20 [{"name", "summary", "story"}]
       55 LOADK                            R12 K24 ["With Indentation"]
       56 SETTABLEKS                       R12 R11 K18 ["name"]
       58 LOADK                            R12 K25 ["A bullet list with indented sub-items."]
       59 SETTABLEKS                       R12 R11 K14 ["summary"]
       61 DUPCLOSURE                       R12 K26 [PROTO_1]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R12 R11 K19 ["story"]
       66 DUPTABLE                         R12 K20 [{"name", "summary", "story"}]
       67 LOADK                            R13 K27 ["With Rendered Components"]
       68 SETTABLEKS                       R13 R12 K18 ["name"]
       70 LOADK                            R13 K28 ["BulletList can render custom components as items."]
       71 SETTABLEKS                       R13 R12 K14 ["summary"]
       73 DUPCLOSURE                       R13 K29 [PROTO_3]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R13 R12 K19 ["story"]
       81 SETLIST                          R9 R10 3 [1]
       83 SETTABLEKS                       R9 R8 K15 ["stories"]
       85 RETURN                           R8 1
