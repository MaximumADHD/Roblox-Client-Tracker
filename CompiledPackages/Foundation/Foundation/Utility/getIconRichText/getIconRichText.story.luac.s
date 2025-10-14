PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"Text", "fontStyle", "RichText", "tag"}]
  LOADK R5 K6 ["Your balance is %* 200"]
  GETUPVAL R7 2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K7 ["Robux"]
  CALL R7 1 1
  NAMECALL R5 R5 K8 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  SETTABLEKS R4 R3 K1 ["Text"]
  DUPTABLE R4 K10 [{"FontSize"}]
  GETTABLEKS R6 R0 K11 ["controls"]
  GETTABLEKS R5 R6 K12 ["textSize"]
  SETTABLEKS R5 R4 K9 ["FontSize"]
  SETTABLEKS R4 R3 K2 ["fontStyle"]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["RichText"]
  LOADK R4 K13 ["auto-xy content-default"]
  SETTABLEKS R4 R3 K4 ["tag"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R5 R1 K0 ["Color"]
  GETTABLEKS R4 R5 K1 ["Content"]
  GETTABLEKS R3 R4 K2 ["Emphasis"]
  GETTABLEKS R2 R3 K3 ["Color3"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K9 [{"Text", "fontStyle", "RichText", "tag"}]
  LOADK R7 K10 ["Your balance is <b><font color=\"#%*\">%* 200</font></b>"]
  NAMECALL R9 R2 K11 ["ToHex"]
  CALL R9 1 1
  GETUPVAL R10 3
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K12 ["Robux"]
  CALL R10 1 1
  NAMECALL R7 R7 K13 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K5 ["Text"]
  DUPTABLE R6 K15 [{"FontSize"}]
  GETTABLEKS R8 R0 K16 ["controls"]
  GETTABLEKS R7 R8 K17 ["textSize"]
  SETTABLEKS R7 R6 K14 ["FontSize"]
  SETTABLEKS R6 R5 K6 ["fontStyle"]
  LOADB R6 1
  SETTABLEKS R6 R5 K7 ["RichText"]
  LOADK R6 K18 ["auto-xy content-default"]
  SETTABLEKS R6 R5 K8 ["tag"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["BuilderIcons"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["Icon"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["Text"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K12 ["Providers"]
  GETTABLEKS R8 R9 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["useTokens"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K15 ["Utility"]
  GETTABLEKS R8 R9 K16 ["getIconRichText"]
  CALL R7 1 1
  DUPTABLE R8 K20 [{"summary", "stories", "controls"}]
  LOADK R9 K11 ["Text"]
  SETTABLEKS R9 R8 K17 ["summary"]
  NEWTABLE R9 0 2
  DUPTABLE R10 K23 [{"name", "story"}]
  LOADK R11 K24 ["Rich text icon"]
  SETTABLEKS R11 R10 K21 ["name"]
  DUPCLOSURE R11 K25 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K22 ["story"]
  DUPTABLE R11 K23 [{"name", "story"}]
  LOADK R12 K26 ["Rich text icon, custom color"]
  SETTABLEKS R12 R11 K21 ["name"]
  DUPCLOSURE R12 K27 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K22 ["story"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K18 ["stories"]
  DUPTABLE R9 K29 [{"textSize"}]
  LOADN R10 24
  SETTABLEKS R10 R9 K28 ["textSize"]
  SETTABLEKS R9 R8 K19 ["controls"]
  RETURN R8 1
