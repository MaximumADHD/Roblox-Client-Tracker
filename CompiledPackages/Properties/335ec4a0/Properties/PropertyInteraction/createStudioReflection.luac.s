PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R8 R1
        7 MOVE                             R9 R7
        8 CALL                             R8 1 1
        9 JUMPIFEQKNIL                     R8 ; [+8]
       11 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       13 MOVE                             R10 R2
       14 MOVE                             R11 R8
       15 GETIMPORT                        R9 K2 [table.insert]
       17 CALL                             R9 2 0
       18 FORGLOOP                         R3 2 ; [-13]
       20 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K2 [Enum.SecurityCapability]
        4 NAMECALL                         R1 R1 K3 ["GetEnumItems"]
        6 CALL                             R1 1 3
        7 FORGPREP                         R1
        8 GETIMPORT                        R6 K5 [Enum.SecurityCapability.RobloxEngine]
       10 JUMPIFEQ                         R5 R6 ; [+8]
       12 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R5
       16 GETIMPORT                        R6 K8 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-12]
       21 DUPTABLE                         R1 K10 [{"Security"}]
       22 GETIMPORT                        R2 K13 [SecurityCapabilities.new]
       24 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       25 MOVE                             R4 R0
       26 GETIMPORT                        R3 K15 [table.unpack]
       28 CALL                             R3 1 -1
       29 CALL                             R2 -1 1
       30 SETTABLEKS                       R2 R1 K9 ["Security"]
       32 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Display"]
        2 GETTABLEKS                       R1 R1 K1 ["DeprecationMessage"]
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K2 ["Permits"]
        9 GETTABLEKS                       R1 R1 K3 ["Read"]
       11 JUMPIF                           R1 ; [+2]
       12 LOADB                            R1 0
       13 RETURN                           R1 1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Display"]
        2 GETTABLEKS                       R2 R2 K1 ["DeprecationMessage"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADB                            R1 0
        6 JUMP                             ; [+8]
        7 GETTABLEKS                       R2 R0 K2 ["Permits"]
        9 GETTABLEKS                       R2 R2 K3 ["Read"]
       11 JUMPIF                           R2 ; [+2]
       12 LOADB                            R1 0
       13 JUMP                             ; [+1]
       14 LOADB                            R1 1
       15 JUMPIF                           R1 ; [+2]
       16 LOADNIL                          R1
       17 RETURN                           R1 1
       18 LOADNIL                          R1
       19 GETTABLEKS                       R2 R0 K4 ["Type"]
       21 GETTABLEKS                       R2 R2 K5 ["EngineType"]
       23 GETTABLEKS                       R3 R0 K4 ["Type"]
       25 GETTABLEKS                       R3 R3 K6 ["ScriptType"]
       27 JUMPIF                           R3 ; [+3]
       28 JUMPIFNOTEQKS                    R2 K7 ["UniqueId"] ; [+2]
       30 LOADK                            R3 K8 ["string"]
       31 JUMPIF                           R3 ; [+2]
       32 LOADNIL                          R4
       33 RETURN                           R4 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R6 R0 K9 ["Name"]
       37 GETTABLE                         R4 R5 R6
       38 JUMPIF                           R4 ; [+2]
       39 GETUPVAL                         R5 1
       40 GETTABLE                         R4 R5 R3
       41 MOVE                             R1 R4
       42 JUMPIFNOTEQKS                    R1 K10 ["number"] ; [+14]
       44 JUMPIFEQKS                       R2 K11 ["float"] ; [+3]
       46 JUMPIFNOTEQKS                    R2 K12 ["double"] ; [+3]
       48 LOADK                            R1 K11 ["float"]
       49 JUMP                             ; [+7]
       50 JUMPIFEQKS                       R2 K13 ["int"] ; [+3]
       52 JUMPIFNOTEQKS                    R2 K14 ["int64"] ; [+3]
       54 LOADK                            R1 K13 ["int"]
       55 JUMP                             ; [+1]
       56 LOADK                            R1 K10 ["number"]
       57 JUMPIF                           R1 ; [+4]
       58 GETTABLEKS                       R4 R0 K15 ["Owner"]
       60 MOVE                             R5 R3
       61 MOVE                             R1 R3
       62 DUPTABLE                         R4 K24 [{"name", "owner", "assetType", "enumName", "instanceRefType", "readonly", "type", "category"}]
       63 GETTABLEKS                       R5 R0 K9 ["Name"]
       65 SETTABLEKS                       R5 R4 K16 ["name"]
       67 GETTABLEKS                       R5 R0 K15 ["Owner"]
       69 SETTABLEKS                       R5 R4 K17 ["owner"]
       71 GETTABLEKS                       R5 R0 K25 ["ContentType"]
       73 SETTABLEKS                       R5 R4 K18 ["assetType"]
       75 GETTABLEKS                       R5 R0 K4 ["Type"]
       77 GETTABLEKS                       R5 R5 K26 ["EnumType"]
       79 SETTABLEKS                       R5 R4 K19 ["enumName"]
       81 GETTABLEKS                       R5 R0 K4 ["Type"]
       83 GETTABLEKS                       R5 R5 K27 ["InstanceType"]
       85 SETTABLEKS                       R5 R4 K20 ["instanceRefType"]
       87 GETTABLEKS                       R6 R0 K2 ["Permits"]
       89 GETTABLEKS                       R6 R6 K28 ["Write"]
       91 NOT                              R5 R6
       92 SETTABLEKS                       R5 R4 K21 ["readonly"]
       94 SETTABLEKS                       R1 R4 K22 ["type"]
       96 GETTABLEKS                       R5 R0 K0 ["Display"]
       98 GETTABLEKS                       R5 R5 K29 ["Category"]
      100 SETTABLEKS                       R5 R4 K23 ["category"]
      102 GETUPVAL                         R5 2
      103 MOVE                             R6 R4
      104 CALL                             R5 1 1
      105 JUMPIF                           R5 ; [+2]
      106 LOADNIL                          R5
      107 RETURN                           R5 1
      108 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["GetPropertiesOfClass"]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["GetClass"]
        5 CALL                             R1 3 1
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K1 ["Superclass"]
       11 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R0
        7 JUMPIFNOT                        R3 ; [+20]
        8 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       10 MOVE                             R5 R2
       11 MOVE                             R6 R3
       12 GETIMPORT                        R4 K2 [table.insert]
       14 CALL                             R4 2 0
       15 MOVE                             R4 R3
       16 GETUPVAL                         R5 1
       17 MOVE                             R7 R4
       18 GETUPVAL                         R8 2
       19 NAMECALL                         R5 R5 K3 ["GetClass"]
       21 CALL                             R5 3 1
       22 JUMPIF                           R5 ; [+2]
       23 LOADNIL                          R3
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R3 R5 K4 ["Superclass"]
       27 JUMPBACK                         ; [-21]
       28 GETIMPORT                        R4 K6 [table.freeze]
       30 MOVE                             R5 R2
       31 CALL                             R4 1 0
       32 GETUPVAL                         R4 0
       33 SETTABLE                         R2 R4 R0
       34 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R4 R0
        6 GETUPVAL                         R5 2
        7 NAMECALL                         R2 R2 K0 ["GetPropertiesOfClass"]
        9 CALL                             R2 3 1
       10 JUMPIF                           R2 ; [+8]
       11 GETIMPORT                        R3 K2 [warn]
       13 LOADK                            R4 K3 ["Unable to find properties for class"]
       14 MOVE                             R5 R0
       15 CALL                             R3 2 0
       16 NEWTABLE                         R3 0 0
       18 RETURN                           R3 1
       19 GETUPVAL                         R3 3
       20 MOVE                             R4 R2
       21 GETUPVAL                         R5 4
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K6 [table.freeze]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 0
       28 SETTABLE                         R3 R4 R0
       29 RETURN                           R3 1

PROTO_9:
        0 DUPTABLE                         R0 K2 [{"GetClassHierarchy", "ListProperties"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["GetClassHierarchy"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["ListProperties"]
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["RpcTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["PropertyInteraction"]
       21 GETTABLEKS                       R4 R4 K9 ["filterOutProperties"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 GETIMPORT                        R5 K12 [game]
       27 LOADK                            R7 K13 ["ReflectionService"]
       28 NAMECALL                         R5 R5 K14 ["GetService"]
       30 CALL                             R5 2 1
       31 DUPCLOSURE                       R6 K15 [PROTO_1]
       32 MOVE                             R7 R6
       33 CALL                             R7 0 1
       34 NEWTABLE                         R8 0 0
       36 DUPCLOSURE                       R9 K16 [PROTO_2]
       37 NEWTABLE                         R10 0 0
       39 LOADK                            R11 K17 ["Color3"]
       40 SETTABLEKS                       R11 R10 K17 ["Color3"]
       42 LOADK                            R11 K18 ["Vector3"]
       43 SETTABLEKS                       R11 R10 K18 ["Vector3"]
       45 LOADK                            R11 K19 ["boolean"]
       46 SETTABLEKS                       R11 R10 K19 ["boolean"]
       48 LOADK                            R11 K20 ["string"]
       49 SETTABLEKS                       R11 R10 K20 ["string"]
       51 LOADK                            R11 K21 ["InstanceRef"]
       52 SETTABLEKS                       R11 R10 K22 ["Instance"]
       54 LOADK                            R11 K23 ["Enum"]
       55 SETTABLEKS                       R11 R10 K24 ["EnumItem"]
       57 LOADK                            R11 K25 ["number"]
       58 SETTABLEKS                       R11 R10 K25 ["number"]
       60 LOADK                            R11 K26 ["NumberSequence"]
       61 SETTABLEKS                       R11 R10 K26 ["NumberSequence"]
       63 NEWTABLE                         R11 0 0
       65 LOADK                            R12 K27 ["DynamicEnum"]
       66 SETTABLEKS                       R12 R11 K28 ["CollisionGroup"]
       68 NEWTABLE                         R12 0 0
       70 DUPCLOSURE                       R13 K29 [PROTO_3]
       71 DUPCLOSURE                       R14 K30 [PROTO_4]
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R3
       75 DUPCLOSURE                       R15 K31 [PROTO_5]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R7
       78 DUPCLOSURE                       R16 K32 [PROTO_6]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 NEWTABLE                         R17 0 0
       83 DUPCLOSURE                       R18 K33 [PROTO_7]
       84 CAPTURE                          VAL R17
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R7
       87 DUPCLOSURE                       R19 K34 [PROTO_8]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R14
       93 DUPCLOSURE                       R20 K35 [PROTO_9]
       94 CAPTURE                          VAL R18
       95 CAPTURE                          VAL R19
       96 RETURN                           R20 1
