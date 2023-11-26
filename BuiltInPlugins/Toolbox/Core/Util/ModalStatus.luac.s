PROTO_0:
  DUPTABLE R1 K7 [{"_signal", "_currentTooltipAssetId", "_currentTooltipTypeId", "_isDropdownShown", "_isMouseInSearchOptions", "_isSearchOptionsShown", "_isAssetPreviewing"}]
  GETUPVAL R2 0
  CALL R2 0 1
  SETTABLEKS R2 R1 K0 ["_signal"]
  LOADN R2 0
  SETTABLEKS R2 R1 K1 ["_currentTooltipAssetId"]
  LOADN R2 0
  SETTABLEKS R2 R1 K2 ["_currentTooltipTypeId"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["_isDropdownShown"]
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["_isMouseInSearchOptions"]
  LOADB R2 0
  SETTABLEKS R2 R1 K5 ["_isSearchOptionsShown"]
  LOADB R2 0
  SETTABLEKS R2 R1 K6 ["_isAssetPreviewing"]
  GETUPVAL R2 1
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K9 [setmetatable]
  CALL R0 2 1
  RETURN R0 1

PROTO_1:
  PREPVARARGS 1
  GETTABLEKS R1 R0 K0 ["_signal"]
  GETVARARGS R3 -1
  NAMECALL R1 R1 K1 ["subscribe"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_isDropdownShown"]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_isSearchOptionsShown"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_isMouseInSearchOptions"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_isAssetPreviewing"]
  RETURN R1 1

PROTO_6:
  SETTABLEKS R1 R0 K0 ["_currentTooltipAssetId"]
  SETTABLEKS R2 R0 K1 ["_currentTooltipTypeId"]
  GETTABLEKS R3 R0 K2 ["_signal"]
  NAMECALL R3 R3 K3 ["fire"]
  CALL R3 1 0
  RETURN R0 0

PROTO_7:
  SETTABLEKS R1 R0 K0 ["_isDropdownShown"]
  GETTABLEKS R2 R0 K1 ["_signal"]
  NAMECALL R2 R2 K2 ["fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  SETTABLEKS R1 R0 K0 ["_isSearchOptionsShown"]
  GETTABLEKS R2 R0 K1 ["_signal"]
  NAMECALL R2 R2 K2 ["fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  SETTABLEKS R1 R0 K0 ["_isMouseInSearchOptions"]
  GETTABLEKS R2 R0 K1 ["_signal"]
  NAMECALL R2 R2 K2 ["fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  SETTABLEKS R1 R0 K0 ["_isAssetPreviewing"]
  GETTABLEKS R2 R0 K1 ["_signal"]
  NAMECALL R2 R2 K2 ["fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_11:
  LOADB R3 0
  GETTABLEKS R4 R0 K0 ["_currentTooltipAssetId"]
  JUMPIFNOTEQ R4 R1 [+7]
  GETTABLEKS R4 R0 K1 ["_currentTooltipTypeId"]
  JUMPIFEQ R4 R2 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_isDropdownShown"]
  NOT R1 R2
  JUMPIFNOT R1 [+10]
  GETTABLEKS R2 R0 K1 ["_isAssetPreviewing"]
  NOT R1 R2
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R0 K2 ["_isSearchOptionsShown"]
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R0 K3 ["_isMouseInSearchOptions"]
  NOT R1 R2
  RETURN R1 1

PROTO_13:
  GETTABLEKS R4 R0 K0 ["_isDropdownShown"]
  NOT R3 R4
  JUMPIFNOT R3 [+16]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K1 ["isCurrentTooltip"]
  CALL R3 3 1
  JUMPIFNOT R3 [+10]
  GETTABLEKS R4 R0 K2 ["_isAssetPreviewing"]
  NOT R3 R4
  JUMPIFNOT R3 [+6]
  GETTABLEKS R4 R0 K3 ["_isSearchOptionsShown"]
  JUMPIFNOT R4 [+2]
  GETTABLEKS R4 R0 K4 ["_isMouseInSearchOptions"]
  NOT R3 R4
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Core"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["createSignal"]
  CALL R1 1 1
  NEWTABLE R2 16 0
  SETTABLEKS R2 R2 K8 ["__index"]
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K10 ["new"]
  DUPCLOSURE R3 K11 [PROTO_1]
  SETTABLEKS R3 R2 K12 ["subscribe"]
  DUPCLOSURE R3 K13 [PROTO_2]
  SETTABLEKS R3 R2 K14 ["isShowingModal"]
  DUPCLOSURE R3 K15 [PROTO_3]
  SETTABLEKS R3 R2 K16 ["isShowingSearchOptions"]
  DUPCLOSURE R3 K17 [PROTO_4]
  SETTABLEKS R3 R2 K18 ["isMouseInSearchOptions"]
  DUPCLOSURE R3 K19 [PROTO_5]
  SETTABLEKS R3 R2 K20 ["isAssetPreviewing"]
  DUPCLOSURE R3 K21 [PROTO_6]
  SETTABLEKS R3 R2 K22 ["onTooltipTriggered"]
  DUPCLOSURE R3 K23 [PROTO_7]
  SETTABLEKS R3 R2 K24 ["onDropdownToggled"]
  DUPCLOSURE R3 K25 [PROTO_8]
  SETTABLEKS R3 R2 K26 ["onSearchOptionsToggled"]
  DUPCLOSURE R3 K27 [PROTO_9]
  SETTABLEKS R3 R2 K28 ["onSearchOptionsMouse"]
  DUPCLOSURE R3 K29 [PROTO_10]
  SETTABLEKS R3 R2 K30 ["onAssetPreviewToggled"]
  DUPCLOSURE R3 K31 [PROTO_11]
  SETTABLEKS R3 R2 K32 ["isCurrentTooltip"]
  DUPCLOSURE R3 K33 [PROTO_12]
  SETTABLEKS R3 R2 K34 ["canHoverAsset"]
  DUPCLOSURE R3 K35 [PROTO_13]
  SETTABLEKS R3 R2 K36 ["canShowCurrentTooltip"]
  RETURN R2 1
