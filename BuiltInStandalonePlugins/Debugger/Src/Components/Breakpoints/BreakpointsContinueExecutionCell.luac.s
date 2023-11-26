PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Row"]
  GETIMPORT R1 K3 [game]
  LOADK R3 K4 ["MetaBreakpointManager"]
  NAMECALL R1 R1 K5 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R5 R0 K6 ["item"]
  GETTABLEKS R4 R5 K7 ["id"]
  NAMECALL R2 R1 K8 ["GetBreakpointById"]
  CALL R2 2 1
  GETTABLEKS R7 R0 K6 ["item"]
  GETTABLEKS R6 R7 K9 ["continueExecution"]
  NOT R5 R6
  NAMECALL R3 R2 K10 ["SetContinueExecution"]
  CALL R3 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K11 ["Analytics"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K12 ["MetaBreakpointContinueExecutionChanged"]
  LOADK R6 K13 ["LuaBreakpointsTable"]
  NAMECALL R3 R3 K14 ["report"]
  CALL R3 3 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["onCheckboxClicked"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K8 [{"Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
  LOADK R5 K9 ["Box"]
  SETTABLEKS R5 R4 K2 ["Style"]
  GETTABLEKS R5 R1 K10 ["BackgroundColor"]
  SETTABLEKS R5 R4 K3 ["BackgroundColor3"]
  LOADN R5 1
  SETTABLEKS R5 R4 K4 ["BorderSizePixel"]
  GETTABLEKS R6 R1 K2 ["Style"]
  GETTABLEKS R5 R6 K11 ["Border"]
  SETTABLEKS R5 R4 K5 ["BorderColor3"]
  GETIMPORT R5 K14 [UDim2.new]
  GETTABLEKS R7 R1 K15 ["Width"]
  GETTABLEKS R6 R7 K16 ["Scale"]
  GETTABLEKS R8 R1 K15 ["Width"]
  GETTABLEKS R7 R8 K17 ["Offset"]
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K6 ["Size"]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["ClipsDescendants"]
  DUPTABLE R5 K19 [{"EnabledCheckbox"}]
  GETTABLEKS R6 R1 K20 ["HasChildren"]
  JUMPIFNOT R6 [+14]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K23 [{"Checked", "OnClick"}]
  GETTABLEKS R9 R1 K24 ["Value"]
  SETTABLEKS R9 R8 K21 ["Checked"]
  GETTABLEKS R9 R0 K25 ["onCheckboxClicked"]
  SETTABLEKS R9 R8 K22 ["OnClick"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["EnabledCheckbox"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["Analytics"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Resources"]
  GETTABLEKS R6 R7 K12 ["AnalyticsEventNames"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K13 ["UI"]
  GETTABLEKS R7 R6 K14 ["Pane"]
  GETTABLEKS R8 R6 K15 ["Checkbox"]
  GETTABLEKS R9 R1 K16 ["PureComponent"]
  LOADK R11 K17 ["BreakpointsContinueExecutionCell"]
  NAMECALL R9 R9 K18 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K19 [PROTO_1]
  CAPTURE VAL R5
  SETTABLEKS R10 R9 K20 ["init"]
  DUPCLOSURE R10 K21 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K22 ["render"]
  GETTABLEKS R10 R3 K23 ["withContext"]
  DUPTABLE R11 K24 [{"Analytics"}]
  SETTABLEKS R4 R11 K9 ["Analytics"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
