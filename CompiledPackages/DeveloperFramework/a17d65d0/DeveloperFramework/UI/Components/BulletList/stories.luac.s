PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Link clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"Basic", "WithIndentation", "WithRenderedComponents"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K7 [{"Items", "TextWrapped"}]
        6 NEWTABLE                         R4 0 4
        8 LOADK                            R5 K8 ["Bulbasaur"]
        9 LOADK                            R6 K9 ["Charmander"]
       10 LOADK                            R7 K10 ["Squirtle"]
       11 LOADK                            R8 K11 ["This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it."]
       12 SETLIST                          R4 R5 4 [1]
       14 SETTABLEKS                       R4 R3 K5 ["Items"]
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K6 ["TextWrapped"]
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K0 ["Basic"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K4 ["createElement"]
       25 GETUPVAL                         R2 1
       26 DUPTABLE                         R3 K7 [{"Items", "TextWrapped"}]
       27 NEWTABLE                         R4 0 9
       29 LOADK                            R5 K12 ["Grass"]
       30 DUPTABLE                         R6 K15 [{"Text", "Style"}]
       31 LOADK                            R7 K8 ["Bulbasaur"]
       32 SETTABLEKS                       R7 R6 K13 ["Text"]
       34 LOADK                            R7 K16 ["SubItem"]
       35 SETTABLEKS                       R7 R6 K14 ["Style"]
       37 LOADK                            R7 K17 ["Fire"]
       38 DUPTABLE                         R8 K15 [{"Text", "Style"}]
       39 LOADK                            R9 K9 ["Charmander"]
       40 SETTABLEKS                       R9 R8 K13 ["Text"]
       42 LOADK                            R9 K16 ["SubItem"]
       43 SETTABLEKS                       R9 R8 K14 ["Style"]
       45 DUPTABLE                         R9 K15 [{"Text", "Style"}]
       46 LOADK                            R10 K18 ["Cyndaquil"]
       47 SETTABLEKS                       R10 R9 K13 ["Text"]
       49 LOADK                            R10 K16 ["SubItem"]
       50 SETTABLEKS                       R10 R9 K14 ["Style"]
       52 LOADK                            R10 K19 ["Water"]
       53 DUPTABLE                         R11 K15 [{"Text", "Style"}]
       54 LOADK                            R12 K10 ["Squirtle"]
       55 SETTABLEKS                       R12 R11 K13 ["Text"]
       57 LOADK                            R12 K16 ["SubItem"]
       58 SETTABLEKS                       R12 R11 K14 ["Style"]
       60 DUPTABLE                         R12 K15 [{"Text", "Style"}]
       61 LOADK                            R13 K20 ["Totodile"]
       62 SETTABLEKS                       R13 R12 K13 ["Text"]
       64 LOADK                            R13 K16 ["SubItem"]
       65 SETTABLEKS                       R13 R12 K14 ["Style"]
       67 DUPTABLE                         R13 K15 [{"Text", "Style"}]
       68 LOADK                            R14 K11 ["This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it."]
       69 SETTABLEKS                       R14 R13 K13 ["Text"]
       71 LOADK                            R14 K16 ["SubItem"]
       72 SETTABLEKS                       R14 R13 K14 ["Style"]
       74 SETLIST                          R4 R5 9 [1]
       76 SETTABLEKS                       R4 R3 K5 ["Items"]
       78 LOADB                            R4 1
       79 SETTABLEKS                       R4 R3 K6 ["TextWrapped"]
       81 CALL                             R1 2 1
       82 SETTABLEKS                       R1 R0 K1 ["WithIndentation"]
       84 GETUPVAL                         R2 0
       85 GETTABLEKS                       R1 R2 K4 ["createElement"]
       87 GETUPVAL                         R2 1
       88 DUPTABLE                         R3 K7 [{"Items", "TextWrapped"}]
       89 NEWTABLE                         R4 0 3
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R5 R6 K4 ["createElement"]
       94 GETUPVAL                         R6 2
       95 DUPTABLE                         R7 K23 [{"Size", "Image"}]
       96 GETIMPORT                        R8 K26 [UDim2.fromOffset]
       98 LOADN                            R9 100
       99 LOADN                            R10 100
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K21 ["Size"]
      103 LOADK                            R8 K27 ["rbxasset://textures/ui/common/robux_color@2x.png"]
      104 SETTABLEKS                       R8 R7 K22 ["Image"]
      106 CALL                             R5 2 1
      107 LOADK                            R6 K28 ["As you can see, arbitrary elements can be used as list items"]
      108 GETUPVAL                         R8 0
      109 GETTABLEKS                       R7 R8 K4 ["createElement"]
      111 GETUPVAL                         R8 3
      112 DUPTABLE                         R9 K31 [{"TextWrapped", "TextXAlignment", "OnClick", "Text"}]
      113 LOADB                            R10 1
      114 SETTABLEKS                       R10 R9 K6 ["TextWrapped"]
      116 GETIMPORT                        R10 K34 [Enum.TextXAlignment.Left]
      118 SETTABLEKS                       R10 R9 K29 ["TextXAlignment"]
      120 DUPCLOSURE                       R10 K35 [PROTO_0]
      121 SETTABLEKS                       R10 R9 K30 ["OnClick"]
      123 LOADK                            R10 K36 ["And here is a link, displayed as a list element"]
      124 SETTABLEKS                       R10 R9 K13 ["Text"]
      126 CALL                             R7 2 -1
      127 SETLIST                          R4 R5 -1 [1]
      129 SETTABLEKS                       R4 R3 K5 ["Items"]
      131 LOADB                            R4 1
      132 SETTABLEKS                       R4 R3 K6 ["TextWrapped"]
      134 CALL                             R1 2 1
      135 SETTABLEKS                       R1 R0 K2 ["WithRenderedComponents"]
      137 RETURN                           R0 1

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
       22 GETTABLEKS                       R3 R4 K9 ["BulletList"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["LinkText"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R7 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R7 K8 ["Components"]
       40 GETTABLEKS                       R5 R6 K11 ["Image"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K12 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 RETURN                           R5 1
