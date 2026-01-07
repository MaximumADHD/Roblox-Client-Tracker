PROTO_0:
  JUMPIFNOTEQKNIL R1 [+66]
  DUPTABLE R2 K7 [{"value", "className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K0 ["value"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  LOADK R4 K10 ["Instance"]
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K1 ["className"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  LOADK R4 K11 [""]
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K2 ["name"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K3 ["isAutoUpdatedPackageLink"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K4 ["isClientScript"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K5 ["isDisabledScript"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K6 ["isHiddenGui"]
  RETURN R2 1
  DUPTABLE R2 K7 [{"value", "className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  GETTABLEKS R5 R0 K12 ["instanceRegistry"]
  GETTABLEKS R4 R5 K13 ["getIdByInstance"]
  MOVE R5 R1
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K0 ["value"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["className"]
  GETTABLEKS R4 R5 K14 ["getValue"]
  MOVE R5 R1
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K1 ["className"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["name"]
  GETTABLEKS R4 R5 K14 ["getValue"]
  MOVE R5 R1
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K2 ["name"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["isAutoUpdatedPackageLink"]
  GETTABLEKS R4 R5 K14 ["getValue"]
  MOVE R5 R1
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K3 ["isAutoUpdatedPackageLink"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["isClientScript"]
  GETTABLEKS R4 R5 K14 ["getValue"]
  MOVE R5 R1
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K4 ["isClientScript"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["isDisabledScript"]
  GETTABLEKS R4 R5 K14 ["getValue"]
  MOVE R5 R1
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K5 ["isDisabledScript"]
  DUPTABLE R3 K9 [{"value", "multiple"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["isHiddenGui"]
  GETTABLEKS R4 R5 K14 ["getValue"]
  MOVE R5 R1
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["value"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["multiple"]
  SETTABLEKS R3 R2 K6 ["isHiddenGui"]
  RETURN R2 1

PROTO_1:
  LOADB R3 1
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K0 ["multiple"]
  JUMPIF R9 [+2]
  LOADB R3 0
  JUMP [+2]
  FORGLOOP R4 2 [-6]
  JUMPIFNOT R3 [+2]
  LOADB R4 1
  RETURN R4 1
  GETTABLEKS R5 R1 K1 ["value"]
  GETTABLEKS R4 R5 K1 ["value"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R6 R0 K2 ["instanceRegistry"]
  GETTABLEKS R5 R6 K3 ["getIdByInstance"]
  MOVE R6 R2
  CALL R5 1 1
  JUMP [+1]
  LOADNIL R5
  JUMPIFEQ R5 R4 [+6]
  GETTABLEKS R6 R1 K1 ["value"]
  LOADB R7 1
  SETTABLEKS R7 R6 K0 ["multiple"]
  JUMPIF R2 [+13]
  JUMPIFNOT R4 [+12]
  GETUPVAL R6 0
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLE R11 R1 R9
  LOADB R12 1
  SETTABLEKS R12 R11 K0 ["multiple"]
  FORGLOOP R6 2 [-5]
  LOADB R6 1
  RETURN R6 1
  JUMPIFNOT R2 [+19]
  GETUPVAL R6 0
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R10 K4 ["getValue"]
  MOVE R12 R2
  CALL R11 1 1
  GETTABLE R13 R1 R9
  GETTABLEKS R12 R13 K1 ["value"]
  JUMPIFEQ R11 R12 [+5]
  GETTABLE R11 R1 R9
  LOADB R12 1
  SETTABLEKS R12 R11 K0 ["multiple"]
  FORGLOOP R6 2 [-14]
  LOADB R6 1
  MOVE R7 R1
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLEKS R12 R11 K0 ["multiple"]
  JUMPIF R12 [+2]
  LOADB R6 0
  RETURN R6 1
  FORGLOOP R7 2 [-6]
  RETURN R6 1

PROTO_2:
  JUMPIFEQKS R4 K0 ["value"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K1 [+4]
  LOADK R8 K1 ["Instanceref can only set the value part, others are readonly"]
  GETIMPORT R6 K3 [assert]
  CALL R6 2 0
  JUMPIFNOT R5 [+7]
  GETTABLEKS R7 R0 K4 ["instanceRegistry"]
  GETTABLEKS R6 R7 K5 ["getInstanceById"]
  MOVE R7 R5
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  MOVE R9 R2
  MOVE R7 R3
  LOADN R8 1
  FORNPREP R7
  SETTABLE R6 R1 R9
  FORNLOOP R7
  LOADNIL R7
  RETURN R7 1

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  MOVE R5 R4
  CALL R5 0 0
  FORGLOOP R0 2 [-3]
  RETURN R0 0

PROTO_5:
  JUMPIF R1 [+2]
  DUPCLOSURE R3 K0 [PROTO_3]
  RETURN R3 1
  NEWTABLE R3 0 0
  GETUPVAL R4 0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  MOVE R10 R3
  GETTABLEKS R11 R8 K1 ["watch"]
  MOVE R12 R1
  MOVE R13 R2
  CALL R11 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R9 K4 [table.insert]
  CALL R9 -1 0
  FORGLOOP R4 2 [-11]
  NEWCLOSURE R4 P1
  CAPTURE VAL R3
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K6 ["FieldTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K7 ["InstanceClassName"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["InstanceName"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["IsAutoUpdatedPackageLink"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K10 ["IsClientScript"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K11 ["IsDisabledScript"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K12 ["IsHiddenGui"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R0 K13 ["PropertyEditorTypes"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R0 K14 ["PropertyTypes"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R0 K15 ["RpcTypes"]
  CALL R10 1 1
  DUPTABLE R11 K22 [{"className", "name", "isAutoUpdatedPackageLink", "isClientScript", "isDisabledScript", "isHiddenGui"}]
  SETTABLEKS R2 R11 K16 ["className"]
  SETTABLEKS R3 R11 K17 ["name"]
  SETTABLEKS R4 R11 K18 ["isAutoUpdatedPackageLink"]
  SETTABLEKS R5 R11 K19 ["isClientScript"]
  SETTABLEKS R6 R11 K20 ["isDisabledScript"]
  SETTABLEKS R7 R11 K21 ["isHiddenGui"]
  DUPCLOSURE R12 K23 [PROTO_0]
  CAPTURE VAL R11
  DUPCLOSURE R13 K24 [PROTO_1]
  CAPTURE VAL R11
  DUPCLOSURE R14 K25 [PROTO_2]
  DUPCLOSURE R15 K26 [PROTO_5]
  CAPTURE VAL R11
  DUPTABLE R16 K31 [{"initParts", "addToAggregation", "setPart", "listenToParts"}]
  SETTABLEKS R12 R16 K27 ["initParts"]
  SETTABLEKS R13 R16 K28 ["addToAggregation"]
  SETTABLEKS R14 R16 K29 ["setPart"]
  SETTABLEKS R15 R16 K30 ["listenToParts"]
  RETURN R16 1
