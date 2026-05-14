PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GroupSubjectKey"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["UseViewKey"]
        8 RETURN                           R2 1
        9 GETUPVAL                         R3 1
       10 LOADN                            R6 1
       11 GETUPVAL                         R8 1
       12 LENGTH                           R7 R8
       13 NAMECALL                         R4 R1 K2 ["NextInteger"]
       15 CALL                             R4 3 1
       16 GETTABLE                         R2 R3 R4
       17 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 FASTCALL1                        ASSERT R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K1 [assert]
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R1 K2 ["TypeKey"]
       12 JUMPIF                           R2 ; [+8]
       13 GETUPVAL                         R3 0
       14 LOADN                            R6 1
       15 GETUPVAL                         R8 0
       16 LENGTH                           R7 R8
       17 NAMECALL                         R4 R0 K3 ["NextInteger"]
       19 CALL                             R4 3 1
       20 GETTABLE                         R2 R3 R4
       21 DUPTABLE                         R3 K6 [{"TypeKey", "Id", "ActionKey"}]
       22 SETTABLEKS                       R2 R3 K2 ["TypeKey"]
       24 LOADK                            R6 K7 [100000]
       25 LOADK                            R7 K8 [999999]
       26 NAMECALL                         R4 R0 K3 ["NextInteger"]
       28 CALL                             R4 3 1
       29 SETTABLEKS                       R4 R3 K4 ["Id"]
       31 GETTABLEKS                       R4 R1 K5 ["ActionKey"]
       33 JUMPIF                           R4 ; [+17]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K9 ["GroupSubjectKey"]
       37 JUMPIFNOTEQ                      R2 R5 ; [+5]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K10 ["UseViewKey"]
       42 JUMP                             ; [+8]
       43 GETUPVAL                         R5 2
       44 LOADN                            R8 1
       45 GETUPVAL                         R10 2
       46 LENGTH                           R9 R10
       47 NAMECALL                         R6 R0 K3 ["NextInteger"]
       49 CALL                             R6 3 1
       50 GETTABLE                         R4 R5 R6
       51 SETTABLEKS                       R4 R3 K5 ["ActionKey"]
       53 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["UserSubjectKey"]
        5 NEWTABLE                         R4 0 0
        7 SETTABLE                         R4 R2 R3
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["GroupSubjectKey"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLE                         R4 R2 R3
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["RoleSubjectKey"]
       17 NEWTABLE                         R4 2 0
       19 NEWTABLE                         R5 1 0
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K3 ["ActionKey"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K4 ["EditKey"]
       27 SETTABLE                         R7 R5 R6
       28 SETTABLEN                        R5 R4 123
       29 LOADN                            R5 200
       30 NEWTABLE                         R6 1 0
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K3 ["ActionKey"]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K5 ["UseViewKey"]
       38 SETTABLE                         R8 R6 R7
       39 SETTABLE                         R6 R4 R5
       40 SETTABLE                         R4 R2 R3
       41 LOADN                            R5 1
       42 MOVE                             R3 R0
       43 LOADN                            R4 1
       44 FORNPREP                         R3
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K6 ["getMockCollaborator"]
       48 MOVE                             R7 R1
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R8 R6 K7 ["TypeKey"]
       52 GETTABLE                         R7 R2 R8
       53 GETTABLEKS                       R8 R6 K8 ["Id"]
       55 NEWTABLE                         R9 1 0
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K3 ["ActionKey"]
       60 GETTABLEKS                       R11 R6 K3 ["ActionKey"]
       62 SETTABLE                         R11 R9 R10
       63 SETTABLE                         R9 R7 R8
       64 FORNLOOP                         R3
       65 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R6 1
        3 MOVE                             R4 R0
        4 LOADN                            R5 1
        5 FORNPREP                         R4
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K0 ["getMockCollaborator"]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R2
       11 CALL                             R7 2 1
       12 NEWTABLE                         R10 4 0
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R11 R11 K1 ["SubjectTypeKey"]
       17 GETTABLEKS                       R12 R7 K2 ["TypeKey"]
       19 SETTABLE                         R12 R10 R11
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R11 R11 K3 ["SubjectIdKey"]
       23 GETTABLEKS                       R12 R7 K4 ["Id"]
       25 SETTABLE                         R12 R10 R11
       26 GETUPVAL                         R11 1
       27 GETTABLEKS                       R11 R11 K5 ["ActionKey"]
       29 GETTABLEKS                       R12 R7 K5 ["ActionKey"]
       31 SETTABLE                         R12 R10 R11
       32 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
       34 MOVE                             R9 R3
       35 GETIMPORT                        R8 K8 [table.insert]
       37 CALL                             R8 2 0
       38 FORNLOOP                         R4
       39 RETURN                           R3 1

PROTO_4:
        0 ORK                              R2 R2 K0 ["Owner Display Name"]
        1 DUPTABLE                         R3 K2 [{"Creator"}]
        2 DUPTABLE                         R4 K4 [{"targetId"}]
        3 SETTABLEKS                       R1 R4 K3 ["targetId"]
        5 SETTABLEKS                       R4 R3 K1 ["Creator"]
        7 GETIMPORT                        R4 K8 [Enum.CreatorType.User]
        9 JUMPIFNOTEQ                      R0 R4 ; [+7]
       11 GETTABLEKS                       R4 R3 K1 ["Creator"]
       13 LOADK                            R5 K7 ["User"]
       14 SETTABLEKS                       R5 R4 K9 ["type"]
       16 RETURN                           R3 1
       17 GETTABLEKS                       R4 R3 K1 ["Creator"]
       19 LOADK                            R5 K10 ["Group"]
       20 SETTABLEKS                       R5 R4 K9 ["type"]
       22 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["PermissionsConstants"]
        9 CALL                             R1 1 1
       10 NEWTABLE                         R2 4 0
       12 NEWTABLE                         R3 0 2
       14 GETTABLEKS                       R4 R1 K6 ["UserSubjectKey"]
       16 GETTABLEKS                       R5 R1 K7 ["GroupSubjectKey"]
       18 SETLIST                          R3 R4 2 [1]
       20 NEWTABLE                         R4 0 2
       22 GETTABLEKS                       R5 R1 K8 ["EditKey"]
       24 GETTABLEKS                       R6 R1 K9 ["UseViewKey"]
       26 SETLIST                          R4 R5 2 [1]
       28 DUPCLOSURE                       R5 K10 [PROTO_0]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R4
       31 DUPCLOSURE                       R6 K11 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R6 R2 K12 ["getMockCollaborator"]
       37 DUPCLOSURE                       R6 K13 [PROTO_2]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R6 R2 K14 ["createMockCollaborators"]
       42 DUPCLOSURE                       R6 K15 [PROTO_3]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R6 R2 K16 ["createMockCollaboratorsList"]
       47 DUPCLOSURE                       R6 K17 [PROTO_4]
       48 SETTABLEKS                       R6 R2 K18 ["createMockAssetConfig"]
       50 RETURN                           R2 1
