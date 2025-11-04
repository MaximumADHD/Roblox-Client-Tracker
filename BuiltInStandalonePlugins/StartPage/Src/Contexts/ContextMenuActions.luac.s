PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useContext"]
  GETUPVAL R1 1
  CALL R0 1 1
  JUMPIFNOTEQKNIL R0 [+5]
  GETIMPORT R1 K2 [error]
  LOADK R2 K3 ["Wrap the component or one of its ancestors with ContextMenuActions.Provider"]
  CALL R1 1 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createContext"]
  MOVE R3 R2
  NEWTABLE R4 0 0
  CALL R3 1 1
  DUPCLOSURE R4 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETGLOBAL R4 K10 ["useContextMenuActions"]
  DUPTABLE R4 K12 [{"Provider", "useContextMenuActions"}]
  GETTABLEKS R5 R3 K11 ["Provider"]
  SETTABLEKS R5 R4 K11 ["Provider"]
  GETGLOBAL R5 K10 ["useContextMenuActions"]
  SETTABLEKS R5 R4 K10 ["useContextMenuActions"]
  RETURN R4 1
