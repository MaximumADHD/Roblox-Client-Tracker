PROTO_0:
  GETUPVAL R0 0
  JUMPIFEQKS R0 K0 ["mapping"] [+4]
  GETUPVAL R0 1
  LOADK R1 K0 ["mapping"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFEQKS R0 K0 ["tpose"] [+4]
  GETUPVAL R0 1
  LOADK R1 K0 ["tpose"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["visible"]
  JUMPIFNOTEQKB R1 FALSE [+3]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K1 ["mode"]
  GETTABLEKS R2 R0 K2 ["onSelect"]
  GETTABLEKS R3 R0 K3 ["localization"]
  NEWTABLE R4 0 2
  DUPTABLE R5 K10 [{"Type", "Tooltip", "TooltipDescription", "Icon", "Selected", "OnClick"}]
  LOADK R6 K11 ["Button"]
  SETTABLEKS R6 R5 K4 ["Type"]
  LOADK R8 K12 ["Mode"]
  LOADK R9 K13 ["MappingTooltip"]
  NAMECALL R6 R3 K14 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K5 ["Tooltip"]
  LOADK R8 K12 ["Mode"]
  LOADK R9 K13 ["MappingTooltip"]
  NAMECALL R6 R3 K14 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["TooltipDescription"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K15 ["MAPPING"]
  SETTABLEKS R6 R5 K7 ["Icon"]
  JUMPIFEQKS R1 K16 ["mapping"] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["Selected"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K9 ["OnClick"]
  DUPTABLE R6 K10 [{"Type", "Tooltip", "TooltipDescription", "Icon", "Selected", "OnClick"}]
  LOADK R7 K11 ["Button"]
  SETTABLEKS R7 R6 K4 ["Type"]
  LOADK R9 K12 ["Mode"]
  LOADK R10 K17 ["TPose"]
  NAMECALL R7 R3 K14 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["Tooltip"]
  LOADK R9 K12 ["Mode"]
  LOADK R10 K18 ["TPoseTooltip"]
  NAMECALL R7 R3 K14 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K6 ["TooltipDescription"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K19 ["TPOSE"]
  SETTABLEKS R7 R6 K7 ["Icon"]
  JUMPIFEQKS R1 K20 ["tpose"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K8 ["Selected"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K9 ["OnClick"]
  SETLIST R4 R5 2 [1]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K21 ["createElement"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K22 ["Toolbar"]
  DUPTABLE R7 K26 [{"InitialPosition", "VerticalItems", "DisplayOrder"}]
  LOADK R8 K27 ["Top"]
  SETTABLEKS R8 R7 K23 ["InitialPosition"]
  SETTABLEKS R4 R7 K24 ["VerticalItems"]
  LOADN R8 10
  SETTABLEKS R8 R7 K25 ["DisplayOrder"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AdaptiveAnimationSupport"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ViewportToolingFramework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K11 ["Resources"]
  GETTABLEKS R5 R6 K12 ["Constants"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R5 1
