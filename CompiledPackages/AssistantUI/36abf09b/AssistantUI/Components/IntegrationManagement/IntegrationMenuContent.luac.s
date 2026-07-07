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
       12 GETTABLEKS                       R4 R4 K2 ["FFlagExternalMCPUI"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K3 ["FFlagMCPAssistantManagementMenu"]
       17 GETUPVAL                         R6 2
       18 GETUPVAL                         R7 3
       19 DUPTABLE                         R8 K8 [{["tag"] = "col shrink size-full-full auto-y", ["scroll"], ["layout"]}]
       20 GETUPVAL                         R9 4
       21 SETTABLEKS                       R9 R8 K6 ["scroll"]
       23 GETUPVAL                         R9 5
       24 SETTABLEKS                       R9 R8 K7 ["layout"]
       26 DUPTABLE                         R9 K10 [{"ContentWrapper"}]
       27 GETUPVAL                         R10 2
       28 GETUPVAL                         R11 6
       29 DUPTABLE                         R12 K13 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
       30 MOVE                             R13 R1
       31 CALL                             R13 0 1
       32 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       34 DUPTABLE                         R13 K17 [{"McpSetupInstructions", "Divider", "MainContent"}]
       35 JUMPIFNOT                        R4 ; [+9]
       36 GETUPVAL                         R14 2
       37 GETUPVAL                         R15 7
       38 DUPTABLE                         R16 K18 [{"LayoutOrder"}]
       39 MOVE                             R17 R1
       40 CALL                             R17 0 1
       41 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
       43 CALL                             R14 2 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R14
       46 SETTABLEKS                       R14 R13 K14 ["McpSetupInstructions"]
       48 JUMPIFNOT                        R4 ; [+30]
       49 JUMPIFNOT                        R5 ; [+29]
       50 GETUPVAL                         R14 2
       51 GETUPVAL                         R15 8
       52 GETTABLEKS                       R15 R15 K15 ["Divider"]
       54 DUPTABLE                         R16 K21 [{"LayoutOrder", "variant", "orientation"}]
       55 MOVE                             R17 R1
       56 CALL                             R17 0 1
       57 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
       59 GETUPVAL                         R17 8
       60 GETTABLEKS                       R17 R17 K22 ["Enums"]
       62 GETTABLEKS                       R17 R17 K23 ["DividerVariant"]
       64 GETTABLEKS                       R17 R17 K24 ["Default"]
       66 SETTABLEKS                       R17 R16 K19 ["variant"]
       68 GETUPVAL                         R17 8
       69 GETTABLEKS                       R17 R17 K22 ["Enums"]
       71 GETTABLEKS                       R17 R17 K25 ["DividerOrientation"]
       73 GETTABLEKS                       R17 R17 K26 ["Horizontal"]
       75 SETTABLEKS                       R17 R16 K20 ["orientation"]
       77 CALL                             R14 2 1
       78 JUMP                             ; [+1]
       79 LOADNIL                          R14
       80 SETTABLEKS                       R14 R13 K15 ["Divider"]
       82 JUMPIFNOT                        R5 ; [+55]
       83 JUMPIFNOT                        R3 ; [+19]
       84 GETUPVAL                         R14 2
       85 GETUPVAL                         R15 9
       86 DUPTABLE                         R16 K29 [{"LayoutOrder", "onAddIntegration", "isLoading"}]
       87 MOVE                             R17 R1
       88 CALL                             R17 0 1
       89 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
       91 GETTABLEKS                       R17 R0 K27 ["onAddIntegration"]
       93 SETTABLEKS                       R17 R16 K27 ["onAddIntegration"]
       95 JUMPIFEQKNIL                     R2 ; [+2]
       97 LOADB                            R17 0 +1
       98 LOADB                            R17 1
       99 SETTABLEKS                       R17 R16 K28 ["isLoading"]
      101 CALL                             R14 2 1
      102 JUMP                             ; [+36]
      103 GETUPVAL                         R14 2
      104 GETUPVAL                         R15 10
      105 DUPTABLE                         R16 K35 [{"LayoutOrder", "integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
      106 MOVE                             R17 R1
      107 CALL                             R17 0 1
      108 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      110 SETTABLEKS                       R2 R16 K0 ["integrations"]
      112 GETTABLEKS                       R17 R0 K27 ["onAddIntegration"]
      114 SETTABLEKS                       R17 R16 K27 ["onAddIntegration"]
      116 GETTABLEKS                       R17 R0 K30 ["onRemove"]
      118 SETTABLEKS                       R17 R16 K30 ["onRemove"]
      120 GETTABLEKS                       R17 R0 K31 ["onEdit"]
      122 SETTABLEKS                       R17 R16 K31 ["onEdit"]
      124 GETTABLEKS                       R17 R0 K32 ["onStatusChange"]
      126 SETTABLEKS                       R17 R16 K32 ["onStatusChange"]
      128 GETTABLEKS                       R17 R0 K33 ["onAuthorizationChange"]
      130 SETTABLEKS                       R17 R16 K33 ["onAuthorizationChange"]
      132 GETTABLEKS                       R17 R0 K34 ["setEnableStatus"]
      134 SETTABLEKS                       R17 R16 K34 ["setEnableStatus"]
      136 CALL                             R14 2 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R14
      139 SETTABLEKS                       R14 R13 K16 ["MainContent"]
      141 CALL                             R10 3 1
      142 SETTABLEKS                       R10 R9 K9 ["ContentWrapper"]
      144 CALL                             R6 3 -1
      145 RETURN                           R6 -1

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
