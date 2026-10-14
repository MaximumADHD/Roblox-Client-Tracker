PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+9]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K4 [{"currentIndex"}]
        9 SETTABLEKS                       R0 R3 K3 ["currentIndex"]
       11 NAMECALL                         R1 R1 K5 ["setState"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 DUPTABLE                         R3 K7 [{"currentId"}]
       17 GETTABLEKS                       R4 R0 K8 ["Id"]
       19 SETTABLEKS                       R4 R3 K6 ["currentId"]
       21 NAMECALL                         R1 R1 K5 ["setState"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = , ["currentIndex"] = }]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K5 ["selectItem"]
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        7 GETTABLEKS                       R3 R3 K2 ["join"]
        9 DUPTABLE                         R4 K8 [{"SelectedId", "SelectedIndex", "Items", "OnItemActivated", "Size"}]
       10 GETTABLEKS                       R5 R0 K9 ["state"]
       12 GETTABLEKS                       R5 R5 K10 ["currentId"]
       14 SETTABLEKS                       R5 R4 K3 ["SelectedId"]
       16 GETTABLEKS                       R5 R0 K9 ["state"]
       18 GETTABLEKS                       R5 R5 K11 ["currentIndex"]
       20 SETTABLEKS                       R5 R4 K4 ["SelectedIndex"]
       22 NEWTABLE                         R5 0 3
       24 LOADK                            R6 K12 ["Left"]
       25 LOADK                            R7 K13 ["Center"]
       26 LOADK                            R8 K14 ["Right"]
       27 SETLIST                          R5 R6 3 [1]
       29 SETTABLEKS                       R5 R4 K5 ["Items"]
       31 GETTABLEKS                       R5 R0 K15 ["selectItem"]
       33 SETTABLEKS                       R5 R4 K6 ["OnItemActivated"]
       35 GETIMPORT                        R5 K18 [UDim2.fromOffset]
       37 LOADN                            R6 160
       38 LOADN                            R7 32
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K7 ["Size"]
       42 GETTABLEKS                       R5 R0 K19 ["props"]
       44 CALL                             R3 2 -1
       45 CALL                             R1 -1 -1
       46 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"Items"}]
        5 NEWTABLE                         R3 0 2
        7 LOADK                            R4 K3 ["Left"]
        8 LOADK                            R5 K4 ["Right"]
        9 SETLIST                          R3 R4 2 [1]
       11 SETTABLEKS                       R3 R2 K1 ["Items"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"Items", "Size"}]
        5 NEWTABLE                         R3 0 3
        7 DUPTABLE                         R4 K9 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png", ["Id"] = "Inventory", ["Label"] = "Inventory"}]
        8 DUPTABLE                         R5 K12 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Shop.png", ["Id"] = "Shop", ["Label"] = "Shop"}]
        9 DUPTABLE                         R6 K15 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Recent.png", ["Id"] = "Recent", ["Label"] = "Recent"}]
       10 SETLIST                          R3 R4 3 [1]
       12 SETTABLEKS                       R3 R2 K1 ["Items"]
       14 GETIMPORT                        R3 K18 [UDim2.fromOffset]
       16 LOADN                            R4 300
       17 LOADN                            R5 32
       18 CALL                             R3 2 1
       19 SETTABLEKS                       R3 R2 K2 ["Size"]
       21 CALL                             R0 2 -1
       22 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"Items"}]
        5 NEWTABLE                         R3 0 3
        7 DUPTABLE                         R4 K7 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png", ["Id"] = "Inventory"}]
        8 DUPTABLE                         R5 K10 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Shop.png", ["Id"] = "Shop"}]
        9 DUPTABLE                         R6 K13 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Recent.png", ["Id"] = "Recent"}]
       10 SETLIST                          R3 R4 3 [1]
       12 SETTABLEKS                       R3 R2 K1 ["Items"]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"StyleModifier"}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K3 ["Disabled"]
        8 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

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
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K9 ["Components"]
       29 GETTABLEKS                       R4 R4 K10 ["SegmentedButton"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["StyleModifier"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K13 ["PureComponent"]
       41 LOADK                            R7 K14 ["SegmentedButtonExample"]
       42 NAMECALL                         R5 R5 K15 ["extend"]
       44 CALL                             R5 2 1
       45 DUPCLOSURE                       R6 K16 [PROTO_1]
       46 SETTABLEKS                       R6 R5 K17 ["init"]
       48 DUPCLOSURE                       R6 K18 [PROTO_2]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R6 R5 K19 ["render"]
       54 DUPTABLE                         R6 K21 [{"stories"}]
       55 NEWTABLE                         R7 0 5
       57 DUPTABLE                         R8 K25 [{["name"] = "Default", ["story"]}]
       58 DUPCLOSURE                       R9 K26 [PROTO_3]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R9 R8 K24 ["story"]
       63 DUPTABLE                         R9 K28 [{["name"] = "Two Items", ["story"]}]
       64 DUPCLOSURE                       R10 K29 [PROTO_4]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R10 R9 K24 ["story"]
       69 DUPTABLE                         R10 K31 [{["name"] = "Icon Items", ["story"]}]
       70 DUPCLOSURE                       R11 K32 [PROTO_5]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R11 R10 K24 ["story"]
       75 DUPTABLE                         R11 K31 [{["name"] = "Icon Items", ["story"]}]
       76 DUPCLOSURE                       R12 K33 [PROTO_6]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R5
       79 SETTABLEKS                       R12 R11 K24 ["story"]
       81 DUPTABLE                         R12 K35 [{["name"] = "Disabled", ["story"]}]
       82 DUPCLOSURE                       R13 K36 [PROTO_7]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R13 R12 K24 ["story"]
       88 SETLIST                          R7 R8 5 [1]
       90 SETTABLEKS                       R7 R6 K20 ["stories"]
       92 RETURN                           R6 1
