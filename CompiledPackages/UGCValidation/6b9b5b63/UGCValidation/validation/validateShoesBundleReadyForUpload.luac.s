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
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K12 ["processAll"]
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
       64 GETUPVAL                         R9 5
       65 GETTABLEKS                       R8 R9 K15 ["studioRFUAssetValidation"]
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
       88 GETUPVAL                         R11 8
       89 GETTABLEKS                       R10 R11 K19 ["errors"]
       91 CALL                             R9 1 1
       92 SETTABLEKS                       R9 R8 K19 ["errors"]
       94 JUMPIF                           R2 ; [+37]
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
      109 GETUPVAL                         R15 8
      110 GETTABLEKS                       R14 R15 K19 ["errors"]
      112 DUPTABLE                         R15 K22 [{"assetType", "error"}]
      113 GETTABLEKS                       R16 R0 K11 ["assetType"]
      115 SETTABLEKS                       R16 R15 K11 ["assetType"]
      117 DUPTABLE                         R16 K25 [{"type", "message"}]
      118 LOADK                            R17 K24 ["message"]
      119 SETTABLEKS                       R17 R16 K23 ["type"]
      121 SETTABLEKS                       R12 R16 K24 ["message"]
      123 SETTABLEKS                       R16 R15 K21 ["error"]
      125 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      127 GETIMPORT                        R13 K27 [table.insert]
      129 CALL                             R13 2 0
      130 FORGLOOP                         R8 2 ; [-22]
      132 GETUPVAL                         R8 8
      133 GETIMPORT                        R9 K18 [table.clone]
      135 GETUPVAL                         R11 8
      136 GETTABLEKS                       R10 R11 K28 ["pieces"]
      138 CALL                             R9 1 1
      139 SETTABLEKS                       R9 R8 K28 ["pieces"]
      141 GETUPVAL                         R10 8
      142 GETTABLEKS                       R9 R10 K28 ["pieces"]
      144 GETTABLE                         R8 R9 R1
      145 LOADK                            R9 K1 ["finished"]
      146 SETTABLEKS                       R9 R8 K0 ["status"]
      148 GETUPVAL                         R8 9
      149 GETUPVAL                         R9 8
      150 CALL                             R8 1 0
      151 RETURN                           R0 0

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
        1 JUMPIFNOT                        R0 ; [+142]
        2 DUPCLOSURE                       R0 K0 [PROTO_2]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 MOVE                             R3 R0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K1 ["pieces"]
        9 CALL                             R3 1 1
       10 DUPTABLE                         R4 K6 [{"fullBodyData", "isServer", "allowEditableInstances", "bypassFlags"}]
       11 SETTABLEKS                       R3 R4 K2 ["fullBodyData"]
       13 LOADB                            R5 0
       14 SETTABLEKS                       R5 R4 K3 ["isServer"]
       16 GETUPVAL                         R5 2
       17 SETTABLEKS                       R5 R4 K4 ["allowEditableInstances"]
       19 GETUPVAL                         R5 3
       20 SETTABLEKS                       R5 R4 K5 ["bypassFlags"]
       22 NEWTABLE                         R5 0 0
       24 MOVE                             R6 R3
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 FORGPREP                         R6
       28 GETTABLEKS                       R11 R10 K7 ["allSelectedInstances"]
       30 LOADNIL                          R12
       31 LOADNIL                          R13
       32 FORGPREP                         R11
       33 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       35 MOVE                             R17 R5
       36 MOVE                             R18 R15
       37 GETIMPORT                        R16 K10 [table.insert]
       39 CALL                             R16 2 0
       40 FORGLOOP                         R11 2 ; [-8]
       42 FORGLOOP                         R6 2 ; [-15]
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R6 R7 K11 ["processAll"]
       47 MOVE                             R7 R5
       48 GETUPVAL                         R8 2
       49 CALL                             R6 2 2
       50 JUMPIF                           R6 ; [+3]
       51 MOVE                             R2 R7
       52 LOADB                            R1 0
       53 JUMP                             ; [+35]
       54 GETTABLEKS                       R8 R7 K12 ["editableMeshes"]
       56 SETTABLEKS                       R8 R4 K12 ["editableMeshes"]
       58 GETTABLEKS                       R8 R7 K13 ["editableImages"]
       60 SETTABLEKS                       R8 R4 K13 ["editableImages"]
       62 GETUPVAL                         R8 5
       63 MOVE                             R9 R4
       64 CALL                             R8 1 2
       65 MOVE                             R1 R8
       66 MOVE                             R2 R9
       67 GETUPVAL                         R8 6
       68 CALL                             R8 0 1
       69 JUMPIFNOT                        R8 ; [+13]
       70 GETUPVAL                         R9 7
       71 GETTABLEKS                       R8 R9 K14 ["studioRFUBundleValidation"]
       73 MOVE                             R9 R3
       74 GETIMPORT                        R10 K18 [Enum.BundleType.Shoes]
       76 MOVE                             R11 R4
       77 GETUPVAL                         R12 8
       78 MOVE                             R13 R1
       79 MOVE                             R14 R2
       80 CALL                             R8 6 2
       81 MOVE                             R1 R8
       82 MOVE                             R2 R9
       83 GETUPVAL                         R8 9
       84 GETTABLEKS                       R9 R4 K12 ["editableMeshes"]
       86 GETTABLEKS                       R10 R4 K13 ["editableImages"]
       88 CALL                             R8 2 0
       89 JUMPIF                           R1 ; [+54]
       90 GETIMPORT                        R8 K20 [table.clone]
       92 GETUPVAL                         R9 1
       93 CALL                             R8 1 1
       94 SETUPVAL                         R8 1
       95 GETUPVAL                         R8 1
       96 GETIMPORT                        R9 K20 [table.clone]
       98 GETUPVAL                         R11 1
       99 GETTABLEKS                       R10 R11 K21 ["errors"]
      101 CALL                             R9 1 1
      102 SETTABLEKS                       R9 R8 K21 ["errors"]
      104 MOVE                             R9 R2
      105 JUMPIFNOT                        R9 ; [+6]
      106 LENGTH                           R10 R2
      107 LOADN                            R11 0
      108 JUMPIFLT                         R11 R10 ; [+2]
      110 LOADB                            R9 0 +1
      111 LOADB                            R9 1
      112 FASTCALL2K                       ASSERT R9 K22 ; [+4]
      114 LOADK                            R10 K22 ["There should always be a reason for failure"]
      115 GETIMPORT                        R8 K24 [assert]
      117 CALL                             R8 2 0
      118 MOVE                             R8 R2
      119 LOADNIL                          R9
      120 LOADNIL                          R10
      121 FORGPREP                         R8
      122 GETUPVAL                         R15 1
      123 GETTABLEKS                       R14 R15 K21 ["errors"]
      125 DUPTABLE                         R15 K27 [{"assetType", "error"}]
      126 LOADNIL                          R16
      127 SETTABLEKS                       R16 R15 K25 ["assetType"]
      129 DUPTABLE                         R16 K30 [{"type", "message"}]
      130 LOADK                            R17 K29 ["message"]
      131 SETTABLEKS                       R17 R16 K28 ["type"]
      133 SETTABLEKS                       R12 R16 K29 ["message"]
      135 SETTABLEKS                       R16 R15 K26 ["error"]
      137 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      139 GETIMPORT                        R13 K10 [table.insert]
      141 CALL                             R13 2 0
      142 FORGLOOP                         R8 2 ; [-21]
      144 GETUPVAL                         R0 10
      145 GETUPVAL                         R1 1
      146 CALL                             R0 1 0
      147 RETURN                           R0 0

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
       18 JUMPIF                           R6 ; [+31]
       19 DUPTABLE                         R6 K8 [{"errors", "pieces"}]
       20 NEWTABLE                         R7 0 1
       22 DUPTABLE                         R8 K11 [{"assetType", "error"}]
       23 LOADNIL                          R9
       24 SETTABLEKS                       R9 R8 K9 ["assetType"]
       26 DUPTABLE                         R9 K14 [{"type", "message"}]
       27 LOADK                            R10 K13 ["message"]
       28 SETTABLEKS                       R10 R9 K12 ["type"]
       30 LOADK                            R10 K15 ["Invalid root instance, must be a model"]
       31 SETTABLEKS                       R10 R9 K13 ["message"]
       33 SETTABLEKS                       R9 R8 K10 ["error"]
       35 SETLIST                          R7 R8 1 [1]
       37 SETTABLEKS                       R7 R6 K6 ["errors"]
       39 NEWTABLE                         R7 0 0
       41 SETTABLEKS                       R7 R6 K7 ["pieces"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R7 R8 K16 ["resolve"]
       46 MOVE                             R8 R6
       47 CALL                             R7 1 -1
       48 CLOSEUPVALS                      R3
       49 RETURN                           R7 -1
       50 LOADK                            R8 K17 ["LeftShoeAccessory"]
       51 NAMECALL                         R6 R0 K18 ["FindFirstChild"]
       53 CALL                             R6 2 1
       54 LOADK                            R9 K19 ["RightShoeAccessory"]
       55 NAMECALL                         R7 R0 K18 ["FindFirstChild"]
       57 CALL                             R7 2 1
       58 JUMPIFNOT                        R6 ; [+11]
       59 LOADK                            R10 K20 ["Accessory"]
       60 NAMECALL                         R8 R6 K5 ["IsA"]
       62 CALL                             R8 2 1
       63 JUMPIFNOT                        R8 ; [+6]
       64 JUMPIFNOT                        R7 ; [+5]
       65 LOADK                            R10 K20 ["Accessory"]
       66 NAMECALL                         R8 R7 K5 ["IsA"]
       68 CALL                             R8 2 1
       69 JUMPIF                           R8 ; [+31]
       70 DUPTABLE                         R8 K8 [{"errors", "pieces"}]
       71 NEWTABLE                         R9 0 1
       73 DUPTABLE                         R10 K11 [{"assetType", "error"}]
       74 LOADNIL                          R11
       75 SETTABLEKS                       R11 R10 K9 ["assetType"]
       77 DUPTABLE                         R11 K14 [{"type", "message"}]
       78 LOADK                            R12 K13 ["message"]
       79 SETTABLEKS                       R12 R11 K12 ["type"]
       81 LOADK                            R12 K21 ["Shoes must of type 'Accessory' and names must be 'LeftShoeAccessory' and 'RightShoeAccessory'"]
       82 SETTABLEKS                       R12 R11 K13 ["message"]
       84 SETTABLEKS                       R11 R10 K10 ["error"]
       86 SETLIST                          R9 R10 1 [1]
       88 SETTABLEKS                       R9 R8 K6 ["errors"]
       90 NEWTABLE                         R9 0 0
       92 SETTABLEKS                       R9 R8 K7 ["pieces"]
       94 GETUPVAL                         R10 0
       95 GETTABLEKS                       R9 R10 K16 ["resolve"]
       97 MOVE                             R10 R8
       98 CALL                             R9 1 -1
       99 CLOSEUPVALS                      R3
      100 RETURN                           R9 -1
      101 NEWTABLE                         R8 2 0
      103 GETIMPORT                        R9 K24 [Enum.AssetType.LeftShoeAccessory]
      105 NEWTABLE                         R10 0 1
      107 GETUPVAL                         R11 1
      108 MOVE                             R12 R6
      109 CALL                             R11 1 -1
      110 SETLIST                          R10 R11 -1 [1]
      112 SETTABLE                         R10 R8 R9
      113 GETIMPORT                        R9 K25 [Enum.AssetType.RightShoeAccessory]
      115 NEWTABLE                         R10 0 1
      117 GETUPVAL                         R11 1
      118 MOVE                             R12 R7
      119 CALL                             R11 1 -1
      120 SETLIST                          R10 R11 -1 [1]
      122 SETTABLE                         R10 R8 R9
      123 NEWTABLE                         R9 0 0
      125 NEWTABLE                         R10 0 0
      127 NEWTABLE                         R11 0 0
      129 GETTABLE                         R15 R1 R2
      130 GETTABLEKS                       R12 R15 K26 ["allowedAssetTypeSettings"]
      132 LOADNIL                          R13
      133 LOADNIL                          R14
      134 FORGPREP                         R12
      135 GETIMPORT                        R19 K27 [Enum.AssetType]
      137 GETTABLE                         R18 R19 R15
      138 FASTCALL2K                       ASSERT R18 K28 ; [+4]
      140 LOADK                            R19 K28 ["Asset type name doesn't map to an enum item"]
      141 GETIMPORT                        R17 K3 [assert]
      143 CALL                             R17 2 1
      144 GETTABLEKS                       R18 R16 K29 ["isEligibleForUpload"]
      146 JUMPIFNOT                        R18 ; [+36]
      147 GETTABLE                         R18 R8 R17
      148 MOVE                             R19 R18
      149 JUMPIFNOT                        R19 ; [+1]
      150 GETTABLEN                        R19 R18 1
      151 DUPTABLE                         R20 K33 [{"assetType", "instance", "settings", "status"}]
      152 SETTABLEKS                       R17 R20 K9 ["assetType"]
      154 SETTABLEKS                       R19 R20 K30 ["instance"]
      156 SETTABLEKS                       R16 R20 K31 ["settings"]
      158 JUMPIFNOTEQKNIL                  R19 ; [+3]
      160 LOADK                            R21 K34 ["finished"]
      161 JUMP                             ; [+1]
      162 LOADK                            R21 K35 ["pending"]
      163 SETTABLEKS                       R21 R20 K32 ["status"]
      165 SETTABLE                         R20 R9 R17
      166 JUMPIFNOTEQKNIL                  R19 ; [+16]
      168 DUPTABLE                         R22 K11 [{"assetType", "error"}]
      169 SETTABLEKS                       R17 R22 K9 ["assetType"]
      171 DUPTABLE                         R23 K36 [{"type"}]
      172 LOADK                            R24 K37 ["notFound"]
      173 SETTABLEKS                       R24 R23 K12 ["type"]
      175 SETTABLEKS                       R23 R22 K10 ["error"]
      177 FASTCALL2                        TABLE_INSERT R10 R22 ; [+4]
      179 MOVE                             R21 R10
      180 GETIMPORT                        R20 K40 [table.insert]
      182 CALL                             R20 2 0
      183 FORGLOOP                         R12 2 ; [-49]
      185 GETIMPORT                        R15 K24 [Enum.AssetType.LeftShoeAccessory]
      187 GETTABLE                         R14 R9 R15
      188 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      190 MOVE                             R13 R11
      191 GETIMPORT                        R12 K40 [table.insert]
      193 CALL                             R12 2 0
      194 GETIMPORT                        R15 K25 [Enum.AssetType.RightShoeAccessory]
      196 GETTABLE                         R14 R9 R15
      197 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      199 MOVE                             R13 R11
      200 GETIMPORT                        R12 K40 [table.insert]
      202 CALL                             R12 2 0
      203 DUPTABLE                         R12 K8 [{"errors", "pieces"}]
      204 SETTABLEKS                       R10 R12 K6 ["errors"]
      206 SETTABLEKS                       R11 R12 K7 ["pieces"]
      208 MOVE                             R13 R3
      209 MOVE                             R14 R12
      210 CALL                             R13 1 0
      211 LOADNIL                          R13
      212 GETUPVAL                         R14 2
      213 CALL                             R14 0 1
      214 JUMPIFNOT                        R14 ; [+5]
      215 GETUPVAL                         R14 3
      216 NAMECALL                         R14 R14 K41 ["GenerateGUID"]
      218 CALL                             R14 1 1
      219 MOVE                             R13 R14
      220 GETUPVAL                         R15 0
      221 GETTABLEKS                       R14 R15 K42 ["each"]
      223 MOVE                             R15 R11
      224 NEWCLOSURE                       R16 P1
      225 CAPTURE                          VAL R4
      226 CAPTURE                          VAL R5
      227 CAPTURE                          UPVAL U4
      228 CAPTURE                          UPVAL U5
      229 CAPTURE                          UPVAL U2
      230 CAPTURE                          UPVAL U6
      231 CAPTURE                          REF R13
      232 CAPTURE                          UPVAL U7
      233 CAPTURE                          REF R12
      234 CAPTURE                          REF R3
      235 CALL                             R14 2 1
      236 NEWCLOSURE                       R16 P2
      237 CAPTURE                          UPVAL U8
      238 CAPTURE                          REF R12
      239 CAPTURE                          VAL R4
      240 CAPTURE                          VAL R5
      241 CAPTURE                          UPVAL U4
      242 CAPTURE                          UPVAL U9
      243 CAPTURE                          UPVAL U2
      244 CAPTURE                          UPVAL U6
      245 CAPTURE                          REF R13
      246 CAPTURE                          UPVAL U7
      247 CAPTURE                          REF R3
      248 NAMECALL                         R14 R14 K43 ["andThen"]
      250 CALL                             R14 2 1
      251 NEWCLOSURE                       R16 P3
      252 CAPTURE                          REF R12
      253 NAMECALL                         R14 R14 K43 ["andThen"]
      255 CALL                             R14 2 -1
      256 CLOSEUPVALS                      R3
      257 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Promise"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["BundlesMetadata"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K6 ["util"]
       25 GETTABLEKS                       R4 R5 K8 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R6 R0 K6 ["util"]
       32 GETTABLEKS                       R5 R6 K9 ["createEditableInstancesForContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R7 R0 K6 ["util"]
       39 GETTABLEKS                       R6 R7 K10 ["destroyEditableInstances"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R8 R0 K6 ["util"]
       46 GETTABLEKS                       R7 R8 K11 ["createUGCBodyPartFolders"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R9 R0 K6 ["util"]
       53 GETTABLEKS                       R8 R9 K12 ["fixUpPreValidation"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R10 R0 K13 ["validation"]
       60 GETTABLEKS                       R9 R10 K14 ["validateInternal"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R11 R0 K13 ["validation"]
       67 GETTABLEKS                       R10 R11 K15 ["validateShoes"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R12 R0 K13 ["validation"]
       74 GETTABLEKS                       R11 R12 K16 ["validateBundleReadyForUpload"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K18 [game]
       79 LOADK                            R13 K19 ["ValidateFullShoesBundleStudio"]
       80 LOADB                            R14 0
       81 NAMECALL                         R11 R11 K20 ["DefineFastFlag"]
       83 CALL                             R11 3 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R14 R0 K21 ["flags"]
       88 GETTABLEKS                       R13 R14 K22 ["getFFlagUGCValidationEnableFolderStructure"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R15 R0 K6 ["util"]
       95 GETTABLEKS                       R14 R15 K23 ["LegacyValidationAdapter"]
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
