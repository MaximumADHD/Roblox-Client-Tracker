PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_3:
  RETURN R0 0

PROTO_4:
  LOADB R0 0
  RETURN R0 1

PROTO_5:
  RETURN R0 0

PROTO_6:
  LOADB R0 0
  RETURN R0 1

PROTO_7:
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K10 [{"rememberedFields", "addField", "removeField", "getSearchHistory", "saveSearchHistory", "getIncrementNamesAsync", "setIncrementNames", "getExpandHierarchy", "setExpandHierarchy", "showPlusButtonOnHoverObservable"}]
  GETTABLEKS R2 R0 K0 ["rememberedFields"]
  SETTABLEKS R2 R1 K0 ["rememberedFields"]
  GETTABLEKS R2 R0 K1 ["addField"]
  SETTABLEKS R2 R1 K1 ["addField"]
  GETTABLEKS R2 R0 K2 ["removeField"]
  SETTABLEKS R2 R1 K2 ["removeField"]
  GETTABLEKS R2 R0 K3 ["getSearchHistory"]
  SETTABLEKS R2 R1 K3 ["getSearchHistory"]
  GETTABLEKS R2 R0 K4 ["saveSearchHistory"]
  SETTABLEKS R2 R1 K4 ["saveSearchHistory"]
  GETTABLEKS R2 R0 K5 ["getIncrementNamesAsync"]
  SETTABLEKS R2 R1 K5 ["getIncrementNamesAsync"]
  GETTABLEKS R2 R0 K6 ["setIncrementNames"]
  SETTABLEKS R2 R1 K6 ["setIncrementNames"]
  GETTABLEKS R2 R0 K7 ["getExpandHierarchy"]
  SETTABLEKS R2 R1 K7 ["getExpandHierarchy"]
  GETTABLEKS R2 R0 K8 ["setExpandHierarchy"]
  SETTABLEKS R2 R1 K8 ["setExpandHierarchy"]
  GETTABLEKS R2 R0 K9 ["showPlusButtonOnHoverObservable"]
  SETTABLEKS R2 R1 K9 ["showPlusButtonOnHoverObservable"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["Provider"]
  DUPTABLE R4 K13 [{"value"}]
  SETTABLEKS R1 R4 K12 ["value"]
  GETTABLEKS R5 R0 K14 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Observable"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["createElement"]
  DUPTABLE R4 K21 [{"rememberedFields", "addField", "removeField", "getSearchHistory", "saveSearchHistory", "getIncrementNamesAsync", "setIncrementNames", "getExpandHierarchy", "setExpandHierarchy", "showPlusButtonOnHoverObservable"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["rememberedFields"]
  DUPCLOSURE R5 K22 [PROTO_0]
  SETTABLEKS R5 R4 K12 ["addField"]
  DUPCLOSURE R5 K23 [PROTO_1]
  SETTABLEKS R5 R4 K13 ["removeField"]
  DUPCLOSURE R5 K24 [PROTO_2]
  SETTABLEKS R5 R4 K14 ["getSearchHistory"]
  DUPCLOSURE R5 K25 [PROTO_3]
  SETTABLEKS R5 R4 K15 ["saveSearchHistory"]
  DUPCLOSURE R5 K26 [PROTO_4]
  SETTABLEKS R5 R4 K16 ["getIncrementNamesAsync"]
  DUPCLOSURE R5 K27 [PROTO_5]
  SETTABLEKS R5 R4 K17 ["setIncrementNames"]
  DUPCLOSURE R5 K28 [PROTO_6]
  SETTABLEKS R5 R4 K18 ["getExpandHierarchy"]
  DUPCLOSURE R5 K29 [PROTO_7]
  SETTABLEKS R5 R4 K19 ["setExpandHierarchy"]
  GETTABLEKS R5 R1 K30 ["create"]
  LOADB R6 0
  CALL R5 1 1
  SETTABLEKS R5 R4 K20 ["showPlusButtonOnHoverObservable"]
  GETTABLEKS R5 R2 K31 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K32 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPTABLE R7 K35 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K33 ["Context"]
  SETTABLEKS R6 R7 K34 ["Provider"]
  RETURN R7 1
