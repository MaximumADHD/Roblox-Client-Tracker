PROTO_0:
  NEWTABLE R1 4 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["UNASSIGNED_PARTY_ID"]
  NEWTABLE R3 0 0
  SETTABLE R3 R1 R2
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["party-uuid-1"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["party-uuid-2"]
  DUPTABLE R2 K7 [{"isEmulationEnabled", "playerCount", "parties", "playerMappings"}]
  GETTABLEKS R4 R0 K3 ["isEmulationEnabled"]
  JUMPIFEQKNIL R4 [+4]
  GETTABLEKS R3 R0 K3 ["isEmulationEnabled"]
  JUMP [+1]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["isEmulationEnabled"]
  GETTABLEKS R4 R0 K4 ["playerCount"]
  ORK R3 R4 K8 [6]
  SETTABLEKS R3 R2 K4 ["playerCount"]
  GETTABLEKS R4 R0 K5 ["parties"]
  OR R3 R4 R1
  SETTABLEKS R3 R2 K5 ["parties"]
  GETTABLEKS R3 R0 K6 ["playerMappings"]
  JUMPIF R3 [+1]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K6 ["playerMappings"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K10 ["Provider"]
  DUPTABLE R5 K12 [{"value"}]
  SETTABLEKS R2 R5 K11 ["value"]
  GETTABLEKS R6 R0 K13 ["children"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useContext"]
  GETUPVAL R1 1
  CALL R0 1 1
  JUMPIF R0 [+4]
  GETIMPORT R1 K2 [error]
  LOADK R2 K3 ["Attempted to access Context outside of provider"]
  CALL R1 1 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 1
  CALL R2 1 1
  JUMPIF R2 [+4]
  GETIMPORT R3 K2 [error]
  LOADK R4 K3 ["Attempted to access Context outside of provider"]
  CALL R3 1 0
  MOVE R1 R2
  GETTABLEKS R0 R1 K4 ["isEmulationEnabled"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 1
  CALL R2 1 1
  JUMPIF R2 [+4]
  GETIMPORT R3 K2 [error]
  LOADK R4 K3 ["Attempted to access Context outside of provider"]
  CALL R3 1 0
  MOVE R1 R2
  GETTABLEKS R0 R1 K4 ["playerCount"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 1
  CALL R2 1 1
  JUMPIF R2 [+4]
  GETIMPORT R3 K2 [error]
  LOADK R4 K3 ["Attempted to access Context outside of provider"]
  CALL R3 1 0
  MOVE R1 R2
  GETTABLEKS R0 R1 K4 ["parties"]
  RETURN R0 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 1
  CALL R2 1 1
  JUMPIF R2 [+4]
  GETIMPORT R3 K2 [error]
  LOADK R4 K3 ["Attempted to access Context outside of provider"]
  CALL R3 1 0
  MOVE R1 R2
  GETTABLEKS R0 R1 K4 ["playerMappings"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PartyEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  NEWTABLE R3 0 0
  GETTABLEKS R4 R1 K11 ["createContext"]
  LOADNIL R5
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  DUPCLOSURE R6 K13 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  DUPTABLE R7 K19 [{"provider", "useIsEmulationEnabled", "usePlayerCount", "useParties", "usePlayerMappings"}]
  SETTABLEKS R5 R7 K14 ["provider"]
  DUPCLOSURE R8 K20 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K15 ["useIsEmulationEnabled"]
  DUPCLOSURE R8 K21 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K16 ["usePlayerCount"]
  DUPCLOSURE R8 K22 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K17 ["useParties"]
  DUPCLOSURE R8 K23 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K18 ["usePlayerMappings"]
  RETURN R7 1
