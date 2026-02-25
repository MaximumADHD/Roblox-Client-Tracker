PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Row"]
        5 GETIMPORT                        R1 K3 [game]
        7 LOADK                            R3 K4 ["MetaBreakpointManager"]
        8 NAMECALL                         R1 R1 K5 ["GetService"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R5 R0 K6 ["item"]
       13 GETTABLEKS                       R4 R5 K7 ["id"]
       15 NAMECALL                         R2 R1 K8 ["GetBreakpointById"]
       17 CALL                             R2 2 1
       18 GETTABLEKS                       R7 R0 K6 ["item"]
       20 GETTABLEKS                       R6 R7 K9 ["continueExecution"]
       22 NOT                              R5 R6
       23 NAMECALL                         R3 R2 K10 ["SetContinueExecution"]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K0 ["props"]
       29 GETTABLEKS                       R3 R4 K11 ["Analytics"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R5 R6 K12 ["MetaBreakpointContinueExecutionChanged"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K8 [{"Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
        7 LOADK                            R5 K9 ["Box"]
        8 SETTABLEKS                       R5 R4 K2 ["Style"]
       10 GETTABLEKS                       R5 R1 K10 ["BackgroundColor"]
       12 SETTABLEKS                       R5 R4 K3 ["BackgroundColor3"]
       14 LOADN                            R5 1
       15 SETTABLEKS                       R5 R4 K4 ["BorderSizePixel"]
       17 GETTABLEKS                       R6 R1 K2 ["Style"]
       19 GETTABLEKS                       R5 R6 K11 ["Border"]
       21 SETTABLEKS                       R5 R4 K5 ["BorderColor3"]
       23 GETIMPORT                        R5 K14 [UDim2.new]
       25 GETTABLEKS                       R7 R1 K15 ["Width"]
       27 GETTABLEKS                       R6 R7 K16 ["Scale"]
       29 GETTABLEKS                       R8 R1 K15 ["Width"]
       31 GETTABLEKS                       R7 R8 K17 ["Offset"]
       33 LOADN                            R8 1
       34 LOADN                            R9 0
       35 CALL                             R5 4 1
       36 SETTABLEKS                       R5 R4 K6 ["Size"]
       38 LOADB                            R5 1
       39 SETTABLEKS                       R5 R4 K7 ["ClipsDescendants"]
       41 DUPTABLE                         R5 K19 [{"EnabledCheckbox"}]
       42 GETTABLEKS                       R6 R1 K20 ["HasChildren"]
       44 JUMPIFNOT                        R6 ; [+14]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K1 ["createElement"]
       48 GETUPVAL                         R7 2
       49 DUPTABLE                         R8 K23 [{"Checked", "OnClick"}]
       50 GETTABLEKS                       R9 R1 K24 ["Value"]
       52 SETTABLEKS                       R9 R8 K21 ["Checked"]
       54 GETTABLEKS                       R9 R0 K25 ["onCheckboxClicked"]
       56 SETTABLEKS                       R9 R8 K22 ["OnClick"]
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R5 K18 ["EnabledCheckbox"]
       61 CALL                             R2 3 -1
       62 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["Analytics"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R8 R0 K10 ["Src"]
       33 GETTABLEKS                       R7 R8 K11 ["Resources"]
       35 GETTABLEKS                       R6 R7 K12 ["AnalyticsEventNames"]
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
