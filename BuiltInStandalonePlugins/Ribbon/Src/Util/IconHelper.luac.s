PROTO_0:
  JUMPIFEQKNIL R0 [+10]
  JUMPIFEQKS R0 K0 [""] [+8]
  LOADK R4 K1 ["^%w+://.*$"]
  NAMECALL R2 R0 K2 ["match"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+2]
  RETURN R0 1
  JUMPIFNOT R0 [+7]
  JUMPIFEQKS R0 K0 [""] [+6]
  LOADK R4 K3 ["^%w+$"]
  NAMECALL R2 R0 K2 ["match"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  JUMPIFNOTEQKS R1 K4 ["Small"] [+3]
  MOVE R2 R1
  JUMP [+1]
  LOADK R2 K0 [""]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["getThemeName"]
  CALL R3 0 1
  JUMPIFNOTEQKS R1 K4 ["Small"] [+3]
  LOADK R4 K6 ["Standard"]
  JUMP [+1]
  LOADK R4 K7 ["Medium"]
  LOADK R6 K8 ["rbxasset://studio_svg_textures/Shared/Ribbon/%*/%*/Ribbon%*%*.png"]
  MOVE R8 R3
  MOVE R9 R4
  MOVE R10 R0
  MOVE R11 R2
  NAMECALL R6 R6 K9 ["format"]
  CALL R6 5 1
  MOVE R5 R6
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Style"]
  GETTABLEKS R2 R3 K9 ["ThemeSwitcher"]
  NEWTABLE R3 1 0
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K11 ["getPathForIcon"]
  RETURN R3 1
