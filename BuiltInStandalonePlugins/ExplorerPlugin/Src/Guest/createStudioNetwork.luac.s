PROTO_0:
  GETUPVAL R1 0
  LOADK R2 K0 ["Sending message: %q"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["fromGuest"]
  GETTABLEKS R3 R4 K2 ["message"]
  MOVE R4 R0
  NAMECALL R1 R1 K3 ["Invoke"]
  CALL R1 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADK R1 K0 ["Starting connection"]
  CALL R0 1 0
  GETUPVAL R2 1
  JUMPIFEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K1 [+4]
  LOADK R2 K1 ["Connecting to host when there is already an active connection"]
  GETIMPORT R0 K3 [assert]
  CALL R0 2 0
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  DUPTABLE R1 K8 [{"identifier", "disconnectSignal", "messageReceivedSignal", "sendMessage"}]
  GETUPVAL R2 4
  SETTABLEKS R2 R1 K4 ["identifier"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K9 ["Signal"]
  GETTABLEKS R2 R3 K10 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K5 ["disconnectSignal"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K9 ["Signal"]
  GETTABLEKS R2 R3 K10 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K6 ["messageReceivedSignal"]
  SETTABLEKS R0 R1 K7 ["sendMessage"]
  SETUPVAL R1 1
  GETUPVAL R2 6
  MOVE R4 R1
  NAMECALL R2 R2 K11 ["Fire"]
  CALL R2 2 0
  GETUPVAL R2 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K12 ["fromGuest"]
  GETTABLEKS R4 R5 K13 ["connect"]
  GETUPVAL R5 4
  NAMECALL R2 R2 K14 ["Invoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+5]
  GETUPVAL R0 1
  LOADK R1 K0 ["Disconnecting, but no active connection"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K1 [+4]
  LOADK R2 K1 ["Luau"]
  GETIMPORT R0 K3 [assert]
  CALL R0 2 0
  GETUPVAL R0 1
  LOADK R1 K4 ["Disconnecting"]
  CALL R0 1 0
  GETUPVAL R0 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["fromGuest"]
  GETTABLEKS R2 R3 K6 ["disconnect"]
  GETUPVAL R3 4
  NAMECALL R0 R0 K7 ["Invoke"]
  CALL R0 3 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K8 ["disconnectSignal"]
  NAMECALL R0 R0 K9 ["Fire"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  JUMPIFNOTEQKNIL R0 [+5]
  GETUPVAL R0 2
  LOADK R1 K1 ["Disconnecting, but no active connection"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R2 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K2 [+4]
  LOADK R2 K2 ["Luau"]
  GETIMPORT R0 K4 [assert]
  CALL R0 2 0
  GETUPVAL R0 2
  LOADK R1 K5 ["Disconnecting"]
  CALL R0 1 0
  GETUPVAL R0 3
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K6 ["fromGuest"]
  GETTABLEKS R2 R3 K7 ["disconnect"]
  GETUPVAL R3 5
  NAMECALL R0 R0 K8 ["Invoke"]
  CALL R0 3 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K9 ["disconnectSignal"]
  NAMECALL R0 R0 K10 ["Fire"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["HostDataModelType"]
  GETTABLEKS R1 R2 K1 ["Name"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Signal"]
  GETTABLEKS R2 R3 K3 ["new"]
  CALL R2 0 1
  LOADNIL R3
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE REF R3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  NEWCLOSURE R5 P1
  CAPTURE REF R3
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["fromHost"]
  GETTABLEKS R8 R9 K5 ["starting"]
  MOVE R9 R4
  NAMECALL R6 R0 K6 ["OnInvoke"]
  CALL R6 3 1
  GETUPVAL R7 3
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["fromHost"]
  GETTABLEKS R9 R10 K7 ["itemStarted"]
  NAMECALL R7 R7 K8 ["HasItem"]
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  MOVE R7 R4
  CALL R7 0 0
  NEWCLOSURE R7 P2
  CAPTURE VAL R6
  CAPTURE REF R3
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  DUPTABLE R8 K10 [{"connectSignal"}]
  SETTABLEKS R2 R8 K9 ["connectSignal"]
  MOVE R9 R7
  CLOSEUPVALS R3
  RETURN R8 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MemStorageService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["ExplorerPlugin"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Explorer"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K12 ["Src"]
  GETTABLEKS R5 R6 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["StudioProtocolConstants"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K13 ["Util"]
  GETTABLEKS R4 R5 K15 ["createDebugLogger"]
  LOADK R5 K16 ["createStudioNetwork"]
  CALL R4 1 1
  DUPCLOSURE R5 K17 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R0
  RETURN R5 1
