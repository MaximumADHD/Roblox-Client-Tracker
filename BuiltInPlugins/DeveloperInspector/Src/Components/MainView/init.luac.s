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
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["createElement"]
        5 GETUPVAL                         R4 1
        6 DUPTABLE                         R5 K5 [{"Style", "Layout", "Padding"}]
        7 LOADK                            R6 K6 ["SubtleBox"]
        8 SETTABLEKS                       R6 R5 K2 ["Style"]
       10 GETIMPORT                        R6 K10 [Enum.FillDirection.Vertical]
       12 SETTABLEKS                       R6 R5 K3 ["Layout"]
       14 GETTABLEKS                       R6 R2 K4 ["Padding"]
       16 SETTABLEKS                       R6 R5 K4 ["Padding"]
       18 DUPTABLE                         R6 K13 [{"Label", "TargetTree"}]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K1 ["createElement"]
       22 GETUPVAL                         R8 2
       23 DUPTABLE                         R9 K18 [{"LayoutOrder", "Text", "Size", "TextXAlignment"}]
       24 LOADN                            R10 1
       25 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
       27 LOADK                            R10 K19 ["Roact Trees"]
       28 SETTABLEKS                       R10 R9 K15 ["Text"]
       30 GETIMPORT                        R10 K22 [UDim2.new]
       32 LOADN                            R11 1
       33 LOADN                            R12 0
       34 LOADN                            R13 0
       35 GETTABLEKS                       R14 R2 K23 ["HeaderHeight"]
       37 CALL                             R10 4 1
       38 SETTABLEKS                       R10 R9 K16 ["Size"]
       40 GETIMPORT                        R10 K25 [Enum.TextXAlignment.Left]
       42 SETTABLEKS                       R10 R9 K17 ["TextXAlignment"]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K11 ["Label"]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R7 R8 K1 ["createElement"]
       50 GETUPVAL                         R8 1
       51 DUPTABLE                         R9 K26 [{"LayoutOrder", "Size"}]
       52 LOADN                            R10 2
       53 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
       55 GETIMPORT                        R10 K22 [UDim2.new]
       57 LOADN                            R11 1
       58 LOADN                            R12 0
       59 LOADN                            R13 1
       60 GETTABLEKS                       R15 R2 K23 ["HeaderHeight"]
       62 MINUS                            R14 R15
       63 CALL                             R10 4 1
       64 SETTABLEKS                       R10 R9 K16 ["Size"]
       66 DUPTABLE                         R10 K28 [{"Child"}]
       67 GETUPVAL                         R12 0
       68 GETTABLEKS                       R11 R12 K1 ["createElement"]
       70 GETUPVAL                         R12 3
       71 DUPTABLE                         R13 K30 [{"selectTarget"}]
       72 GETTABLEKS                       R14 R0 K29 ["selectTarget"]
       74 SETTABLEKS                       R14 R13 K29 ["selectTarget"]
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K27 ["Child"]
       79 CALL                             R7 3 1
       80 SETTABLEKS                       R7 R6 K12 ["TargetTree"]
       82 CALL                             R3 3 -1
       83 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["Stylizer"]
        2 LOADNIL                          R3
        3 GETTABLEKS                       R5 R1 K1 ["SelectedTab"]
        5 GETTABLEKS                       R4 R5 K2 ["Id"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K3 ["ELEMENTS"]
       10 JUMPIFNOTEQ                      R4 R5 ; [+10]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["createElement"]
       15 GETUPVAL                         R5 2
       16 NEWTABLE                         R6 0 0
       18 CALL                             R4 2 1
       19 MOVE                             R3 R4
       20 JUMP                             ; [+29]
       21 GETTABLEKS                       R5 R1 K1 ["SelectedTab"]
       23 GETTABLEKS                       R4 R5 K2 ["Id"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K5 ["PROFILE"]
       28 JUMPIFNOTEQ                      R4 R5 ; [+10]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R4 R5 K4 ["createElement"]
       33 GETUPVAL                         R5 3
       34 NEWTABLE                         R6 0 0
       36 CALL                             R4 2 1
       37 MOVE                             R3 R4
       38 JUMP                             ; [+11]
       39 GETIMPORT                        R4 K7 [error]
       41 DUPTABLE                         R5 K10 [{"name", "tab"}]
       42 LOADK                            R6 K11 ["Missing tab"]
       43 SETTABLEKS                       R6 R5 K8 ["name"]
       45 GETTABLEKS                       R6 R1 K1 ["SelectedTab"]
       47 SETTABLEKS                       R6 R5 K9 ["tab"]
       49 CALL                             R4 1 0
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R4 R5 K4 ["createElement"]
       53 GETUPVAL                         R5 4
       54 DUPTABLE                         R6 K14 [{"Layout", "Style"}]
       55 GETIMPORT                        R7 K18 [Enum.FillDirection.Vertical]
       57 SETTABLEKS                       R7 R6 K12 ["Layout"]
       59 LOADK                            R7 K19 ["Box"]
       60 SETTABLEKS                       R7 R6 K13 ["Style"]
       62 DUPTABLE                         R7 K22 [{"TopBar", "Content"}]
       63 GETUPVAL                         R9 1
       64 GETTABLEKS                       R8 R9 K4 ["createElement"]
       66 GETUPVAL                         R9 5
       67 DUPTABLE                         R10 K24 [{"Active"}]
       68 GETTABLEKS                       R11 R1 K23 ["Active"]
       70 SETTABLEKS                       R11 R10 K23 ["Active"]
       72 CALL                             R8 2 1
       73 SETTABLEKS                       R8 R7 K20 ["TopBar"]
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R8 R9 K4 ["createElement"]
       78 GETUPVAL                         R9 4
       79 DUPTABLE                         R10 K27 [{"LayoutOrder", "Size"}]
       80 LOADN                            R11 2
       81 SETTABLEKS                       R11 R10 K25 ["LayoutOrder"]
       83 GETIMPORT                        R11 K30 [UDim2.new]
       85 LOADN                            R12 1
       86 LOADN                            R13 0
       87 LOADN                            R14 1
       88 GETTABLEKS                       R16 R2 K31 ["HeaderHeight"]
       90 MINUS                            R15 R16
       91 CALL                             R11 4 1
       92 SETTABLEKS                       R11 R10 K26 ["Size"]
       94 DUPTABLE                         R11 K33 [{"Child"}]
       95 SETTABLEKS                       R3 R11 K32 ["Child"]
       97 CALL                             R8 3 1
       98 SETTABLEKS                       R8 R7 K21 ["Content"]
      100 CALL                             R4 3 -1
      101 RETURN                           R4 -1

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"SelectedTab", "SelectedTarget"}]
        1 GETTABLEKS                       R4 R0 K3 ["Targets"]
        3 GETTABLEKS                       R3 R4 K4 ["selectedTab"]
        5 SETTABLEKS                       R3 R2 K0 ["SelectedTab"]
        7 GETTABLEKS                       R4 R0 K3 ["Targets"]
        9 GETTABLEKS                       R3 R4 K5 ["selectedTarget"]
       11 SETTABLEKS                       R3 R2 K1 ["SelectedTarget"]
       13 RETURN                           R2 1

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
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R6 R7 K2 ["Parent"]
       36 GETTABLEKS                       R5 R6 K9 ["TargetTree"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R5 R6 K11 ["Util"]
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R5 K12 ["TabIds"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R10 R0 K10 ["Src"]
       52 GETTABLEKS                       R9 R10 K13 ["Components"]
       54 GETTABLEKS                       R8 R9 K14 ["RoactInspectorView"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K4 [require]
       59 GETTABLEKS                       R11 R0 K10 ["Src"]
       61 GETTABLEKS                       R10 R11 K13 ["Components"]
       63 GETTABLEKS                       R9 R10 K15 ["RoactProfilerView"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K4 [require]
       68 GETTABLEKS                       R12 R0 K10 ["Src"]
       70 GETTABLEKS                       R11 R12 K13 ["Components"]
       72 GETTABLEKS                       R10 R11 K16 ["TopBar"]
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
