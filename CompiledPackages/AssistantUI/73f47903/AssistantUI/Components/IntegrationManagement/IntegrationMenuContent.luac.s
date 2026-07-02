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
       17 DUPTABLE                         R8 K6 [{["tag"] = "col shrink size-full-full auto-y", ["scroll"], ["layout"]}]
       18 GETUPVAL                         R9 5
       19 SETTABLEKS                       R9 R8 K4 ["scroll"]
       21 GETUPVAL                         R9 6
       22 SETTABLEKS                       R9 R8 K5 ["layout"]
       24 DUPTABLE                         R9 K8 [{"ContentWrapper"}]
       25 GETUPVAL                         R10 3
       26 GETUPVAL                         R11 7
       27 DUPTABLE                         R12 K11 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
       28 MOVE                             R13 R1
       29 CALL                             R13 0 1
       30 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       32 DUPTABLE                         R13 K15 [{"McpSetupInstructions", "Divider", "MainContent"}]
       33 JUMPIFNOT                        R4 ; [+9]
       34 GETUPVAL                         R14 3
       35 GETUPVAL                         R15 8
       36 DUPTABLE                         R16 K16 [{"LayoutOrder"}]
       37 MOVE                             R17 R1
       38 CALL                             R17 0 1
       39 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
       41 CALL                             R14 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R14
       44 SETTABLEKS                       R14 R13 K12 ["McpSetupInstructions"]
       46 JUMPIFNOT                        R4 ; [+30]
       47 JUMPIFNOT                        R5 ; [+29]
       48 GETUPVAL                         R14 3
       49 GETUPVAL                         R15 9
       50 GETTABLEKS                       R15 R15 K13 ["Divider"]
       52 DUPTABLE                         R16 K19 [{"LayoutOrder", "variant", "orientation"}]
       53 MOVE                             R17 R1
       54 CALL                             R17 0 1
       55 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
       57 GETUPVAL                         R17 9
       58 GETTABLEKS                       R17 R17 K20 ["Enums"]
       60 GETTABLEKS                       R17 R17 K21 ["DividerVariant"]
       62 GETTABLEKS                       R17 R17 K22 ["Default"]
       64 SETTABLEKS                       R17 R16 K17 ["variant"]
       66 GETUPVAL                         R17 9
       67 GETTABLEKS                       R17 R17 K20 ["Enums"]
       69 GETTABLEKS                       R17 R17 K23 ["DividerOrientation"]
       71 GETTABLEKS                       R17 R17 K24 ["Horizontal"]
       73 SETTABLEKS                       R17 R16 K18 ["orientation"]
       75 CALL                             R14 2 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R14
       78 SETTABLEKS                       R14 R13 K13 ["Divider"]
       80 JUMPIFNOT                        R5 ; [+55]
       81 JUMPIFNOT                        R3 ; [+19]
       82 GETUPVAL                         R14 3
       83 GETUPVAL                         R15 10
       84 DUPTABLE                         R16 K27 [{"LayoutOrder", "onAddIntegration", "isLoading"}]
       85 MOVE                             R17 R1
       86 CALL                             R17 0 1
       87 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
       89 GETTABLEKS                       R17 R0 K25 ["onAddIntegration"]
       91 SETTABLEKS                       R17 R16 K25 ["onAddIntegration"]
       93 JUMPIFEQKNIL                     R2 ; [+2]
       95 LOADB                            R17 0 +1
       96 LOADB                            R17 1
       97 SETTABLEKS                       R17 R16 K26 ["isLoading"]
       99 CALL                             R14 2 1
      100 JUMP                             ; [+36]
      101 GETUPVAL                         R14 3
      102 GETUPVAL                         R15 11
      103 DUPTABLE                         R16 K33 [{"LayoutOrder", "integrations", "onAddIntegration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
      104 MOVE                             R17 R1
      105 CALL                             R17 0 1
      106 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      108 SETTABLEKS                       R2 R16 K0 ["integrations"]
      110 GETTABLEKS                       R17 R0 K25 ["onAddIntegration"]
      112 SETTABLEKS                       R17 R16 K25 ["onAddIntegration"]
      114 GETTABLEKS                       R17 R0 K28 ["onRemove"]
      116 SETTABLEKS                       R17 R16 K28 ["onRemove"]
      118 GETTABLEKS                       R17 R0 K29 ["onEdit"]
      120 SETTABLEKS                       R17 R16 K29 ["onEdit"]
      122 GETTABLEKS                       R17 R0 K30 ["onStatusChange"]
      124 SETTABLEKS                       R17 R16 K30 ["onStatusChange"]
      126 GETTABLEKS                       R17 R0 K31 ["onAuthorizationChange"]
      128 SETTABLEKS                       R17 R16 K31 ["onAuthorizationChange"]
      130 GETTABLEKS                       R17 R0 K32 ["setEnableStatus"]
      132 SETTABLEKS                       R17 R16 K32 ["setEnableStatus"]
      134 CALL                             R14 2 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R14
      137 SETTABLEKS                       R14 R13 K14 ["MainContent"]
      139 CALL                             R10 3 1
      140 SETTABLEKS                       R10 R9 K7 ["ContentWrapper"]
      142 CALL                             R6 3 -1
      143 RETURN                           R6 -1

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
       45 GETTABLEKS                       R6 R0 K6 ["Parent"]
       47 GETTABLEKS                       R6 R6 K11 ["Foundation"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Parent"]
       54 GETTABLEKS                       R7 R7 K12 ["React"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Parent"]
       61 GETTABLEKS                       R8 R8 K13 ["ReactUtils"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K14 ["Flags"]
       68 GETTABLEKS                       R9 R9 K15 ["FFlagExternalMCPUI"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K14 ["Flags"]
       75 GETTABLEKS                       R10 R10 K16 ["FFlagMCPAssistantManagementMenu"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R10 R5 K17 ["ScrollView"]
       80 GETTABLEKS                       R11 R5 K18 ["View"]
       82 GETTABLEKS                       R12 R5 K19 ["Enums"]
       84 GETTABLEKS                       R12 R12 K20 ["Visibility"]
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
