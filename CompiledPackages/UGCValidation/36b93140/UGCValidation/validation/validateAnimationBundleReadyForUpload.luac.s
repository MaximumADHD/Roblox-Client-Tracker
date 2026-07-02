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
       91 JUMPIF                           R2 ; [+34]
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
      114 DUPTABLE                         R16 K25 [{["type"] = "message", ["message"]}]
      115 SETTABLEKS                       R12 R16 K24 ["message"]
      117 SETTABLEKS                       R16 R15 K21 ["error"]
      119 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      121 GETIMPORT                        R13 K27 [table.insert]
      123 CALL                             R13 2 0
      124 FORGLOOP                         R8 2 ; [-19]
      126 GETUPVAL                         R8 7
      127 GETIMPORT                        R9 K18 [table.clone]
      129 GETUPVAL                         R10 7
      130 GETTABLEKS                       R10 R10 K28 ["pieces"]
      132 CALL                             R9 1 1
      133 SETTABLEKS                       R9 R8 K28 ["pieces"]
      135 GETUPVAL                         R9 7
      136 GETTABLEKS                       R9 R9 K28 ["pieces"]
      138 GETTABLE                         R8 R9 R1
      139 LOADK                            R9 K1 ["finished"]
      140 SETTABLEKS                       R9 R8 K0 ["status"]
      142 GETUPVAL                         R8 8
      143 GETUPVAL                         R9 7
      144 CALL                             R8 1 0
      145 RETURN                           R0 0

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
        8 DUPTABLE                         R4 K7 [{["fullBodyData"], ["isServer"] = False, ["allowEditableInstances"], ["bypassFlags"]}]
        9 SETTABLEKS                       R3 R4 K2 ["fullBodyData"]
       11 GETUPVAL                         R5 1
       12 SETTABLEKS                       R5 R4 K5 ["allowEditableInstances"]
       14 GETUPVAL                         R5 2
       15 SETTABLEKS                       R5 R4 K6 ["bypassFlags"]
       17 NEWTABLE                         R5 0 0
       19 MOVE                             R6 R3
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 GETTABLEKS                       R11 R10 K8 ["allSelectedInstances"]
       25 LOADNIL                          R12
       26 LOADNIL                          R13
       27 FORGPREP                         R11
       28 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       30 MOVE                             R17 R5
       31 MOVE                             R18 R15
       32 GETIMPORT                        R16 K11 [table.insert]
       34 CALL                             R16 2 0
       35 FORGLOOP                         R11 2 ; [-8]
       37 FORGLOOP                         R6 2 ; [-15]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R6 R6 K12 ["processAll"]
       42 MOVE                             R7 R5
       43 GETUPVAL                         R8 1
       44 CALL                             R6 2 2
       45 JUMPIF                           R6 ; [+3]
       46 MOVE                             R2 R7
       47 LOADB                            R1 0
       48 JUMP                             ; [+35]
       49 GETTABLEKS                       R8 R7 K13 ["editableMeshes"]
       51 SETTABLEKS                       R8 R4 K13 ["editableMeshes"]
       53 GETTABLEKS                       R8 R7 K14 ["editableImages"]
       55 SETTABLEKS                       R8 R4 K14 ["editableImages"]
       57 LOADB                            R1 1
       58 LOADNIL                          R2
       59 GETUPVAL                         R8 4
       60 CALL                             R8 0 1
       61 JUMPIFNOT                        R8 ; [+16]
       62 GETUPVAL                         R8 5
       63 CALL                             R8 0 1
       64 JUMPIFNOT                        R8 ; [+13]
       65 GETUPVAL                         R8 6
       66 GETTABLEKS                       R8 R8 K15 ["studioRFUBundleValidation"]
       68 MOVE                             R9 R3
       69 GETIMPORT                        R10 K19 [Enum.BundleType.Animations]
       71 MOVE                             R11 R4
       72 GETUPVAL                         R12 7
       73 MOVE                             R13 R1
       74 MOVE                             R14 R2
       75 CALL                             R8 6 2
       76 MOVE                             R1 R8
       77 MOVE                             R2 R9
       78 GETUPVAL                         R8 8
       79 GETTABLEKS                       R9 R4 K13 ["editableMeshes"]
       81 GETTABLEKS                       R10 R4 K14 ["editableImages"]
       83 CALL                             R8 2 0
       84 JUMPIF                           R1 ; [+48]
       85 GETIMPORT                        R8 K21 [table.clone]
       87 GETUPVAL                         R9 0
       88 CALL                             R8 1 1
       89 SETUPVAL                         R8 0
       90 GETUPVAL                         R8 0
       91 GETIMPORT                        R9 K21 [table.clone]
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R10 R10 K22 ["errors"]
       96 CALL                             R9 1 1
       97 SETTABLEKS                       R9 R8 K22 ["errors"]
       99 MOVE                             R9 R2
      100 JUMPIFNOT                        R9 ; [+6]
      101 LENGTH                           R10 R2
      102 LOADN                            R11 0
      103 JUMPIFLT                         R11 R10 ; [+2]
      105 LOADB                            R9 0 +1
      106 LOADB                            R9 1
      107 FASTCALL2K                       ASSERT R9 K23 ; [+4]
      109 LOADK                            R10 K23 ["There should always be a reason for failure"]
      110 GETIMPORT                        R8 K25 [assert]
      112 CALL                             R8 2 0
      113 MOVE                             R8 R2
      114 LOADNIL                          R9
      115 LOADNIL                          R10
      116 FORGPREP                         R8
      117 GETUPVAL                         R14 0
      118 GETTABLEKS                       R14 R14 K22 ["errors"]
      120 DUPTABLE                         R15 K29 [{["assetType"] = , ["error"]}]
      121 DUPTABLE                         R16 K32 [{["type"] = "message", ["message"]}]
      122 SETTABLEKS                       R12 R16 K31 ["message"]
      124 SETTABLEKS                       R16 R15 K28 ["error"]
      126 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      128 GETIMPORT                        R13 K11 [table.insert]
      130 CALL                             R13 2 0
      131 FORGLOOP                         R8 2 ; [-15]
      133 GETUPVAL                         R8 9
      134 GETUPVAL                         R9 0
      135 CALL                             R8 1 0
      136 RETURN                           R0 0

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
       41 NEWTABLE                         R6 0 0
       43 GETUPVAL                         R7 1
       44 CALL                             R7 0 1
       45 JUMPIFNOT                        R7 ; [+100]
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K18 ["ANIMATION_ASSET_INFO"]
       49 JUMPIFNOT                        R7 ; [+96]
       50 NEWTABLE                         R7 0 0
       52 GETUPVAL                         R8 2
       53 GETTABLEKS                       R8 R8 K18 ["ANIMATION_ASSET_INFO"]
       55 LOADNIL                          R9
       56 LOADNIL                          R10
       57 FORGPREP                         R8
       58 GETTABLEKS                       R13 R12 K19 ["modelName"]
       60 LOADB                            R14 1
       61 SETTABLE                         R14 R7 R13
       62 FORGLOOP                         R8 2 ; [-5]
       64 GETUPVAL                         R8 2
       65 GETTABLEKS                       R8 R8 K18 ["ANIMATION_ASSET_INFO"]
       67 LOADNIL                          R9
       68 LOADNIL                          R10
       69 FORGPREP                         R8
       70 GETTABLEKS                       R15 R12 K19 ["modelName"]
       72 NAMECALL                         R13 R0 K20 ["FindFirstChild"]
       74 CALL                             R13 2 1
       75 JUMPIFNOT                        R13 ; [+6]
       76 NEWTABLE                         R14 0 1
       78 MOVE                             R15 R13
       79 SETLIST                          R14 R15 1 [1]
       81 SETTABLE                         R14 R6 R11
       82 FORGLOOP                         R8 2 ; [-13]
       84 NEWTABLE                         R8 0 0
       86 NAMECALL                         R9 R0 K21 ["GetChildren"]
       88 CALL                             R9 1 3
       89 FORGPREP                         R9
       90 GETTABLEKS                       R15 R13 K22 ["Name"]
       92 GETTABLE                         R14 R7 R15
       93 JUMPIF                           R14 ; [+8]
       94 GETTABLEKS                       R16 R13 K22 ["Name"]
       96 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
       98 MOVE                             R15 R8
       99 GETIMPORT                        R14 K25 [table.insert]
      101 CALL                             R14 2 0
      102 FORGLOOP                         R9 2 ; [-13]
      104 LENGTH                           R9 R8
      105 LOADN                            R10 0
      106 JUMPIFNOTLT                      R10 R9 ; [+39]
      108 GETIMPORT                        R9 K28 [string.gsub]
      110 GETUPVAL                         R10 3
      111 GETTABLEKS                       R10 R10 K29 ["Values"]
      113 GETTABLEKS                       R10 R10 K30 ["AnimationPack_UnexpectedBundleChildren"]
      115 LOADK                            R11 K31 ["{unexpectedNames}"]
      116 GETIMPORT                        R12 K33 [table.concat]
      118 MOVE                             R13 R8
      119 LOADK                            R14 K34 [", "]
      120 CALL                             R12 2 -1
      121 CALL                             R9 -1 1
      122 DUPTABLE                         R10 K8 [{"errors", "pieces"}]
      123 NEWTABLE                         R11 0 1
      125 DUPTABLE                         R12 K12 [{["assetType"] = , ["error"]}]
      126 DUPTABLE                         R13 K35 [{["type"] = "message", ["message"]}]
      127 SETTABLEKS                       R9 R13 K14 ["message"]
      129 SETTABLEKS                       R13 R12 K11 ["error"]
      131 SETLIST                          R11 R12 1 [1]
      133 SETTABLEKS                       R11 R10 K6 ["errors"]
      135 NEWTABLE                         R11 0 0
      137 SETTABLEKS                       R11 R10 K7 ["pieces"]
      139 GETUPVAL                         R11 0
      140 GETTABLEKS                       R11 R11 K17 ["resolve"]
      142 MOVE                             R12 R10
      143 CALL                             R11 1 -1
      144 CLOSEUPVALS                      R3
      145 RETURN                           R11 -1
      146 NEWTABLE                         R7 0 0
      148 NEWTABLE                         R8 0 0
      150 NEWTABLE                         R9 0 0
      152 GETTABLE                         R10 R1 R2
      153 GETTABLEKS                       R10 R10 K36 ["allowedAssetTypeSettings"]
      155 LOADNIL                          R11
      156 LOADNIL                          R12
      157 FORGPREP                         R10
      158 GETIMPORT                        R17 K39 [Enum.AssetType]
      160 GETTABLE                         R16 R17 R13
      161 FASTCALL2K                       ASSERT R16 K40 ; [+4]
      163 LOADK                            R17 K40 ["Asset type name doesn't map to an enum item"]
      164 GETIMPORT                        R15 K3 [assert]
      166 CALL                             R15 2 1
      167 GETTABLEKS                       R16 R14 K41 ["isEligibleForUpload"]
      169 JUMPIFNOT                        R16 ; [+33]
      170 GETTABLE                         R16 R6 R15
      171 MOVE                             R17 R16
      172 JUMPIFNOT                        R17 ; [+1]
      173 GETTABLEN                        R17 R16 1
      174 DUPTABLE                         R18 K45 [{"assetType", "instance", "settings", "status"}]
      175 SETTABLEKS                       R15 R18 K9 ["assetType"]
      177 SETTABLEKS                       R17 R18 K42 ["instance"]
      179 SETTABLEKS                       R14 R18 K43 ["settings"]
      181 JUMPIFNOTEQKNIL                  R17 ; [+3]
      183 LOADK                            R19 K46 ["finished"]
      184 JUMP                             ; [+1]
      185 LOADK                            R19 K47 ["pending"]
      186 SETTABLEKS                       R19 R18 K44 ["status"]
      188 SETTABLE                         R18 R7 R15
      189 JUMPIFNOTEQKNIL                  R17 ; [+13]
      191 DUPTABLE                         R20 K48 [{"assetType", "error"}]
      192 SETTABLEKS                       R15 R20 K9 ["assetType"]
      194 DUPTABLE                         R21 K50 [{["type"] = "notFound"}]
      195 SETTABLEKS                       R21 R20 K11 ["error"]
      197 FASTCALL2                        TABLE_INSERT R8 R20 ; [+4]
      199 MOVE                             R19 R8
      200 GETIMPORT                        R18 K25 [table.insert]
      202 CALL                             R18 2 0
      203 FORGLOOP                         R10 2 ; [-46]
      205 GETUPVAL                         R10 1
      206 CALL                             R10 0 1
      207 JUMPIFNOT                        R10 ; [+21]
      208 GETUPVAL                         R10 2
      209 GETTABLEKS                       R10 R10 K18 ["ANIMATION_ASSET_INFO"]
      211 JUMPIFNOT                        R10 ; [+17]
      212 GETUPVAL                         R10 2
      213 GETTABLEKS                       R10 R10 K18 ["ANIMATION_ASSET_INFO"]
      215 LOADNIL                          R11
      216 LOADNIL                          R12
      217 FORGPREP                         R10
      218 GETTABLE                         R15 R7 R13
      219 JUMPIFNOT                        R15 ; [+7]
      220 GETTABLE                         R17 R7 R13
      221 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      223 MOVE                             R16 R9
      224 GETIMPORT                        R15 K25 [table.insert]
      226 CALL                             R15 2 0
      227 FORGLOOP                         R10 2 ; [-10]
      229 DUPTABLE                         R10 K8 [{"errors", "pieces"}]
      230 SETTABLEKS                       R8 R10 K6 ["errors"]
      232 SETTABLEKS                       R9 R10 K7 ["pieces"]
      234 MOVE                             R11 R3
      235 MOVE                             R12 R10
      236 CALL                             R11 1 0
      237 LOADNIL                          R11
      238 GETUPVAL                         R12 4
      239 CALL                             R12 0 1
      240 JUMPIFNOT                        R12 ; [+5]
      241 GETUPVAL                         R12 5
      242 NAMECALL                         R12 R12 K51 ["GenerateGUID"]
      244 CALL                             R12 1 1
      245 MOVE                             R11 R12
      246 GETUPVAL                         R12 0
      247 GETTABLEKS                       R12 R12 K52 ["each"]
      249 MOVE                             R13 R9
      250 NEWCLOSURE                       R14 P1
      251 CAPTURE                          VAL R4
      252 CAPTURE                          VAL R5
      253 CAPTURE                          UPVAL U6
      254 CAPTURE                          UPVAL U4
      255 CAPTURE                          UPVAL U7
      256 CAPTURE                          REF R11
      257 CAPTURE                          UPVAL U8
      258 CAPTURE                          REF R10
      259 CAPTURE                          REF R3
      260 CALL                             R12 2 1
      261 NEWCLOSURE                       R14 P2
      262 CAPTURE                          REF R10
      263 CAPTURE                          VAL R4
      264 CAPTURE                          VAL R5
      265 CAPTURE                          UPVAL U6
      266 CAPTURE                          UPVAL U4
      267 CAPTURE                          UPVAL U1
      268 CAPTURE                          UPVAL U7
      269 CAPTURE                          REF R11
      270 CAPTURE                          UPVAL U8
      271 CAPTURE                          REF R3
      272 NAMECALL                         R12 R12 K53 ["andThen"]
      274 CALL                             R12 2 1
      275 NEWCLOSURE                       R14 P3
      276 CAPTURE                          REF R10
      277 NAMECALL                         R12 R12 K53 ["andThen"]
      279 CALL                             R12 2 -1
      280 CLOSEUPVALS                      R3
      281 RETURN                           R12 -1

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
