PROTO_0:
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  FASTCALL1 TYPEOF R5 [+3]
  MOVE R7 R5
  GETIMPORT R6 K1 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K2 ["table"] [+5]
  GETUPVAL R6 0
  MOVE R7 R5
  CALL R6 1 0
  JUMP [+15]
  GETUPVAL R7 1
  GETTABLE R6 R7 R5
  JUMPIFNOT R6 [+9]
  GETIMPORT R6 K4 [error]
  LOADK R8 K5 ["Duplicate test ID found: %*"]
  MOVE R10 R5
  NAMECALL R8 R8 K6 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  CALL R6 1 0
  GETUPVAL R6 1
  LOADB R7 1
  SETTABLE R7 R6 R5
  FORGLOOP R1 2 [-27]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["TestLoader"]
  CALL R1 1 1
  DUPTABLE R2 K13 [{"Header", "ThreadsMenu", "ThreadEntry", "ThreadOptionsMenu", "RenameThreadDialog"}]
  DUPTABLE R3 K15 [{"ToggleThreadsMenu"}]
  LOADK R4 K16 ["Assistant-Header-ToggleThreadsMenu"]
  SETTABLEKS R4 R3 K14 ["ToggleThreadsMenu"]
  SETTABLEKS R3 R2 K8 ["Header"]
  DUPTABLE R3 K20 [{"Container", "ExistingThreadButton", "AddThreadButton"}]
  LOADK R4 K21 ["Assistant-ThreadsMenu-Container"]
  SETTABLEKS R4 R3 K17 ["Container"]
  LOADK R4 K22 ["Assistant-ThreadsMenu-ExistingThreadButton"]
  SETTABLEKS R4 R3 K18 ["ExistingThreadButton"]
  LOADK R4 K23 ["Assistant-ThreadsMenu-AddThreadButton"]
  SETTABLEKS R4 R3 K19 ["AddThreadButton"]
  SETTABLEKS R3 R2 K9 ["ThreadsMenu"]
  DUPTABLE R3 K25 [{"OptionsButton"}]
  LOADK R4 K26 ["Assistant-ThreadEntry-OptionsButton"]
  SETTABLEKS R4 R3 K24 ["OptionsButton"]
  SETTABLEKS R3 R2 K10 ["ThreadEntry"]
  DUPTABLE R3 K27 [{"Container"}]
  LOADK R4 K28 ["Assistant-ThreadOptionsMenu-Container"]
  SETTABLEKS R4 R3 K17 ["Container"]
  SETTABLEKS R3 R2 K11 ["ThreadOptionsMenu"]
  DUPTABLE R3 K30 [{"Container", "Input"}]
  LOADK R4 K31 ["Assistant-RenameThreadDialog-Container"]
  SETTABLEKS R4 R3 K17 ["Container"]
  LOADK R4 K32 ["Assistant-RenameThreadDialog-Input"]
  SETTABLEKS R4 R3 K29 ["Input"]
  SETTABLEKS R3 R2 K12 ["RenameThreadDialog"]
  GETTABLEKS R3 R1 K33 ["isCli"]
  CALL R3 0 1
  JUMPIFNOT R3 [+8]
  NEWTABLE R3 0 0
  DUPCLOSURE R4 K34 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  MOVE R5 R4
  MOVE R6 R2
  CALL R5 1 0
  RETURN R2 1
