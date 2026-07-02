PROTO_0:
        0 DUPTABLE                         R0 K1 [{"currentTab"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["currentTab"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = "Marketplace"}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["changeTab"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K8 [{["Size"], ["Position"], ["CurrentWidth"] = 565.5, ["CurrentTab"], ["Tabs"], ["onTabSelected"]}]
        5 GETIMPORT                        R5 K11 [UDim2.new]
        7 LOADN                            R6 1
        8 LOADN                            R7 0
        9 LOADN                            R8 1
       10 LOADN                            R9 0
       11 CALL                             R5 4 1
       12 SETTABLEKS                       R5 R4 K1 ["Size"]
       14 GETIMPORT                        R5 K11 [UDim2.new]
       16 CALL                             R5 0 1
       17 SETTABLEKS                       R5 R4 K2 ["Position"]
       19 GETTABLEKS                       R5 R0 K12 ["state"]
       21 GETTABLEKS                       R5 R5 K13 ["currentTab"]
       23 SETTABLEKS                       R5 R4 K5 ["CurrentTab"]
       25 NEWTABLE                         R5 0 2
       27 DUPTABLE                         R6 K19 [{["Image"] = "rbxasset://textures/StudioToolbox/Tabs/Shop.png", ["Key"] = "Marketplace", ["Text"] = "Marketplace"}]
       28 SETTABLEN                        R6 R5 1
       29 DUPTABLE                         R6 K21 [{["Image"] = "rbxasset://textures/StudioToolbox/Tabs/Shop.png", ["Key"] = "Inventory", ["Text"] = "Inventory"}]
       30 SETTABLEN                        R6 R5 2
       31 SETTABLEKS                       R5 R4 K6 ["Tabs"]
       33 GETTABLEKS                       R5 R0 K22 ["changeTab"]
       35 SETTABLEKS                       R5 R4 K7 ["onTabSelected"]
       37 CALL                             R2 2 -1
       38 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R4 K8 ["Components"]
       22 GETTABLEKS                       R4 R4 K9 ["TabSet"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R2 K10 ["PureComponent"]
       27 LOADK                            R6 K11 ["TabTestWrapper"]
       28 NAMECALL                         R4 R4 K12 ["extend"]
       30 CALL                             R4 2 1
       31 DUPCLOSURE                       R5 K13 [PROTO_2]
       32 SETTABLEKS                       R5 R4 K14 ["init"]
       34 DUPCLOSURE                       R5 K15 [PROTO_3]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R5 R4 K16 ["render"]
       39 RETURN                           R4 1
