PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K3 [table.find]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R5 R0 K4 ["assetType"]
        5 CALL                             R3 2 1
        6 ORK                              R2 R3 K0 [∞]
        7 GETIMPORT                        R4 K3 [table.find]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R6 R1 K4 ["assetType"]
       12 CALL                             R4 2 1
       13 ORK                              R3 R4 K0 [∞]
       14 JUMPIFLT                         R2 R3 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 JUMPIFNOTEQKS                    R2 K1 ["finished"] ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R0 K2 ["instance"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       13 LOADK                            R4 K3 ["Unfinished piece doesn't have an instnace"]
       14 GETIMPORT                        R2 K5 [assert]
       16 CALL                             R2 2 0
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 NEWTABLE                         R4 0 1
       21 GETTABLEKS                       R5 R0 K2 ["instance"]
       23 SETLIST                          R4 R5 1 [1]
       25 DUPTABLE                         R5 K17 [{["instances"], ["assetTypeEnum"], ["allowUnreviewedAssets"] = False, ["isServer"] = False, ["isAsync"] = False, ["allowEditableInstances"], ["bypassFlags"], ["validateMeshPartAccessories"] = True, ["requireAllFolders"] = False}]
       26 SETTABLEKS                       R4 R5 K6 ["instances"]
       28 GETTABLEKS                       R6 R0 K18 ["assetType"]
       30 SETTABLEKS                       R6 R5 K7 ["assetTypeEnum"]
       32 GETUPVAL                         R6 0
       33 SETTABLEKS                       R6 R5 K12 ["allowEditableInstances"]
       35 GETUPVAL                         R6 1
       36 SETTABLEKS                       R6 R5 K13 ["bypassFlags"]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K19 ["processAll"]
       41 MOVE                             R7 R4
       42 GETUPVAL                         R8 0
       43 CALL                             R6 2 2
       44 JUMPIF                           R6 ; [+3]
       45 MOVE                             R3 R7
       46 LOADB                            R2 0
       47 JUMP                             ; [+32]
       48 GETTABLEKS                       R8 R7 K20 ["editableMeshes"]
       50 SETTABLEKS                       R8 R5 K20 ["editableMeshes"]
       52 GETTABLEKS                       R8 R7 K21 ["editableImages"]
       54 SETTABLEKS                       R8 R5 K21 ["editableImages"]
       56 GETUPVAL                         R8 3
       57 MOVE                             R9 R5
       58 CALL                             R8 1 2
       59 MOVE                             R2 R8
       60 MOVE                             R3 R9
       61 GETUPVAL                         R8 4
       62 CALL                             R8 0 1
       63 JUMPIFNOT                        R8 ; [+10]
       64 GETUPVAL                         R8 5
       65 GETTABLEKS                       R8 R8 K22 ["studioRFUAssetValidation"]
       67 MOVE                             R9 R5
       68 GETUPVAL                         R10 6
       69 MOVE                             R11 R2
       70 MOVE                             R12 R3
       71 CALL                             R8 4 2
       72 MOVE                             R2 R8
       73 MOVE                             R3 R9
       74 GETUPVAL                         R8 7
       75 GETTABLEKS                       R9 R5 K20 ["editableMeshes"]
       77 GETTABLEKS                       R10 R5 K21 ["editableImages"]
       79 CALL                             R8 2 0
       80 GETIMPORT                        R8 K25 [table.clone]
       82 GETUPVAL                         R9 8
       83 CALL                             R8 1 1
       84 SETUPVAL                         R8 8
       85 GETUPVAL                         R8 8
       86 GETIMPORT                        R9 K25 [table.clone]
       88 GETUPVAL                         R10 8
       89 GETTABLEKS                       R10 R10 K26 ["errors"]
       91 CALL                             R9 1 1
       92 SETTABLEKS                       R9 R8 K26 ["errors"]
       94 JUMPIF                           R2 ; [+34]
       95 JUMPIFNOTEQKNIL                  R3 ; [+2]
       97 LOADB                            R9 0 +1
       98 LOADB                            R9 1
       99 FASTCALL2K                       ASSERT R9 K27 ; [+4]
      101 LOADK                            R10 K27 ["Failure without errors"]
      102 GETIMPORT                        R8 K5 [assert]
      104 CALL                             R8 2 0
      105 MOVE                             R8 R3
      106 LOADNIL                          R9
      107 LOADNIL                          R10
      108 FORGPREP                         R8
      109 GETUPVAL                         R14 8
      110 GETTABLEKS                       R14 R14 K26 ["errors"]
      112 DUPTABLE                         R15 K29 [{"assetType", "error"}]
      113 GETTABLEKS                       R16 R0 K18 ["assetType"]
      115 SETTABLEKS                       R16 R15 K18 ["assetType"]
      117 DUPTABLE                         R16 K32 [{["type"] = "message", ["message"]}]
      118 SETTABLEKS                       R12 R16 K31 ["message"]
      120 SETTABLEKS                       R16 R15 K28 ["error"]
      122 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      124 GETIMPORT                        R13 K34 [table.insert]
      126 CALL                             R13 2 0
      127 FORGLOOP                         R8 2 ; [-19]
      129 GETUPVAL                         R8 8
      130 GETIMPORT                        R9 K25 [table.clone]
      132 GETUPVAL                         R10 8
      133 GETTABLEKS                       R10 R10 K35 ["pieces"]
      135 CALL                             R9 1 1
      136 SETTABLEKS                       R9 R8 K35 ["pieces"]
      138 GETUPVAL                         R9 8
      139 GETTABLEKS                       R9 R9 K35 ["pieces"]
      141 GETTABLE                         R8 R9 R1
      142 LOADK                            R9 K1 ["finished"]
      143 SETTABLEKS                       R9 R8 K0 ["status"]
      145 GETUPVAL                         R8 9
      146 GETUPVAL                         R9 8
      147 CALL                             R8 1 0
      148 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K0 ["isBodyPart"]
        9 GETTABLEKS                       R8 R6 K1 ["assetType"]
       11 CALL                             R7 1 1
       12 JUMPIFNOT                        R7 ; [+25]
       13 DUPTABLE                         R9 K4 [{"assetTypeEnum", "allSelectedInstances"}]
       14 GETTABLEKS                       R10 R6 K1 ["assetType"]
       16 SETTABLEKS                       R10 R9 K2 ["assetTypeEnum"]
       18 GETTABLEKS                       R11 R6 K5 ["instance"]
       20 JUMPIFNOT                        R11 ; [+7]
       21 NEWTABLE                         R10 0 1
       23 GETTABLEKS                       R11 R6 K5 ["instance"]
       25 SETLIST                          R10 R11 1 [1]
       27 JUMP                             ; [+2]
       28 NEWTABLE                         R10 0 0
       30 SETTABLEKS                       R10 R9 K3 ["allSelectedInstances"]
       32 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       34 MOVE                             R8 R1
       35 GETIMPORT                        R7 K8 [table.insert]
       37 CALL                             R7 2 0
       38 FORGLOOP                         R2 2 ; [-33]
       40 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["Body"] ; [+138]
        3 DUPCLOSURE                       R0 K1 [PROTO_3]
        4 CAPTURE                          UPVAL U1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 MOVE                             R3 R0
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["pieces"]
       11 CALL                             R3 1 1
       12 DUPTABLE                         R4 K10 [{["fullBodyData"], ["isServer"] = False, ["allowEditableInstances"], ["bypassFlags"], ["validateMeshPartAccessories"] = False, ["requireAllFolders"] = False}]
       13 SETTABLEKS                       R3 R4 K3 ["fullBodyData"]
       15 GETUPVAL                         R5 3
       16 SETTABLEKS                       R5 R4 K6 ["allowEditableInstances"]
       18 GETUPVAL                         R5 4
       19 SETTABLEKS                       R5 R4 K7 ["bypassFlags"]
       21 NEWTABLE                         R5 0 0
       23 MOVE                             R6 R3
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 GETTABLEKS                       R11 R10 K11 ["allSelectedInstances"]
       29 LOADNIL                          R12
       30 LOADNIL                          R13
       31 FORGPREP                         R11
       32 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       34 MOVE                             R17 R5
       35 MOVE                             R18 R15
       36 GETIMPORT                        R16 K14 [table.insert]
       38 CALL                             R16 2 0
       39 FORGLOOP                         R11 2 ; [-8]
       41 FORGLOOP                         R6 2 ; [-15]
       43 GETUPVAL                         R6 5
       44 GETTABLEKS                       R6 R6 K15 ["processAll"]
       46 MOVE                             R7 R5
       47 GETUPVAL                         R8 3
       48 CALL                             R6 2 2
       49 JUMPIF                           R6 ; [+3]
       50 MOVE                             R2 R7
       51 LOADB                            R1 0
       52 JUMP                             ; [+35]
       53 GETTABLEKS                       R8 R7 K16 ["editableMeshes"]
       55 SETTABLEKS                       R8 R4 K16 ["editableMeshes"]
       57 GETTABLEKS                       R8 R7 K17 ["editableImages"]
       59 SETTABLEKS                       R8 R4 K17 ["editableImages"]
       61 GETUPVAL                         R8 6
       62 MOVE                             R9 R4
       63 CALL                             R8 1 2
       64 MOVE                             R1 R8
       65 MOVE                             R2 R9
       66 GETUPVAL                         R8 7
       67 CALL                             R8 0 1
       68 JUMPIFNOT                        R8 ; [+13]
       69 GETUPVAL                         R8 8
       70 GETTABLEKS                       R8 R8 K18 ["studioRFUBundleValidation"]
       72 MOVE                             R9 R3
       73 GETIMPORT                        R10 K22 [Enum.BundleType.BodyParts]
       75 MOVE                             R11 R4
       76 GETUPVAL                         R12 9
       77 MOVE                             R13 R1
       78 MOVE                             R14 R2
       79 CALL                             R8 6 2
       80 MOVE                             R1 R8
       81 MOVE                             R2 R9
       82 GETUPVAL                         R8 10
       83 GETTABLEKS                       R9 R4 K16 ["editableMeshes"]
       85 GETTABLEKS                       R10 R4 K17 ["editableImages"]
       87 CALL                             R8 2 0
       88 JUMPIF                           R1 ; [+48]
       89 GETIMPORT                        R8 K24 [table.clone]
       91 GETUPVAL                         R9 2
       92 CALL                             R8 1 1
       93 SETUPVAL                         R8 2
       94 GETUPVAL                         R8 2
       95 GETIMPORT                        R9 K24 [table.clone]
       97 GETUPVAL                         R10 2
       98 GETTABLEKS                       R10 R10 K25 ["errors"]
      100 CALL                             R9 1 1
      101 SETTABLEKS                       R9 R8 K25 ["errors"]
      103 MOVE                             R9 R2
      104 JUMPIFNOT                        R9 ; [+6]
      105 LENGTH                           R10 R2
      106 LOADN                            R11 0
      107 JUMPIFLT                         R11 R10 ; [+2]
      109 LOADB                            R9 0 +1
      110 LOADB                            R9 1
      111 FASTCALL2K                       ASSERT R9 K26 ; [+4]
      113 LOADK                            R10 K26 ["There should always be a reason for failure"]
      114 GETIMPORT                        R8 K28 [assert]
      116 CALL                             R8 2 0
      117 MOVE                             R8 R2
      118 LOADNIL                          R9
      119 LOADNIL                          R10
      120 FORGPREP                         R8
      121 GETUPVAL                         R14 2
      122 GETTABLEKS                       R14 R14 K25 ["errors"]
      124 DUPTABLE                         R15 K32 [{["assetType"] = , ["error"]}]
      125 DUPTABLE                         R16 K35 [{["type"] = "message", ["message"]}]
      126 SETTABLEKS                       R12 R16 K34 ["message"]
      128 SETTABLEKS                       R16 R15 K31 ["error"]
      130 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      132 GETIMPORT                        R13 K14 [table.insert]
      134 CALL                             R13 2 0
      135 FORGLOOP                         R8 2 ; [-15]
      137 GETUPVAL                         R8 11
      138 GETUPVAL                         R9 2
      139 CALL                             R8 1 0
      140 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 MOVE                             R6 R3
        1 JUMPIF                           R6 ; [+1]
        2 DUPCLOSURE                       R6 K0 [PROTO_0]
        3 MOVE                             R3 R6
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R7 0 +1
        7 LOADB                            R7 1
        8 FASTCALL2K                       ASSERT R7 K1 ; [+4]
       10 LOADK                            R8 K1 ["Luau"]
       11 GETIMPORT                        R6 K3 [assert]
       13 CALL                             R6 2 0
       14 LOADK                            R8 K4 ["Model"]
       15 NAMECALL                         R6 R0 K5 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIF                           R6 ; [+22]
       19 DUPTABLE                         R6 K8 [{"errors", "pieces"}]
       20 NEWTABLE                         R7 0 1
       22 DUPTABLE                         R8 K12 [{["assetType"] = , ["error"]}]
       23 DUPTABLE                         R9 K16 [{["type"] = "message", ["message"] = "Invalid root instance, must be a model"}]
       24 SETTABLEKS                       R9 R8 K11 ["error"]
       26 SETLIST                          R7 R8 1 [1]
       28 SETTABLEKS                       R7 R6 K6 ["errors"]
       30 NEWTABLE                         R7 0 0
       32 SETTABLEKS                       R7 R6 K7 ["pieces"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K17 ["resolve"]
       37 MOVE                             R8 R6
       38 CALL                             R7 1 -1
       39 CLOSEUPVALS                      R3
       40 RETURN                           R7 -1
       41 GETUPVAL                         R6 1
       42 MOVE                             R7 R0
       43 CALL                             R6 1 1
       44 MOVE                             R0 R6
       45 GETUPVAL                         R6 2
       46 MOVE                             R7 R0
       47 MOVE                             R8 R1
       48 MOVE                             R9 R2
       49 LOADB                            R10 0
       50 CALL                             R6 4 1
       51 NEWTABLE                         R7 0 0
       53 NEWTABLE                         R8 0 0
       55 GETTABLE                         R9 R1 R2
       56 GETTABLEKS                       R9 R9 K18 ["allowedAssetTypeSettings"]
       58 LOADNIL                          R10
       59 LOADNIL                          R11
       60 FORGPREP                         R9
       61 GETIMPORT                        R16 K21 [Enum.AssetType]
       63 GETTABLE                         R15 R16 R12
       64 FASTCALL2K                       ASSERT R15 K22 ; [+4]
       66 LOADK                            R16 K22 ["Asset type name doesn't map to an enum item"]
       67 GETIMPORT                        R14 K3 [assert]
       69 CALL                             R14 2 1
       70 GETTABLEKS                       R15 R13 K23 ["isEligibleForUpload"]
       72 JUMPIFNOT                        R15 ; [+78]
       73 LOADB                            R16 1
       74 GETTABLEKS                       R17 R13 K24 ["minimumQuantity"]
       76 JUMPIFEQKN                       R17 K25 [0] ; [+7]
       78 GETTABLEKS                       R17 R13 K24 ["minimumQuantity"]
       80 JUMPIFEQKN                       R17 K26 [1] ; [+2]
       82 LOADB                            R16 0 +1
       83 LOADB                            R16 1
       84 FASTCALL2K                       ASSERT R16 K27 ; [+4]
       86 LOADK                            R17 K27 ["Invalid minimum quantity, createUGCBodyParts folder is a dictionary and will only ever give one."]
       87 GETIMPORT                        R15 K3 [assert]
       89 CALL                             R15 2 0
       90 LOADB                            R16 1
       91 GETTABLEKS                       R17 R13 K28 ["maximumQuantity"]
       93 JUMPIFEQKN                       R17 K25 [0] ; [+7]
       95 GETTABLEKS                       R17 R13 K28 ["maximumQuantity"]
       97 JUMPIFEQKN                       R17 K26 [1] ; [+2]
       99 LOADB                            R16 0 +1
      100 LOADB                            R16 1
      101 FASTCALL2K                       ASSERT R16 K29 ; [+4]
      103 LOADK                            R17 K29 ["Invalid maximum quantity, createUGCBodyParts folder is a dictionary and will only ever give one."]
      104 GETIMPORT                        R15 K3 [assert]
      106 CALL                             R15 2 0
      107 GETTABLE                         R15 R6 R14
      108 MOVE                             R16 R15
      109 JUMPIFNOT                        R16 ; [+1]
      110 GETTABLEN                        R16 R15 1
      111 GETTABLEKS                       R17 R13 K24 ["minimumQuantity"]
      113 JUMPIFNOTEQKN                    R17 K25 [0] ; [+3]
      115 JUMPIFEQKNIL                     R16 ; [+35]
      117 DUPTABLE                         R19 K33 [{"assetType", "instance", "settings", "status"}]
      118 SETTABLEKS                       R14 R19 K9 ["assetType"]
      120 SETTABLEKS                       R16 R19 K30 ["instance"]
      122 SETTABLEKS                       R13 R19 K31 ["settings"]
      124 JUMPIFNOTEQKNIL                  R16 ; [+3]
      126 LOADK                            R20 K34 ["finished"]
      127 JUMP                             ; [+1]
      128 LOADK                            R20 K35 ["pending"]
      129 SETTABLEKS                       R20 R19 K32 ["status"]
      131 FASTCALL2                        TABLE_INSERT R8 R19 ; [+4]
      133 MOVE                             R18 R8
      134 GETIMPORT                        R17 K38 [table.insert]
      136 CALL                             R17 2 0
      137 JUMPIFNOTEQKNIL                  R16 ; [+13]
      139 DUPTABLE                         R19 K39 [{"assetType", "error"}]
      140 SETTABLEKS                       R14 R19 K9 ["assetType"]
      142 DUPTABLE                         R20 K41 [{["type"] = "notFound"}]
      143 SETTABLEKS                       R20 R19 K11 ["error"]
      145 FASTCALL2                        TABLE_INSERT R7 R19 ; [+4]
      147 MOVE                             R18 R7
      148 GETIMPORT                        R17 K38 [table.insert]
      150 CALL                             R17 2 0
      151 FORGLOOP                         R9 2 ; [-91]
      153 GETIMPORT                        R9 K43 [table.sort]
      155 MOVE                             R10 R8
      156 DUPCLOSURE                       R11 K44 [PROTO_1]
      157 CAPTURE                          UPVAL U3
      158 CALL                             R9 2 0
      159 DUPTABLE                         R9 K8 [{"errors", "pieces"}]
      160 SETTABLEKS                       R7 R9 K6 ["errors"]
      162 SETTABLEKS                       R8 R9 K7 ["pieces"]
      164 MOVE                             R10 R3
      165 MOVE                             R11 R9
      166 CALL                             R10 1 0
      167 LOADNIL                          R10
      168 GETUPVAL                         R11 4
      169 CALL                             R11 0 1
      170 JUMPIFNOT                        R11 ; [+5]
      171 GETUPVAL                         R11 5
      172 NAMECALL                         R11 R11 K45 ["GenerateGUID"]
      174 CALL                             R11 1 1
      175 MOVE                             R10 R11
      176 GETUPVAL                         R11 0
      177 GETTABLEKS                       R11 R11 K46 ["each"]
      179 MOVE                             R12 R8
      180 NEWCLOSURE                       R13 P2
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R5
      183 CAPTURE                          UPVAL U6
      184 CAPTURE                          UPVAL U7
      185 CAPTURE                          UPVAL U4
      186 CAPTURE                          UPVAL U8
      187 CAPTURE                          REF R10
      188 CAPTURE                          UPVAL U9
      189 CAPTURE                          REF R9
      190 CAPTURE                          REF R3
      191 CALL                             R11 2 1
      192 NEWCLOSURE                       R13 P3
      193 CAPTURE                          VAL R2
      194 CAPTURE                          UPVAL U10
      195 CAPTURE                          REF R9
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R5
      198 CAPTURE                          UPVAL U6
      199 CAPTURE                          UPVAL U11
      200 CAPTURE                          UPVAL U4
      201 CAPTURE                          UPVAL U8
      202 CAPTURE                          REF R10
      203 CAPTURE                          UPVAL U9
      204 CAPTURE                          REF R3
      205 NAMECALL                         R11 R11 K47 ["andThen"]
      207 CALL                             R11 2 1
      208 NEWCLOSURE                       R13 P4
      209 CAPTURE                          REF R9
      210 NAMECALL                         R11 R11 K47 ["andThen"]
      212 CALL                             R11 2 -1
      213 CLOSEUPVALS                      R3
      214 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Promise"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["ConstantsInterface"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K7 ["util"]
       23 GETTABLEKS                       R4 R4 K8 ["BundlesMetadata"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K7 ["util"]
       30 GETTABLEKS                       R5 R5 K9 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K7 ["util"]
       37 GETTABLEKS                       R6 R6 K10 ["createEditableInstancesForContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K7 ["util"]
       44 GETTABLEKS                       R7 R7 K11 ["destroyEditableInstances"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K7 ["util"]
       51 GETTABLEKS                       R8 R8 K12 ["createUGCBodyPartFolders"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R9 R0 K7 ["util"]
       58 GETTABLEKS                       R9 R9 K13 ["fixUpPreValidation"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R10 R0 K14 ["validation"]
       65 GETTABLEKS                       R10 R10 K15 ["validateInternal"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R11 R0 K14 ["validation"]
       72 GETTABLEKS                       R11 R11 K16 ["validateFullBody"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R12 R0 K17 ["flags"]
       79 GETTABLEKS                       R12 R12 K18 ["getFFlagUGCValidationEnableFolderStructure"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R13 R0 K7 ["util"]
       86 GETTABLEKS                       R13 R13 K19 ["LegacyValidationAdapter"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K21 [game]
       91 LOADK                            R15 K22 ["HttpService"]
       92 NAMECALL                         R13 R13 K23 ["GetService"]
       94 CALL                             R13 2 1
       95 NEWTABLE                         R14 0 9
       97 GETIMPORT                        R15 K27 [Enum.AssetType.DynamicHead]
       99 GETIMPORT                        R16 K29 [Enum.AssetType.Torso]
      101 GETIMPORT                        R17 K31 [Enum.AssetType.LeftArm]
      103 GETIMPORT                        R18 K33 [Enum.AssetType.RightArm]
      105 GETIMPORT                        R19 K35 [Enum.AssetType.LeftLeg]
      107 GETIMPORT                        R20 K37 [Enum.AssetType.RightLeg]
      109 GETIMPORT                        R21 K39 [Enum.AssetType.HairAccessory]
      111 GETIMPORT                        R22 K41 [Enum.AssetType.EyebrowAccessory]
      113 GETIMPORT                        R23 K43 [Enum.AssetType.EyelashAccessory]
      115 SETLIST                          R14 R15 9 [1]
      117 DUPCLOSURE                       R15 K44 [PROTO_6]
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R10
      130 RETURN                           R15 1
