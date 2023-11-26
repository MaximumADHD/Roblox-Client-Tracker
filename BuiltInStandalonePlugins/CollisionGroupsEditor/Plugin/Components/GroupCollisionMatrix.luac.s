PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Groups"]
  LENGTH R2 R3
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["GroupCollisionMatrix"]
  DUPTABLE R4 K6 [{"Padding", "UIGridLayout"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["createElement"]
  LOADK R6 K8 ["UIPadding"]
  DUPTABLE R7 K13 [{"PaddingBottom", "PaddingTop", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R8 K16 [UDim.new]
  LOADN R9 0
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["PaddingBottom"]
  GETIMPORT R8 K16 [UDim.new]
  LOADN R9 0
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["PaddingTop"]
  GETIMPORT R8 K16 [UDim.new]
  LOADN R9 0
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["PaddingLeft"]
  GETIMPORT R8 K16 [UDim.new]
  LOADN R9 0
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["PaddingRight"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Padding"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["createElement"]
  LOADK R6 K5 ["UIGridLayout"]
  DUPTABLE R7 K21 [{"CellPadding", "CellSize", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R8 K24 [UDim2.fromOffset]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["CellPadding"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K25 ["GridCellSize"]
  SETTABLEKS R8 R7 K18 ["CellSize"]
  GETIMPORT R8 K28 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K19 ["HorizontalAlignment"]
  GETIMPORT R8 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R8 R7 K20 ["SortOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["UIGridLayout"]
  MOVE R5 R2
  GETIMPORT R6 K32 [ipairs]
  GETTABLEKS R7 R1 K1 ["Groups"]
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETIMPORT R11 K32 [ipairs]
  GETTABLEKS R12 R1 K1 ["Groups"]
  CALL R11 1 3
  FORGPREP_INEXT R11
  MUL R17 R2 R9
  SUB R16 R17 R14
  GETUPVAL R17 2
  DUPTABLE R18 K41 [{"ShouldShowCheckbox", "Group", "OtherGroup", "Style", "RowHovered", "OnColHovered", "OnRowHovered", "LayoutOrder", "RowIndex"}]
  JUMPIFLE R9 R14 [+2]
  LOADB R19 0 +1
  LOADB R19 1
  SETTABLEKS R19 R18 K33 ["ShouldShowCheckbox"]
  SETTABLEKS R10 R18 K34 ["Group"]
  SETTABLEKS R15 R18 K35 ["OtherGroup"]
  GETTABLEKS R19 R1 K2 ["Stylizer"]
  SETTABLEKS R19 R18 K36 ["Style"]
  GETTABLEKS R19 R1 K37 ["RowHovered"]
  SETTABLEKS R19 R18 K37 ["RowHovered"]
  GETTABLEKS R19 R1 K38 ["OnColHovered"]
  SETTABLEKS R19 R18 K38 ["OnColHovered"]
  GETTABLEKS R19 R1 K39 ["OnRowHovered"]
  SETTABLEKS R19 R18 K39 ["OnRowHovered"]
  SETTABLEKS R16 R18 K29 ["LayoutOrder"]
  SETTABLEKS R5 R18 K40 ["RowIndex"]
  CALL R17 1 1
  SETTABLE R17 R4 R16
  FORGLOOP R11 2 [inext] [-37]
  SUBK R5 R5 K42 [1]
  FORGLOOP R6 2 [inext] [-46]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["createElement"]
  LOADK R7 K43 ["Frame"]
  DUPTABLE R8 K47 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K48 ["CalculateTableSize"]
  MOVE R10 R2
  CALL R9 1 1
  SETTABLEKS R9 R8 K44 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K45 ["BackgroundTransparency"]
  LOADN R9 0
  SETTABLEKS R9 R8 K46 ["BorderSizePixel"]
  MOVE R9 R4
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
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
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K9 ["CollisionCheckbox"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K10 ["Constants"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K11 ["PureComponent"]
  LOADK R8 K12 ["GroupCollisionMatrix"]
  NAMECALL R6 R6 K13 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K15 ["render"]
  GETTABLEKS R7 R3 K16 ["withContext"]
  DUPTABLE R8 K18 [{"Stylizer"}]
  GETTABLEKS R9 R3 K17 ["Stylizer"]
  SETTABLEKS R9 R8 K17 ["Stylizer"]
  CALL R7 1 1
  MOVE R8 R6
  CALL R7 1 1
  MOVE R6 R7
  RETURN R6 1
