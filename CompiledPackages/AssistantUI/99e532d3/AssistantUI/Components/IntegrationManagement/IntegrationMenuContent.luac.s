PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["integrations"]
        4 NOT                              R3 R2
        5 JUMPIF                           R3 ; [+5]
        6 LENGTH                           R4 R2
        7 JUMPIFEQKN                       R4 K1 [0] ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 GETUPVAL                         R4 1
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 GETUPVAL                         R6 3
       16 GETUPVAL                         R7 4
       17 DUPTABLE                         R8 K5 [{"tag", "scroll", "layout"}]
       18 LOADK                            R9 K6 ["col size-full-full auto-y shrink"]
       19 SETTABLEKS                       R9 R8 K2 ["tag"]
       21 GETUPVAL                         R9 5
       22 SETTABLEKS                       R9 R8 K3 ["scroll"]
       24 GETUPVAL                         R9 6
       25 SETTABLEKS                       R9 R8 K4 ["layout"]
       27 DUPTABLE                         R9 K8 [{"ContentWrapper"}]
       28 GETUPVAL                         R10 3
       29 GETUPVAL                         R11 7
       30 DUPTABLE                         R12 K10 [{"tag", "LayoutOrder"}]
       31 LOADK                            R13 K11 ["col size-full-0 auto-y gap-medium"]
       32 SETTABLEKS                       R13 R12 K2 ["tag"]
       34 MOVE                             R13 R1
       35 CALL                             R13 0 1
       36 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       38 DUPTABLE                         R13 K15 [{"McpSetupInstructions", "Divider", "MainContent"}]
       39 JUMPIFNOT                        R4 ; [+9]
       40 GETUPVAL                         R14 3
       41 GETUPVAL                         R15 8
       42 DUPTABLE                         R16 K16 [{"LayoutOrder"}]
       43 MOVE                             R17 R1
       44 CALL                             R17 0 1
       45 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
       47 CALL                             R14 2 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R14
       50 SETTABLEKS                       R14 R13 K12 ["McpSetupInstructions"]
       52 JUMPIFNOT                        R4 ; [+30]
       53 JUMPIFNOT                        R5 ; [+29]
       54 GETUPVAL                         R14 3
       55 GETUPVAL                         R16 9
       56 GETTABLEKS                       R15 R16 K13 ["Divider"]
       58 DUPTABLE                         R16 K19 [{"LayoutOrder", "variant", "orientation"}]
       59 MOVE                             R17 R1
       60 CALL                             R17 0 1
       61 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
       63 GETUPVAL                         R20 9
       64 GETTABLEKS                       R19 R20 K20 ["Enums"]
       66 GETTABLEKS                       R18 R19 K21 ["DividerVariant"]
       68 GETTABLEKS                       R17 R18 K22 ["Default"]
       70 SETTABLEKS                       R17 R16 K17 ["variant"]
       72 GETUPVAL                         R20 9
       73 GETTABLEKS                       R19 R20 K20 ["Enums"]
       75 GETTABLEKS                       R18 R19 K23 ["DividerOrientation"]
       77 GETTABLEKS                       R17 R18 K24 ["Horizontal"]
       79 SETTABLEKS                       R17 R16 K18 ["orientation"]
       81 CALL                             R14 2 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R14
       84 SETTABLEKS                       R14 R13 K13 ["Divider"]
       86 JUMPIFNOT                        R5 ; [+55]
       87 JUMPIFNOT                        R3 ; [+19]
       88 GETUPVAL                         R14 3
       89 GETUPVAL                         R15 10
       90 DUPTABLE                         R16 K27 [{"LayoutOrder", "onAddIntegration", "isLoading"}]
       91 MOVE                             R17 R1
       92 CALL                             R17 0 1
       93 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
       95 GETTABLEKS                       R17 R0 K25 ["onAddIntegration"]
       97 SETTABLEKS                       R17 R16 K25 ["onAddIntegration"]
       99 JUMPIFEQKNIL                     R2 ; [+2]
      101 LOADB                            R17 0 +1
      102 LOADB                            R17 1
      103 SETTABLEKS                       R17 R16 K26 ["isLoading"]
      105 CALL                             R14 2 1
      106 JUMP                             ; [+36]
      107 GETUPVAL                         R14 3
      108 GETUPVAL                         R15 11
      109 DUPTABLE                         R16 K33 [{"LayoutOrder", "integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
      110 MOVE                             R17 R1
      111 CALL                             R17 0 1
      112 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      114 SETTABLEKS                       R2 R16 K0 ["integrations"]
      116 GETTABLEKS                       R17 R0 K25 ["onAddIntegration"]
      118 SETTABLEKS                       R17 R16 K25 ["onAddIntegration"]
      120 GETTABLEKS                       R17 R0 K28 ["onRemove"]
      122 SETTABLEKS                       R17 R16 K28 ["onRemove"]
      124 GETTABLEKS                       R17 R0 K29 ["onEdit"]
      126 SETTABLEKS                       R17 R16 K29 ["onEdit"]
      128 GETTABLEKS                       R17 R0 K30 ["onStatusChange"]
      130 SETTABLEKS                       R17 R16 K30 ["onStatusChange"]
      132 GETTABLEKS                       R17 R0 K31 ["onAuthorizationChange"]
      134 SETTABLEKS                       R17 R16 K31 ["onAuthorizationChange"]
      136 GETTABLEKS                       R17 R0 K32 ["setEnableStatus"]
      138 SETTABLEKS                       R17 R16 K32 ["setEnableStatus"]
      140 CALL                             R14 2 1
      141 JUMP                             ; [+1]
      142 LOADNIL                          R14
      143 SETTABLEKS                       R14 R13 K14 ["MainContent"]
      145 CALL                             R10 3 1
      146 SETTABLEKS                       R10 R9 K7 ["ContentWrapper"]
      148 CALL                             R6 3 -1
      149 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["IntegrationMenuEmptyState"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K6 ["Parent"]
       22 GETTABLEKS                       R3 R4 K8 ["IntegrationMenuItems"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R5 R6 K6 ["Parent"]
       31 GETTABLEKS                       R4 R5 K9 ["IntegrationTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R6 R7 K6 ["Parent"]
       40 GETTABLEKS                       R5 R6 K10 ["McpSetupInstructions"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K6 ["Parent"]
       47 GETTABLEKS                       R6 R7 K11 ["Foundation"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K6 ["Parent"]
       54 GETTABLEKS                       R7 R8 K12 ["React"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R9 R0 K6 ["Parent"]
       61 GETTABLEKS                       R8 R9 K13 ["ReactUtils"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R10 R0 K14 ["Flags"]
       68 GETTABLEKS                       R9 R10 K15 ["FFlagCAP2605"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R11 R0 K14 ["Flags"]
       75 GETTABLEKS                       R10 R11 K16 ["FFlagMCPAssistantManagementMenu"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R10 R5 K17 ["ScrollView"]
       80 GETTABLEKS                       R11 R5 K18 ["View"]
       82 GETTABLEKS                       R13 R5 K19 ["Enums"]
       84 GETTABLEKS                       R12 R13 K20 ["Visibility"]
       86 GETTABLEKS                       R13 R7 K21 ["createNextOrder"]
       88 GETTABLEKS                       R14 R6 K22 ["createElement"]
       90 DUPTABLE                         R15 K30 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
       91 GETIMPORT                        R16 K33 [UDim2.fromOffset]
       93 LOADN                            R17 0
       94 LOADN                            R18 0
       95 CALL                             R16 2 1
       96 SETTABLEKS                       R16 R15 K23 ["CanvasSize"]
       98 GETIMPORT                        R16 K36 [Enum.AutomaticSize.X]
      100 SETTABLEKS                       R16 R15 K24 ["AutomaticSize"]
      102 GETIMPORT                        R16 K38 [Enum.AutomaticSize.Y]
      104 SETTABLEKS                       R16 R15 K25 ["AutomaticCanvasSize"]
      106 GETIMPORT                        R16 K39 [Enum.ScrollingDirection.Y]
      108 SETTABLEKS                       R16 R15 K26 ["ScrollingDirection"]
      110 GETTABLEKS                       R16 R12 K40 ["Auto"]
      112 SETTABLEKS                       R16 R15 K27 ["scrollBarVisibility"]
      114 GETIMPORT                        R16 K43 [Enum.ScrollBarInset.None]
      116 SETTABLEKS                       R16 R15 K28 ["HorizontalScrollBarInset"]
      118 GETIMPORT                        R16 K45 [Enum.ScrollBarInset.Always]
      120 SETTABLEKS                       R16 R15 K29 ["VerticalScrollBarInset"]
      122 DUPTABLE                         R16 K48 [{"SortOrder", "FillDirection"}]
      123 GETIMPORT                        R17 K50 [Enum.SortOrder.LayoutOrder]
      125 SETTABLEKS                       R17 R16 K46 ["SortOrder"]
      127 GETIMPORT                        R17 K52 [Enum.FillDirection.Vertical]
      129 SETTABLEKS                       R17 R16 K47 ["FillDirection"]
      131 DUPCLOSURE                       R17 K53 [PROTO_0]
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R2
      144 GETTABLEKS                       R18 R6 K54 ["memo"]
      146 MOVE                             R19 R17
      147 CALL                             R18 1 -1
      148 RETURN                           R18 -1
