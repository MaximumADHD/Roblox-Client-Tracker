PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_selectionHighlightsEnabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K0 ["_selectionHighlightsEnabled"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ToggleSelectionHighlightsSignal"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K2 [table.clone]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["_collaborators"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_collaborators"]
  GETUPVAL R3 1
  CALL R3 0 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K3 [table.insert]
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["CollaboratorInstanceCreatedSignal"]
  NAMECALL R1 R1 K5 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["_collaborators"]
  LENGTH R3 R4
  LOADN R1 0
  LOADN R2 255
  FORNPREP R1
  GETIMPORT R4 K3 [table.remove]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["_collaborators"]
  CALL R4 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["CollaboratorInstanceDestroyedSignal"]
  NAMECALL R4 R4 K5 ["Fire"]
  CALL R4 1 0
  FORNLOOP R1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SocialPresence"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["mockCollaborator"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Signal"]
  CALL R2 1 1
  NEWTABLE R3 16 0
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K11 ["_collaborators"]
  GETTABLEKS R4 R2 K12 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K13 ["ToggleSelectionHighlightsSignal"]
  GETTABLEKS R4 R2 K12 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K14 ["CollaboratorInstanceCreatedSignal"]
  GETTABLEKS R4 R2 K12 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K15 ["CollaboratorInstanceDestroyedSignal"]
  GETTABLEKS R4 R2 K12 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K16 ["CollaboratorStatusUpdatedSignal"]
  GETTABLEKS R4 R2 K12 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K17 ["CollaboratorIdleUpdate"]
  LOADB R4 1
  SETTABLEKS R4 R3 K18 ["_selectionHighlightsEnabled"]
  DUPCLOSURE R4 K19 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K20 ["GetSelectionHighlightsEnabled"]
  DUPCLOSURE R4 K21 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K22 ["ToggleSelectionHighlights"]
  DUPCLOSURE R4 K23 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K24 ["GetCollaboratorsList"]
  DUPCLOSURE R4 K25 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K26 ["MockAddCollaborator"]
  DUPCLOSURE R4 K27 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K28 ["MockClearCollaborators"]
  RETURN R3 1
