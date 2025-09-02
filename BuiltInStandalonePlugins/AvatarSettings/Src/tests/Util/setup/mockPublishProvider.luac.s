PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["value"]
  JUMPIF R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["set"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["databaseLoaded"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K1 ["OnInvoke"]
  CALL R0 3 0
  RETURN R0 0

PROTO_2:
  LOADB R0 0
  RETURN R0 1

PROTO_3:
  LOADB R0 0
  RETURN R0 1

PROTO_4:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["PublishProvider: saveUnpublishedSettings should not be called with mockPublishProvider"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["PublishProvider: discardUnpublishedSettings should not be called with mockPublishProvider"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["databaseLoaded"]
  JUMPIFEQKNIL R3 [+4]
  GETTABLEKS R2 R0 K0 ["databaseLoaded"]
  JUMP [+1]
  LOADB R2 1
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["useEffect"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  NEWTABLE R5 0 0
  CALL R3 2 0
  DUPTABLE R3 K5 [{"content"}]
  DUPTABLE R4 K11 [{"databaseLoaded", "canPublish", "isAvatarTypeOutOfSync", "isSettingOutOfSync", "saveUnpublishedSettings", "discardUnpublishedSettings"}]
  SETTABLEKS R1 R4 K0 ["databaseLoaded"]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["canPublish"]
  DUPCLOSURE R5 K12 [PROTO_2]
  SETTABLEKS R5 R4 K7 ["isAvatarTypeOutOfSync"]
  DUPCLOSURE R5 K13 [PROTO_3]
  SETTABLEKS R5 R4 K8 ["isSettingOutOfSync"]
  DUPCLOSURE R5 K14 [PROTO_4]
  SETTABLEKS R5 R4 K9 ["saveUnpublishedSettings"]
  DUPCLOSURE R5 K15 [PROTO_5]
  SETTABLEKS R5 R4 K10 ["discardUnpublishedSettings"]
  SETTABLEKS R4 R3 K4 ["content"]
  GETUPVAL R4 4
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K16 ["Provider"]
  DUPTABLE R6 K18 [{"value"}]
  SETTABLEKS R3 R6 K17 ["value"]
  GETTABLEKS R7 R0 K19 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Contexts"]
  GETTABLEKS R4 R5 K11 ["PublishProvider"]
  GETTABLEKS R3 R4 K12 ["PublishContext"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K13 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K14 ["Util"]
  GETTABLEKS R5 R6 K15 ["InvokeKeys"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K14 ["Util"]
  GETTABLEKS R6 R7 K16 ["settingUtil"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K17 ["ContextServices"]
  GETTABLEKS R7 R6 K18 ["Plugin"]
  GETTABLEKS R8 R5 K19 ["useSetting"]
  GETTABLEKS R9 R3 K20 ["createElement"]
  DUPCLOSURE R10 K21 [PROTO_6]
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R2
  RETURN R10 1
