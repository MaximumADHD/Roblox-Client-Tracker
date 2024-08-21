PROTO_0:
  JUMPIFNOTEQKS R1 K0 ["Small"] [+3]
  LOADK R2 K1 ["Standard"]
  JUMP [+1]
  LOADK R2 K2 ["Medium"]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+6]
  JUMPIFNOT R0 [+2]
  JUMPIFNOTEQKS R0 K3 [""] [+6]
  LOADNIL R3
  RETURN R3 1
  JUMP [+2]
  JUMPIF R0 [+1]
  LOADK R0 K4 ["Placeholder"]
  JUMPIFNOTEQKS R1 K0 ["Small"] [+3]
  MOVE R3 R1
  JUMP [+1]
  LOADK R3 K3 [""]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["getThemeName"]
  CALL R4 0 1
  LOADK R6 K6 ["rbxasset://studio_svg_textures/Shared/Ribbon/%*/%*/Ribbon%*%*.png"]
  MOVE R8 R4
  MOVE R9 R2
  MOVE R10 R0
  MOVE R11 R3
  NAMECALL R6 R6 K7 ["format"]
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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagStudioActionsRespectNilIcon"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K14 ["getPathForIcon"]
  RETURN R3 1
