PROTO_0:
  GETIMPORT R1 K1 [error]
  LOADK R3 K2 ["Opening popup %* with no popup context"]
  GETTABLEKS R5 R0 K3 ["title"]
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K1 [{"popupComponent"}]
  GETTABLEKS R2 R0 K0 ["popupComponent"]
  SETTABLEKS R2 R1 K0 ["popupComponent"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["Provider"]
  DUPTABLE R4 K5 [{"value"}]
  SETTABLEKS R1 R4 K4 ["value"]
  GETTABLEKS R5 R0 K6 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["UI"]
  GETTABLEKS R2 R3 K2 ["DockWidget"]
  DUPTABLE R3 K9 [{"Id", "Enabled", "Size", "Title", "InitialDockState", "OnClose"}]
  GETTABLEKS R4 R0 K10 ["id"]
  SETTABLEKS R4 R3 K3 ["Id"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["Enabled"]
  GETTABLEKS R4 R0 K11 ["size"]
  SETTABLEKS R4 R3 K5 ["Size"]
  GETTABLEKS R4 R0 K12 ["title"]
  SETTABLEKS R4 R3 K6 ["Title"]
  GETIMPORT R4 K15 [Enum.InitialDockState.Float]
  SETTABLEKS R4 R3 K7 ["InitialDockState"]
  GETTABLEKS R4 R0 K16 ["onClose"]
  SETTABLEKS R4 R3 K8 ["OnClose"]
  GETTABLEKS R4 R0 K17 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["IsStudio"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["StudioProvider used outside of Studio"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  DUPTABLE R1 K5 [{"popupComponent"}]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K4 ["popupComponent"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["createElement"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K7 ["Provider"]
  DUPTABLE R4 K9 [{"value"}]
  SETTABLEKS R1 R4 K8 ["value"]
  GETTABLEKS R5 R0 K10 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Parent"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_0]
  DUPTABLE R5 K15 [{"popupComponent"}]
  SETTABLEKS R4 R5 K14 ["popupComponent"]
  GETTABLEKS R6 R3 K16 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R6
  DUPCLOSURE R8 K18 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  DUPCLOSURE R9 K19 [PROTO_3]
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R6
  DUPTABLE R10 K23 [{"Context", "Provider", "StudioProvider"}]
  SETTABLEKS R6 R10 K20 ["Context"]
  SETTABLEKS R7 R10 K21 ["Provider"]
  SETTABLEKS R9 R10 K22 ["StudioProvider"]
  RETURN R10 1
