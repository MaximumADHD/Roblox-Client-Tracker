PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SetForcedPositionAlpha"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Length"]
  DIV R2 R0 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["SetForcedPositionAlpha"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ForcedPositionAlpha"]
  JUMPIFNOTEQKNIL R2 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["AnimationPositionAlpha"]
  JUMP [+1]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  LOADK R3 K0 ["AnimationControllerDisplay"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K7 [{"AnchorPoint", "Position", "Padding", "Size"}]
  GETIMPORT R5 K10 [Vector2.new]
  LOADN R6 0
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["AnchorPoint"]
  GETTABLEKS R5 R1 K4 ["Position"]
  SETTABLEKS R5 R4 K4 ["Position"]
  GETTABLEKS R5 R1 K5 ["Padding"]
  SETTABLEKS R5 R4 K5 ["Padding"]
  GETTABLEKS R5 R1 K6 ["Size"]
  SETTABLEKS R5 R4 K6 ["Size"]
  DUPTABLE R5 K12 [{"Slider"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K19 [{"Size", "IsPlaying", "Playhead", "OnSliderPlayheadChanged", "OnPlayPauseClicked", "ShowTime", "TrackLength"}]
  GETIMPORT R9 K22 [UDim2.fromScale]
  LOADN R10 1
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K6 ["Size"]
  GETTABLEKS R10 R0 K23 ["ForcedPositionAlpha"]
  JUMPIFEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K13 ["IsPlaying"]
  GETTABLEKS R10 R0 K23 ["ForcedPositionAlpha"]
  JUMPIF R10 [+2]
  GETTABLEKS R10 R0 K24 ["AnimationPositionAlpha"]
  GETTABLEKS R11 R0 K25 ["Length"]
  MUL R9 R10 R11
  SETTABLEKS R9 R8 K14 ["Playhead"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K15 ["OnSliderPlayheadChanged"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K16 ["OnPlayPauseClicked"]
  LOADB R9 0
  SETTABLEKS R9 R8 K17 ["ShowTime"]
  GETTABLEKS R9 R0 K25 ["Length"]
  SETTABLEKS R9 R8 K18 ["TrackLength"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["Slider"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AvatarToolsShared"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Resources"]
  GETTABLEKS R5 R6 K12 ["Theme"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["Pane"]
  GETTABLEKS R8 R2 K15 ["ContextServices"]
  GETTABLEKS R7 R8 K16 ["Stylizer"]
  GETTABLEKS R9 R1 K17 ["Components"]
  GETTABLEKS R8 R9 K18 ["AnimationPlaybackSlider"]
  DUPCLOSURE R9 K19 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R8
  RETURN R9 1
