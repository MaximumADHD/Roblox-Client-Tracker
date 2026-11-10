PROTO_0:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"currentIndex"}]
        2 SETTABLEKS                       R1 R4 K0 ["currentIndex"]
        4 NAMECALL                         R2 R2 K2 ["setState"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = }]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["selectItem"]
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        7 GETTABLEKS                       R3 R3 K2 ["join"]
        9 DUPTABLE                         R4 K9 [{["PlaceholderText"] = "Choose an item...", ["SelectedIndex"], ["Items"], ["Icons"], ["OnItemActivated"]}]
       10 GETTABLEKS                       R5 R0 K10 ["state"]
       12 GETTABLEKS                       R5 R5 K11 ["currentIndex"]
       14 SETTABLEKS                       R5 R4 K5 ["SelectedIndex"]
       16 NEWTABLE                         R5 0 6
       18 LOADK                            R6 K12 ["The first element"]
       19 LOADK                            R7 K13 ["The second"]
       20 LOADK                            R8 K14 ["A really long element"]
       21 LOADK                            R9 K15 ["A tiny one"]
       22 LOADK                            R10 K16 ["The fifth one"]
       23 LOADK                            R11 K17 ["The last one"]
       24 SETLIST                          R5 R6 6 [1]
       26 SETTABLEKS                       R5 R4 K6 ["Items"]
       28 NEWTABLE                         R5 0 1
       30 LOADK                            R6 K18 ["rbxasset://textures/ui/common/robux_color@2x.png"]
       31 SETLIST                          R5 R6 1 [1]
       33 SETTABLEKS                       R5 R4 K7 ["Icons"]
       35 GETTABLEKS                       R5 R0 K19 ["selectItem"]
       37 SETTABLEKS                       R5 R4 K8 ["OnItemActivated"]
       39 GETTABLEKS                       R5 R0 K20 ["props"]
       41 CALL                             R3 2 -1
       42 CALL                             R1 -1 -1
       43 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Variant"}]
        5 GETTABLEKS                       R5 R0 K3 ["controls"]
        7 GETTABLEKS                       R5 R5 K4 ["isModern"]
        9 JUMPIFNOT                        R5 ; [+2]
       10 LOADK                            R4 K5 ["modern"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 SETTABLEKS                       R4 R3 K1 ["Variant"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["ErrorText"] = "PC LOAD LETTER", ["Variant"]}]
        5 GETTABLEKS                       R5 R0 K5 ["controls"]
        7 GETTABLEKS                       R5 R5 K6 ["isModern"]
        9 JUMPIFNOT                        R5 ; [+2]
       10 LOADK                            R4 K7 ["modern"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 SETTABLEKS                       R4 R3 K3 ["Variant"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["ExpandIcon"] = "rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png", ["Variant"]}]
        5 GETTABLEKS                       R5 R0 K5 ["controls"]
        7 GETTABLEKS                       R5 R5 K6 ["isModern"]
        9 JUMPIFNOT                        R5 ; [+2]
       10 LOADK                            R4 K7 ["modern"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 SETTABLEKS                       R4 R3 K3 ["Variant"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{["ShowSelection"] = False, ["Size"], ["Variant"]}]
        5 GETIMPORT                        R4 K8 [UDim2.fromOffset]
        7 LOADN                            R5 28
        8 LOADN                            R6 28
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K3 ["Size"]
       12 GETTABLEKS                       R5 R0 K9 ["controls"]
       14 GETTABLEKS                       R5 R5 K10 ["isModern"]
       16 JUMPIFNOT                        R5 ; [+2]
       17 LOADK                            R4 K11 ["modern"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R4
       20 SETTABLEKS                       R4 R3 K4 ["Variant"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Items", "Variant"}]
        5 NEWTABLE                         R4 0 14
        7 LOADK                            R5 K4 ["The first element"]
        8 LOADK                            R6 K5 ["The second"]
        9 LOADK                            R7 K6 ["A really long element"]
       10 LOADK                            R8 K7 ["A tiny one"]
       11 LOADK                            R9 K8 ["The fifth one"]
       12 LOADK                            R10 K9 ["The last one"]
       13 LOADK                            R11 K9 ["The last one"]
       14 LOADK                            R12 K9 ["The last one"]
       15 LOADK                            R13 K9 ["The last one"]
       16 LOADK                            R14 K9 ["The last one"]
       17 LOADK                            R15 K9 ["The last one"]
       18 LOADK                            R16 K9 ["The last one"]
       19 LOADK                            R17 K9 ["The last one"]
       20 LOADK                            R18 K9 ["The last one"]
       21 SETLIST                          R4 R5 14 [1]
       23 SETTABLEKS                       R4 R3 K1 ["Items"]
       25 GETTABLEKS                       R5 R0 K10 ["controls"]
       27 GETTABLEKS                       R5 R5 K11 ["isModern"]
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADK                            R4 K12 ["modern"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 SETTABLEKS                       R4 R3 K2 ["Variant"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K9 ["Components"]
       29 GETTABLEKS                       R4 R4 K10 ["SelectInput"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K11 ["PureComponent"]
       34 LOADK                            R6 K12 ["SelectInputExample"]
       35 NAMECALL                         R4 R4 K13 ["extend"]
       37 CALL                             R4 2 1
       38 DUPCLOSURE                       R5 K14 [PROTO_1]
       39 SETTABLEKS                       R5 R4 K15 ["init"]
       41 DUPCLOSURE                       R5 K16 [PROTO_2]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R5 R4 K17 ["render"]
       47 DUPTABLE                         R5 K20 [{"controls", "stories"}]
       48 DUPTABLE                         R6 K23 [{["isModern"] = False}]
       49 SETTABLEKS                       R6 R5 K18 ["controls"]
       51 NEWTABLE                         R6 0 5
       53 DUPTABLE                         R7 K27 [{["name"] = "Default", ["story"]}]
       54 DUPCLOSURE                       R8 K28 [PROTO_3]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R8 R7 K26 ["story"]
       59 DUPTABLE                         R8 K30 [{["name"] = "ErrorText", ["story"]}]
       60 DUPCLOSURE                       R9 K31 [PROTO_4]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R9 R8 K26 ["story"]
       65 DUPTABLE                         R9 K35 [{["name"] = "ExpandIcon", ["summary"] = "A custom image path can be passed in to use for the expand icon, instead of the default caret", ["story"]}]
       66 DUPCLOSURE                       R10 K36 [PROTO_5]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R10 R9 K26 ["story"]
       71 DUPTABLE                         R10 K39 [{["name"] = "ShowSelection", ["summary"] = "By default, SelectInput shows the selected element in a text button. This can be toggled off with ShowSelection", ["story"]}]
       72 DUPCLOSURE                       R11 K40 [PROTO_6]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R4
       75 SETTABLEKS                       R11 R10 K26 ["story"]
       77 DUPTABLE                         R11 K42 [{["name"] = "WithScroll", ["story"]}]
       78 DUPCLOSURE                       R12 K43 [PROTO_7]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R12 R11 K26 ["story"]
       83 SETLIST                          R6 R7 5 [1]
       85 SETTABLEKS                       R6 R5 K19 ["stories"]
       87 RETURN                           R5 1
