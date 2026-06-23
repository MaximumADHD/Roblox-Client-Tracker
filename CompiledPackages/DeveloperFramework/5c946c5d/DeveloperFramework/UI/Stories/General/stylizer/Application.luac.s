PROTO_0:
        0 LOADK                            R0 K0 ["Sub"]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K1 ["state"]
        4 GETTABLEKS                       R1 R1 K2 ["className"]
        6 JUMPIFNOTEQ                      R1 R0 ; [+2]
        8 LOADK                            R0 K3 ["Important"]
        9 GETUPVAL                         R1 0
       10 DUPTABLE                         R3 K4 [{"className"}]
       11 SETTABLEKS                       R0 R3 K2 ["className"]
       13 NAMECALL                         R1 R1 K5 ["setState"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"className"}]
        1 LOADK                            R2 K2 ["Important"]
        2 SETTABLEKS                       R2 R1 K0 ["className"]
        4 SETTABLEKS                       R1 R0 K3 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K4 ["changeStyle"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K3 [{"Size"}]
        5 GETIMPORT                        R4 K6 [UDim2.fromOffset]
        7 LOADN                            R5 244
        8 LOADN                            R6 244
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K2 ["Size"]
       12 DUPTABLE                         R4 K11 [{"UIListLayout", "Dialog1", "Dialog2", "Button"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 LOADK                            R6 K7 ["UIListLayout"]
       17 DUPTABLE                         R7 K17 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
       18 GETIMPORT                        R8 K20 [Enum.FillDirection.Vertical]
       20 SETTABLEKS                       R8 R7 K12 ["FillDirection"]
       22 GETIMPORT                        R8 K22 [Enum.HorizontalAlignment.Center]
       24 SETTABLEKS                       R8 R7 K13 ["HorizontalAlignment"]
       26 GETIMPORT                        R8 K25 [UDim.new]
       28 LOADN                            R9 0
       29 LOADN                            R10 20
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R7 K14 ["Padding"]
       33 GETIMPORT                        R8 K27 [Enum.SortOrder.LayoutOrder]
       35 SETTABLEKS                       R8 R7 K15 ["SortOrder"]
       37 GETIMPORT                        R8 K28 [Enum.VerticalAlignment.Center]
       39 SETTABLEKS                       R8 R7 K16 ["VerticalAlignment"]
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R4 K7 ["UIListLayout"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K0 ["createElement"]
       47 GETUPVAL                         R6 1
       48 DUPTABLE                         R7 K30 [{"LayoutOrder", "Size", "Style"}]
       49 LOADN                            R8 1
       50 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
       52 GETIMPORT                        R8 K6 [UDim2.fromOffset]
       54 LOADN                            R9 44
       55 LOADN                            R10 150
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K2 ["Size"]
       59 GETTABLEKS                       R8 R0 K31 ["state"]
       61 GETTABLEKS                       R8 R8 K32 ["className"]
       63 SETTABLEKS                       R8 R7 K29 ["Style"]
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R4 K8 ["Dialog1"]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K0 ["createElement"]
       71 GETUPVAL                         R6 1
       72 DUPTABLE                         R7 K33 [{"LayoutOrder", "Size"}]
       73 LOADN                            R8 2
       74 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
       76 GETIMPORT                        R8 K6 [UDim2.fromOffset]
       78 LOADN                            R9 44
       79 LOADN                            R10 150
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K2 ["Size"]
       83 CALL                             R5 2 1
       84 SETTABLEKS                       R5 R4 K9 ["Dialog2"]
       86 GETUPVAL                         R5 0
       87 GETTABLEKS                       R5 R5 K0 ["createElement"]
       89 GETUPVAL                         R6 2
       90 DUPTABLE                         R7 K36 [{"LayoutOrder", "Size", "Text", "OnClick"}]
       91 LOADN                            R8 3
       92 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
       94 GETIMPORT                        R8 K6 [UDim2.fromOffset]
       96 LOADN                            R9 44
       97 LOADN                            R10 60
       98 CALL                             R8 2 1
       99 SETTABLEKS                       R8 R7 K2 ["Size"]
      101 LOADK                            R8 K37 ["Click to change Style prop for Dialog 2"]
      102 SETTABLEKS                       R8 R7 K34 ["Text"]
      104 GETTABLEKS                       R8 R0 K38 ["changeStyle"]
      106 SETTABLEKS                       R8 R7 K35 ["OnClick"]
      108 CALL                             R5 2 1
      109 SETTABLEKS                       R5 R4 K10 ["Button"]
      111 CALL                             R1 3 -1
      112 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["withContext"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K9 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K4 ["Parent"]
       31 GETTABLEKS                       R5 R5 K10 ["Button"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETIMPORT                        R6 K1 [script]
       38 GETTABLEKS                       R6 R6 K4 ["Parent"]
       40 GETTABLEKS                       R6 R6 K11 ["Dialog"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K12 ["Style"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R6 R6 K13 ["Stylizer"]
       50 GETTABLEKS                       R7 R3 K14 ["PureComponent"]
       52 LOADK                            R9 K15 ["Application"]
       53 NAMECALL                         R7 R7 K16 ["extend"]
       55 CALL                             R7 2 1
       56 DUPCLOSURE                       R8 K17 [PROTO_1]
       57 SETTABLEKS                       R8 R7 K18 ["init"]
       59 DUPCLOSURE                       R8 K19 [PROTO_2]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R8 R7 K20 ["render"]
       65 MOVE                             R8 R2
       66 DUPTABLE                         R9 K21 [{"Stylizer"}]
       67 SETTABLEKS                       R6 R9 K13 ["Stylizer"]
       69 CALL                             R8 1 1
       70 MOVE                             R9 R7
       71 CALL                             R8 1 1
       72 MOVE                             R7 R8
       73 RETURN                           R7 1
