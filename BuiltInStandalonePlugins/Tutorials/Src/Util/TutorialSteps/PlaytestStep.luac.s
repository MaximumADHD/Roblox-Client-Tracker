PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["callout"]
  NAMECALL R0 R0 K1 ["Destroy"]
  CALL R0 1 0
  GETUPVAL R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["tutorial"]
  DUPTABLE R3 K7 [{"title", "description", "target", "anchorPoint"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["tutorial"]
  GETTABLEKS R4 R5 K8 ["localization"]
  LOADK R6 K9 ["Tutorial"]
  LOADK R7 K10 ["StopPlaytest_Title"]
  NAMECALL R4 R4 K11 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K3 ["title"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["tutorial"]
  GETTABLEKS R4 R5 K8 ["localization"]
  LOADK R6 K9 ["Tutorial"]
  LOADK R7 K12 ["StopPlaytest_Description"]
  NAMECALL R4 R4 K11 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K4 ["description"]
  LOADK R4 K13 ["simulationResetAction"]
  SETTABLEKS R4 R3 K5 ["target"]
  GETIMPORT R4 K16 [Vector2.new]
  LOADK R5 K17 [0.5]
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K6 ["anchorPoint"]
  NAMECALL R1 R1 K18 ["showCallout"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["callout"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["complete"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["tutorial"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K1 ["startPlaying"]
  GETTABLEKS R1 R0 K0 ["tutorial"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K2 ["stopPlaying"]
  GETTABLEKS R1 R0 K0 ["tutorial"]
  DUPTABLE R3 K7 [{"title", "description", "target", "anchorPoint"}]
  GETTABLEKS R5 R0 K8 ["data"]
  GETTABLEKS R4 R5 K3 ["title"]
  SETTABLEKS R4 R3 K3 ["title"]
  GETTABLEKS R5 R0 K8 ["data"]
  GETTABLEKS R4 R5 K4 ["description"]
  SETTABLEKS R4 R3 K4 ["description"]
  LOADK R4 K9 ["playGameActionGroup"]
  SETTABLEKS R4 R3 K5 ["target"]
  GETIMPORT R4 K12 [Vector2.new]
  LOADK R5 K13 [0.5]
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K6 ["anchorPoint"]
  NAMECALL R1 R1 K14 ["showCallout"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K15 ["callout"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["callout"]
  NAMECALL R1 R1 K1 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["tutorial"]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["startPlaying"]
  GETTABLEKS R1 R0 K2 ["tutorial"]
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["stopPlaying"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["TutorialStep"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["extend"]
  LOADK R2 K7 ["Playtest"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_2]
  SETTABLEKS R2 R1 K9 ["bind"]
  DUPCLOSURE R2 K10 [PROTO_3]
  SETTABLEKS R2 R1 K11 ["unbind"]
  RETURN R1 1
