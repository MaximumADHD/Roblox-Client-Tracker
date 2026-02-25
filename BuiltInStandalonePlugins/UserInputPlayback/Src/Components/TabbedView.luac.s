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
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K4 ["Pane"]
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
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R8 R9 K3 ["createElement"]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R9 R10 K4 ["Pane"]
       41 DUPTABLE                         R10 K27 [{"Style", "BackgroundColor", "Size", "AutomaticSize"}]
       42 LOADK                            R11 K28 ["Box"]
       43 SETTABLEKS                       R11 R10 K24 ["Style"]
       45 GETTABLEKS                       R11 R3 K29 ["TabBarBackgroundColor"]
       47 SETTABLEKS                       R11 R10 K25 ["BackgroundColor"]
       49 GETIMPORT                        R11 K31 [UDim2.fromScale]
       51 LOADN                            R12 1
       52 LOADN                            R13 0
       53 CALL                             R11 2 1
       54 SETTABLEKS                       R11 R10 K5 ["Size"]
       56 GETIMPORT                        R11 K33 [Enum.AutomaticSize.Y]
       58 SETTABLEKS                       R11 R10 K26 ["AutomaticSize"]
       60 DUPTABLE                         R11 K35 [{"Tabs"}]
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R12 R13 K3 ["createElement"]
       64 GETUPVAL                         R13 2
       65 DUPTABLE                         R14 K38 [{"Tabs", "SelectedTab", "OnTabSelected"}]
       66 GETTABLEKS                       R15 R1 K34 ["Tabs"]
       68 SETTABLEKS                       R15 R14 K34 ["Tabs"]
       70 GETUPVAL                         R16 3
       71 JUMPIFNOT                        R16 ; [+5]
       72 GETTABLEKS                       R16 R2 K39 ["selectedTab"]
       74 GETTABLEKS                       R15 R16 K40 ["Key"]
       76 JUMP                             ; [+2]
       77 GETTABLEKS                       R15 R2 K39 ["selectedTab"]
       79 SETTABLEKS                       R15 R14 K36 ["SelectedTab"]
       81 GETTABLEKS                       R15 R0 K41 ["onTabSelected"]
       83 SETTABLEKS                       R15 R14 K37 ["OnTabSelected"]
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K34 ["Tabs"]
       88 CALL                             R8 3 1
       89 SETTABLEKS                       R8 R7 K21 ["TabBar"]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R8 R9 K3 ["createElement"]
       94 GETUPVAL                         R10 1
       95 GETTABLEKS                       R9 R10 K4 ["Pane"]
       97 DUPTABLE                         R10 K43 [{"Size", "BackgroundColor3"}]
       98 GETIMPORT                        R11 K12 [UDim2.new]
      100 LOADN                            R12 1
      101 LOADN                            R13 0
      102 LOADN                            R14 1
      103 LOADN                            R15 0
      104 CALL                             R11 4 1
      105 SETTABLEKS                       R11 R10 K5 ["Size"]
      107 GETTABLEKS                       R11 R3 K44 ["ForegroundTabColor"]
      109 SETTABLEKS                       R11 R10 K42 ["BackgroundColor3"]
      111 DUPTABLE                         R11 K46 [{"TabView"}]
      112 GETUPVAL                         R13 0
      113 GETTABLEKS                       R12 R13 K3 ["createElement"]
      115 GETTABLEKS                       R14 R2 K39 ["selectedTab"]
      117 GETTABLEKS                       R13 R14 K47 ["ContentComponent"]
      119 CALL                             R12 1 1
      120 SETTABLEKS                       R12 R11 K45 ["TabView"]
      122 CALL                             R8 3 1
      123 SETTABLEKS                       R8 R7 K22 ["TabContent"]
      125 CALL                             R4 3 -1
      126 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETIMPORT                        R4 K10 [game]
       27 LOADK                            R6 K11 ["UserInputPlaybackPluginFixTabInitiallySelected"]
       28 NAMECALL                         R4 R4 K12 ["GetFastFlag"]
       30 CALL                             R4 2 1
       31 GETTABLEKS                       R5 R2 K13 ["UI"]
       33 GETTABLEKS                       R6 R5 K14 ["Tabs"]
       35 GETTABLEKS                       R7 R1 K15 ["PureComponent"]
       37 LOADK                            R9 K16 ["TabbedView"]
       38 NAMECALL                         R7 R7 K17 ["extend"]
       40 CALL                             R7 2 1
       41 DUPCLOSURE                       R8 K18 [PROTO_1]
       42 SETTABLEKS                       R8 R7 K19 ["init"]
       44 DUPCLOSURE                       R8 K20 [PROTO_2]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R8 R7 K21 ["render"]
       51 GETTABLEKS                       R8 R3 K22 ["withContext"]
       53 DUPTABLE                         R9 K24 [{"Stylizer"}]
       54 GETTABLEKS                       R10 R3 K23 ["Stylizer"]
       56 SETTABLEKS                       R10 R9 K23 ["Stylizer"]
       58 CALL                             R8 1 1
       59 MOVE                             R9 R7
       60 CALL                             R8 1 1
       61 MOVE                             R7 R8
       62 RETURN                           R7 1
