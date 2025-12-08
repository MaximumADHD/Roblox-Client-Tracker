PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["IconButton"]
  DUPTABLE R4 K8 [{"icon", "size", "onActivated", "LayoutOrder"}]
  GETTABLEKS R6 R1 K9 ["isPlaying"]
  JUMPIFNOT R6 [+2]
  LOADK R5 K10 ["icons/controls/media-pause-small"]
  JUMP [+1]
  LOADK R5 K11 ["icons/controls/media-play-small"]
  SETTABLEKS R5 R4 K4 ["icon"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K12 ["Enums"]
  GETTABLEKS R6 R7 K13 ["IconSize"]
  GETTABLEKS R5 R6 K14 ["XSmall"]
  SETTABLEKS R5 R4 K5 ["size"]
  GETTABLEKS R5 R1 K15 ["toggleIsPlayingAsync"]
  SETTABLEKS R5 R4 K6 ["onActivated"]
  GETTABLEKS R5 R0 K7 ["LayoutOrder"]
  SETTABLEKS R5 R4 K7 ["LayoutOrder"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Contexts"]
  GETTABLEKS R3 R4 K9 ["PlayStateContext"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R4 1
