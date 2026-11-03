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
       12 GETTABLEKS                       R4 R4 K2 ["FFlagMCPAssistantManagementMenu"]
       14 GETUPVAL                         R5 2
       15 GETUPVAL                         R6 3
       16 DUPTABLE                         R7 K7 [{["tag"] = "col shrink size-full-full auto-y", ["scroll"], ["layout"]}]
       17 GETUPVAL                         R8 4
       18 SETTABLEKS                       R8 R7 K5 ["scroll"]
       20 GETUPVAL                         R8 5
       21 SETTABLEKS                       R8 R7 K6 ["layout"]
       23 DUPTABLE                         R8 K9 [{"ContentWrapper"}]
       24 GETUPVAL                         R9 2
       25 GETUPVAL                         R10 6
       26 DUPTABLE                         R11 K12 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
       27 MOVE                             R12 R1
       28 CALL                             R12 0 1
       29 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
       31 DUPTABLE                         R12 K16 [{"McpSetupInstructions", "Divider", "MainContent"}]
       32 GETUPVAL                         R13 2
       33 GETUPVAL                         R14 7
       34 DUPTABLE                         R15 K17 [{"LayoutOrder"}]
       35 MOVE                             R16 R1
       36 CALL                             R16 0 1
       37 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
       39 CALL                             R13 2 1
       40 SETTABLEKS                       R13 R12 K13 ["McpSetupInstructions"]
       42 JUMPIFNOT                        R4 ; [+29]
       43 GETUPVAL                         R13 2
       44 GETUPVAL                         R14 8
       45 GETTABLEKS                       R14 R14 K14 ["Divider"]
       47 DUPTABLE                         R15 K20 [{"LayoutOrder", "variant", "orientation"}]
       48 MOVE                             R16 R1
       49 CALL                             R16 0 1
       50 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
       52 GETUPVAL                         R16 8
       53 GETTABLEKS                       R16 R16 K21 ["Enums"]
       55 GETTABLEKS                       R16 R16 K22 ["DividerVariant"]
       57 GETTABLEKS                       R16 R16 K23 ["Default"]
       59 SETTABLEKS                       R16 R15 K18 ["variant"]
       61 GETUPVAL                         R16 8
       62 GETTABLEKS                       R16 R16 K21 ["Enums"]
       64 GETTABLEKS                       R16 R16 K24 ["DividerOrientation"]
       66 GETTABLEKS                       R16 R16 K25 ["Horizontal"]
       68 SETTABLEKS                       R16 R15 K19 ["orientation"]
       70 CALL                             R13 2 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R13
       73 SETTABLEKS                       R13 R12 K14 ["Divider"]
       75 JUMPIFNOT                        R4 ; [+55]
       76 JUMPIFNOT                        R3 ; [+19]
       77 GETUPVAL                         R13 2
       78 GETUPVAL                         R14 9
       79 DUPTABLE                         R15 K28 [{"LayoutOrder", "onAddIntegration", "isLoading"}]
       80 MOVE                             R16 R1
       81 CALL                             R16 0 1
       82 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
       84 GETTABLEKS                       R16 R0 K26 ["onAddIntegration"]
       86 SETTABLEKS                       R16 R15 K26 ["onAddIntegration"]
       88 JUMPIFEQKNIL                     R2 ; [+2]
       90 LOADB                            R16 0 +1
       91 LOADB                            R16 1
       92 SETTABLEKS                       R16 R15 K27 ["isLoading"]
       94 CALL                             R13 2 1
       95 JUMP                             ; [+36]
       96 GETUPVAL                         R13 2
       97 GETUPVAL                         R14 10
       98 DUPTABLE                         R15 K34 [{"LayoutOrder", "integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
       99 MOVE                             R16 R1
      100 CALL                             R16 0 1
      101 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      103 SETTABLEKS                       R2 R15 K0 ["integrations"]
      105 GETTABLEKS                       R16 R0 K26 ["onAddIntegration"]
      107 SETTABLEKS                       R16 R15 K26 ["onAddIntegration"]
      109 GETTABLEKS                       R16 R0 K29 ["onRemove"]
      111 SETTABLEKS                       R16 R15 K29 ["onRemove"]
      113 GETTABLEKS                       R16 R0 K30 ["onEdit"]
      115 SETTABLEKS                       R16 R15 K30 ["onEdit"]
      117 GETTABLEKS                       R16 R0 K31 ["onStatusChange"]
      119 SETTABLEKS                       R16 R15 K31 ["onStatusChange"]
      121 GETTABLEKS                       R16 R0 K32 ["onAuthorizationChange"]
      123 SETTABLEKS                       R16 R15 K32 ["onAuthorizationChange"]
      125 GETTABLEKS                       R16 R0 K33 ["setEnableStatus"]
      127 SETTABLEKS                       R16 R15 K33 ["setEnableStatus"]
      129 CALL                             R13 2 1
      130 JUMP                             ; [+1]
      131 LOADNIL                          R13
      132 SETTABLEKS                       R13 R12 K15 ["MainContent"]
      134 CALL                             R9 3 1
      135 SETTABLEKS                       R9 R8 K8 ["ContentWrapper"]
      137 CALL                             R5 3 -1
      138 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["IntegrationMenuEmptyState"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K6 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["IntegrationMenuItems"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K6 ["Parent"]
       31 GETTABLEKS                       R4 R4 K9 ["IntegrationTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K6 ["Parent"]
       40 GETTABLEKS                       R5 R5 K10 ["McpSetupInstructions"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K11 ["Flags"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Parent"]
       52 GETTABLEKS                       R7 R7 K12 ["Foundation"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Parent"]
       59 GETTABLEKS                       R8 R8 K13 ["React"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Parent"]
       66 GETTABLEKS                       R9 R9 K14 ["ReactUtils"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R6 K15 ["ScrollView"]
       71 GETTABLEKS                       R10 R6 K16 ["View"]
       73 GETTABLEKS                       R11 R6 K17 ["Enums"]
       75 GETTABLEKS                       R11 R11 K18 ["Visibility"]
       77 GETTABLEKS                       R12 R8 K19 ["createNextOrder"]
       79 GETTABLEKS                       R13 R7 K20 ["createElement"]
       81 DUPTABLE                         R14 K28 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
       82 GETIMPORT                        R15 K31 [UDim2.fromOffset]
       84 LOADN                            R16 0
       85 LOADN                            R17 0
       86 CALL                             R15 2 1
       87 SETTABLEKS                       R15 R14 K21 ["CanvasSize"]
       89 GETIMPORT                        R15 K34 [Enum.AutomaticSize.X]
       91 SETTABLEKS                       R15 R14 K22 ["AutomaticSize"]
       93 GETIMPORT                        R15 K36 [Enum.AutomaticSize.Y]
       95 SETTABLEKS                       R15 R14 K23 ["AutomaticCanvasSize"]
       97 GETIMPORT                        R15 K37 [Enum.ScrollingDirection.Y]
       99 SETTABLEKS                       R15 R14 K24 ["ScrollingDirection"]
      101 GETTABLEKS                       R15 R11 K38 ["Auto"]
      103 SETTABLEKS                       R15 R14 K25 ["scrollBarVisibility"]
      105 GETIMPORT                        R15 K41 [Enum.ScrollBarInset.None]
      107 SETTABLEKS                       R15 R14 K26 ["HorizontalScrollBarInset"]
      109 GETIMPORT                        R15 K43 [Enum.ScrollBarInset.Always]
      111 SETTABLEKS                       R15 R14 K27 ["VerticalScrollBarInset"]
      113 DUPTABLE                         R15 K46 [{"SortOrder", "FillDirection"}]
      114 GETIMPORT                        R16 K48 [Enum.SortOrder.LayoutOrder]
      116 SETTABLEKS                       R16 R15 K44 ["SortOrder"]
      118 GETIMPORT                        R16 K50 [Enum.FillDirection.Vertical]
      120 SETTABLEKS                       R16 R15 K45 ["FillDirection"]
      122 DUPCLOSURE                       R16 K51 [PROTO_0]
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R2
      134 GETTABLEKS                       R17 R7 K52 ["memo"]
      136 MOVE                             R18 R16
      137 CALL                             R17 1 -1
      138 RETURN                           R17 -1
