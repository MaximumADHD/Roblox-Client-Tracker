PROTO_0:
  GETTABLEKS R2 R0 K0 ["id"]
  GETTABLEKS R1 R2 K1 ["isAttribute"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["List"]
  GETTABLEKS R1 R2 K1 ["filter"]
  MOVE R2 R0
  DUPCLOSURE R3 K2 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["use"]
  GETTABLEKS R3 R0 K1 ["session"]
  GETTABLEKS R2 R3 K2 ["tagsObservable"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["use"]
  GETTABLEKS R4 R0 K1 ["session"]
  GETTABLEKS R3 R4 K3 ["propertiesObservable"]
  CALL R2 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["List"]
  GETTABLEKS R3 R4 K5 ["filter"]
  MOVE R4 R2
  DUPCLOSURE R5 K6 [PROTO_0]
  CALL R3 2 1
  NEWTABLE R4 0 2
  DUPTABLE R5 K9 [{"icon", "name"}]
  LOADK R6 K10 [""]
  SETTABLEKS R6 R5 K7 ["icon"]
  LOADK R6 K11 ["Tag A"]
  SETTABLEKS R6 R5 K8 ["name"]
  DUPTABLE R6 K9 [{"icon", "name"}]
  LOADK R7 K10 [""]
  SETTABLEKS R7 R6 K7 ["icon"]
  LOADK R7 K12 ["Tag B"]
  SETTABLEKS R7 R6 K8 ["name"]
  SETLIST R4 R5 2 [1]
  MOVE R1 R4
  NEWTABLE R4 0 2
  DUPTABLE R5 K15 [{"id", "aggregatePropertyInfo"}]
  DUPTABLE R6 K19 [{"className", "propertyName", "isAttribute"}]
  LOADK R7 K20 ["Part"]
  SETTABLEKS R7 R6 K16 ["className"]
  LOADK R7 K21 ["Attribute A"]
  SETTABLEKS R7 R6 K17 ["propertyName"]
  LOADB R7 1
  SETTABLEKS R7 R6 K18 ["isAttribute"]
  SETTABLEKS R6 R5 K13 ["id"]
  DUPTABLE R6 K26 [{"typeof", "parts", "modified", "readonly"}]
  LOADK R7 K27 ["boolean"]
  SETTABLEKS R7 R6 K22 ["typeof"]
  DUPTABLE R7 K29 [{"value"}]
  DUPTABLE R8 K31 [{"multiple", "value"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K30 ["multiple"]
  LOADB R9 1
  SETTABLEKS R9 R8 K28 ["value"]
  SETTABLEKS R8 R7 K28 ["value"]
  SETTABLEKS R7 R6 K23 ["parts"]
  LOADB R7 0
  SETTABLEKS R7 R6 K24 ["modified"]
  LOADB R7 0
  SETTABLEKS R7 R6 K25 ["readonly"]
  SETTABLEKS R6 R5 K14 ["aggregatePropertyInfo"]
  DUPTABLE R6 K15 [{"id", "aggregatePropertyInfo"}]
  DUPTABLE R7 K19 [{"className", "propertyName", "isAttribute"}]
  LOADK R8 K20 ["Part"]
  SETTABLEKS R8 R7 K16 ["className"]
  LOADK R8 K32 ["Attribute B"]
  SETTABLEKS R8 R7 K17 ["propertyName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K18 ["isAttribute"]
  SETTABLEKS R7 R6 K13 ["id"]
  DUPTABLE R7 K26 [{"typeof", "parts", "modified", "readonly"}]
  LOADK R8 K33 ["Vector3"]
  SETTABLEKS R8 R7 K22 ["typeof"]
  DUPTABLE R8 K37 [{"value", "x", "y", "z"}]
  DUPTABLE R9 K31 [{"multiple", "value"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K30 ["multiple"]
  LOADK R10 K38 [{1, 1, 1}]
  SETTABLEKS R10 R9 K28 ["value"]
  SETTABLEKS R9 R8 K28 ["value"]
  DUPTABLE R9 K31 [{"multiple", "value"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K30 ["multiple"]
  LOADN R10 1
  SETTABLEKS R10 R9 K28 ["value"]
  SETTABLEKS R9 R8 K34 ["x"]
  DUPTABLE R9 K31 [{"multiple", "value"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K30 ["multiple"]
  LOADN R10 1
  SETTABLEKS R10 R9 K28 ["value"]
  SETTABLEKS R9 R8 K35 ["y"]
  DUPTABLE R9 K31 [{"multiple", "value"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K30 ["multiple"]
  LOADN R10 1
  SETTABLEKS R10 R9 K28 ["value"]
  SETTABLEKS R9 R8 K36 ["z"]
  SETTABLEKS R8 R7 K23 ["parts"]
  LOADB R8 0
  SETTABLEKS R8 R7 K24 ["modified"]
  LOADB R8 0
  SETTABLEKS R8 R7 K25 ["readonly"]
  SETTABLEKS R7 R6 K14 ["aggregatePropertyInfo"]
  SETLIST R4 R5 2 [1]
  MOVE R3 R4
  GETUPVAL R4 2
  CALL R4 0 1
  GETUPVAL R5 3
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K39 ["Fragment"]
  NEWTABLE R7 0 0
  DUPTABLE R8 K42 [{"Tags", "Attributes"}]
  GETUPVAL R9 3
  GETUPVAL R10 5
  DUPTABLE R11 K45 [{"tags", "layoutOrder"}]
  SETTABLEKS R1 R11 K43 ["tags"]
  MOVE R12 R4
  CALL R12 0 1
  SETTABLEKS R12 R11 K44 ["layoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K40 ["Tags"]
  GETUPVAL R9 3
  GETUPVAL R10 6
  DUPTABLE R11 K48 [{"session", "attributes", "layoutOrder", "labelWidthBinding"}]
  GETTABLEKS R12 R0 K1 ["session"]
  SETTABLEKS R12 R11 K1 ["session"]
  SETTABLEKS R3 R11 K46 ["attributes"]
  MOVE R12 R4
  CALL R12 0 1
  SETTABLEKS R12 R11 K44 ["layoutOrder"]
  GETTABLEKS R12 R0 K47 ["labelWidthBinding"]
  SETTABLEKS R12 R11 K47 ["labelWidthBinding"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K41 ["Attributes"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["use"]
  GETTABLEKS R3 R0 K1 ["session"]
  GETTABLEKS R2 R3 K2 ["propertiesObservable"]
  CALL R1 1 1
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 1
  NEWTABLE R3 0 0
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K3 ["categoryName"]
  GETUPVAL R10 2
  GETUPVAL R11 3
  DUPTABLE R12 K7 [{"session", "category", "layoutOrder", "labelWidthBinding"}]
  GETTABLEKS R13 R0 K1 ["session"]
  SETTABLEKS R13 R12 K1 ["session"]
  SETTABLEKS R8 R12 K4 ["category"]
  SETTABLEKS R7 R12 K5 ["layoutOrder"]
  GETTABLEKS R13 R0 K6 ["labelWidthBinding"]
  SETTABLEKS R13 R12 K6 ["labelWidthBinding"]
  CALL R10 2 1
  SETTABLE R10 R3 R9
  FORGLOOP R4 2 [-20]
  GETUPVAL R4 2
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K8 ["Fragment"]
  NEWTABLE R6 0 0
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  DUPTABLE R1 K3 [{"General", "TagsAndAttributes", "All"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["General"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K1 ["TagsAndAttributes"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K2 ["All"]
  GETUPVAL R2 2
  GETTABLEKS R4 R0 K4 ["tab"]
  GETTABLE R3 R1 R4
  MOVE R4 R0
  CALL R2 2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  DUPTABLE R5 K8 [{"tag", "AutomaticSize", "Size"}]
  LOADK R6 K9 ["col"]
  SETTABLEKS R6 R5 K5 ["tag"]
  GETIMPORT R6 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R6 R5 K6 ["AutomaticSize"]
  GETTABLEKS R6 R0 K13 ["size"]
  SETTABLEKS R6 R5 K7 ["Size"]
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R0 K7 ["Components"]
  GETTABLEKS R4 R5 K8 ["TagsAndAttributes"]
  GETTABLEKS R3 R4 K9 ["AttributeCategoryView"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K10 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K11 ["Foundation"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["Observable"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K7 ["Components"]
  GETTABLEKS R8 R9 K14 ["PropertyEntries"]
  GETTABLEKS R7 R8 K15 ["PropertyCategoryView"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R0 K16 ["PropertyTypes"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R1 K17 ["React"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R0 K18 ["RpcTypes"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K7 ["Components"]
  GETTABLEKS R12 R13 K8 ["TagsAndAttributes"]
  GETTABLEKS R11 R12 K19 ["TagCategoryView"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K12 ["Util"]
  GETTABLEKS R12 R13 K20 ["categorizeProperties"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R0 K12 ["Util"]
  GETTABLEKS R13 R14 K21 ["createNextOrder"]
  CALL R12 1 1
  GETTABLEKS R13 R4 K22 ["View"]
  GETTABLEKS R14 R8 K23 ["createElement"]
  DUPCLOSURE R15 K24 [PROTO_1]
  CAPTURE VAL R3
  DUPCLOSURE R16 K25 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R2
  DUPCLOSURE R17 K26 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R8
  DUPCLOSURE R18 K27 [PROTO_4]
  CAPTURE VAL R17
  DUPCLOSURE R19 K28 [PROTO_5]
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R13
  RETURN R19 1
