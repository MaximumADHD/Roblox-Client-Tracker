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
       25 DUPTABLE                         R5 K16 [{"instances", "assetTypeEnum", "allowUnreviewedAssets", "restrictedUserIds", "isServer", "isAsync", "allowEditableInstances", "bypassFlags", "validateMeshPartAccessories", "requireAllFolders"}]
       26 SETTABLEKS                       R4 R5 K6 ["instances"]
       28 GETTABLEKS                       R6 R0 K17 ["assetType"]
       30 SETTABLEKS                       R6 R5 K7 ["assetTypeEnum"]
       32 LOADB                            R6 0
       33 SETTABLEKS                       R6 R5 K8 ["allowUnreviewedAssets"]
       35 GETUPVAL                         R7 0
       36 CALL                             R7 0 1
       37 JUMPIFNOT                        R7 ; [+2]
       38 LOADNIL                          R6
       39 JUMP                             ; [+2]
       40 GETUPVAL                         R6 1
       41 CALL                             R6 0 1
       42 SETTABLEKS                       R6 R5 K9 ["restrictedUserIds"]
       44 LOADB                            R6 0
       45 SETTABLEKS                       R6 R5 K10 ["isServer"]
       47 LOADB                            R6 0
       48 SETTABLEKS                       R6 R5 K11 ["isAsync"]
       50 GETUPVAL                         R6 2
       51 SETTABLEKS                       R6 R5 K12 ["allowEditableInstances"]
       53 GETUPVAL                         R6 3
       54 SETTABLEKS                       R6 R5 K13 ["bypassFlags"]
       56 LOADB                            R6 1
       57 SETTABLEKS                       R6 R5 K14 ["validateMeshPartAccessories"]
       59 LOADB                            R6 0
       60 SETTABLEKS                       R6 R5 K15 ["requireAllFolders"]
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R6 R7 K18 ["processAll"]
       65 MOVE                             R7 R4
       66 GETUPVAL                         R8 2
       67 CALL                             R6 2 2
       68 JUMPIF                           R6 ; [+3]
       69 MOVE                             R3 R7
       70 LOADB                            R2 0
       71 JUMP                             ; [+32]
       72 GETTABLEKS                       R8 R7 K19 ["editableMeshes"]
       74 SETTABLEKS                       R8 R5 K19 ["editableMeshes"]
       76 GETTABLEKS                       R8 R7 K20 ["editableImages"]
       78 SETTABLEKS                       R8 R5 K20 ["editableImages"]
       80 GETUPVAL                         R8 5
       81 MOVE                             R9 R5
       82 CALL                             R8 1 2
       83 MOVE                             R2 R8
       84 MOVE                             R3 R9
       85 GETUPVAL                         R8 6
       86 CALL                             R8 0 1
       87 JUMPIFNOT                        R8 ; [+10]
       88 GETUPVAL                         R9 7
       89 GETTABLEKS                       R8 R9 K21 ["studioRFUAssetValidation"]
       91 MOVE                             R9 R5
       92 GETUPVAL                         R10 8
       93 MOVE                             R11 R2
       94 MOVE                             R12 R3
       95 CALL                             R8 4 2
       96 MOVE                             R2 R8
       97 MOVE                             R3 R9
       98 GETUPVAL                         R8 9
       99 GETTABLEKS                       R9 R5 K19 ["editableMeshes"]
      101 GETTABLEKS                       R10 R5 K20 ["editableImages"]
      103 CALL                             R8 2 0
      104 GETIMPORT                        R8 K24 [table.clone]
      106 GETUPVAL                         R9 10
      107 CALL                             R8 1 1
      108 SETUPVAL                         R8 10
      109 GETUPVAL                         R8 10
      110 GETIMPORT                        R9 K24 [table.clone]
      112 GETUPVAL                         R11 10
      113 GETTABLEKS                       R10 R11 K25 ["errors"]
      115 CALL                             R9 1 1
      116 SETTABLEKS                       R9 R8 K25 ["errors"]
      118 JUMPIF                           R2 ; [+37]
      119 JUMPIFNOTEQKNIL                  R3 ; [+2]
      121 LOADB                            R9 0 +1
      122 LOADB                            R9 1
      123 FASTCALL2K                       ASSERT R9 K26 ; [+4]
      125 LOADK                            R10 K26 ["Failure without errors"]
      126 GETIMPORT                        R8 K5 [assert]
      128 CALL                             R8 2 0
      129 MOVE                             R8 R3
      130 LOADNIL                          R9
      131 LOADNIL                          R10
      132 FORGPREP                         R8
      133 GETUPVAL                         R15 10
      134 GETTABLEKS                       R14 R15 K25 ["errors"]
      136 DUPTABLE                         R15 K28 [{"assetType", "error"}]
      137 GETTABLEKS                       R16 R0 K17 ["assetType"]
      139 SETTABLEKS                       R16 R15 K17 ["assetType"]
      141 DUPTABLE                         R16 K31 [{"type", "message"}]
      142 LOADK                            R17 K30 ["message"]
      143 SETTABLEKS                       R17 R16 K29 ["type"]
      145 SETTABLEKS                       R12 R16 K30 ["message"]
      147 SETTABLEKS                       R16 R15 K27 ["error"]
      149 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      151 GETIMPORT                        R13 K33 [table.insert]
      153 CALL                             R13 2 0
      154 FORGLOOP                         R8 2 ; [-22]
      156 GETUPVAL                         R8 10
      157 GETIMPORT                        R9 K24 [table.clone]
      159 GETUPVAL                         R11 10
      160 GETTABLEKS                       R10 R11 K34 ["pieces"]
      162 CALL                             R9 1 1
      163 SETTABLEKS                       R9 R8 K34 ["pieces"]
      165 GETUPVAL                         R10 10
      166 GETTABLEKS                       R9 R10 K34 ["pieces"]
      168 GETTABLE                         R8 R9 R1
      169 LOADK                            R9 K1 ["finished"]
      170 SETTABLEKS                       R9 R8 K0 ["status"]
      172 GETUPVAL                         R8 11
      173 GETUPVAL                         R9 10
      174 CALL                             R8 1 0
      175 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K0 ["isBodyPart"]
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
        1 JUMPIFNOTEQKS                    R0 K0 ["Body"] ; [+153]
        3 DUPCLOSURE                       R0 K1 [PROTO_3]
        4 CAPTURE                          UPVAL U1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 MOVE                             R3 R0
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K2 ["pieces"]
       11 CALL                             R3 1 1
       12 DUPTABLE                         R4 K9 [{"fullBodyData", "isServer", "allowEditableInstances", "bypassFlags", "validateMeshPartAccessories", "requireAllFolders"}]
       13 SETTABLEKS                       R3 R4 K3 ["fullBodyData"]
       15 LOADB                            R5 0
       16 SETTABLEKS                       R5 R4 K4 ["isServer"]
       18 GETUPVAL                         R5 3
       19 SETTABLEKS                       R5 R4 K5 ["allowEditableInstances"]
       21 GETUPVAL                         R5 4
       22 SETTABLEKS                       R5 R4 K6 ["bypassFlags"]
       24 LOADB                            R5 0
       25 SETTABLEKS                       R5 R4 K7 ["validateMeshPartAccessories"]
       27 LOADB                            R5 0
       28 SETTABLEKS                       R5 R4 K8 ["requireAllFolders"]
       30 NEWTABLE                         R5 0 0
       32 MOVE                             R6 R3
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 FORGPREP                         R6
       36 GETTABLEKS                       R11 R10 K10 ["allSelectedInstances"]
       38 LOADNIL                          R12
       39 LOADNIL                          R13
       40 FORGPREP                         R11
       41 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       43 MOVE                             R17 R5
       44 MOVE                             R18 R15
       45 GETIMPORT                        R16 K13 [table.insert]
       47 CALL                             R16 2 0
       48 FORGLOOP                         R11 2 ; [-8]
       50 FORGLOOP                         R6 2 ; [-15]
       52 GETUPVAL                         R7 5
       53 GETTABLEKS                       R6 R7 K14 ["processAll"]
       55 MOVE                             R7 R5
       56 GETUPVAL                         R8 3
       57 CALL                             R6 2 2
       58 JUMPIF                           R6 ; [+3]
       59 MOVE                             R2 R7
       60 LOADB                            R1 0
       61 JUMP                             ; [+35]
       62 GETTABLEKS                       R8 R7 K15 ["editableMeshes"]
       64 SETTABLEKS                       R8 R4 K15 ["editableMeshes"]
       66 GETTABLEKS                       R8 R7 K16 ["editableImages"]
       68 SETTABLEKS                       R8 R4 K16 ["editableImages"]
       70 GETUPVAL                         R8 6
       71 MOVE                             R9 R4
       72 CALL                             R8 1 2
       73 MOVE                             R1 R8
       74 MOVE                             R2 R9
       75 GETUPVAL                         R8 7
       76 CALL                             R8 0 1
       77 JUMPIFNOT                        R8 ; [+13]
       78 GETUPVAL                         R9 8
       79 GETTABLEKS                       R8 R9 K17 ["studioRFUBundleValidation"]
       81 MOVE                             R9 R3
       82 GETIMPORT                        R10 K21 [Enum.BundleType.BodyParts]
       84 MOVE                             R11 R4
       85 GETUPVAL                         R12 9
       86 MOVE                             R13 R1
       87 MOVE                             R14 R2
       88 CALL                             R8 6 2
       89 MOVE                             R1 R8
       90 MOVE                             R2 R9
       91 GETUPVAL                         R8 10
       92 GETTABLEKS                       R9 R4 K15 ["editableMeshes"]
       94 GETTABLEKS                       R10 R4 K16 ["editableImages"]
       96 CALL                             R8 2 0
       97 JUMPIF                           R1 ; [+54]
       98 GETIMPORT                        R8 K23 [table.clone]
      100 GETUPVAL                         R9 2
      101 CALL                             R8 1 1
      102 SETUPVAL                         R8 2
      103 GETUPVAL                         R8 2
      104 GETIMPORT                        R9 K23 [table.clone]
      106 GETUPVAL                         R11 2
      107 GETTABLEKS                       R10 R11 K24 ["errors"]
      109 CALL                             R9 1 1
      110 SETTABLEKS                       R9 R8 K24 ["errors"]
      112 MOVE                             R9 R2
      113 JUMPIFNOT                        R9 ; [+6]
      114 LENGTH                           R10 R2
      115 LOADN                            R11 0
      116 JUMPIFLT                         R11 R10 ; [+2]
      118 LOADB                            R9 0 +1
      119 LOADB                            R9 1
      120 FASTCALL2K                       ASSERT R9 K25 ; [+4]
      122 LOADK                            R10 K25 ["There should always be a reason for failure"]
      123 GETIMPORT                        R8 K27 [assert]
      125 CALL                             R8 2 0
      126 MOVE                             R8 R2
      127 LOADNIL                          R9
      128 LOADNIL                          R10
      129 FORGPREP                         R8
      130 GETUPVAL                         R15 2
      131 GETTABLEKS                       R14 R15 K24 ["errors"]
      133 DUPTABLE                         R15 K30 [{"assetType", "error"}]
      134 LOADNIL                          R16
      135 SETTABLEKS                       R16 R15 K28 ["assetType"]
      137 DUPTABLE                         R16 K33 [{"type", "message"}]
      138 LOADK                            R17 K32 ["message"]
      139 SETTABLEKS                       R17 R16 K31 ["type"]
      141 SETTABLEKS                       R12 R16 K32 ["message"]
      143 SETTABLEKS                       R16 R15 K29 ["error"]
      145 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      147 GETIMPORT                        R13 K13 [table.insert]
      149 CALL                             R13 2 0
      150 FORGLOOP                         R8 2 ; [-21]
      152 GETUPVAL                         R8 11
      153 GETUPVAL                         R9 2
      154 CALL                             R8 1 0
      155 RETURN                           R0 0

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
       50 GETUPVAL                         R6 1
       51 MOVE                             R7 R0
       52 CALL                             R6 1 1
       53 MOVE                             R0 R6
       54 GETUPVAL                         R6 2
       55 MOVE                             R7 R0
       56 MOVE                             R8 R1
       57 MOVE                             R9 R2
       58 LOADB                            R10 0
       59 CALL                             R6 4 1
       60 NEWTABLE                         R7 0 0
       62 NEWTABLE                         R8 0 0
       64 GETTABLE                         R12 R1 R2
       65 GETTABLEKS                       R9 R12 K17 ["allowedAssetTypeSettings"]
       67 LOADNIL                          R10
       68 LOADNIL                          R11
       69 FORGPREP                         R9
       70 GETIMPORT                        R16 K20 [Enum.AssetType]
       72 GETTABLE                         R15 R16 R12
       73 FASTCALL2K                       ASSERT R15 K21 ; [+4]
       75 LOADK                            R16 K21 ["Asset type name doesn't map to an enum item"]
       76 GETIMPORT                        R14 K3 [assert]
       78 CALL                             R14 2 1
       79 GETTABLEKS                       R15 R13 K22 ["isEligibleForUpload"]
       81 JUMPIFNOT                        R15 ; [+81]
       82 LOADB                            R16 1
       83 GETTABLEKS                       R17 R13 K23 ["minimumQuantity"]
       85 JUMPIFEQKN                       R17 K24 [0] ; [+7]
       87 GETTABLEKS                       R17 R13 K23 ["minimumQuantity"]
       89 JUMPIFEQKN                       R17 K25 [1] ; [+2]
       91 LOADB                            R16 0 +1
       92 LOADB                            R16 1
       93 FASTCALL2K                       ASSERT R16 K26 ; [+4]
       95 LOADK                            R17 K26 ["Invalid minimum quantity, createUGCBodyParts folder is a dictionary and will only ever give one."]
       96 GETIMPORT                        R15 K3 [assert]
       98 CALL                             R15 2 0
       99 LOADB                            R16 1
      100 GETTABLEKS                       R17 R13 K27 ["maximumQuantity"]
      102 JUMPIFEQKN                       R17 K24 [0] ; [+7]
      104 GETTABLEKS                       R17 R13 K27 ["maximumQuantity"]
      106 JUMPIFEQKN                       R17 K25 [1] ; [+2]
      108 LOADB                            R16 0 +1
      109 LOADB                            R16 1
      110 FASTCALL2K                       ASSERT R16 K28 ; [+4]
      112 LOADK                            R17 K28 ["Invalid maximum quantity, createUGCBodyParts folder is a dictionary and will only ever give one."]
      113 GETIMPORT                        R15 K3 [assert]
      115 CALL                             R15 2 0
      116 GETTABLE                         R15 R6 R14
      117 MOVE                             R16 R15
      118 JUMPIFNOT                        R16 ; [+1]
      119 GETTABLEN                        R16 R15 1
      120 GETTABLEKS                       R17 R13 K23 ["minimumQuantity"]
      122 JUMPIFNOTEQKN                    R17 K24 [0] ; [+3]
      124 JUMPIFEQKNIL                     R16 ; [+38]
      126 DUPTABLE                         R19 K32 [{"assetType", "instance", "settings", "status"}]
      127 SETTABLEKS                       R14 R19 K9 ["assetType"]
      129 SETTABLEKS                       R16 R19 K29 ["instance"]
      131 SETTABLEKS                       R13 R19 K30 ["settings"]
      133 JUMPIFNOTEQKNIL                  R16 ; [+3]
      135 LOADK                            R20 K33 ["finished"]
      136 JUMP                             ; [+1]
      137 LOADK                            R20 K34 ["pending"]
      138 SETTABLEKS                       R20 R19 K31 ["status"]
      140 FASTCALL2                        TABLE_INSERT R8 R19 ; [+4]
      142 MOVE                             R18 R8
      143 GETIMPORT                        R17 K37 [table.insert]
      145 CALL                             R17 2 0
      146 JUMPIFNOTEQKNIL                  R16 ; [+16]
      148 DUPTABLE                         R19 K11 [{"assetType", "error"}]
      149 SETTABLEKS                       R14 R19 K9 ["assetType"]
      151 DUPTABLE                         R20 K38 [{"type"}]
      152 LOADK                            R21 K39 ["notFound"]
      153 SETTABLEKS                       R21 R20 K12 ["type"]
      155 SETTABLEKS                       R20 R19 K10 ["error"]
      157 FASTCALL2                        TABLE_INSERT R7 R19 ; [+4]
      159 MOVE                             R18 R7
      160 GETIMPORT                        R17 K37 [table.insert]
      162 CALL                             R17 2 0
      163 FORGLOOP                         R9 2 ; [-94]
      165 GETIMPORT                        R9 K41 [table.sort]
      167 MOVE                             R10 R8
      168 DUPCLOSURE                       R11 K42 [PROTO_1]
      169 CAPTURE                          UPVAL U3
      170 CALL                             R9 2 0
      171 DUPTABLE                         R9 K8 [{"errors", "pieces"}]
      172 SETTABLEKS                       R7 R9 K6 ["errors"]
      174 SETTABLEKS                       R8 R9 K7 ["pieces"]
      176 MOVE                             R10 R3
      177 MOVE                             R11 R9
      178 CALL                             R10 1 0
      179 LOADNIL                          R10
      180 GETUPVAL                         R11 4
      181 CALL                             R11 0 1
      182 JUMPIFNOT                        R11 ; [+5]
      183 GETUPVAL                         R11 5
      184 NAMECALL                         R11 R11 K43 ["GenerateGUID"]
      186 CALL                             R11 1 1
      187 MOVE                             R10 R11
      188 GETUPVAL                         R12 0
      189 GETTABLEKS                       R11 R12 K44 ["each"]
      191 MOVE                             R12 R8
      192 NEWCLOSURE                       R13 P2
      193 CAPTURE                          UPVAL U6
      194 CAPTURE                          UPVAL U7
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R5
      197 CAPTURE                          UPVAL U8
      198 CAPTURE                          UPVAL U9
      199 CAPTURE                          UPVAL U4
      200 CAPTURE                          UPVAL U10
      201 CAPTURE                          REF R10
      202 CAPTURE                          UPVAL U11
      203 CAPTURE                          REF R9
      204 CAPTURE                          REF R3
      205 CALL                             R11 2 1
      206 NEWCLOSURE                       R13 P3
      207 CAPTURE                          VAL R2
      208 CAPTURE                          UPVAL U12
      209 CAPTURE                          REF R9
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R5
      212 CAPTURE                          UPVAL U8
      213 CAPTURE                          UPVAL U13
      214 CAPTURE                          UPVAL U4
      215 CAPTURE                          UPVAL U10
      216 CAPTURE                          REF R10
      217 CAPTURE                          UPVAL U11
      218 CAPTURE                          REF R3
      219 NAMECALL                         R11 R11 K45 ["andThen"]
      221 CALL                             R11 2 1
      222 NEWCLOSURE                       R13 P4
      223 CAPTURE                          REF R9
      224 NAMECALL                         R11 R11 K45 ["andThen"]
      226 CALL                             R11 2 -1
      227 CLOSEUPVALS                      R3
      228 RETURN                           R11 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["ConstantsInterface"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K7 ["util"]
       23 GETTABLEKS                       R4 R5 K8 ["BundlesMetadata"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K7 ["util"]
       30 GETTABLEKS                       R5 R6 K9 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K7 ["util"]
       37 GETTABLEKS                       R6 R7 K10 ["getRestrictedUserTable"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K7 ["util"]
       44 GETTABLEKS                       R7 R8 K11 ["createEditableInstancesForContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R0 K7 ["util"]
       51 GETTABLEKS                       R8 R9 K12 ["destroyEditableInstances"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R10 R0 K7 ["util"]
       58 GETTABLEKS                       R9 R10 K13 ["createUGCBodyPartFolders"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R11 R0 K7 ["util"]
       65 GETTABLEKS                       R10 R11 K14 ["fixUpPreValidation"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R12 R0 K15 ["validation"]
       72 GETTABLEKS                       R11 R12 K16 ["validateInternal"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R13 R0 K15 ["validation"]
       79 GETTABLEKS                       R12 R13 K17 ["validateFullBody"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R14 R0 K18 ["flags"]
       86 GETTABLEKS                       R13 R14 K19 ["getFFlagUGCValidateDontUseRestrictedUserTable"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K4 [require]
       91 GETTABLEKS                       R15 R0 K18 ["flags"]
       93 GETTABLEKS                       R14 R15 K20 ["getFFlagUGCValidationEnableFolderStructure"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K4 [require]
       98 GETTABLEKS                       R16 R0 K7 ["util"]
      100 GETTABLEKS                       R15 R16 K21 ["LegacyValidationAdapter"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K23 [game]
      105 LOADK                            R17 K24 ["HttpService"]
      106 NAMECALL                         R15 R15 K25 ["GetService"]
      108 CALL                             R15 2 1
      109 NEWTABLE                         R16 0 9
      111 GETIMPORT                        R17 K29 [Enum.AssetType.DynamicHead]
      113 GETIMPORT                        R18 K31 [Enum.AssetType.Torso]
      115 GETIMPORT                        R19 K33 [Enum.AssetType.LeftArm]
      117 GETIMPORT                        R20 K35 [Enum.AssetType.RightArm]
      119 GETIMPORT                        R21 K37 [Enum.AssetType.LeftLeg]
      121 GETIMPORT                        R22 K39 [Enum.AssetType.RightLeg]
      123 GETIMPORT                        R23 K41 [Enum.AssetType.HairAccessory]
      125 GETIMPORT                        R24 K43 [Enum.AssetType.EyebrowAccessory]
      127 GETIMPORT                        R25 K45 [Enum.AssetType.EyelashAccessory]
      129 SETLIST                          R16 R17 9 [1]
      131 DUPCLOSURE                       R17 K46 [PROTO_6]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R11
      146 RETURN                           R17 1
