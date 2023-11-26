PROTO_0:
  DUPTABLE R3 K26 [{"font", "backgroundColor", "liveBackgroundColor", "textColor", "subTextColor", "dimmerTextColor", "itemColor", "borderColor", "hoveredItemColor", "hoveredTextColor", "primaryItemColor", "primaryBorderColor", "primaryTextColor", "primaryHoveredItemColor", "primaryHoveredBorderColor", "primaryHoveredTextColor", "selectionColor", "selectionBorderColor", "selectedTextColor", "shadowColor", "shadowTransparency", "separationLineColor", "disabledColor", "errorColor", "hoverColor", "hyperlinkTextColor"}]
  GETIMPORT R5 K30 [Enum.Font]
  GETTABLEKS R4 R5 K27 ["Gotham"]
  SETTABLEKS R4 R3 K0 ["font"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K31 ["MainBackground"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["backgroundColor"]
  GETIMPORT R4 K34 [Color3.new]
  CALL R4 0 1
  SETTABLEKS R4 R3 K2 ["liveBackgroundColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K35 ["MainText"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["textColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K36 ["SubText"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["subTextColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K37 ["DimmedText"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["dimmerTextColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K38 ["Item"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["itemColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K39 ["Border"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["borderColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K38 ["Item"]
  GETTABLEKS R6 R2 K40 ["Hover"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["hoveredItemColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K35 ["MainText"]
  GETTABLEKS R6 R2 K40 ["Hover"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["hoveredTextColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K41 ["DialogMainButton"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["primaryItemColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K41 ["DialogMainButton"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["primaryBorderColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K42 ["DialogMainButtonText"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["primaryTextColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K41 ["DialogMainButton"]
  GETTABLEKS R6 R2 K40 ["Hover"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K13 ["primaryHoveredItemColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K41 ["DialogMainButton"]
  GETTABLEKS R6 R2 K40 ["Hover"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K14 ["primaryHoveredBorderColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K42 ["DialogMainButtonText"]
  GETTABLEKS R6 R2 K40 ["Hover"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K15 ["primaryHoveredTextColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K38 ["Item"]
  GETTABLEKS R6 R2 K43 ["Selected"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K16 ["selectionColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K39 ["Border"]
  GETTABLEKS R6 R2 K43 ["Selected"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K17 ["selectionBorderColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K35 ["MainText"]
  GETTABLEKS R6 R2 K43 ["Selected"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K18 ["selectedTextColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K44 ["Shadow"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["shadowColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K44 ["Shadow"]
  GETTABLEKS R6 R2 K40 ["Hover"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K20 ["shadowTransparency"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K45 ["Separator"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K21 ["separationLineColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K35 ["MainText"]
  GETTABLEKS R6 R2 K46 ["Disabled"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K22 ["disabledColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K47 ["ErrorText"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K23 ["errorColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K31 ["MainBackground"]
  GETTABLEKS R6 R2 K40 ["Hover"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K24 ["hoverColor"]
  MOVE R4 R0
  GETTABLEKS R5 R1 K48 ["LinkText"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K25 ["hyperlinkTextColor"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  SETTABLEKS R1 R0 K2 ["new"]
  RETURN R0 1
