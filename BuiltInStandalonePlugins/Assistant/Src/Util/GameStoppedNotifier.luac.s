PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["GAME_STOPPED_KEY"]
  LOADNIL R3
  NAMECALL R0 R0 K1 ["FireGuest"]
  CALL R0 3 0
  RETURN R0 0

PROTO_1:
  JUMPIFEQKS R0 K0 ["Server"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["GameStoppedNotifier can only be initialized for server data model"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["create"]
  DUPTABLE R3 K8 [{"plugin", "isGuest", "isHost"}]
  SETTABLEKS R1 R3 K5 ["plugin"]
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["isGuest"]
  LOADB R4 1
  SETTABLEKS R4 R3 K7 ["isHost"]
  CALL R2 1 1
  GETIMPORT R3 K10 [game]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  NAMECALL R3 R3 K11 ["BindToClose"]
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  NAMECALL R3 R0 K0 ["IsGuest"]
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["subscribeGameStopped should only be called on the guest DM (standalone DM)"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["GAME_STOPPED_KEY"]
  MOVE R5 R1
  NAMECALL R2 R0 K5 ["OnGuestEvent"]
  CALL R2 3 2
  JUMPIF R3 [+4]
  GETIMPORT R4 K7 [error]
  LOADK R5 K1 ["subscribeGameStopped should only be called on the guest DM (standalone DM)"]
  CALL R4 1 0
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AssistantUI"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["DMNetworking"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["StudioNetworking"]
  CALL R3 1 1
  NEWTABLE R4 4 0
  LOADK R5 K12 ["GameStoppedNotifier_GameStopped"]
  SETTABLEKS R5 R4 K13 ["GAME_STOPPED_KEY"]
  DUPCLOSURE R5 K14 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K15 ["init"]
  DUPCLOSURE R5 K16 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K17 ["subscribeGameStopped"]
  RETURN R4 1
