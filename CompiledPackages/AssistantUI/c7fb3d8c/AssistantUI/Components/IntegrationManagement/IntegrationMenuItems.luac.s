PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K8 [{"key", "LayoutOrder", "integration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
        3 LOADK                            R5 K9 ["%*-%*"]
        4 GETTABLEKS                       R7 R0 K10 ["label"]
        6 GETTABLEKS                       R8 R0 K11 ["url"]
        8 NAMECALL                         R5 R5 K12 ["format"]
       10 CALL                             R5 3 1
       11 MOVE                             R4 R5
       12 SETTABLEKS                       R4 R3 K0 ["key"]
       14 GETUPVAL                         R4 2
       15 CALL                             R4 0 1
       16 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       18 SETTABLEKS                       R0 R3 K2 ["integration"]
       20 GETUPVAL                         R4 3
       21 SETTABLEKS                       R4 R3 K3 ["onRemove"]
       23 GETUPVAL                         R4 4
       24 SETTABLEKS                       R4 R3 K4 ["onEdit"]
       26 GETUPVAL                         R4 5
       27 SETTABLEKS                       R4 R3 K5 ["onStatusChange"]
       29 GETUPVAL                         R4 6
       30 SETTABLEKS                       R4 R3 K6 ["onAuthorizationChange"]
       32 GETUPVAL                         R4 7
       33 SETTABLEKS                       R4 R3 K7 ["setEnableStatus"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["integrations"]
        4 GETTABLEKS                       R3 R0 K1 ["onRemove"]
        6 GETTABLEKS                       R4 R0 K2 ["onEdit"]
        8 GETTABLEKS                       R5 R0 K3 ["onStatusChange"]
       10 GETTABLEKS                       R6 R0 K4 ["onAuthorizationChange"]
       12 GETTABLEKS                       R7 R0 K5 ["setEnableStatus"]
       14 GETUPVAL                         R8 1
       15 GETUPVAL                         R9 2
       16 DUPTABLE                         R10 K8 [{"tag", "LayoutOrder"}]
       17 LOADK                            R11 K9 ["col size-full-0 auto-y gap-medium"]
       18 SETTABLEKS                       R11 R10 K6 ["tag"]
       20 MOVE                             R11 R1
       21 CALL                             R11 0 1
       22 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       24 DUPTABLE                         R11 K12 [{"Header", "IntegrationsList"}]
       25 GETUPVAL                         R12 1
       26 GETUPVAL                         R13 3
       27 DUPTABLE                         R14 K14 [{"LayoutOrder", "onAddIntegration"}]
       28 MOVE                             R15 R1
       29 CALL                             R15 0 1
       30 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       32 GETTABLEKS                       R15 R0 K13 ["onAddIntegration"]
       34 SETTABLEKS                       R15 R14 K13 ["onAddIntegration"]
       36 CALL                             R12 2 1
       37 SETTABLEKS                       R12 R11 K10 ["Header"]
       39 GETUPVAL                         R12 1
       40 GETUPVAL                         R13 4
       41 DUPTABLE                         R14 K17 [{"tag", "LayoutOrder", "scroll", "layout"}]
       42 LOADK                            R15 K18 ["col size-full-0 auto-y shrink"]
       43 SETTABLEKS                       R15 R14 K6 ["tag"]
       45 MOVE                             R15 R1
       46 CALL                             R15 0 1
       47 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       49 GETUPVAL                         R15 5
       50 SETTABLEKS                       R15 R14 K15 ["scroll"]
       52 GETUPVAL                         R15 6
       53 SETTABLEKS                       R15 R14 K16 ["layout"]
       55 DUPTABLE                         R15 K20 [{"ContentWrapper"}]
       56 GETUPVAL                         R16 1
       57 GETUPVAL                         R17 2
       58 DUPTABLE                         R18 K21 [{"tag"}]
       59 LOADK                            R19 K22 ["col size-full-0 auto-y gap-small padding-x-large"]
       60 SETTABLEKS                       R19 R18 K6 ["tag"]
       62 GETUPVAL                         R20 7
       63 GETTABLEKS                       R19 R20 K23 ["map"]
       65 MOVE                             R20 R2
       66 NEWCLOSURE                       R21 P0
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 CALL                             R19 2 -1
       76 CALL                             R16 -1 1
       77 SETTABLEKS                       R16 R15 K19 ["ContentWrapper"]
       79 CALL                             R12 3 1
       80 SETTABLEKS                       R12 R11 K11 ["IntegrationsList"]
       82 CALL                             R8 3 -1
       83 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["IntegrationItem"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K6 ["Parent"]
       22 GETTABLEKS                       R3 R4 K8 ["IntegrationMenuHeader"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R5 R6 K6 ["Parent"]
       31 GETTABLEKS                       R4 R5 K9 ["IntegrationTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K6 ["Parent"]
       38 GETTABLEKS                       R5 R6 K10 ["Dash"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K6 ["Parent"]
       45 GETTABLEKS                       R6 R7 K11 ["Foundation"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K6 ["Parent"]
       52 GETTABLEKS                       R7 R8 K12 ["React"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R9 R0 K6 ["Parent"]
       59 GETTABLEKS                       R8 R9 K13 ["ReactUtils"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R5 K14 ["ScrollView"]
       64 GETTABLEKS                       R9 R5 K15 ["View"]
       66 GETTABLEKS                       R10 R7 K16 ["createNextOrder"]
       68 GETTABLEKS                       R11 R6 K17 ["createElement"]
       70 DUPTABLE                         R12 K25 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
       71 GETIMPORT                        R13 K28 [UDim2.fromOffset]
       73 LOADN                            R14 0
       74 LOADN                            R15 0
       75 CALL                             R13 2 1
       76 SETTABLEKS                       R13 R12 K18 ["CanvasSize"]
       78 GETIMPORT                        R13 K31 [Enum.AutomaticSize.X]
       80 SETTABLEKS                       R13 R12 K19 ["AutomaticSize"]
       82 GETIMPORT                        R13 K33 [Enum.AutomaticSize.Y]
       84 SETTABLEKS                       R13 R12 K20 ["AutomaticCanvasSize"]
       86 GETIMPORT                        R13 K34 [Enum.ScrollingDirection.Y]
       88 SETTABLEKS                       R13 R12 K21 ["ScrollingDirection"]
       90 GETTABLEKS                       R15 R5 K35 ["Enums"]
       92 GETTABLEKS                       R14 R15 K36 ["Visibility"]
       94 GETTABLEKS                       R13 R14 K37 ["Auto"]
       96 SETTABLEKS                       R13 R12 K22 ["scrollBarVisibility"]
       98 GETIMPORT                        R13 K40 [Enum.ScrollBarInset.None]
      100 SETTABLEKS                       R13 R12 K23 ["HorizontalScrollBarInset"]
      102 GETIMPORT                        R13 K42 [Enum.ScrollBarInset.Always]
      104 SETTABLEKS                       R13 R12 K24 ["VerticalScrollBarInset"]
      106 DUPTABLE                         R13 K45 [{"SortOrder", "FillDirection"}]
      107 GETIMPORT                        R14 K47 [Enum.SortOrder.LayoutOrder]
      109 SETTABLEKS                       R14 R13 K43 ["SortOrder"]
      111 GETIMPORT                        R14 K49 [Enum.FillDirection.Vertical]
      113 SETTABLEKS                       R14 R13 K44 ["FillDirection"]
      115 DUPCLOSURE                       R14 K50 [PROTO_1]
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R1
      125 RETURN                           R14 1
