PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["SelectedTarget"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K2 ["renderTarget"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+4]
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R0 K3 ["renderSelectTarget"]
       13 CALL                             R2 2 1
       14 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["Stylizer"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["createElement"]
        5 GETUPVAL                         R4 1
        6 DUPTABLE                         R5 K6 [{["Style"] = "SubtleBox", ["Layout"], ["Padding"]}]
        7 GETIMPORT                        R6 K10 [Enum.FillDirection.Vertical]
        9 SETTABLEKS                       R6 R5 K4 ["Layout"]
       11 GETTABLEKS                       R6 R2 K5 ["Padding"]
       13 SETTABLEKS                       R6 R5 K5 ["Padding"]
       15 DUPTABLE                         R6 K13 [{"Label", "TargetTree"}]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K1 ["createElement"]
       19 GETUPVAL                         R8 2
       20 DUPTABLE                         R9 K20 [{["LayoutOrder"] = 1, ["Text"] = "Roact Trees", ["Size"], ["TextXAlignment"]}]
       21 GETIMPORT                        R10 K23 [UDim2.new]
       23 LOADN                            R11 1
       24 LOADN                            R12 0
       25 LOADN                            R13 0
       26 GETTABLEKS                       R14 R2 K24 ["HeaderHeight"]
       28 CALL                             R10 4 1
       29 SETTABLEKS                       R10 R9 K18 ["Size"]
       31 GETIMPORT                        R10 K26 [Enum.TextXAlignment.Left]
       33 SETTABLEKS                       R10 R9 K19 ["TextXAlignment"]
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K11 ["Label"]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K1 ["createElement"]
       41 GETUPVAL                         R8 1
       42 DUPTABLE                         R9 K28 [{["LayoutOrder"] = 2, ["Size"]}]
       43 GETIMPORT                        R10 K23 [UDim2.new]
       45 LOADN                            R11 1
       46 LOADN                            R12 0
       47 LOADN                            R13 1
       48 GETTABLEKS                       R15 R2 K24 ["HeaderHeight"]
       50 MINUS                            R14 R15
       51 CALL                             R10 4 1
       52 SETTABLEKS                       R10 R9 K18 ["Size"]
       54 DUPTABLE                         R10 K30 [{"Child"}]
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R11 R11 K1 ["createElement"]
       58 GETUPVAL                         R12 3
       59 DUPTABLE                         R13 K32 [{"selectTarget"}]
       60 GETTABLEKS                       R14 R0 K31 ["selectTarget"]
       62 SETTABLEKS                       R14 R13 K31 ["selectTarget"]
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K29 ["Child"]
       67 CALL                             R7 3 1
       68 SETTABLEKS                       R7 R6 K12 ["TargetTree"]
       70 CALL                             R3 3 -1
       71 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["Stylizer"]
        2 LOADNIL                          R3
        3 GETTABLEKS                       R4 R1 K1 ["SelectedTab"]
        5 GETTABLEKS                       R4 R4 K2 ["Id"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K3 ["ELEMENTS"]
       10 JUMPIFNOTEQ                      R4 R5 ; [+10]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["createElement"]
       15 GETUPVAL                         R5 2
       16 NEWTABLE                         R6 0 0
       18 CALL                             R4 2 1
       19 MOVE                             R3 R4
       20 JUMP                             ; [+26]
       21 GETTABLEKS                       R4 R1 K1 ["SelectedTab"]
       23 GETTABLEKS                       R4 R4 K2 ["Id"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K5 ["PROFILE"]
       28 JUMPIFNOTEQ                      R4 R5 ; [+10]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K4 ["createElement"]
       33 GETUPVAL                         R5 3
       34 NEWTABLE                         R6 0 0
       36 CALL                             R4 2 1
       37 MOVE                             R3 R4
       38 JUMP                             ; [+8]
       39 GETIMPORT                        R4 K7 [error]
       41 DUPTABLE                         R5 K11 [{["name"] = "Missing tab", ["tab"]}]
       42 GETTABLEKS                       R6 R1 K1 ["SelectedTab"]
       44 SETTABLEKS                       R6 R5 K10 ["tab"]
       46 CALL                             R4 1 0
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R4 R4 K4 ["createElement"]
       50 GETUPVAL                         R5 4
       51 DUPTABLE                         R6 K15 [{["Layout"], ["Style"] = "Box"}]
       52 GETIMPORT                        R7 K19 [Enum.FillDirection.Vertical]
       54 SETTABLEKS                       R7 R6 K12 ["Layout"]
       56 DUPTABLE                         R7 K22 [{"TopBar", "Content"}]
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K4 ["createElement"]
       60 GETUPVAL                         R9 5
       61 DUPTABLE                         R10 K24 [{"Active"}]
       62 GETTABLEKS                       R11 R1 K23 ["Active"]
       64 SETTABLEKS                       R11 R10 K23 ["Active"]
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K20 ["TopBar"]
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K4 ["createElement"]
       72 GETUPVAL                         R9 4
       73 DUPTABLE                         R10 K28 [{["LayoutOrder"] = 2, ["Size"]}]
       74 GETIMPORT                        R11 K31 [UDim2.new]
       76 LOADN                            R12 1
       77 LOADN                            R13 0
       78 LOADN                            R14 1
       79 GETTABLEKS                       R16 R2 K32 ["HeaderHeight"]
       81 MINUS                            R15 R16
       82 CALL                             R11 4 1
       83 SETTABLEKS                       R11 R10 K27 ["Size"]
       85 DUPTABLE                         R11 K34 [{"Child"}]
       86 SETTABLEKS                       R3 R11 K33 ["Child"]
       88 CALL                             R8 3 1
       89 SETTABLEKS                       R8 R7 K21 ["Content"]
       91 CALL                             R4 3 -1
       92 RETURN                           R4 -1

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"SelectedTab", "SelectedTarget"}]
        1 GETTABLEKS                       R3 R0 K3 ["Targets"]
        3 GETTABLEKS                       R3 R3 K4 ["selectedTab"]
        5 SETTABLEKS                       R3 R2 K0 ["SelectedTab"]
        7 GETTABLEKS                       R3 R0 K3 ["Targets"]
        9 GETTABLEKS                       R3 R3 K5 ["selectedTarget"]
       11 SETTABLEKS                       R3 R2 K1 ["SelectedTarget"]
       13 RETURN                           R2 1

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
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K2 ["Parent"]
       36 GETTABLEKS                       R5 R5 K9 ["TargetTree"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R0 K10 ["Src"]
       41 GETTABLEKS                       R5 R5 K11 ["Util"]
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R5 K12 ["TabIds"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Src"]
       52 GETTABLEKS                       R8 R8 K13 ["Components"]
       54 GETTABLEKS                       R8 R8 K14 ["RoactInspectorView"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K4 [require]
       59 GETTABLEKS                       R9 R0 K10 ["Src"]
       61 GETTABLEKS                       R9 R9 K13 ["Components"]
       63 GETTABLEKS                       R9 R9 K15 ["RoactProfilerView"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K4 [require]
       68 GETTABLEKS                       R10 R0 K10 ["Src"]
       70 GETTABLEKS                       R10 R10 K13 ["Components"]
       72 GETTABLEKS                       R10 R10 K16 ["TopBar"]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R10 R3 K17 ["ContextServices"]
       77 GETTABLEKS                       R11 R10 K18 ["withContext"]
       79 GETTABLEKS                       R12 R3 K19 ["UI"]
       81 GETTABLEKS                       R13 R12 K20 ["Pane"]
       83 GETTABLEKS                       R14 R12 K21 ["TextLabel"]
       85 GETTABLEKS                       R15 R1 K22 ["PureComponent"]
       87 LOADK                            R17 K23 ["MainView"]
       88 NAMECALL                         R15 R15 K24 ["extend"]
       90 CALL                             R15 2 1
       91 DUPCLOSURE                       R16 K25 [PROTO_0]
       92 SETTABLEKS                       R16 R15 K26 ["render"]
       94 DUPCLOSURE                       R16 K27 [PROTO_1]
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R16 R15 K28 ["renderSelectTarget"]
      101 DUPCLOSURE                       R16 K29 [PROTO_2]
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R9
      108 SETTABLEKS                       R16 R15 K30 ["renderTarget"]
      110 MOVE                             R16 R11
      111 DUPTABLE                         R17 K32 [{"Stylizer"}]
      112 GETTABLEKS                       R18 R10 K31 ["Stylizer"]
      114 SETTABLEKS                       R18 R17 K31 ["Stylizer"]
      116 CALL                             R16 1 1
      117 MOVE                             R17 R15
      118 CALL                             R16 1 1
      119 MOVE                             R15 R16
      120 GETTABLEKS                       R16 R2 K33 ["connect"]
      122 DUPCLOSURE                       R17 K34 [PROTO_3]
      123 CALL                             R16 1 1
      124 MOVE                             R17 R15
      125 CALL                             R16 1 -1
      126 RETURN                           R16 -1
