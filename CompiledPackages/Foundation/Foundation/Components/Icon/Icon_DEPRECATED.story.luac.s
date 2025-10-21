PROTO_0:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"name", "size"}]
  GETTABLEKS R5 R1 K2 ["name"]
  SETTABLEKS R5 R4 K2 ["name"]
  GETTABLEKS R5 R1 K3 ["size"]
  SETTABLEKS R5 R4 K3 ["size"]
  CALL R2 2 -1
  RETURN R2 -1

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
  GETTABLEKS R4 R5 K9 ["Icon"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K10 ["Enums"]
  GETTABLEKS R5 R6 K11 ["IconSize"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPTABLE R6 K16 [{"summary", "story", "controls"}]
  LOADK R7 K17 ["Icon component for displaying icons"]
  SETTABLEKS R7 R6 K13 ["summary"]
  SETTABLEKS R5 R6 K14 ["story"]
  DUPTABLE R7 K20 [{"name", "size"}]
  NEWTABLE R8 0 3
  LOADK R9 K21 ["icons/common/search"]
  LOADK R10 K22 ["icons/controls/voice/microphone_off_light"]
  LOADK R11 K23 ["icons/controls/voice/video_on_light"]
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R7 K18 ["name"]
  NEWTABLE R8 0 3
  GETTABLEKS R9 R4 K24 ["Medium"]
  GETTABLEKS R10 R4 K25 ["Small"]
  GETTABLEKS R11 R4 K26 ["Large"]
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R7 K19 ["size"]
  SETTABLEKS R7 R6 K15 ["controls"]
  RETURN R6 1
