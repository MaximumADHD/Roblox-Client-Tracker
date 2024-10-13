PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["onDeleteCreatorPill"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["onDeleteCreatorPill"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["onDeleteCreatorPill"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"UserAndGroupFilter"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K8 [{"OnDeleteCreatorPill", "OnSearchUpdate", "OnSelectCreator", "SelectedUsers", "SelectedGroups"}]
  DUPCLOSURE R7 K9 [PROTO_0]
  SETTABLEKS R7 R6 K3 ["OnDeleteCreatorPill"]
  DUPCLOSURE R7 K10 [PROTO_1]
  SETTABLEKS R7 R6 K4 ["OnSearchUpdate"]
  DUPCLOSURE R7 K11 [PROTO_2]
  SETTABLEKS R7 R6 K5 ["OnSelectCreator"]
  NEWTABLE R7 0 1
  DUPTABLE R8 K15 [{"Name", "Id", "Type"}]
  LOADK R9 K16 ["Selected Username"]
  SETTABLEKS R9 R8 K12 ["Name"]
  LOADN R9 123
  SETTABLEKS R9 R8 K13 ["Id"]
  GETIMPORT R9 K20 [Enum.CreatorType.User]
  SETTABLEKS R9 R8 K14 ["Type"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K6 ["SelectedUsers"]
  NEWTABLE R7 0 1
  DUPTABLE R8 K15 [{"Name", "Id", "Type"}]
  LOADK R9 K21 ["Selected Group name"]
  SETTABLEKS R9 R8 K12 ["Name"]
  LOADN R9 123
  SETTABLEKS R9 R8 K13 ["Id"]
  GETIMPORT R9 K23 [Enum.CreatorType.Group]
  SETTABLEKS R9 R8 K14 ["Type"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K7 ["SelectedGroups"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["UserAndGroupFilter"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["UserAndGroupFilter"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Stories"]
  GETTABLEKS R4 R5 K11 ["ToolboxStoryWrapper"]
  CALL R3 1 1
  DUPTABLE R4 K15 [{"name", "summary", "stories"}]
  LOADK R5 K9 ["UserAndGroupFilter"]
  SETTABLEKS R5 R4 K12 ["name"]
  LOADK R5 K16 ["A live Search Bar for users and groups"]
  SETTABLEKS R5 R4 K13 ["summary"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K18 [{"story"}]
  DUPCLOSURE R7 K19 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K17 ["story"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K14 ["stories"]
  RETURN R4 1
