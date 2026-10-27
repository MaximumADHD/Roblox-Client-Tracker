PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Selected tab"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K4 [{"selectedTab"}]
        7 SETTABLEKS                       R0 R3 K3 ["selectedTab"]
        9 NAMECALL                         R1 R1 K5 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"selectedTab"}]
        1 GETTABLEKS                       R3 R0 K2 ["props"]
        3 GETTABLEKS                       R3 R3 K3 ["Tabs"]
        5 GETTABLEN                        R2 R3 1
        6 SETTABLEKS                       R2 R1 K0 ["selectedTab"]
        8 SETTABLEKS                       R1 R0 K4 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["onTabSelected"]
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K6 [{"Tabs", "SelectedTab", "OnTabSelected"}]
        9 GETTABLEKS                       R6 R1 K3 ["Tabs"]
       11 SETTABLEKS                       R6 R5 K3 ["Tabs"]
       13 GETTABLEKS                       R6 R2 K7 ["selectedTab"]
       15 SETTABLEKS                       R6 R5 K4 ["SelectedTab"]
       17 GETTABLEKS                       R6 R0 K8 ["onTabSelected"]
       19 SETTABLEKS                       R6 R5 K5 ["OnTabSelected"]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

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
       22 GETTABLEKS                       R3 R3 K9 ["Tabs"]
       24 GETTABLEKS                       R3 R3 K10 ["types"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K6 [require]
       29 GETTABLEKS                       R4 R0 K2 ["UI"]
       31 GETTABLEKS                       R4 R4 K8 ["Components"]
       33 GETTABLEKS                       R4 R4 K9 ["Tabs"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       38 LOADK                            R6 K9 ["Tabs"]
       39 NAMECALL                         R4 R4 K12 ["extend"]
       41 CALL                             R4 2 1
       42 DUPCLOSURE                       R5 K13 [PROTO_1]
       43 SETTABLEKS                       R5 R4 K14 ["init"]
       45 DUPCLOSURE                       R5 K15 [PROTO_2]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R5 R4 K16 ["render"]
       50 DUPTABLE                         R5 K18 [{"stories"}]
       51 NEWTABLE                         R6 0 4
       53 DUPTABLE                         R7 K22 [{["name"] = "Labels", ["story"]}]
       54 GETTABLEKS                       R8 R1 K23 ["createElement"]
       56 MOVE                             R9 R4
       57 DUPTABLE                         R10 K24 [{"Tabs"}]
       58 NEWTABLE                         R11 0 3
       60 DUPTABLE                         R12 K27 [{["Label"] = "Left"}]
       61 DUPTABLE                         R13 K29 [{["Label"] = "Middle"}]
       62 DUPTABLE                         R14 K31 [{["Label"] = "Right"}]
       63 SETLIST                          R11 R12 3 [1]
       65 SETTABLEKS                       R11 R10 K9 ["Tabs"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K21 ["story"]
       70 DUPTABLE                         R8 K33 [{["name"] = "Icons & tooltips", ["story"]}]
       71 GETTABLEKS                       R9 R1 K23 ["createElement"]
       73 MOVE                             R10 R4
       74 DUPTABLE                         R11 K24 [{"Tabs"}]
       75 NEWTABLE                         R12 0 3
       77 DUPTABLE                         R13 K38 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png", ["Tooltip"] = "Inventory"}]
       78 DUPTABLE                         R14 K41 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Shop.png", ["Tooltip"] = "Shop"}]
       79 DUPTABLE                         R15 K44 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Recent.png", ["Tooltip"] = "Recent"}]
       80 SETLIST                          R12 R13 3 [1]
       82 SETTABLEKS                       R12 R11 K9 ["Tabs"]
       84 CALL                             R9 2 1
       85 SETTABLEKS                       R9 R8 K21 ["story"]
       87 DUPTABLE                         R9 K46 [{["name"] = "Labels & icons", ["story"]}]
       88 GETTABLEKS                       R10 R1 K23 ["createElement"]
       90 MOVE                             R11 R4
       91 DUPTABLE                         R12 K24 [{"Tabs"}]
       92 NEWTABLE                         R13 0 3
       94 DUPTABLE                         R14 K47 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png", ["Label"] = "Inventory"}]
       95 DUPTABLE                         R15 K48 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Shop.png", ["Label"] = "Shop"}]
       96 DUPTABLE                         R16 K49 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Recent.png", ["Label"] = "Recent"}]
       97 SETLIST                          R13 R14 3 [1]
       99 SETTABLEKS                       R13 R12 K9 ["Tabs"]
      101 CALL                             R10 2 1
      102 SETTABLEKS                       R10 R9 K21 ["story"]
      104 DUPTABLE                         R10 K51 [{["name"] = "Disabled tab", ["story"]}]
      105 GETTABLEKS                       R11 R1 K23 ["createElement"]
      107 MOVE                             R12 R4
      108 DUPTABLE                         R13 K24 [{"Tabs"}]
      109 NEWTABLE                         R14 0 3
      111 DUPTABLE                         R15 K47 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png", ["Label"] = "Inventory"}]
      112 DUPTABLE                         R16 K54 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Shop.png", ["Label"] = "Shop", ["Disabled"] = True}]
      113 DUPTABLE                         R17 K49 [{["Icon"] = "rbxasset://textures/StudioToolbox/Tabs/Recent.png", ["Label"] = "Recent"}]
      114 SETLIST                          R14 R15 3 [1]
      116 SETTABLEKS                       R14 R13 K9 ["Tabs"]
      118 CALL                             R11 2 1
      119 SETTABLEKS                       R11 R10 K21 ["story"]
      121 SETLIST                          R6 R7 4 [1]
      123 SETTABLEKS                       R6 R5 K17 ["stories"]
      125 RETURN                           R5 1
