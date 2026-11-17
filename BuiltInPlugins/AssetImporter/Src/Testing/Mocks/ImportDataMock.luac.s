PROTO_0:
        0 NEWTABLE                         R3 16 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["Id"]
       10 LOADK                            R3 K3 ["ImportMock"]
       11 SETTABLEKS                       R3 R2 K4 ["ImportName"]
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K5 ["ShouldImport"]
       16 LOADK                            R3 K6 ["BaseImportData"]
       17 SETTABLEKS                       R3 R2 K7 ["ClassName"]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K8 ["Parent"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K9 ["new"]
       25 CALL                             R3 0 1
       26 SETTABLEKS                       R3 R2 K10 ["Changed"]
       28 GETIMPORT                        R3 K12 [pairs]
       30 MOVE                             R4 R1
       31 CALL                             R3 1 3
       32 FORGPREP_NEXT                    R3
       33 SETTABLE                         R7 R2 R6
       34 FORGLOOP                         R3 2 ; [-2]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K9 ["new"]
       39 CALL                             R3 0 1
       40 SETTABLEKS                       R3 R2 K13 ["_propertyChangedSignal"]
       42 NEWTABLE                         R3 0 0
       44 SETTABLEKS                       R3 R2 K14 ["_statuses"]
       46 NEWTABLE                         R3 0 0
       48 SETTABLEKS                       R3 R2 K15 ["_childLookup"]
       50 LOADNIL                          R3
       51 SETTABLEKS                       R3 R2 K16 ["_previewInstance"]
       53 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_propertyChangedSignal"]
        2 RETURN                           R1 1

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["ClassName"]
        2 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_statuses"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 DUPTABLE                         R8 K2 [{"DebugMessage"}]
        6 SETTABLEKS                       R3 R8 K1 ["DebugMessage"]
        8 CALL                             R5 3 1
        9 SETTABLE                         R5 R4 R2
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_statuses"]
        2 RETURN                           R1 1

PROTO_5:
        0 JUMPIFEQKS                       R1 K0 ["BaseImportData"] ; [+7]
        2 GETTABLEKS                       R2 R0 K1 ["ClassName"]
        4 JUMPIFEQ                         R1 R2 ; [+3]
        6 JUMPIFNOTEQKS                    R1 K2 ["Instance"] ; [+3]
        8 LOADB                            R2 1
        9 RETURN                           R2 1
       10 LOADB                            R2 0
       11 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_childLookup"]
        2 LOADB                            R3 1
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_childLookup"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETTABLEKS                       R3 R0 K2 ["_childLookup"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       10 MOVE                             R8 R1
       11 MOVE                             R9 R5
       12 GETIMPORT                        R7 K5 [table.insert]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 ; [-8]
       17 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 JUMPIFEQKNIL                     R2 ; [+7]
        4 GETTABLEKS                       R2 R0 K0 ["Parent"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R2 K1 ["_removeChild"]
        9 CALL                             R2 2 0
       10 SETTABLEKS                       R1 R0 K0 ["Parent"]
       12 JUMPIFEQKNIL                     R1 ; [+5]
       14 MOVE                             R4 R0
       15 NAMECALL                         R2 R1 K2 ["_addChild"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_propertyChangedSignal"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 JUMPIFEQKNIL                     R1 ; [+7]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K3 ["_removeChild"]
       14 CALL                             R1 2 0
       15 GETIMPORT                        R1 K5 [pairs]
       17 GETTABLEKS                       R2 R0 K6 ["_childLookup"]
       19 CALL                             R1 1 3
       20 FORGPREP_NEXT                    R1
       21 LOADNIL                          R8
       22 NAMECALL                         R6 R4 K7 ["SetParent"]
       24 CALL                             R6 2 0
       25 FORGLOOP                         R1 2 ; [-5]
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K6 ["_childLookup"]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K2 ["Parent"]
       34 GETTABLEKS                       R1 R0 K8 ["_previewInstance"]
       36 JUMPIFNOT                        R1 ; [+8]
       37 GETTABLEKS                       R1 R0 K8 ["_previewInstance"]
       39 NAMECALL                         R1 R1 K1 ["Destroy"]
       41 CALL                             R1 1 0
       42 LOADNIL                          R1
       43 SETTABLEKS                       R1 R0 K8 ["_previewInstance"]
       45 RETURN                           R0 0

PROTO_11:
        0 SETTABLEKS                       R1 R0 K0 ["_previewInstance"]
        2 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_previewInstance"]
        2 RETURN                           R1 1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETTABLEKS                       R3 R0 K2 ["_childLookup"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       10 MOVE                             R8 R1
       11 MOVE                             R9 R5
       12 GETIMPORT                        R7 K5 [table.insert]
       14 CALL                             R7 2 0
       15 LOADK                            R9 K6 ["BaseImportData"]
       16 NAMECALL                         R7 R5 K7 ["IsA"]
       18 CALL                             R7 2 1
       19 JUMPIFNOT                        R7 ; [+17]
       20 NAMECALL                         R7 R5 K8 ["GetDescendants"]
       22 CALL                             R7 1 1
       23 GETIMPORT                        R8 K10 [ipairs]
       25 MOVE                             R9 R7
       26 CALL                             R8 1 3
       27 FORGPREP_INEXT                   R8
       28 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       30 MOVE                             R14 R1
       31 MOVE                             R15 R12
       32 GETIMPORT                        R13 K5 [table.insert]
       34 CALL                             R13 2 0
       35 FORGLOOP                         R8 2 [inext] ; [-8]
       37 FORGLOOP                         R2 2 ; [-30]
       39 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Testing"]
       20 GETTABLEKS                       R3 R3 K9 ["Mocks"]
       22 GETTABLEKS                       R3 R3 K10 ["EventMock"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Testing"]
       31 GETTABLEKS                       R4 R4 K9 ["Mocks"]
       33 GETTABLEKS                       R4 R4 K11 ["MakeMockStatus"]
       35 CALL                             R3 1 1
       36 NEWTABLE                         R4 16 0
       38 SETTABLEKS                       R4 R4 K12 ["__index"]
       40 DUPCLOSURE                       R5 K13 [PROTO_0]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R5 R4 K14 ["new"]
       45 DUPCLOSURE                       R5 K15 [PROTO_1]
       46 SETTABLEKS                       R5 R4 K16 ["GetPropertyChangedSignal"]
       48 DUPCLOSURE                       R5 K17 [PROTO_2]
       49 SETTABLEKS                       R5 R4 K18 ["SetClassName"]
       51 DUPCLOSURE                       R5 K19 [PROTO_3]
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R5 R4 K20 ["AddMockStatus"]
       55 DUPCLOSURE                       R5 K21 [PROTO_4]
       56 SETTABLEKS                       R5 R4 K22 ["GetStatuses"]
       58 DUPCLOSURE                       R5 K23 [PROTO_5]
       59 SETTABLEKS                       R5 R4 K24 ["IsA"]
       61 DUPCLOSURE                       R5 K25 [PROTO_6]
       62 SETTABLEKS                       R5 R4 K26 ["_addChild"]
       64 DUPCLOSURE                       R5 K27 [PROTO_7]
       65 SETTABLEKS                       R5 R4 K28 ["_removeChild"]
       67 DUPCLOSURE                       R5 K29 [PROTO_8]
       68 SETTABLEKS                       R5 R4 K30 ["GetChildren"]
       70 DUPCLOSURE                       R5 K31 [PROTO_9]
       71 SETTABLEKS                       R5 R4 K32 ["SetParent"]
       73 DUPCLOSURE                       R5 K33 [PROTO_10]
       74 SETTABLEKS                       R5 R4 K34 ["Destroy"]
       76 DUPCLOSURE                       R5 K35 [PROTO_11]
       77 SETTABLEKS                       R5 R4 K36 ["AddPreviewInstance"]
       79 DUPCLOSURE                       R5 K37 [PROTO_12]
       80 SETTABLEKS                       R5 R4 K38 ["GetPreview"]
       82 DUPCLOSURE                       R5 K39 [PROTO_13]
       83 SETTABLEKS                       R5 R4 K40 ["GetDescendants"]
       85 RETURN                           R4 1
