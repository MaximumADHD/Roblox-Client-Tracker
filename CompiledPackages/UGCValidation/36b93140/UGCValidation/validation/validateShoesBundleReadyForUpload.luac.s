PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 JUMPIFNOTEQKS                    R2 K1 ["finished"] ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R0 K2 ["instance"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       13 LOADK                            R4 K3 ["Unfinished piece doesn't have an instance"]
       14 GETIMPORT                        R2 K5 [assert]
       16 CALL                             R2 2 0
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 NEWTABLE                         R4 0 1
       21 GETTABLEKS                       R5 R0 K2 ["instance"]
       23 SETLIST                          R4 R5 1 [1]
       25 DUPTABLE                         R5 K10 [{"instances", "assetTypeEnum", "allowEditableInstances", "bypassFlags"}]
       26 SETTABLEKS                       R4 R5 K6 ["instances"]
       28 GETTABLEKS                       R6 R0 K11 ["assetType"]
       30 SETTABLEKS                       R6 R5 K7 ["assetTypeEnum"]
       32 GETUPVAL                         R6 0
       33 SETTABLEKS                       R6 R5 K8 ["allowEditableInstances"]
       35 GETUPVAL                         R6 1
       36 SETTABLEKS                       R6 R5 K9 ["bypassFlags"]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K12 ["processAll"]
       41 MOVE                             R7 R4
       42 GETUPVAL                         R8 0
       43 CALL                             R6 2 2
       44 JUMPIF                           R6 ; [+3]
       45 MOVE                             R3 R7
       46 LOADB                            R2 0
       47 JUMP                             ; [+32]
       48 GETTABLEKS                       R8 R7 K13 ["editableMeshes"]
       50 SETTABLEKS                       R8 R5 K13 ["editableMeshes"]
       52 GETTABLEKS                       R8 R7 K14 ["editableImages"]
       54 SETTABLEKS                       R8 R5 K14 ["editableImages"]
       56 GETUPVAL                         R8 3
       57 MOVE                             R9 R5
       58 CALL                             R8 1 2
       59 MOVE                             R2 R8
       60 MOVE                             R3 R9
       61 GETUPVAL                         R8 4
       62 CALL                             R8 0 1
       63 JUMPIFNOT                        R8 ; [+10]
       64 GETUPVAL                         R8 5
       65 GETTABLEKS                       R8 R8 K15 ["studioRFUAssetValidation"]
       67 MOVE                             R9 R5
       68 GETUPVAL                         R10 6
       69 MOVE                             R11 R2
       70 MOVE                             R12 R3
       71 CALL                             R8 4 2
       72 MOVE                             R2 R8
       73 MOVE                             R3 R9
       74 GETUPVAL                         R8 7
       75 GETTABLEKS                       R9 R5 K13 ["editableMeshes"]
       77 GETTABLEKS                       R10 R5 K14 ["editableImages"]
       79 CALL                             R8 2 0
       80 GETIMPORT                        R8 K18 [table.clone]
       82 GETUPVAL                         R9 8
       83 CALL                             R8 1 1
       84 SETUPVAL                         R8 8
       85 GETUPVAL                         R8 8
       86 GETIMPORT                        R9 K18 [table.clone]
       88 GETUPVAL                         R10 8
       89 GETTABLEKS                       R10 R10 K19 ["errors"]
       91 CALL                             R9 1 1
       92 SETTABLEKS                       R9 R8 K19 ["errors"]
       94 JUMPIF                           R2 ; [+34]
       95 JUMPIFNOTEQKNIL                  R3 ; [+2]
       97 LOADB                            R9 0 +1
       98 LOADB                            R9 1
       99 FASTCALL2K                       ASSERT R9 K20 ; [+4]
      101 LOADK                            R10 K20 ["Failure without errors"]
      102 GETIMPORT                        R8 K5 [assert]
      104 CALL                             R8 2 0
      105 MOVE                             R8 R3
      106 LOADNIL                          R9
      107 LOADNIL                          R10
      108 FORGPREP                         R8
      109 GETUPVAL                         R14 8
      110 GETTABLEKS                       R14 R14 K19 ["errors"]
      112 DUPTABLE                         R15 K22 [{"assetType", "error"}]
      113 GETTABLEKS                       R16 R0 K11 ["assetType"]
      115 SETTABLEKS                       R16 R15 K11 ["assetType"]
      117 DUPTABLE                         R16 K25 [{["type"] = "message", ["message"]}]
      118 SETTABLEKS                       R12 R16 K24 ["message"]
      120 SETTABLEKS                       R16 R15 K21 ["error"]
      122 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      124 GETIMPORT                        R13 K27 [table.insert]
      126 CALL                             R13 2 0
      127 FORGLOOP                         R8 2 ; [-19]
      129 GETUPVAL                         R8 8
      130 GETIMPORT                        R9 K18 [table.clone]
      132 GETUPVAL                         R10 8
      133 GETTABLEKS                       R10 R10 K28 ["pieces"]
      135 CALL                             R9 1 1
      136 SETTABLEKS                       R9 R8 K28 ["pieces"]
      138 GETUPVAL                         R9 8
      139 GETTABLEKS                       R9 R9 K28 ["pieces"]
      141 GETTABLE                         R8 R9 R1
      142 LOADK                            R9 K1 ["finished"]
      143 SETTABLEKS                       R9 R8 K0 ["status"]
      145 GETUPVAL                         R8 9
      146 GETUPVAL                         R9 8
      147 CALL                             R8 1 0
      148 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K2 [{"assetTypeEnum", "allSelectedInstances"}]
        7 GETTABLEKS                       R10 R6 K3 ["assetType"]
        9 SETTABLEKS                       R10 R9 K0 ["assetTypeEnum"]
       11 GETTABLEKS                       R11 R6 K4 ["instance"]
       13 JUMPIFNOT                        R11 ; [+7]
       14 NEWTABLE                         R10 0 1
       16 GETTABLEKS                       R11 R6 K4 ["instance"]
       18 SETLIST                          R10 R11 1 [1]
       20 JUMP                             ; [+2]
       21 NEWTABLE                         R10 0 0
       23 SETTABLEKS                       R10 R9 K1 ["allSelectedInstances"]
       25 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       27 MOVE                             R8 R1
       28 GETIMPORT                        R7 K7 [table.insert]
       30 CALL                             R7 2 0
       31 FORGLOOP                         R2 2 ; [-26]
       33 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+133]
        2 DUPCLOSURE                       R0 K0 [PROTO_2]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["pieces"]
        9 CALL                             R3 1 1
       10 DUPTABLE                         R4 K7 [{["fullBodyData"], ["isServer"] = False, ["allowEditableInstances"], ["bypassFlags"]}]
       11 SETTABLEKS                       R3 R4 K2 ["fullBodyData"]
       13 GETUPVAL                         R5 2
       14 SETTABLEKS                       R5 R4 K5 ["allowEditableInstances"]
       16 GETUPVAL                         R5 3
       17 SETTABLEKS                       R5 R4 K6 ["bypassFlags"]
       19 NEWTABLE                         R5 0 0
       21 MOVE                             R6 R3
       22 LOADNIL                          R7
       23 LOADNIL                          R8
       24 FORGPREP                         R6
       25 GETTABLEKS                       R11 R10 K8 ["allSelectedInstances"]
       27 LOADNIL                          R12
       28 LOADNIL                          R13
       29 FORGPREP                         R11
       30 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       32 MOVE                             R17 R5
       33 MOVE                             R18 R15
       34 GETIMPORT                        R16 K11 [table.insert]
       36 CALL                             R16 2 0
       37 FORGLOOP                         R11 2 ; [-8]
       39 FORGLOOP                         R6 2 ; [-15]
       41 GETUPVAL                         R6 4
       42 GETTABLEKS                       R6 R6 K12 ["processAll"]
       44 MOVE                             R7 R5
       45 GETUPVAL                         R8 2
       46 CALL                             R6 2 2
       47 JUMPIF                           R6 ; [+3]
       48 MOVE                             R2 R7
       49 LOADB                            R1 0
       50 JUMP                             ; [+35]
       51 GETTABLEKS                       R8 R7 K13 ["editableMeshes"]
       53 SETTABLEKS                       R8 R4 K13 ["editableMeshes"]
       55 GETTABLEKS                       R8 R7 K14 ["editableImages"]
       57 SETTABLEKS                       R8 R4 K14 ["editableImages"]
       59 GETUPVAL                         R8 5
       60 MOVE                             R9 R4
       61 CALL                             R8 1 2
       62 MOVE                             R1 R8
       63 MOVE                             R2 R9
       64 GETUPVAL                         R8 6
       65 CALL                             R8 0 1
       66 JUMPIFNOT                        R8 ; [+13]
       67 GETUPVAL                         R8 7
       68 GETTABLEKS                       R8 R8 K15 ["studioRFUBundleValidation"]
       70 MOVE                             R9 R3
       71 GETIMPORT                        R10 K19 [Enum.BundleType.Shoes]
       73 MOVE                             R11 R4
       74 GETUPVAL                         R12 8
       75 MOVE                             R13 R1
       76 MOVE                             R14 R2
       77 CALL                             R8 6 2
       78 MOVE                             R1 R8
       79 MOVE                             R2 R9
       80 GETUPVAL                         R8 9
       81 GETTABLEKS                       R9 R4 K13 ["editableMeshes"]
       83 GETTABLEKS                       R10 R4 K14 ["editableImages"]
       85 CALL                             R8 2 0
       86 JUMPIF                           R1 ; [+48]
       87 GETIMPORT                        R8 K21 [table.clone]
       89 GETUPVAL                         R9 1
       90 CALL                             R8 1 1
       91 SETUPVAL                         R8 1
       92 GETUPVAL                         R8 1
       93 GETIMPORT                        R9 K21 [table.clone]
       95 GETUPVAL                         R10 1
       96 GETTABLEKS                       R10 R10 K22 ["errors"]
       98 CALL                             R9 1 1
       99 SETTABLEKS                       R9 R8 K22 ["errors"]
      101 MOVE                             R9 R2
      102 JUMPIFNOT                        R9 ; [+6]
      103 LENGTH                           R10 R2
      104 LOADN                            R11 0
      105 JUMPIFLT                         R11 R10 ; [+2]
      107 LOADB                            R9 0 +1
      108 LOADB                            R9 1
      109 FASTCALL2K                       ASSERT R9 K23 ; [+4]
      111 LOADK                            R10 K23 ["There should always be a reason for failure"]
      112 GETIMPORT                        R8 K25 [assert]
      114 CALL                             R8 2 0
      115 MOVE                             R8 R2
      116 LOADNIL                          R9
      117 LOADNIL                          R10
      118 FORGPREP                         R8
      119 GETUPVAL                         R14 1
      120 GETTABLEKS                       R14 R14 K22 ["errors"]
      122 DUPTABLE                         R15 K29 [{["assetType"] = , ["error"]}]
      123 DUPTABLE                         R16 K32 [{["type"] = "message", ["message"]}]
      124 SETTABLEKS                       R12 R16 K31 ["message"]
      126 SETTABLEKS                       R16 R15 K28 ["error"]
      128 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      130 GETIMPORT                        R13 K11 [table.insert]
      132 CALL                             R13 2 0
      133 FORGLOOP                         R8 2 ; [-15]
      135 GETUPVAL                         R0 10
      136 GETUPVAL                         R1 1
      137 CALL                             R0 1 0
      138 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
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
       41 LOADK                            R8 K18 ["LeftShoeAccessory"]
       42 NAMECALL                         R6 R0 K19 ["FindFirstChild"]
       44 CALL                             R6 2 1
       45 LOADK                            R9 K20 ["RightShoeAccessory"]
       46 NAMECALL                         R7 R0 K19 ["FindFirstChild"]
       48 CALL                             R7 2 1
       49 JUMPIFNOT                        R6 ; [+11]
       50 LOADK                            R10 K21 ["Accessory"]
       51 NAMECALL                         R8 R6 K5 ["IsA"]
       53 CALL                             R8 2 1
       54 JUMPIFNOT                        R8 ; [+6]
       55 JUMPIFNOT                        R7 ; [+5]
       56 LOADK                            R10 K21 ["Accessory"]
       57 NAMECALL                         R8 R7 K5 ["IsA"]
       59 CALL                             R8 2 1
       60 JUMPIF                           R8 ; [+22]
       61 DUPTABLE                         R8 K8 [{"errors", "pieces"}]
       62 NEWTABLE                         R9 0 1
       64 DUPTABLE                         R10 K12 [{["assetType"] = , ["error"]}]
       65 DUPTABLE                         R11 K23 [{["type"] = "message", ["message"] = "Shoes must of type 'Accessory' and names must be 'LeftShoeAccessory' and 'RightShoeAccessory'"}]
       66 SETTABLEKS                       R11 R10 K11 ["error"]
       68 SETLIST                          R9 R10 1 [1]
       70 SETTABLEKS                       R9 R8 K6 ["errors"]
       72 NEWTABLE                         R9 0 0
       74 SETTABLEKS                       R9 R8 K7 ["pieces"]
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R9 R9 K17 ["resolve"]
       79 MOVE                             R10 R8
       80 CALL                             R9 1 -1
       81 CLOSEUPVALS                      R3
       82 RETURN                           R9 -1
       83 NEWTABLE                         R8 2 0
       85 GETIMPORT                        R9 K26 [Enum.AssetType.LeftShoeAccessory]
       87 NEWTABLE                         R10 0 1
       89 GETUPVAL                         R11 1
       90 MOVE                             R12 R6
       91 CALL                             R11 1 -1
       92 SETLIST                          R10 R11 -1 [1]
       94 SETTABLE                         R10 R8 R9
       95 GETIMPORT                        R9 K27 [Enum.AssetType.RightShoeAccessory]
       97 NEWTABLE                         R10 0 1
       99 GETUPVAL                         R11 1
      100 MOVE                             R12 R7
      101 CALL                             R11 1 -1
      102 SETLIST                          R10 R11 -1 [1]
      104 SETTABLE                         R10 R8 R9
      105 NEWTABLE                         R9 0 0
      107 NEWTABLE                         R10 0 0
      109 NEWTABLE                         R11 0 0
      111 GETTABLE                         R12 R1 R2
      112 GETTABLEKS                       R12 R12 K28 ["allowedAssetTypeSettings"]
      114 LOADNIL                          R13
      115 LOADNIL                          R14
      116 FORGPREP                         R12
      117 GETIMPORT                        R19 K29 [Enum.AssetType]
      119 GETTABLE                         R18 R19 R15
      120 FASTCALL2K                       ASSERT R18 K30 ; [+4]
      122 LOADK                            R19 K30 ["Asset type name doesn't map to an enum item"]
      123 GETIMPORT                        R17 K3 [assert]
      125 CALL                             R17 2 1
      126 GETTABLEKS                       R18 R16 K31 ["isEligibleForUpload"]
      128 JUMPIFNOT                        R18 ; [+33]
      129 GETTABLE                         R18 R8 R17
      130 MOVE                             R19 R18
      131 JUMPIFNOT                        R19 ; [+1]
      132 GETTABLEN                        R19 R18 1
      133 DUPTABLE                         R20 K35 [{"assetType", "instance", "settings", "status"}]
      134 SETTABLEKS                       R17 R20 K9 ["assetType"]
      136 SETTABLEKS                       R19 R20 K32 ["instance"]
      138 SETTABLEKS                       R16 R20 K33 ["settings"]
      140 JUMPIFNOTEQKNIL                  R19 ; [+3]
      142 LOADK                            R21 K36 ["finished"]
      143 JUMP                             ; [+1]
      144 LOADK                            R21 K37 ["pending"]
      145 SETTABLEKS                       R21 R20 K34 ["status"]
      147 SETTABLE                         R20 R9 R17
      148 JUMPIFNOTEQKNIL                  R19 ; [+13]
      150 DUPTABLE                         R22 K38 [{"assetType", "error"}]
      151 SETTABLEKS                       R17 R22 K9 ["assetType"]
      153 DUPTABLE                         R23 K40 [{["type"] = "notFound"}]
      154 SETTABLEKS                       R23 R22 K11 ["error"]
      156 FASTCALL2                        TABLE_INSERT R10 R22 ; [+4]
      158 MOVE                             R21 R10
      159 GETIMPORT                        R20 K43 [table.insert]
      161 CALL                             R20 2 0
      162 FORGLOOP                         R12 2 ; [-46]
      164 GETIMPORT                        R15 K26 [Enum.AssetType.LeftShoeAccessory]
      166 GETTABLE                         R14 R9 R15
      167 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      169 MOVE                             R13 R11
      170 GETIMPORT                        R12 K43 [table.insert]
      172 CALL                             R12 2 0
      173 GETIMPORT                        R15 K27 [Enum.AssetType.RightShoeAccessory]
      175 GETTABLE                         R14 R9 R15
      176 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      178 MOVE                             R13 R11
      179 GETIMPORT                        R12 K43 [table.insert]
      181 CALL                             R12 2 0
      182 DUPTABLE                         R12 K8 [{"errors", "pieces"}]
      183 SETTABLEKS                       R10 R12 K6 ["errors"]
      185 SETTABLEKS                       R11 R12 K7 ["pieces"]
      187 MOVE                             R13 R3
      188 MOVE                             R14 R12
      189 CALL                             R13 1 0
      190 LOADNIL                          R13
      191 GETUPVAL                         R14 2
      192 CALL                             R14 0 1
      193 JUMPIFNOT                        R14 ; [+5]
      194 GETUPVAL                         R14 3
      195 NAMECALL                         R14 R14 K44 ["GenerateGUID"]
      197 CALL                             R14 1 1
      198 MOVE                             R13 R14
      199 GETUPVAL                         R14 0
      200 GETTABLEKS                       R14 R14 K45 ["each"]
      202 MOVE                             R15 R11
      203 NEWCLOSURE                       R16 P1
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R5
      206 CAPTURE                          UPVAL U4
      207 CAPTURE                          UPVAL U5
      208 CAPTURE                          UPVAL U2
      209 CAPTURE                          UPVAL U6
      210 CAPTURE                          REF R13
      211 CAPTURE                          UPVAL U7
      212 CAPTURE                          REF R12
      213 CAPTURE                          REF R3
      214 CALL                             R14 2 1
      215 NEWCLOSURE                       R16 P2
      216 CAPTURE                          UPVAL U8
      217 CAPTURE                          REF R12
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R5
      220 CAPTURE                          UPVAL U4
      221 CAPTURE                          UPVAL U9
      222 CAPTURE                          UPVAL U2
      223 CAPTURE                          UPVAL U6
      224 CAPTURE                          REF R13
      225 CAPTURE                          UPVAL U7
      226 CAPTURE                          REF R3
      227 NAMECALL                         R14 R14 K46 ["andThen"]
      229 CALL                             R14 2 1
      230 NEWCLOSURE                       R16 P3
      231 CAPTURE                          REF R12
      232 NAMECALL                         R14 R14 K46 ["andThen"]
      234 CALL                             R14 2 -1
      235 CLOSEUPVALS                      R3
      236 RETURN                           R14 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["BundlesMetadata"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K6 ["util"]
       25 GETTABLEKS                       R4 R4 K8 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K6 ["util"]
       32 GETTABLEKS                       R5 R5 K9 ["createEditableInstancesForContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K6 ["util"]
       39 GETTABLEKS                       R6 R6 K10 ["destroyEditableInstances"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K6 ["util"]
       46 GETTABLEKS                       R7 R7 K11 ["createUGCBodyPartFolders"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K6 ["util"]
       53 GETTABLEKS                       R8 R8 K12 ["fixUpPreValidation"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K13 ["validation"]
       60 GETTABLEKS                       R9 R9 K14 ["validateInternal"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K13 ["validation"]
       67 GETTABLEKS                       R10 R10 K15 ["validateShoes"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K13 ["validation"]
       74 GETTABLEKS                       R11 R11 K16 ["validateBundleReadyForUpload"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K18 [game]
       79 LOADK                            R13 K19 ["ValidateFullShoesBundleStudio"]
       80 LOADB                            R14 0
       81 NAMECALL                         R11 R11 K20 ["DefineFastFlag"]
       83 CALL                             R11 3 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R13 R0 K21 ["flags"]
       88 GETTABLEKS                       R13 R13 K22 ["getFFlagUGCValidationEnableFolderStructure"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R14 R0 K6 ["util"]
       95 GETTABLEKS                       R14 R14 K23 ["LegacyValidationAdapter"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K18 [game]
      100 LOADK                            R16 K24 ["HttpService"]
      101 NAMECALL                         R14 R14 K25 ["GetService"]
      103 CALL                             R14 2 1
      104 DUPCLOSURE                       R15 K26 [PROTO_5]
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R9
      115 RETURN                           R15 1
