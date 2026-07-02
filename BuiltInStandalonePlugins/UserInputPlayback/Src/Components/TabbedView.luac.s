PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"selectedTab"}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedTab"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Tabs"]
        4 FASTCALL1                        ASSERT R3 ; [+2]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 1 0
        8 GETTABLEKS                       R5 R1 K1 ["Tabs"]
       10 LENGTH                           R4 R5
       11 LOADN                            R5 1
       12 JUMPIFLE                         R5 R4 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 FASTCALL1                        ASSERT R3 ; [+2]
       17 GETIMPORT                        R2 K3 [assert]
       19 CALL                             R2 1 0
       20 DUPTABLE                         R2 K5 [{"selectedTab"}]
       21 GETTABLEKS                       R3 R1 K6 ["InitialTab"]
       23 JUMPIF                           R3 ; [+3]
       24 GETTABLEKS                       R4 R1 K1 ["Tabs"]
       26 GETTABLEN                        R3 R4 1
       27 SETTABLEKS                       R3 R2 K4 ["selectedTab"]
       29 SETTABLEKS                       R2 R0 K7 ["state"]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R2 R0 K8 ["onTabSelected"]
       35 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K4 ["Pane"]
       12 DUPTABLE                         R6 K9 [{"Size", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
       13 GETIMPORT                        R7 K12 [UDim2.new]
       15 LOADN                            R8 1
       16 LOADN                            R9 0
       17 LOADN                            R10 1
       18 LOADN                            R11 0
       19 CALL                             R7 4 1
       20 SETTABLEKS                       R7 R6 K5 ["Size"]
       22 GETIMPORT                        R7 K16 [Enum.FillDirection.Vertical]
       24 SETTABLEKS                       R7 R6 K6 ["Layout"]
       26 GETIMPORT                        R7 K18 [Enum.HorizontalAlignment.Left]
       28 SETTABLEKS                       R7 R6 K7 ["HorizontalAlignment"]
       30 GETIMPORT                        R7 K20 [Enum.VerticalAlignment.Top]
       32 SETTABLEKS                       R7 R6 K8 ["VerticalAlignment"]
       34 DUPTABLE                         R7 K23 [{"TabBar", "TabContent"}]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K3 ["createElement"]
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K4 ["Pane"]
       41 DUPTABLE                         R10 K28 [{["Style"] = "Box", ["BackgroundColor"], ["Size"], ["AutomaticSize"]}]
       42 GETTABLEKS                       R11 R3 K29 ["TabBarBackgroundColor"]
       44 SETTABLEKS                       R11 R10 K26 ["BackgroundColor"]
       46 GETIMPORT                        R11 K31 [UDim2.fromScale]
       48 LOADN                            R12 1
       49 LOADN                            R13 0
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K5 ["Size"]
       53 GETIMPORT                        R11 K33 [Enum.AutomaticSize.Y]
       55 SETTABLEKS                       R11 R10 K27 ["AutomaticSize"]
       57 DUPTABLE                         R11 K35 [{"Tabs"}]
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R12 R12 K3 ["createElement"]
       61 GETUPVAL                         R13 2
       62 DUPTABLE                         R14 K38 [{"Tabs", "SelectedTab", "OnTabSelected"}]
       63 GETTABLEKS                       R15 R1 K34 ["Tabs"]
       65 SETTABLEKS                       R15 R14 K34 ["Tabs"]
       67 GETTABLEKS                       R15 R2 K39 ["selectedTab"]
       69 GETTABLEKS                       R15 R15 K40 ["Key"]
       71 SETTABLEKS                       R15 R14 K36 ["SelectedTab"]
       73 GETTABLEKS                       R15 R0 K41 ["onTabSelected"]
       75 SETTABLEKS                       R15 R14 K37 ["OnTabSelected"]
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K34 ["Tabs"]
       80 CALL                             R8 3 1
       81 SETTABLEKS                       R8 R7 K21 ["TabBar"]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K3 ["createElement"]
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K4 ["Pane"]
       89 DUPTABLE                         R10 K43 [{"Size", "BackgroundColor3"}]
       90 GETIMPORT                        R11 K12 [UDim2.new]
       92 LOADN                            R12 1
       93 LOADN                            R13 0
       94 LOADN                            R14 1
       95 LOADN                            R15 0
       96 CALL                             R11 4 1
       97 SETTABLEKS                       R11 R10 K5 ["Size"]
       99 GETTABLEKS                       R11 R3 K44 ["ForegroundTabColor"]
      101 SETTABLEKS                       R11 R10 K42 ["BackgroundColor3"]
      103 DUPTABLE                         R11 K46 [{"TabView"}]
      104 GETUPVAL                         R12 0
      105 GETTABLEKS                       R12 R12 K3 ["createElement"]
      107 GETTABLEKS                       R13 R2 K39 ["selectedTab"]
      109 GETTABLEKS                       R13 R13 K47 ["ContentComponent"]
      111 CALL                             R12 1 1
      112 SETTABLEKS                       R12 R11 K45 ["TabView"]
      114 CALL                             R8 3 1
      115 SETTABLEKS                       R8 R7 K22 ["TabContent"]
      117 CALL                             R4 3 -1
      118 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["Tabs"]
       29 GETTABLEKS                       R6 R1 K11 ["PureComponent"]
       31 LOADK                            R8 K12 ["TabbedView"]
       32 NAMECALL                         R6 R6 K13 ["extend"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K14 [PROTO_1]
       36 SETTABLEKS                       R7 R6 K15 ["init"]
       38 DUPCLOSURE                       R7 K16 [PROTO_2]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 SETTABLEKS                       R7 R6 K17 ["render"]
       44 GETTABLEKS                       R7 R3 K18 ["withContext"]
       46 DUPTABLE                         R8 K20 [{"Stylizer"}]
       47 GETTABLEKS                       R9 R3 K19 ["Stylizer"]
       49 SETTABLEKS                       R9 R8 K19 ["Stylizer"]
       51 CALL                             R7 1 1
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 MOVE                             R6 R7
       55 RETURN                           R6 1
