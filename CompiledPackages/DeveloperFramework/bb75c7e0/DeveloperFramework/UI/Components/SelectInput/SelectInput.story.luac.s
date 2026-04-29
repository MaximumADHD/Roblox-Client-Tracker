PROTO_0:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"currentIndex"}]
        2 SETTABLEKS                       R1 R4 K0 ["currentIndex"]
        4 NAMECALL                         R2 R2 K2 ["setState"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"currentIndex"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["currentIndex"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["selectItem"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        7 GETTABLEKS                       R3 R4 K2 ["join"]
        9 DUPTABLE                         R4 K8 [{"PlaceholderText", "SelectedIndex", "Items", "Icons", "OnItemActivated"}]
       10 LOADK                            R5 K9 ["Choose an item..."]
       11 SETTABLEKS                       R5 R4 K3 ["PlaceholderText"]
       13 GETTABLEKS                       R6 R0 K10 ["state"]
       15 GETTABLEKS                       R5 R6 K11 ["currentIndex"]
       17 SETTABLEKS                       R5 R4 K4 ["SelectedIndex"]
       19 NEWTABLE                         R5 0 6
       21 LOADK                            R6 K12 ["The first element"]
       22 LOADK                            R7 K13 ["The second"]
       23 LOADK                            R8 K14 ["A really long element"]
       24 LOADK                            R9 K15 ["A tiny one"]
       25 LOADK                            R10 K16 ["The fifth one"]
       26 LOADK                            R11 K17 ["The last one"]
       27 SETLIST                          R5 R6 6 [1]
       29 SETTABLEKS                       R5 R4 K5 ["Items"]
       31 NEWTABLE                         R5 0 1
       33 LOADK                            R6 K18 ["rbxasset://textures/ui/common/robux_color@2x.png"]
       34 SETLIST                          R5 R6 1 [1]
       36 SETTABLEKS                       R5 R4 K6 ["Icons"]
       38 GETTABLEKS                       R5 R0 K19 ["selectItem"]
       40 SETTABLEKS                       R5 R4 K7 ["OnItemActivated"]
       42 GETTABLEKS                       R5 R0 K20 ["props"]
       44 CALL                             R3 2 -1
       45 CALL                             R1 -1 -1
       46 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Variant"}]
        5 GETTABLEKS                       R6 R0 K3 ["controls"]
        7 GETTABLEKS                       R5 R6 K4 ["isModern"]
        9 JUMPIFNOT                        R5 ; [+2]
       10 LOADK                            R4 K5 ["modern"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 SETTABLEKS                       R4 R3 K1 ["Variant"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"ErrorText", "Variant"}]
        5 LOADK                            R4 K4 ["PC LOAD LETTER"]
        6 SETTABLEKS                       R4 R3 K1 ["ErrorText"]
        8 GETTABLEKS                       R6 R0 K5 ["controls"]
       10 GETTABLEKS                       R5 R6 K6 ["isModern"]
       12 JUMPIFNOT                        R5 ; [+2]
       13 LOADK                            R4 K7 ["modern"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 SETTABLEKS                       R4 R3 K2 ["Variant"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"ExpandIcon", "Variant"}]
        5 LOADK                            R4 K4 ["rbxasset://studio_svg_textures/Lua/ImportPreview/Light/Large/OptionsDots.png"]
        6 SETTABLEKS                       R4 R3 K1 ["ExpandIcon"]
        8 GETTABLEKS                       R6 R0 K5 ["controls"]
       10 GETTABLEKS                       R5 R6 K6 ["isModern"]
       12 JUMPIFNOT                        R5 ; [+2]
       13 LOADK                            R4 K7 ["modern"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 SETTABLEKS                       R4 R3 K2 ["Variant"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"ShowSelection", "Size", "Variant"}]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K1 ["ShowSelection"]
        8 GETIMPORT                        R4 K7 [UDim2.fromOffset]
       10 LOADN                            R5 28
       11 LOADN                            R6 28
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K2 ["Size"]
       15 GETTABLEKS                       R6 R0 K8 ["controls"]
       17 GETTABLEKS                       R5 R6 K9 ["isModern"]
       19 JUMPIFNOT                        R5 ; [+2]
       20 LOADK                            R4 K10 ["modern"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 SETTABLEKS                       R4 R3 K3 ["Variant"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
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
       25 GETTABLEKS                       R6 R0 K10 ["controls"]
       27 GETTABLEKS                       R5 R6 K11 ["isModern"]
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADK                            R4 K12 ["modern"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 SETTABLEKS                       R4 R3 K2 ["Variant"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R6 R0 K2 ["UI"]
       27 GETTABLEKS                       R5 R6 K9 ["Components"]
       29 GETTABLEKS                       R4 R5 K10 ["SelectInput"]
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
       48 DUPTABLE                         R6 K22 [{"isModern"}]
       49 LOADB                            R7 0
       50 SETTABLEKS                       R7 R6 K21 ["isModern"]
       52 SETTABLEKS                       R6 R5 K18 ["controls"]
       54 NEWTABLE                         R6 0 5
       56 DUPTABLE                         R7 K25 [{"name", "story"}]
       57 LOADK                            R8 K26 ["Default"]
       58 SETTABLEKS                       R8 R7 K23 ["name"]
       60 DUPCLOSURE                       R8 K27 [PROTO_3]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R8 R7 K24 ["story"]
       65 DUPTABLE                         R8 K25 [{"name", "story"}]
       66 LOADK                            R9 K28 ["ErrorText"]
       67 SETTABLEKS                       R9 R8 K23 ["name"]
       69 DUPCLOSURE                       R9 K29 [PROTO_4]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R9 R8 K24 ["story"]
       74 DUPTABLE                         R9 K31 [{"name", "summary", "story"}]
       75 LOADK                            R10 K32 ["ExpandIcon"]
       76 SETTABLEKS                       R10 R9 K23 ["name"]
       78 LOADK                            R10 K33 ["A custom image path can be passed in to use for the expand icon, instead of the default caret"]
       79 SETTABLEKS                       R10 R9 K30 ["summary"]
       81 DUPCLOSURE                       R10 K34 [PROTO_5]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R10 R9 K24 ["story"]
       86 DUPTABLE                         R10 K31 [{"name", "summary", "story"}]
       87 LOADK                            R11 K35 ["ShowSelection"]
       88 SETTABLEKS                       R11 R10 K23 ["name"]
       90 LOADK                            R11 K36 ["By default, SelectInput shows the selected element in a text button. This can be toggled off with ShowSelection"]
       91 SETTABLEKS                       R11 R10 K30 ["summary"]
       93 DUPCLOSURE                       R11 K37 [PROTO_6]
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R11 R10 K24 ["story"]
       98 DUPTABLE                         R11 K25 [{"name", "story"}]
       99 LOADK                            R12 K38 ["WithScroll"]
      100 SETTABLEKS                       R12 R11 K23 ["name"]
      102 DUPCLOSURE                       R12 K39 [PROTO_7]
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R4
      105 SETTABLEKS                       R12 R11 K24 ["story"]
      107 SETLIST                          R6 R7 5 [1]
      109 SETTABLEKS                       R6 R5 K19 ["stories"]
      111 RETURN                           R5 1
