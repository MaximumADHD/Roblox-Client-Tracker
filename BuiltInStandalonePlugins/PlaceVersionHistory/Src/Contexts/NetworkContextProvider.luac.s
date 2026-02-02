PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Provider"]
  DUPTABLE R3 K3 [{"value"}]
  DUPTABLE R4 K11 [{"getPlaces", "getContributors", "getVersionHistory", "saveVersionNotes", "getUserName", "getPlaceName", "getNotesValidation"}]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K4 ["getPlaces"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K5 ["getContributors"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K6 ["getVersionHistory"]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K7 ["saveVersionNotes"]
  GETUPVAL R5 6
  SETTABLEKS R5 R4 K8 ["getUserName"]
  GETUPVAL R5 7
  SETTABLEKS R5 R4 K9 ["getPlaceName"]
  GETUPVAL R5 8
  SETTABLEKS R5 R4 K10 ["getNotesValidation"]
  SETTABLEKS R4 R3 K2 ["value"]
  GETTABLEKS R4 R0 K12 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceVersionHistory"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K8 ["Src"]
  GETTABLEKS R2 R3 K9 ["Contexts"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K10 ["NetworkContext"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K11 ["Network"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["GetPlaces"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K13 ["GetContributors"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K14 ["GetVersionHistory"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R4 K15 ["SaveVersionNotes"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R4 K16 ["GetUserName"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R4 K17 ["GetPlaceName"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R4 K18 ["GetNotesValidation"]
  CALL R11 1 1
  DUPCLOSURE R12 K19 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  RETURN R12 1
