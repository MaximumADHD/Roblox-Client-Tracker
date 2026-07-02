PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Row"]
        5 GETIMPORT                        R1 K3 [game]
        7 LOADK                            R3 K4 ["MetaBreakpointManager"]
        8 NAMECALL                         R1 R1 K5 ["GetService"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R4 R0 K6 ["item"]
       13 GETTABLEKS                       R4 R4 K7 ["id"]
       15 NAMECALL                         R2 R1 K8 ["GetBreakpointById"]
       17 CALL                             R2 2 1
       18 GETTABLEKS                       R6 R0 K6 ["item"]
       20 GETTABLEKS                       R6 R6 K9 ["continueExecution"]
       22 NOT                              R5 R6
       23 NAMECALL                         R3 R2 K10 ["SetContinueExecution"]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K0 ["props"]
       29 GETTABLEKS                       R3 R3 K11 ["Analytics"]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K12 ["MetaBreakpointContinueExecutionChanged"]
       34 LOADK                            R6 K13 ["LuaBreakpointsTable"]
       35 NAMECALL                         R3 R3 K14 ["report"]
       37 CALL                             R3 3 0
       38 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onCheckboxClicked"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K11 [{["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
        7 GETTABLEKS                       R5 R1 K12 ["BackgroundColor"]
        9 SETTABLEKS                       R5 R4 K4 ["BackgroundColor3"]
       11 GETTABLEKS                       R5 R1 K2 ["Style"]
       13 GETTABLEKS                       R5 R5 K13 ["Border"]
       15 SETTABLEKS                       R5 R4 K7 ["BorderColor3"]
       17 GETIMPORT                        R5 K16 [UDim2.new]
       19 GETTABLEKS                       R6 R1 K17 ["Width"]
       21 GETTABLEKS                       R6 R6 K18 ["Scale"]
       23 GETTABLEKS                       R7 R1 K17 ["Width"]
       25 GETTABLEKS                       R7 R7 K19 ["Offset"]
       27 LOADN                            R8 1
       28 LOADN                            R9 0
       29 CALL                             R5 4 1
       30 SETTABLEKS                       R5 R4 K8 ["Size"]
       32 DUPTABLE                         R5 K21 [{"EnabledCheckbox"}]
       33 GETTABLEKS                       R6 R1 K22 ["HasChildren"]
       35 JUMPIFNOT                        R6 ; [+14]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K1 ["createElement"]
       39 GETUPVAL                         R7 2
       40 DUPTABLE                         R8 K25 [{"Checked", "OnClick"}]
       41 GETTABLEKS                       R9 R1 K26 ["Value"]
       43 SETTABLEKS                       R9 R8 K23 ["Checked"]
       45 GETTABLEKS                       R9 R0 K27 ["onCheckboxClicked"]
       47 SETTABLEKS                       R9 R8 K24 ["OnClick"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K20 ["EnabledCheckbox"]
       52 CALL                             R2 3 -1
       53 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["Analytics"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K10 ["Src"]
       33 GETTABLEKS                       R6 R6 K11 ["Resources"]
       35 GETTABLEKS                       R6 R6 K12 ["AnalyticsEventNames"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R2 K13 ["UI"]
       40 GETTABLEKS                       R7 R6 K14 ["Pane"]
       42 GETTABLEKS                       R8 R6 K15 ["Checkbox"]
       44 GETTABLEKS                       R9 R1 K16 ["PureComponent"]
       46 LOADK                            R11 K17 ["BreakpointsContinueExecutionCell"]
       47 NAMECALL                         R9 R9 K18 ["extend"]
       49 CALL                             R9 2 1
       50 DUPCLOSURE                       R10 K19 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R10 R9 K20 ["init"]
       54 DUPCLOSURE                       R10 K21 [PROTO_2]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 SETTABLEKS                       R10 R9 K22 ["render"]
       60 GETTABLEKS                       R10 R3 K23 ["withContext"]
       62 DUPTABLE                         R11 K24 [{"Analytics"}]
       63 SETTABLEKS                       R4 R11 K9 ["Analytics"]
       65 CALL                             R10 1 1
       66 MOVE                             R11 R9
       67 CALL                             R10 1 1
       68 MOVE                             R9 R10
       69 RETURN                           R9 1
