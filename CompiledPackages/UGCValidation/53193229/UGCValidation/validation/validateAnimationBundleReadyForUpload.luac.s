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
       47 JUMP                             ; [+29]
       48 GETTABLEKS                       R8 R7 K13 ["editableMeshes"]
       50 SETTABLEKS                       R8 R5 K13 ["editableMeshes"]
       52 GETTABLEKS                       R8 R7 K14 ["editableImages"]
       54 SETTABLEKS                       R8 R5 K14 ["editableImages"]
       56 LOADB                            R2 1
       57 LOADNIL                          R3
       58 GETUPVAL                         R8 3
       59 CALL                             R8 0 1
       60 JUMPIFNOT                        R8 ; [+10]
       61 GETUPVAL                         R8 4
       62 GETTABLEKS                       R8 R8 K15 ["studioRFUAssetValidation"]
       64 MOVE                             R9 R5
       65 GETUPVAL                         R10 5
       66 MOVE                             R11 R2
       67 MOVE                             R12 R3
       68 CALL                             R8 4 2
       69 MOVE                             R2 R8
       70 MOVE                             R3 R9
       71 GETUPVAL                         R8 6
       72 GETTABLEKS                       R9 R5 K13 ["editableMeshes"]
       74 GETTABLEKS                       R10 R5 K14 ["editableImages"]
       76 CALL                             R8 2 0
       77 GETIMPORT                        R8 K18 [table.clone]
       79 GETUPVAL                         R9 7
       80 CALL                             R8 1 1
       81 SETUPVAL                         R8 7
       82 GETUPVAL                         R8 7
       83 GETIMPORT                        R9 K18 [table.clone]
       85 GETUPVAL                         R10 7
       86 GETTABLEKS                       R10 R10 K19 ["errors"]
       88 CALL                             R9 1 1
       89 SETTABLEKS                       R9 R8 K19 ["errors"]
       91 JUMPIF                           R2 ; [+37]
       92 JUMPIFNOTEQKNIL                  R3 ; [+2]
       94 LOADB                            R9 0 +1
       95 LOADB                            R9 1
       96 FASTCALL2K                       ASSERT R9 K20 ; [+4]
       98 LOADK                            R10 K20 ["Failure without errors"]
       99 GETIMPORT                        R8 K5 [assert]
      101 CALL                             R8 2 0
      102 MOVE                             R8 R3
      103 LOADNIL                          R9
      104 LOADNIL                          R10
      105 FORGPREP                         R8
      106 GETUPVAL                         R14 7
      107 GETTABLEKS                       R14 R14 K19 ["errors"]
      109 DUPTABLE                         R15 K22 [{"assetType", "error"}]
      110 GETTABLEKS                       R16 R0 K11 ["assetType"]
      112 SETTABLEKS                       R16 R15 K11 ["assetType"]
      114 DUPTABLE                         R16 K25 [{"type", "message"}]
      115 LOADK                            R17 K24 ["message"]
      116 SETTABLEKS                       R17 R16 K23 ["type"]
      118 SETTABLEKS                       R12 R16 K24 ["message"]
      120 SETTABLEKS                       R16 R15 K21 ["error"]
      122 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      124 GETIMPORT                        R13 K27 [table.insert]
      126 CALL                             R13 2 0
      127 FORGLOOP                         R8 2 ; [-22]
      129 GETUPVAL                         R8 7
      130 GETIMPORT                        R9 K18 [table.clone]
      132 GETUPVAL                         R10 7
      133 GETTABLEKS                       R10 R10 K28 ["pieces"]
      135 CALL                             R9 1 1
      136 SETTABLEKS                       R9 R8 K28 ["pieces"]
      138 GETUPVAL                         R9 7
      139 GETTABLEKS                       R9 R9 K28 ["pieces"]
      141 GETTABLE                         R8 R9 R1
      142 LOADK                            R9 K1 ["finished"]
      143 SETTABLEKS                       R9 R8 K0 ["status"]
      145 GETUPVAL                         R8 8
      146 GETUPVAL                         R9 7
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
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["pieces"]
        7 CALL                             R3 1 1
        8 DUPTABLE                         R4 K6 [{"fullBodyData", "isServer", "allowEditableInstances", "bypassFlags"}]
        9 SETTABLEKS                       R3 R4 K2 ["fullBodyData"]
       11 LOADB                            R5 0
       12 SETTABLEKS                       R5 R4 K3 ["isServer"]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K4 ["allowEditableInstances"]
       17 GETUPVAL                         R5 2
       18 SETTABLEKS                       R5 R4 K5 ["bypassFlags"]
       20 NEWTABLE                         R5 0 0
       22 MOVE                             R6 R3
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 GETTABLEKS                       R11 R10 K7 ["allSelectedInstances"]
       28 LOADNIL                          R12
       29 LOADNIL                          R13
       30 FORGPREP                         R11
       31 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       33 MOVE                             R17 R5
       34 MOVE                             R18 R15
       35 GETIMPORT                        R16 K10 [table.insert]
       37 CALL                             R16 2 0
       38 FORGLOOP                         R11 2 ; [-8]
       40 FORGLOOP                         R6 2 ; [-15]
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K11 ["processAll"]
       45 MOVE                             R7 R5
       46 GETUPVAL                         R8 1
       47 CALL                             R6 2 2
       48 JUMPIF                           R6 ; [+3]
       49 MOVE                             R2 R7
       50 LOADB                            R1 0
       51 JUMP                             ; [+35]
       52 GETTABLEKS                       R8 R7 K12 ["editableMeshes"]
       54 SETTABLEKS                       R8 R4 K12 ["editableMeshes"]
       56 GETTABLEKS                       R8 R7 K13 ["editableImages"]
       58 SETTABLEKS                       R8 R4 K13 ["editableImages"]
       60 LOADB                            R1 1
       61 LOADNIL                          R2
       62 GETUPVAL                         R8 4
       63 CALL                             R8 0 1
       64 JUMPIFNOT                        R8 ; [+16]
       65 GETUPVAL                         R8 5
       66 CALL                             R8 0 1
       67 JUMPIFNOT                        R8 ; [+13]
       68 GETUPVAL                         R8 6
       69 GETTABLEKS                       R8 R8 K14 ["studioRFUBundleValidation"]
       71 MOVE                             R9 R3
       72 GETIMPORT                        R10 K18 [Enum.BundleType.Animations]
       74 MOVE                             R11 R4
       75 GETUPVAL                         R12 7
       76 MOVE                             R13 R1
       77 MOVE                             R14 R2
       78 CALL                             R8 6 2
       79 MOVE                             R1 R8
       80 MOVE                             R2 R9
       81 GETUPVAL                         R8 8
       82 GETTABLEKS                       R9 R4 K12 ["editableMeshes"]
       84 GETTABLEKS                       R10 R4 K13 ["editableImages"]
       86 CALL                             R8 2 0
       87 JUMPIF                           R1 ; [+54]
       88 GETIMPORT                        R8 K20 [table.clone]
       90 GETUPVAL                         R9 0
       91 CALL                             R8 1 1
       92 SETUPVAL                         R8 0
       93 GETUPVAL                         R8 0
       94 GETIMPORT                        R9 K20 [table.clone]
       96 GETUPVAL                         R10 0
       97 GETTABLEKS                       R10 R10 K21 ["errors"]
       99 CALL                             R9 1 1
      100 SETTABLEKS                       R9 R8 K21 ["errors"]
      102 MOVE                             R9 R2
      103 JUMPIFNOT                        R9 ; [+6]
      104 LENGTH                           R10 R2
      105 LOADN                            R11 0
      106 JUMPIFLT                         R11 R10 ; [+2]
      108 LOADB                            R9 0 +1
      109 LOADB                            R9 1
      110 FASTCALL2K                       ASSERT R9 K22 ; [+4]
      112 LOADK                            R10 K22 ["There should always be a reason for failure"]
      113 GETIMPORT                        R8 K24 [assert]
      115 CALL                             R8 2 0
      116 MOVE                             R8 R2
      117 LOADNIL                          R9
      118 LOADNIL                          R10
      119 FORGPREP                         R8
      120 GETUPVAL                         R14 0
      121 GETTABLEKS                       R14 R14 K21 ["errors"]
      123 DUPTABLE                         R15 K27 [{"assetType", "error"}]
      124 LOADNIL                          R16
      125 SETTABLEKS                       R16 R15 K25 ["assetType"]
      127 DUPTABLE                         R16 K30 [{"type", "message"}]
      128 LOADK                            R17 K29 ["message"]
      129 SETTABLEKS                       R17 R16 K28 ["type"]
      131 SETTABLEKS                       R12 R16 K29 ["message"]
      133 SETTABLEKS                       R16 R15 K26 ["error"]
      135 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      137 GETIMPORT                        R13 K10 [table.insert]
      139 CALL                             R13 2 0
      140 FORGLOOP                         R8 2 ; [-21]
      142 GETUPVAL                         R8 9
      143 GETUPVAL                         R9 0
      144 CALL                             R8 1 0
      145 RETURN                           R0 0

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
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K16 ["resolve"]
       46 MOVE                             R8 R6
       47 CALL                             R7 1 -1
       48 CLOSEUPVALS                      R3
       49 RETURN                           R7 -1
       50 NEWTABLE                         R6 0 0
       52 GETUPVAL                         R7 1
       53 CALL                             R7 0 1
       54 JUMPIFNOT                        R7 ; [+106]
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K17 ["ANIMATION_ASSET_INFO"]
       58 JUMPIFNOT                        R7 ; [+102]
       59 NEWTABLE                         R7 0 0
       61 GETUPVAL                         R8 2
       62 GETTABLEKS                       R8 R8 K17 ["ANIMATION_ASSET_INFO"]
       64 LOADNIL                          R9
       65 LOADNIL                          R10
       66 FORGPREP                         R8
       67 GETTABLEKS                       R13 R12 K18 ["modelName"]
       69 LOADB                            R14 1
       70 SETTABLE                         R14 R7 R13
       71 FORGLOOP                         R8 2 ; [-5]
       73 GETUPVAL                         R8 2
       74 GETTABLEKS                       R8 R8 K17 ["ANIMATION_ASSET_INFO"]
       76 LOADNIL                          R9
       77 LOADNIL                          R10
       78 FORGPREP                         R8
       79 GETTABLEKS                       R15 R12 K18 ["modelName"]
       81 NAMECALL                         R13 R0 K19 ["FindFirstChild"]
       83 CALL                             R13 2 1
       84 JUMPIFNOT                        R13 ; [+6]
       85 NEWTABLE                         R14 0 1
       87 MOVE                             R15 R13
       88 SETLIST                          R14 R15 1 [1]
       90 SETTABLE                         R14 R6 R11
       91 FORGLOOP                         R8 2 ; [-13]
       93 NEWTABLE                         R8 0 0
       95 NAMECALL                         R9 R0 K20 ["GetChildren"]
       97 CALL                             R9 1 3
       98 FORGPREP                         R9
       99 GETTABLEKS                       R15 R13 K21 ["Name"]
      101 GETTABLE                         R14 R7 R15
      102 JUMPIF                           R14 ; [+8]
      103 GETTABLEKS                       R16 R13 K21 ["Name"]
      105 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      107 MOVE                             R15 R8
      108 GETIMPORT                        R14 K24 [table.insert]
      110 CALL                             R14 2 0
      111 FORGLOOP                         R9 2 ; [-13]
      113 LENGTH                           R9 R8
      114 LOADN                            R10 0
      115 JUMPIFNOTLT                      R10 R9 ; [+45]
      117 GETIMPORT                        R9 K27 [string.gsub]
      119 GETUPVAL                         R10 3
      120 GETTABLEKS                       R10 R10 K28 ["Values"]
      122 GETTABLEKS                       R10 R10 K29 ["AnimationPack_UnexpectedBundleChildren"]
      124 LOADK                            R11 K30 ["{unexpectedNames}"]
      125 GETIMPORT                        R12 K32 [table.concat]
      127 MOVE                             R13 R8
      128 LOADK                            R14 K33 [", "]
      129 CALL                             R12 2 -1
      130 CALL                             R9 -1 1
      131 DUPTABLE                         R10 K8 [{"errors", "pieces"}]
      132 NEWTABLE                         R11 0 1
      134 DUPTABLE                         R12 K11 [{"assetType", "error"}]
      135 LOADNIL                          R13
      136 SETTABLEKS                       R13 R12 K9 ["assetType"]
      138 DUPTABLE                         R13 K14 [{"type", "message"}]
      139 LOADK                            R14 K13 ["message"]
      140 SETTABLEKS                       R14 R13 K12 ["type"]
      142 SETTABLEKS                       R9 R13 K13 ["message"]
      144 SETTABLEKS                       R13 R12 K10 ["error"]
      146 SETLIST                          R11 R12 1 [1]
      148 SETTABLEKS                       R11 R10 K6 ["errors"]
      150 NEWTABLE                         R11 0 0
      152 SETTABLEKS                       R11 R10 K7 ["pieces"]
      154 GETUPVAL                         R11 0
      155 GETTABLEKS                       R11 R11 K16 ["resolve"]
      157 MOVE                             R12 R10
      158 CALL                             R11 1 -1
      159 CLOSEUPVALS                      R3
      160 RETURN                           R11 -1
      161 NEWTABLE                         R7 0 0
      163 NEWTABLE                         R8 0 0
      165 NEWTABLE                         R9 0 0
      167 GETTABLE                         R10 R1 R2
      168 GETTABLEKS                       R10 R10 K34 ["allowedAssetTypeSettings"]
      170 LOADNIL                          R11
      171 LOADNIL                          R12
      172 FORGPREP                         R10
      173 GETIMPORT                        R17 K37 [Enum.AssetType]
      175 GETTABLE                         R16 R17 R13
      176 FASTCALL2K                       ASSERT R16 K38 ; [+4]
      178 LOADK                            R17 K38 ["Asset type name doesn't map to an enum item"]
      179 GETIMPORT                        R15 K3 [assert]
      181 CALL                             R15 2 1
      182 GETTABLEKS                       R16 R14 K39 ["isEligibleForUpload"]
      184 JUMPIFNOT                        R16 ; [+36]
      185 GETTABLE                         R16 R6 R15
      186 MOVE                             R17 R16
      187 JUMPIFNOT                        R17 ; [+1]
      188 GETTABLEN                        R17 R16 1
      189 DUPTABLE                         R18 K43 [{"assetType", "instance", "settings", "status"}]
      190 SETTABLEKS                       R15 R18 K9 ["assetType"]
      192 SETTABLEKS                       R17 R18 K40 ["instance"]
      194 SETTABLEKS                       R14 R18 K41 ["settings"]
      196 JUMPIFNOTEQKNIL                  R17 ; [+3]
      198 LOADK                            R19 K44 ["finished"]
      199 JUMP                             ; [+1]
      200 LOADK                            R19 K45 ["pending"]
      201 SETTABLEKS                       R19 R18 K42 ["status"]
      203 SETTABLE                         R18 R7 R15
      204 JUMPIFNOTEQKNIL                  R17 ; [+16]
      206 DUPTABLE                         R20 K11 [{"assetType", "error"}]
      207 SETTABLEKS                       R15 R20 K9 ["assetType"]
      209 DUPTABLE                         R21 K46 [{"type"}]
      210 LOADK                            R22 K47 ["notFound"]
      211 SETTABLEKS                       R22 R21 K12 ["type"]
      213 SETTABLEKS                       R21 R20 K10 ["error"]
      215 FASTCALL2                        TABLE_INSERT R8 R20 ; [+4]
      217 MOVE                             R19 R8
      218 GETIMPORT                        R18 K24 [table.insert]
      220 CALL                             R18 2 0
      221 FORGLOOP                         R10 2 ; [-49]
      223 GETUPVAL                         R10 1
      224 CALL                             R10 0 1
      225 JUMPIFNOT                        R10 ; [+21]
      226 GETUPVAL                         R10 2
      227 GETTABLEKS                       R10 R10 K17 ["ANIMATION_ASSET_INFO"]
      229 JUMPIFNOT                        R10 ; [+17]
      230 GETUPVAL                         R10 2
      231 GETTABLEKS                       R10 R10 K17 ["ANIMATION_ASSET_INFO"]
      233 LOADNIL                          R11
      234 LOADNIL                          R12
      235 FORGPREP                         R10
      236 GETTABLE                         R15 R7 R13
      237 JUMPIFNOT                        R15 ; [+7]
      238 GETTABLE                         R17 R7 R13
      239 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      241 MOVE                             R16 R9
      242 GETIMPORT                        R15 K24 [table.insert]
      244 CALL                             R15 2 0
      245 FORGLOOP                         R10 2 ; [-10]
      247 DUPTABLE                         R10 K8 [{"errors", "pieces"}]
      248 SETTABLEKS                       R8 R10 K6 ["errors"]
      250 SETTABLEKS                       R9 R10 K7 ["pieces"]
      252 MOVE                             R11 R3
      253 MOVE                             R12 R10
      254 CALL                             R11 1 0
      255 LOADNIL                          R11
      256 GETUPVAL                         R12 4
      257 CALL                             R12 0 1
      258 JUMPIFNOT                        R12 ; [+5]
      259 GETUPVAL                         R12 5
      260 NAMECALL                         R12 R12 K48 ["GenerateGUID"]
      262 CALL                             R12 1 1
      263 MOVE                             R11 R12
      264 GETUPVAL                         R12 0
      265 GETTABLEKS                       R12 R12 K49 ["each"]
      267 MOVE                             R13 R9
      268 NEWCLOSURE                       R14 P1
      269 CAPTURE                          VAL R4
      270 CAPTURE                          VAL R5
      271 CAPTURE                          UPVAL U6
      272 CAPTURE                          UPVAL U4
      273 CAPTURE                          UPVAL U7
      274 CAPTURE                          REF R11
      275 CAPTURE                          UPVAL U8
      276 CAPTURE                          REF R10
      277 CAPTURE                          REF R3
      278 CALL                             R12 2 1
      279 NEWCLOSURE                       R14 P2
      280 CAPTURE                          REF R10
      281 CAPTURE                          VAL R4
      282 CAPTURE                          VAL R5
      283 CAPTURE                          UPVAL U6
      284 CAPTURE                          UPVAL U4
      285 CAPTURE                          UPVAL U1
      286 CAPTURE                          UPVAL U7
      287 CAPTURE                          REF R11
      288 CAPTURE                          UPVAL U8
      289 CAPTURE                          REF R3
      290 NAMECALL                         R12 R12 K50 ["andThen"]
      292 CALL                             R12 2 1
      293 NEWCLOSURE                       R14 P3
      294 CAPTURE                          REF R10
      295 NAMECALL                         R12 R12 K50 ["andThen"]
      297 CALL                             R12 2 -1
      298 CLOSEUPVALS                      R3
      299 RETURN                           R12 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Constants"]
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
       35 GETTABLEKS                       R6 R0 K10 ["validationSystem"]
       37 GETTABLEKS                       R6 R6 K11 ["ErrorSourceStrings"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K7 ["util"]
       44 GETTABLEKS                       R7 R7 K12 ["createEditableInstancesForContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K7 ["util"]
       51 GETTABLEKS                       R8 R8 K13 ["destroyEditableInstances"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R9 R0 K14 ["validation"]
       58 GETTABLEKS                       R9 R9 K15 ["validateBundleReadyForUpload"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R10 R0 K16 ["flags"]
       65 GETTABLEKS                       R10 R10 K17 ["getFFlagUGCValidationEnableFolderStructure"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R11 R0 K16 ["flags"]
       72 GETTABLEKS                       R11 R11 K18 ["getFFlagUGCValidationAnimationPackSupport"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R12 R0 K7 ["util"]
       79 GETTABLEKS                       R12 R12 K19 ["LegacyValidationAdapter"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K21 [game]
       84 LOADK                            R14 K22 ["HttpService"]
       85 NAMECALL                         R12 R12 K23 ["GetService"]
       87 CALL                             R12 2 1
       88 DUPCLOSURE                       R13 K24 [PROTO_5]
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R7
       98 RETURN                           R13 1
