PROTO_0:
  LOADN R1 1
  SETTABLEKS R1 R0 K0 ["profileComponentsPageIndex"]
  LOADN R1 1
  SETTABLEKS R1 R0 K1 ["profileComponentsPageSize"]
  LOADN R1 1
  SETTABLEKS R1 R0 K2 ["profileEventsPageIndex"]
  LOADN R1 1
  SETTABLEKS R1 R0 K3 ["profileEventsPageSize"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["handlers"]
  GETTABLEKS R1 R2 K1 ["onUpdateInstances"]
  GETTABLEKS R2 R0 K2 ["path"]
  GETTABLEKS R3 R0 K3 ["children"]
  GETTABLEKS R4 R0 K4 ["updatedIndexes"]
  CALL R1 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["handlers"]
  GETTABLEKS R1 R2 K1 ["onUpdateBranch"]
  GETTABLEKS R2 R0 K2 ["path"]
  GETTABLEKS R3 R0 K3 ["branch"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["handlers"]
  GETTABLEKS R1 R2 K1 ["onUpdateFields"]
  GETTABLEKS R2 R0 K2 ["path"]
  GETTABLEKS R3 R0 K3 ["nodeIndex"]
  GETTABLEKS R4 R0 K4 ["fieldPath"]
  GETTABLEKS R5 R0 K5 ["fields"]
  CALL R1 4 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["handlers"]
  GETTABLEKS R1 R2 K1 ["onPickInstance"]
  GETTABLEKS R2 R0 K2 ["path"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["handlers"]
  GETTABLEKS R1 R2 K1 ["onUpdateProfileData"]
  GETTABLEKS R2 R0 K2 ["data"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  SETTABLEKS R1 R0 K0 ["handlers"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["attach"]
  MOVE R3 R0
  CALL R2 1 0
  DUPTABLE R4 K4 [{"eventName", "onEvent"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["RoactInspector"]
  GETTABLEKS R5 R6 K6 ["ShowChildren"]
  SETTABLEKS R5 R4 K2 ["eventName"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K3 ["onEvent"]
  NAMECALL R2 R0 K7 ["_connect"]
  CALL R2 2 0
  DUPTABLE R4 K4 [{"eventName", "onEvent"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["RoactInspector"]
  GETTABLEKS R5 R6 K8 ["ShowBranch"]
  SETTABLEKS R5 R4 K2 ["eventName"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K3 ["onEvent"]
  NAMECALL R2 R0 K7 ["_connect"]
  CALL R2 2 0
  DUPTABLE R4 K4 [{"eventName", "onEvent"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["RoactInspector"]
  GETTABLEKS R5 R6 K9 ["ShowFields"]
  SETTABLEKS R5 R4 K2 ["eventName"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K3 ["onEvent"]
  NAMECALL R2 R0 K7 ["_connect"]
  CALL R2 2 0
  DUPTABLE R4 K4 [{"eventName", "onEvent"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["RoactInspector"]
  GETTABLEKS R5 R6 K10 ["PickInstance"]
  SETTABLEKS R5 R4 K2 ["eventName"]
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K3 ["onEvent"]
  NAMECALL R2 R0 K7 ["_connect"]
  CALL R2 2 0
  DUPTABLE R4 K4 [{"eventName", "onEvent"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["RoactInspector"]
  GETTABLEKS R5 R6 K11 ["ShowProfileData"]
  SETTABLEKS R5 R4 K2 ["eventName"]
  NEWCLOSURE R5 P4
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K3 ["onEvent"]
  NAMECALL R2 R0 K7 ["_connect"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R4 K2 [{"eventName", "path"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["RoactInspector"]
  GETTABLEKS R5 R6 K4 ["GetChildren"]
  SETTABLEKS R5 R4 K0 ["eventName"]
  SETTABLEKS R1 R4 K1 ["path"]
  NAMECALL R2 R0 K5 ["_send"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  NEWTABLE R3 0 0
  NAMECALL R1 R0 K0 ["getChildren"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R4 K2 [{"eventName", "path"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["RoactInspector"]
  GETTABLEKS R5 R6 K4 ["GetBranch"]
  SETTABLEKS R5 R4 K0 ["eventName"]
  SETTABLEKS R1 R4 K1 ["path"]
  NAMECALL R2 R0 K5 ["_send"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R6 K4 [{"eventName", "path", "nodeIndex", "fieldPath"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["RoactInspector"]
  GETTABLEKS R7 R8 K6 ["GetFields"]
  SETTABLEKS R7 R6 K0 ["eventName"]
  SETTABLEKS R1 R6 K1 ["path"]
  SETTABLEKS R2 R6 K2 ["nodeIndex"]
  SETTABLEKS R3 R6 K3 ["fieldPath"]
  NAMECALL R4 R0 K7 ["_send"]
  CALL R4 2 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R4 K2 [{"eventName", "isPicking"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["RoactInspector"]
  GETTABLEKS R5 R6 K4 ["SetPicking"]
  SETTABLEKS R5 R4 K0 ["eventName"]
  SETTABLEKS R1 R4 K1 ["isPicking"]
  NAMECALL R2 R0 K5 ["_send"]
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R4 K2 [{"eventName", "path"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["RoactInspector"]
  GETTABLEKS R5 R6 K4 ["OpenPath"]
  SETTABLEKS R5 R4 K0 ["eventName"]
  SETTABLEKS R1 R4 K1 ["path"]
  NAMECALL R2 R0 K5 ["_send"]
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["profileThread"]
  JUMPIFNOTEQ R0 R1 [+10]
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["getProfileData"]
  CALL R0 1 0
  GETIMPORT R0 K3 [wait]
  LOADK R1 K4 [0.5]
  CALL R0 1 0
  JUMPBACK [-15]
  RETURN R0 0

PROTO_14:
  JUMPIFNOT R1 [+14]
  LOADNIL R2
  GETIMPORT R3 K2 [coroutine.wrap]
  NEWCLOSURE R4 P0
  CAPTURE REF R2
  CAPTURE VAL R0
  CALL R3 1 1
  MOVE R2 R3
  SETTABLEKS R2 R0 K3 ["profileThread"]
  MOVE R3 R2
  CALL R3 0 0
  CLOSEUPVALS R2
  JUMP [+3]
  LOADNIL R2
  SETTABLEKS R2 R0 K3 ["profileThread"]
  DUPTABLE R4 K6 [{"eventName", "isProfiling"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["RoactInspector"]
  GETTABLEKS R5 R6 K8 ["SetProfiling"]
  SETTABLEKS R5 R4 K4 ["eventName"]
  SETTABLEKS R1 R4 K5 ["isProfiling"]
  NAMECALL R2 R0 K9 ["_send"]
  CALL R2 2 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R3 K1 [{"eventName"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["RoactInspector"]
  GETTABLEKS R4 R5 K3 ["ClearProfileData"]
  SETTABLEKS R4 R3 K0 ["eventName"]
  NAMECALL R1 R0 K4 ["_send"]
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  DUPTABLE R6 K4 [{"eventName", "tableName", "index", "order"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["RoactInspector"]
  GETTABLEKS R7 R8 K6 ["SortProfileData"]
  SETTABLEKS R7 R6 K0 ["eventName"]
  SETTABLEKS R1 R6 K1 ["tableName"]
  SETTABLEKS R2 R6 K2 ["index"]
  SETTABLEKS R3 R6 K3 ["order"]
  NAMECALL R4 R0 K7 ["_send"]
  CALL R4 2 0
  RETURN R0 0

PROTO_17:
  DUPTABLE R4 K2 [{"eventName", "instanceId"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["RoactInspector"]
  GETTABLEKS R5 R6 K4 ["SelectProfileInstance"]
  SETTABLEKS R5 R4 K0 ["eventName"]
  SETTABLEKS R1 R4 K1 ["instanceId"]
  NAMECALL R2 R0 K5 ["_send"]
  CALL R2 2 0
  RETURN R0 0

PROTO_18:
  DUPTABLE R4 K2 [{"eventName", "filter"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["RoactInspector"]
  GETTABLEKS R5 R6 K4 ["SetProfileFilter"]
  SETTABLEKS R5 R4 K0 ["eventName"]
  SETTABLEKS R1 R4 K1 ["filter"]
  NAMECALL R2 R0 K5 ["_send"]
  CALL R2 2 0
  RETURN R0 0

PROTO_19:
  DUPTABLE R4 K2 [{"eventName", "searchTerm"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["RoactInspector"]
  GETTABLEKS R5 R6 K4 ["SetProfileSearchTerm"]
  SETTABLEKS R5 R4 K0 ["eventName"]
  SETTABLEKS R1 R4 K1 ["searchTerm"]
  NAMECALL R2 R0 K5 ["_send"]
  CALL R2 2 0
  RETURN R0 0

PROTO_20:
  SETTABLEKS R1 R0 K0 ["profileComponentsPageIndex"]
  RETURN R0 0

PROTO_21:
  SETTABLEKS R1 R0 K0 ["profileComponentsPageSize"]
  RETURN R0 0

PROTO_22:
  SETTABLEKS R1 R0 K0 ["profileEventsPageIndex"]
  RETURN R0 0

PROTO_23:
  SETTABLEKS R1 R0 K0 ["profileEventsPageSize"]
  RETURN R0 0

PROTO_24:
  GETTABLEKS R4 R0 K1 ["profileComponentsPageIndex"]
  SUBK R3 R4 K0 [1]
  GETTABLEKS R4 R0 K2 ["profileComponentsPageSize"]
  MUL R2 R3 R4
  ADDK R1 R2 K0 [1]
  GETTABLEKS R4 R0 K2 ["profileComponentsPageSize"]
  ADD R3 R1 R4
  SUBK R2 R3 K0 [1]
  GETTABLEKS R6 R0 K3 ["profileEventsPageIndex"]
  SUBK R5 R6 K0 [1]
  GETTABLEKS R6 R0 K4 ["profileEventsPageSize"]
  MUL R4 R5 R6
  ADDK R3 R4 K0 [1]
  GETTABLEKS R6 R0 K4 ["profileEventsPageSize"]
  ADD R5 R3 R6
  SUBK R4 R5 K0 [1]
  DUPTABLE R7 K10 [{"eventName", "componentSliceStart", "componentSliceEnd", "eventSliceStart", "eventSliceEnd"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["RoactInspector"]
  GETTABLEKS R8 R9 K12 ["GetProfileData"]
  SETTABLEKS R8 R7 K5 ["eventName"]
  SETTABLEKS R1 R7 K6 ["componentSliceStart"]
  SETTABLEKS R2 R7 K7 ["componentSliceEnd"]
  SETTABLEKS R3 R7 K8 ["eventSliceStart"]
  SETTABLEKS R4 R7 K9 ["eventSliceEnd"]
  NAMECALL R5 R0 K13 ["_send"]
  CALL R5 2 0
  RETURN R0 0

PROTO_25:
  DUPTABLE R4 K2 [{"eventName", "path"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["RoactInspector"]
  GETTABLEKS R5 R6 K4 ["Highlight"]
  SETTABLEKS R5 R4 K0 ["eventName"]
  SETTABLEKS R1 R4 K1 ["path"]
  NAMECALL R2 R0 K5 ["_send"]
  CALL R2 2 0
  RETURN R0 0

PROTO_26:
  DUPTABLE R3 K1 [{"eventName"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["RoactInspector"]
  GETTABLEKS R4 R5 K3 ["Dehighlight"]
  SETTABLEKS R4 R3 K0 ["eventName"]
  NAMECALL R1 R0 K4 ["_send"]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["EventName"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K6 ["Classes"]
  GETTABLEKS R3 R4 K7 ["TargetApi"]
  CALL R2 1 1
  LOADK R5 K8 ["RoactInspectorApi"]
  NAMECALL R3 R2 K9 ["extend"]
  CALL R3 2 1
  DUPCLOSURE R4 K10 [PROTO_0]
  SETTABLEKS R4 R3 K11 ["_init"]
  DUPCLOSURE R4 K12 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K13 ["attach"]
  DUPCLOSURE R4 K14 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K15 ["getChildren"]
  DUPCLOSURE R4 K16 [PROTO_8]
  SETTABLEKS R4 R3 K17 ["getRoot"]
  DUPCLOSURE R4 K18 [PROTO_9]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K19 ["getBranch"]
  DUPCLOSURE R4 K20 [PROTO_10]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K21 ["getFields"]
  DUPCLOSURE R4 K22 [PROTO_11]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K23 ["setPicking"]
  DUPCLOSURE R4 K24 [PROTO_12]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K25 ["openPath"]
  DUPCLOSURE R4 K26 [PROTO_14]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K27 ["setProfiling"]
  DUPCLOSURE R4 K28 [PROTO_15]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K29 ["clearProfileData"]
  DUPCLOSURE R4 K30 [PROTO_16]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K31 ["sortProfileData"]
  DUPCLOSURE R4 K32 [PROTO_17]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K33 ["selectProfileInstance"]
  DUPCLOSURE R4 K34 [PROTO_18]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K35 ["setProfileFilter"]
  DUPCLOSURE R4 K36 [PROTO_19]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K37 ["setProfileSearchTerm"]
  DUPCLOSURE R4 K38 [PROTO_20]
  SETTABLEKS R4 R3 K39 ["setProfileComponentsPageIndex"]
  DUPCLOSURE R4 K40 [PROTO_21]
  SETTABLEKS R4 R3 K41 ["setProfileComponentsPageSize"]
  DUPCLOSURE R4 K42 [PROTO_22]
  SETTABLEKS R4 R3 K43 ["setProfileEventsPageIndex"]
  DUPCLOSURE R4 K44 [PROTO_23]
  SETTABLEKS R4 R3 K45 ["setProfileEventsPageSize"]
  DUPCLOSURE R4 K46 [PROTO_24]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K47 ["getProfileData"]
  DUPCLOSURE R4 K48 [PROTO_25]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K49 ["highlight"]
  DUPCLOSURE R4 K50 [PROTO_26]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K51 ["dehighlight"]
  RETURN R3 1
