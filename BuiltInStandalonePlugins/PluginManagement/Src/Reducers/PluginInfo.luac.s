PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"plugins"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["plugins"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K4 ["pluginId"]
  DUPTABLE R9 K13 [{"installStatus", "installationMsg", "installProgress", "name", "description", "versionId", "created", "updated"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K14 ["UNKNOWN"]
  SETTABLEKS R10 R9 K5 ["installStatus"]
  LOADK R10 K15 [""]
  SETTABLEKS R10 R9 K6 ["installationMsg"]
  LOADN R10 0
  SETTABLEKS R10 R9 K7 ["installProgress"]
  LOADK R10 K15 [""]
  SETTABLEKS R10 R9 K8 ["name"]
  LOADK R10 K15 [""]
  SETTABLEKS R10 R9 K9 ["description"]
  LOADK R10 K15 [""]
  SETTABLEKS R10 R9 K10 ["versionId"]
  LOADK R10 K15 [""]
  SETTABLEKS R10 R9 K11 ["created"]
  LOADK R10 K15 [""]
  SETTABLEKS R10 R9 K12 ["updated"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["plugins"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["plugins"]
  GETTABLEKS R4 R1 K1 ["pluginId"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+1]
  RETURN R0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Dictionary"]
  GETTABLEKS R2 R3 K3 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"plugins"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["Dictionary"]
  GETTABLEKS R5 R6 K3 ["join"]
  GETTABLEKS R6 R0 K0 ["plugins"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K1 ["pluginId"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["None"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["plugins"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R4 R0 K0 ["plugins"]
  GETTABLEKS R5 R1 K1 ["pluginId"]
  GETTABLE R3 R4 R5
  GETIMPORT R4 K4 [string.format]
  LOADK R5 K5 ["No plugin entry found for %s"]
  GETTABLEKS R6 R1 K1 ["pluginId"]
  CALL R4 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K7 [assert]
  CALL R2 -1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Dictionary"]
  GETTABLEKS R2 R3 K9 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K10 [{"plugins"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["Dictionary"]
  GETTABLEKS R5 R6 K9 ["join"]
  GETTABLEKS R6 R0 K0 ["plugins"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K1 ["pluginId"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["Dictionary"]
  GETTABLEKS R9 R10 K9 ["join"]
  GETTABLEKS R11 R0 K0 ["plugins"]
  GETTABLEKS R12 R1 K1 ["pluginId"]
  GETTABLE R10 R11 R12
  DUPTABLE R11 K16 [{"name", "description", "versionId", "created", "updated"}]
  GETTABLEKS R12 R1 K11 ["name"]
  SETTABLEKS R12 R11 K11 ["name"]
  GETTABLEKS R12 R1 K12 ["description"]
  SETTABLEKS R12 R11 K12 ["description"]
  GETTABLEKS R12 R1 K13 ["versionId"]
  SETTABLEKS R12 R11 K13 ["versionId"]
  GETTABLEKS R12 R1 K14 ["created"]
  SETTABLEKS R12 R11 K14 ["created"]
  GETTABLEKS R12 R1 K15 ["updated"]
  SETTABLEKS R12 R11 K15 ["updated"]
  CALL R9 2 1
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["plugins"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETTABLEKS R4 R0 K0 ["plugins"]
  GETTABLEKS R5 R1 K1 ["pluginId"]
  GETTABLE R3 R4 R5
  GETIMPORT R4 K4 [string.format]
  LOADK R5 K5 ["No plugin entry found for %s"]
  GETTABLEKS R6 R1 K1 ["pluginId"]
  CALL R4 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K7 [assert]
  CALL R2 -1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Dictionary"]
  GETTABLEKS R2 R3 K9 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K10 [{"plugins"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["Dictionary"]
  GETTABLEKS R5 R6 K9 ["join"]
  GETTABLEKS R6 R0 K0 ["plugins"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K1 ["pluginId"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["Dictionary"]
  GETTABLEKS R9 R10 K9 ["join"]
  GETTABLEKS R11 R0 K0 ["plugins"]
  GETTABLEKS R12 R1 K1 ["pluginId"]
  GETTABLE R10 R11 R12
  DUPTABLE R11 K13 [{"installStatus", "installationMsg"}]
  GETTABLEKS R12 R1 K14 ["statusCode"]
  SETTABLEKS R12 R11 K11 ["installStatus"]
  GETTABLEKS R12 R1 K15 ["message"]
  SETTABLEKS R12 R11 K12 ["installationMsg"]
  CALL R9 2 1
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["plugins"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Constants"]
  GETTABLEKS R4 R5 K10 ["PluginInstalledStatus"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["createReducer"]
  DUPTABLE R5 K13 [{"plugins"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K12 ["plugins"]
  DUPTABLE R6 K18 [{"SetPluginId", "ClearPluginData", "SetPluginMetadata", "SetPluginInstallStatus"}]
  DUPCLOSURE R7 K19 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K14 ["SetPluginId"]
  DUPCLOSURE R7 K20 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K15 ["ClearPluginData"]
  DUPCLOSURE R7 K21 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K16 ["SetPluginMetadata"]
  DUPCLOSURE R7 K22 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K17 ["SetPluginInstallStatus"]
  CALL R4 2 -1
  RETURN R4 -1
