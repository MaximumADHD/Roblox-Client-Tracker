PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  GETUPVAL R4 1
  CALL R2 2 1
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 4
  GETUPVAL R6 5
  MOVE R7 R2
  DUPTABLE R8 K3 [{"tag", "ref"}]
  LOADK R9 K4 ["auto-xy size-full col align-y-center align-x-center gap-small"]
  SETTABLEKS R9 R8 K1 ["tag"]
  SETTABLEKS R1 R8 K2 ["ref"]
  CALL R6 2 1
  DUPTABLE R7 K8 [{"Icon", "Text", "Button"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K13 [{"name", "size", "style", "LayoutOrder"}]
  GETTABLEKS R12 R2 K14 ["icon"]
  GETTABLEKS R11 R12 K9 ["name"]
  SETTABLEKS R11 R10 K9 ["name"]
  GETTABLEKS R12 R2 K14 ["icon"]
  GETTABLEKS R11 R12 K10 ["size"]
  SETTABLEKS R11 R10 K10 ["size"]
  GETTABLEKS R13 R3 K15 ["Color"]
  GETTABLEKS R12 R13 K16 ["Content"]
  GETTABLEKS R11 R12 K17 ["Default"]
  SETTABLEKS R11 R10 K11 ["style"]
  LOADN R11 1
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K5 ["Icon"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 7
  DUPTABLE R10 K18 [{"Text", "LayoutOrder", "tag"}]
  GETTABLEKS R11 R2 K19 ["text"]
  SETTABLEKS R11 R10 K6 ["Text"]
  LOADN R11 2
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  LOADK R11 K20 ["size-full-0 auto-y text-body-large content-default text-wrap text-align-x-center"]
  SETTABLEKS R11 R10 K1 ["tag"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K6 ["Text"]
  GETTABLEKS R9 R2 K21 ["button"]
  JUMPIFNOT R9 [+33]
  GETTABLEKS R10 R2 K21 ["button"]
  GETTABLEKS R9 R10 K22 ["onActivated"]
  JUMPIFNOT R9 [+28]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K23 [{"text", "icon", "onActivated", "LayoutOrder"}]
  GETTABLEKS R12 R2 K21 ["button"]
  GETTABLEKS R11 R12 K19 ["text"]
  SETTABLEKS R11 R10 K19 ["text"]
  GETTABLEKS R12 R2 K21 ["button"]
  GETTABLEKS R11 R12 K14 ["icon"]
  SETTABLEKS R11 R10 K14 ["icon"]
  GETTABLEKS R12 R2 K21 ["button"]
  GETTABLEKS R11 R12 K22 ["onActivated"]
  SETTABLEKS R11 R10 K22 ["onActivated"]
  LOADN R11 3
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K7 ["Button"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Button"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Icon"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K11 ["Text"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K8 ["Components"]
  GETTABLEKS R7 R8 K12 ["View"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K13 ["Enums"]
  GETTABLEKS R8 R9 K14 ["IconSize"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K15 ["Providers"]
  GETTABLEKS R10 R11 K16 ["Style"]
  GETTABLEKS R9 R10 K17 ["useTokens"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K18 ["Utility"]
  GETTABLEKS R10 R11 K19 ["withDefaults"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K18 ["Utility"]
  GETTABLEKS R12 R13 K20 ["Localization"]
  GETTABLEKS R11 R12 K21 ["Translator"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K8 ["Components"]
  GETTABLEKS R12 R13 K22 ["Types"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R0 K18 ["Utility"]
  GETTABLEKS R13 R14 K23 ["withCommonProps"]
  CALL R12 1 1
  DUPTABLE R13 K27 [{"icon", "text", "button"}]
  DUPTABLE R14 K30 [{"name", "size"}]
  LOADK R15 K31 ["icons/status/oof_xlarge"]
  SETTABLEKS R15 R14 K28 ["name"]
  GETTABLEKS R15 R7 K32 ["Large"]
  SETTABLEKS R15 R14 K29 ["size"]
  SETTABLEKS R14 R13 K24 ["icon"]
  LOADK R16 K33 ["CommonUI.Controls.NoResultsFound"]
  NAMECALL R14 R10 K34 ["FormatByKey"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["text"]
  DUPTABLE R14 K36 [{"icon", "text", "onActivated"}]
  LOADK R15 K37 ["icons/common/refresh"]
  SETTABLEKS R15 R14 K24 ["icon"]
  LOADK R17 K38 ["CommonUI.Controls.Action.Refresh"]
  NAMECALL R15 R10 K34 ["FormatByKey"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["text"]
  LOADNIL R15
  SETTABLEKS R15 R14 K35 ["onActivated"]
  SETTABLEKS R14 R13 K26 ["button"]
  DUPCLOSURE R14 K39 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  GETTABLEKS R15 R2 K40 ["memo"]
  GETTABLEKS R16 R2 K41 ["forwardRef"]
  MOVE R17 R14
  CALL R16 1 -1
  CALL R15 -1 -1
  RETURN R15 -1
