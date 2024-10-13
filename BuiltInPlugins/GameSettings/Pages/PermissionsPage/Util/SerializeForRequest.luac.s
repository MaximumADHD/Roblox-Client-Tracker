PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UserSubjectKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["UserSubject"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["GroupSubjectKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["GroupSubject"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["RoleSubjectKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["RoleSubject"]
  RETURN R1 1
  GETIMPORT R1 K7 [error]
  LOADK R3 K8 ["Invalid SubjectType: "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K10 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PlayKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["PlayAction"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["EditKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["EditAction"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["AdminKey"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["EditAction"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["NoAccessKey"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADNIL R1
  RETURN R1 1
  GETIMPORT R1 K7 [error]
  LOADK R3 K8 ["Invalid Action: "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K10 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["RoleSubjectKey"]
  GETTABLE R4 R0 R6
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["GroupIdKey"]
  GETTABLE R8 R7 R9
  SETTABLE R8 R2 R6
  FORGLOOP R3 2 [-6]
  GETIMPORT R3 K1 [pairs]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["RoleSubjectKey"]
  GETTABLE R4 R1 R6
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["GroupIdKey"]
  GETTABLE R8 R7 R9
  SETTABLE R8 R2 R6
  FORGLOOP R3 2 [-6]
  RETURN R2 1

PROTO_3:
  NEWTABLE R2 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["GroupSubjectKey"]
  NEWTABLE R4 0 0
  SETTABLE R4 R2 R3
  GETIMPORT R3 K2 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  NEWTABLE R8 0 0
  SETTABLE R8 R2 R6
  FORGLOOP R3 2 [-4]
  GETIMPORT R3 K2 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  NEWTABLE R8 0 0
  SETTABLE R8 R2 R6
  FORGLOOP R3 2 [-4]
  GETIMPORT R3 K2 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETIMPORT R8 K2 [pairs]
  MOVE R9 R7
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETTABLE R13 R2 R6
  DUPTABLE R14 K4 [{"Current"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K5 ["ActionKey"]
  GETTABLE R15 R12 R16
  SETTABLEKS R15 R14 K3 ["Current"]
  SETTABLE R14 R13 R11
  FORGLOOP R8 2 [-10]
  FORGLOOP R3 2 [-17]
  GETIMPORT R3 K2 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETIMPORT R8 K2 [pairs]
  MOVE R9 R7
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETTABLE R13 R2 R6
  GETTABLE R15 R2 R6
  GETTABLE R14 R15 R11
  JUMPIF R14 [+2]
  NEWTABLE R14 0 0
  SETTABLE R14 R13 R11
  GETTABLE R14 R2 R6
  GETTABLE R13 R14 R11
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K5 ["ActionKey"]
  GETTABLE R14 R12 R15
  SETTABLEKS R14 R13 K6 ["Changed"]
  FORGLOOP R8 2 [-16]
  FORGLOOP R3 2 [-23]
  RETURN R2 1

PROTO_4:
  NEWTABLE R2 0 0
  NEWTABLE R3 0 0
  GETIMPORT R4 K1 [pairs]
  MOVE R5 R0
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETIMPORT R9 K1 [pairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_NEXT R9
  GETUPVAL R15 0
  GETTABLEKS R16 R13 K2 ["Current"]
  GETTABLE R14 R15 R16
  JUMPIF R14 [+5]
  GETUPVAL R15 0
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K3 ["NoAccessKey"]
  GETTABLE R14 R15 R16
  GETUPVAL R16 0
  GETTABLEKS R17 R13 K4 ["Changed"]
  GETTABLE R15 R16 R17
  JUMPIF R15 [+5]
  GETUPVAL R16 0
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K3 ["NoAccessKey"]
  GETTABLE R15 R16 R17
  JUMPIFNOTLT R14 R15 [+112]
  ADDK R18 R14 K5 [1]
  MOVE R16 R15
  LOADN R17 1
  FORNPREP R16
  NEWTABLE R21 4 0
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K6 ["SubjectType"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K7 ["UserSubjectKey"]
  JUMPIFNOTEQ R7 R24 [+5]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K8 ["UserSubject"]
  JUMP [+29]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K9 ["GroupSubjectKey"]
  JUMPIFNOTEQ R7 R24 [+5]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K10 ["GroupSubject"]
  JUMP [+20]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K11 ["RoleSubjectKey"]
  JUMPIFNOTEQ R7 R24 [+5]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K12 ["RoleSubject"]
  JUMP [+11]
  GETIMPORT R24 K14 [error]
  LOADK R26 K15 ["Invalid SubjectType: "]
  FASTCALL1 TOSTRING R7 [+3]
  MOVE R28 R7
  GETIMPORT R27 K17 [tostring]
  CALL R27 1 1
  CONCAT R25 R26 R27
  CALL R24 1 0
  LOADNIL R23
  SETTABLE R23 R21 R22
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K18 ["SubjectId"]
  SETTABLE R12 R21 R22
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K19 ["Action"]
  GETUPVAL R25 3
  GETTABLE R24 R25 R18
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K20 ["PlayKey"]
  JUMPIFNOTEQ R24 R25 [+5]
  GETUPVAL R25 2
  GETTABLEKS R23 R25 K21 ["PlayAction"]
  JUMP [+36]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K22 ["EditKey"]
  JUMPIFNOTEQ R24 R25 [+5]
  GETUPVAL R25 2
  GETTABLEKS R23 R25 K23 ["EditAction"]
  JUMP [+27]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K24 ["AdminKey"]
  JUMPIFNOTEQ R24 R25 [+5]
  GETUPVAL R25 2
  GETTABLEKS R23 R25 K23 ["EditAction"]
  JUMP [+18]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K3 ["NoAccessKey"]
  JUMPIFNOTEQ R24 R25 [+3]
  LOADNIL R23
  JUMP [+11]
  GETIMPORT R25 K14 [error]
  LOADK R27 K25 ["Invalid Action: "]
  FASTCALL1 TOSTRING R24 [+3]
  MOVE R29 R24
  GETIMPORT R28 K17 [tostring]
  CALL R28 1 1
  CONCAT R26 R27 R28
  CALL R25 1 0
  LOADNIL R23
  SETTABLE R23 R21 R22
  FASTCALL2 TABLE_INSERT R2 R21 [+4]
  MOVE R20 R2
  GETIMPORT R19 K28 [table.insert]
  CALL R19 2 0
  FORNLOOP R16
  JUMP [+112]
  JUMPIFNOTLT R15 R14 [+111]
  MOVE R18 R14
  ADDK R16 R15 K5 [1]
  LOADN R17 255
  FORNPREP R16
  NEWTABLE R21 4 0
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K6 ["SubjectType"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K7 ["UserSubjectKey"]
  JUMPIFNOTEQ R7 R24 [+5]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K8 ["UserSubject"]
  JUMP [+29]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K9 ["GroupSubjectKey"]
  JUMPIFNOTEQ R7 R24 [+5]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K10 ["GroupSubject"]
  JUMP [+20]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K11 ["RoleSubjectKey"]
  JUMPIFNOTEQ R7 R24 [+5]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K12 ["RoleSubject"]
  JUMP [+11]
  GETIMPORT R24 K14 [error]
  LOADK R26 K15 ["Invalid SubjectType: "]
  FASTCALL1 TOSTRING R7 [+3]
  MOVE R28 R7
  GETIMPORT R27 K17 [tostring]
  CALL R27 1 1
  CONCAT R25 R26 R27
  CALL R24 1 0
  LOADNIL R23
  SETTABLE R23 R21 R22
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K18 ["SubjectId"]
  SETTABLE R12 R21 R22
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K19 ["Action"]
  GETUPVAL R25 3
  GETTABLE R24 R25 R18
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K20 ["PlayKey"]
  JUMPIFNOTEQ R24 R25 [+5]
  GETUPVAL R25 2
  GETTABLEKS R23 R25 K21 ["PlayAction"]
  JUMP [+36]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K22 ["EditKey"]
  JUMPIFNOTEQ R24 R25 [+5]
  GETUPVAL R25 2
  GETTABLEKS R23 R25 K23 ["EditAction"]
  JUMP [+27]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K24 ["AdminKey"]
  JUMPIFNOTEQ R24 R25 [+5]
  GETUPVAL R25 2
  GETTABLEKS R23 R25 K23 ["EditAction"]
  JUMP [+18]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K3 ["NoAccessKey"]
  JUMPIFNOTEQ R24 R25 [+3]
  LOADNIL R23
  JUMP [+11]
  GETIMPORT R25 K14 [error]
  LOADK R27 K25 ["Invalid Action: "]
  FASTCALL1 TOSTRING R24 [+3]
  MOVE R29 R24
  GETIMPORT R28 K17 [tostring]
  CALL R28 1 1
  CONCAT R26 R27 R28
  CALL R25 1 0
  LOADNIL R23
  SETTABLE R23 R21 R22
  FASTCALL2 TABLE_INSERT R3 R21 [+4]
  MOVE R20 R3
  GETIMPORT R19 K28 [table.insert]
  CALL R19 2 0
  FORNLOOP R16
  FORGLOOP R9 2 [-246]
  FORGLOOP R4 2 [-253]
  RETURN R2 2

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["diffPermissionChanges"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["_getGroupsForRoles"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["_resolvePermissionChanges"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 2
  RETURN R4 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Util"]
  GETTABLEKS R2 R3 K6 ["PermissionsConstants"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Util"]
  GETTABLEKS R3 R4 K7 ["WebKeyConstants"]
  CALL R2 1 1
  NEWTABLE R3 0 3
  GETTABLEKS R4 R1 K8 ["NoAccessKey"]
  GETTABLEKS R5 R1 K9 ["PlayKey"]
  GETTABLEKS R6 R1 K10 ["EditKey"]
  SETLIST R3 R4 3 [1]
  NEWTABLE R4 0 0
  GETIMPORT R5 K12 [pairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_NEXT R5
  SETTABLE R8 R4 R9
  FORGLOOP R5 2 [-2]
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPCLOSURE R6 K14 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  NEWTABLE R7 4 0
  DUPCLOSURE R8 K15 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K16 ["_getGroupsForRoles"]
  DUPCLOSURE R8 K17 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K18 ["diffPermissionChanges"]
  DUPCLOSURE R8 K19 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K20 ["_resolvePermissionChanges"]
  DUPCLOSURE R8 K21 [PROTO_5]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K22 ["SerializePermissions"]
  RETURN R7 1
