PROTO_0:
        0 LOADK                            R3 K0 ["LuaSourceContainer"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 LOADK                            R3 K2 ["PartOperation"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+2]
       10 LOADB                            R1 1
       11 RETURN                           R1 1
       12 NAMECALL                         R1 R0 K3 ["GetDescendants"]
       14 CALL                             R1 1 3
       15 FORGPREP                         R1
       16 LOADK                            R8 K0 ["LuaSourceContainer"]
       17 NAMECALL                         R6 R5 K1 ["IsA"]
       19 CALL                             R6 2 1
       20 JUMPIF                           R6 ; [+5]
       21 LOADK                            R8 K2 ["PartOperation"]
       22 NAMECALL                         R6 R5 K1 ["IsA"]
       24 CALL                             R6 2 1
       25 JUMPIFNOT                        R6 ; [+2]
       26 LOADB                            R6 1
       27 RETURN                           R6 1
       28 FORGLOOP                         R1 2 ; [-13]
       30 LOADB                            R1 0
       31 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Generator"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 LOADB                            R3 1
        5 SETTABLE                         R3 R2 R1
        6 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 LOADK                            R10 K0 ["ProceduralModel"]
        9 NAMECALL                         R8 R7 K1 ["IsA"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+5]
       13 GETTABLEKS                       R8 R7 K2 ["Generator"]
       15 JUMPIFNOT                        R8 ; [+2]
       16 LOADB                            R9 1
       17 SETTABLE                         R9 R1 R8
       18 LOADK                            R10 K0 ["ProceduralModel"]
       19 NAMECALL                         R8 R7 K3 ["QueryDescendants"]
       21 CALL                             R8 2 3
       22 FORGPREP                         R8
       23 GETTABLEKS                       R13 R12 K2 ["Generator"]
       25 JUMPIFNOT                        R13 ; [+2]
       26 LOADB                            R14 1
       27 SETTABLE                         R14 R1 R13
       28 FORGLOOP                         R8 2 ; [-6]
       30 FORGLOOP                         R3 2 ; [-23]
       32 LOADB                            R3 0
       33 MOVE                             R4 R1
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 GETUPVAL                         R9 0
       38 SETTABLEKS                       R9 R7 K4 ["Capabilities"]
       40 LOADB                            R9 1
       41 SETTABLEKS                       R9 R7 K5 ["Sandboxed"]
       43 LOADK                            R11 K6 ["ModuleScript"]
       44 NAMECALL                         R9 R7 K3 ["QueryDescendants"]
       46 CALL                             R9 2 3
       47 FORGPREP                         R9
       48 GETTABLE                         R14 R1 R13
       49 JUMPIF                           R14 ; [+3]
       50 LOADB                            R14 0
       51 SETTABLEKS                       R14 R13 K5 ["Sandboxed"]
       53 FORGLOOP                         R9 2 ; [-6]
       55 LOADB                            R3 1
       56 FORGLOOP                         R4 1 ; [-20]
       58 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetUpCapabilitiesForTreeAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 LOADK                            R5 K0 ["[sandboxAsset] applySandboxIfNeeded: instances=%*, capabilitiesHandler=%*"]
        3 LENGTH                           R7 R0
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R9 0 +1
        7 LOADB                            R9 1
        8 FASTCALL1                        TOSTRING R9 ; [+2]
        9 GETIMPORT                        R8 K2 [tostring]
       11 CALL                             R8 1 1
       12 NAMECALL                         R5 R5 K3 ["format"]
       14 CALL                             R5 3 1
       15 MOVE                             R4 R5
       16 JUMPIFNOT                        R2 ; [+3]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R4
       19 CALL                             R5 1 0
       20 NEWTABLE                         R4 0 0
       22 MOVE                             R5 R0
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 FORGPREP                         R5
       26 GETUPVAL                         R10 0
       27 MOVE                             R11 R9
       28 CALL                             R10 1 1
       29 JUMPIFNOT                        R10 ; [+7]
       30 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       32 MOVE                             R11 R4
       33 MOVE                             R12 R9
       34 GETIMPORT                        R10 K6 [table.insert]
       36 CALL                             R10 2 0
       37 FORGLOOP                         R5 2 ; [-12]
       39 LOADK                            R6 K7 ["[sandboxAsset] Containment check: toSandbox=%*/%* contain scripts or PartOperations"]
       40 LENGTH                           R8 R4
       41 LENGTH                           R9 R0
       42 NAMECALL                         R6 R6 K3 ["format"]
       44 CALL                             R6 3 1
       45 MOVE                             R5 R6
       46 JUMPIFNOT                        R2 ; [+3]
       47 MOVE                             R6 R2
       48 MOVE                             R7 R5
       49 CALL                             R6 1 0
       50 LENGTH                           R5 R4
       51 JUMPIFNOTEQKN                    R5 K8 [0] ; [+7]
       53 JUMPIFNOT                        R2 ; [+3]
       54 MOVE                             R5 R2
       55 LOADK                            R6 K9 ["[sandboxAsset] No scripts/PartOperations found; skipping all sandboxing"]
       56 CALL                             R5 1 0
       57 LOADB                            R5 0
       58 RETURN                           R5 1
       59 LOADB                            R5 0
       60 JUMPIFNOTEQKNIL                  R1 ; [+6]
       62 JUMPIFNOT                        R2 ; [+34]
       63 MOVE                             R6 R2
       64 LOADK                            R7 K10 ["[sandboxAsset] capabilitiesHandler unavailable; skipping general capability sandbox"]
       65 CALL                             R6 1 0
       66 JUMP                             ; [+30]
       67 MOVE                             R6 R4
       68 LOADNIL                          R7
       69 LOADNIL                          R8
       70 FORGPREP                         R6
       71 GETIMPORT                        R11 K12 [pcall]
       73 NEWCLOSURE                       R12 P1
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R10
       76 CAPTURE                          UPVAL U1
       77 CALL                             R11 1 2
       78 JUMPIF                           R11 ; [+15]
       79 LOADK                            R14 K13 ["[sandboxAsset] SetUpCapabilitiesForTreeAsync failed: %*"]
       80 FASTCALL1                        TOSTRING R12 ; [+3]
       81 MOVE                             R17 R12
       82 GETIMPORT                        R16 K2 [tostring]
       84 CALL                             R16 1 1
       85 NAMECALL                         R14 R14 K3 ["format"]
       87 CALL                             R14 2 1
       88 MOVE                             R13 R14
       89 JUMPIFNOT                        R2 ; [+5]
       90 MOVE                             R14 R2
       91 MOVE                             R15 R13
       92 CALL                             R14 1 0
       93 JUMP                             ; [+1]
       94 LOADB                            R5 1
       95 FORGLOOP                         R6 2 ; [-25]
       97 LOADK                            R7 K14 ["[sandboxAsset] General sandbox: sandboxedAny=%*"]
       98 FASTCALL1                        TOSTRING R5 ; [+3]
       99 MOVE                             R10 R5
      100 GETIMPORT                        R9 K2 [tostring]
      102 CALL                             R9 1 1
      103 NAMECALL                         R7 R7 K3 ["format"]
      105 CALL                             R7 2 1
      106 MOVE                             R6 R7
      107 JUMPIFNOT                        R2 ; [+3]
      108 MOVE                             R7 R2
      109 MOVE                             R8 R6
      110 CALL                             R7 1 0
      111 GETUPVAL                         R6 2
      112 GETTABLEKS                       R6 R6 K15 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
      114 LOADB                            R7 0
      115 JUMPIFNOT                        R6 ; [+4]
      116 GETUPVAL                         R8 3
      117 MOVE                             R9 R0
      118 CALL                             R8 1 1
      119 MOVE                             R7 R8
      120 LOADK                            R9 K16 ["[sandboxAsset] Procedural sandbox: flag=%*, touched=%*"]
      121 FASTCALL1                        TOSTRING R6 ; [+3]
      122 MOVE                             R12 R6
      123 GETIMPORT                        R11 K2 [tostring]
      125 CALL                             R11 1 1
      126 FASTCALL1                        TOSTRING R7 ; [+3]
      127 MOVE                             R13 R7
      128 GETIMPORT                        R12 K2 [tostring]
      130 CALL                             R12 1 1
      131 NAMECALL                         R9 R9 K3 ["format"]
      133 CALL                             R9 3 1
      134 MOVE                             R8 R9
      135 JUMPIFNOT                        R2 ; [+3]
      136 MOVE                             R9 R2
      137 MOVE                             R10 R8
      138 CALL                             R9 1 0
      139 OR                               R8 R5 R7
      140 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 0 38
       14 GETIMPORT                        R3 K10 [Enum.SecurityCapability.Animation]
       16 GETIMPORT                        R4 K12 [Enum.SecurityCapability.UI]
       18 GETIMPORT                        R5 K14 [Enum.SecurityCapability.CSG]
       20 GETIMPORT                        R6 K16 [Enum.SecurityCapability.Chat]
       22 GETIMPORT                        R7 K18 [Enum.SecurityCapability.Audio]
       24 GETIMPORT                        R8 K20 [Enum.SecurityCapability.Basic]
       26 GETIMPORT                        R9 K22 [Enum.SecurityCapability.Input]
       28 GETIMPORT                        R10 K24 [Enum.SecurityCapability.Avatar]
       30 GETIMPORT                        R11 K26 [Enum.SecurityCapability.Network]
       32 GETIMPORT                        R12 K28 [Enum.SecurityCapability.Physics]
       34 GETIMPORT                        R13 K30 [Enum.SecurityCapability.Players]
       36 GETIMPORT                        R14 K32 [Enum.SecurityCapability.DataStore]
       38 GETIMPORT                        R15 K34 [Enum.SecurityCapability.Environment]
       40 GETIMPORT                        R16 K36 [Enum.SecurityCapability.LegacySound]
       42 GETIMPORT                        R17 K38 [Enum.SecurityCapability.RemoteEvent]
       44 GETIMPORT                        R18 K40 [Enum.SecurityCapability.CreateInstances]
       46 SETLIST                          R2 R3 16 [1]
       48 GETIMPORT                        R3 K42 [Enum.SecurityCapability.RunClientScript]
       50 GETIMPORT                        R4 K44 [Enum.SecurityCapability.RunServerScript]
       52 GETIMPORT                        R5 K46 [Enum.SecurityCapability.AccessOutsideWrite]
       54 GETIMPORT                        R6 K48 [Enum.SecurityCapability.ScriptGlobals]
       56 GETIMPORT                        R7 K50 [Enum.SecurityCapability.AssetRead]
       58 GETIMPORT                        R8 K52 [Enum.SecurityCapability.AssetManagement]
       60 GETIMPORT                        R9 K54 [Enum.SecurityCapability.DynamicGeneration]
       62 GETIMPORT                        R10 K56 [Enum.SecurityCapability.PlatformAvatarEditing]
       64 GETIMPORT                        R11 K58 [Enum.SecurityCapability.AssetCreateUpdate]
       66 GETIMPORT                        R12 K60 [Enum.SecurityCapability.Capture]
       68 GETIMPORT                        R13 K62 [Enum.SecurityCapability.SensitiveInput]
       70 GETIMPORT                        R14 K64 [Enum.SecurityCapability.Monetization]
       72 GETIMPORT                        R15 K66 [Enum.SecurityCapability.LoadOwnedAsset]
       74 GETIMPORT                        R16 K68 [Enum.SecurityCapability.Social]
       76 GETIMPORT                        R17 K70 [Enum.SecurityCapability.ServerCommunication]
       78 GETIMPORT                        R18 K72 [Enum.SecurityCapability.Logging]
       80 SETLIST                          R2 R3 16 [17]
       82 GETIMPORT                        R3 K74 [Enum.SecurityCapability.PromptExternalPurchase]
       84 GETIMPORT                        R4 K76 [Enum.SecurityCapability.Groups]
       86 GETIMPORT                        R5 K78 [Enum.SecurityCapability.Teleport]
       88 GETIMPORT                        R6 K80 [Enum.SecurityCapability.Consequences]
       90 GETIMPORT                        R7 K82 [Enum.SecurityCapability.Material]
       92 GETIMPORT                        R8 K84 [Enum.SecurityCapability.AvatarBehavior]
       94 SETLIST                          R2 R3 6 [33]
       96 NEWTABLE                         R3 0 16
       98 GETIMPORT                        R4 K10 [Enum.SecurityCapability.Animation]
      100 GETIMPORT                        R5 K84 [Enum.SecurityCapability.AvatarBehavior]
      102 GETIMPORT                        R6 K18 [Enum.SecurityCapability.Audio]
      104 GETIMPORT                        R7 K24 [Enum.SecurityCapability.Avatar]
      106 GETIMPORT                        R8 K20 [Enum.SecurityCapability.Basic]
      108 GETIMPORT                        R9 K40 [Enum.SecurityCapability.CreateInstances]
      110 GETIMPORT                        R10 K14 [Enum.SecurityCapability.CSG]
      112 GETIMPORT                        R11 K54 [Enum.SecurityCapability.DynamicGeneration]
      114 GETIMPORT                        R12 K72 [Enum.SecurityCapability.Logging]
      116 GETIMPORT                        R13 K22 [Enum.SecurityCapability.Input]
      118 GETIMPORT                        R14 K36 [Enum.SecurityCapability.LegacySound]
      120 GETIMPORT                        R15 K82 [Enum.SecurityCapability.Material]
      122 GETIMPORT                        R16 K28 [Enum.SecurityCapability.Physics]
      124 GETIMPORT                        R17 K42 [Enum.SecurityCapability.RunClientScript]
      126 GETIMPORT                        R18 K44 [Enum.SecurityCapability.RunServerScript]
      128 GETIMPORT                        R19 K12 [Enum.SecurityCapability.UI]
      130 SETLIST                          R3 R4 16 [1]
      132 GETTABLEKS                       R4 R1 K85 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
      134 JUMPIFNOT                        R4 ; [+12]
      135 GETIMPORT                        R4 K88 [table.find]
      137 MOVE                             R5 R2
      138 GETIMPORT                        R6 K66 [Enum.SecurityCapability.LoadOwnedAsset]
      140 CALL                             R4 2 1
      141 JUMPIFNOT                        R4 ; [+5]
      142 GETIMPORT                        R5 K90 [table.remove]
      144 MOVE                             R6 R2
      145 MOVE                             R7 R4
      146 CALL                             R5 2 0
      147 GETIMPORT                        R4 K93 [Instance.new]
      149 LOADK                            R5 K94 ["Folder"]
      150 CALL                             R4 1 1
      151 GETTABLEKS                       R5 R4 K95 ["Capabilities"]
      153 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      154 MOVE                             R8 R2
      155 GETIMPORT                        R7 K97 [unpack]
      157 CALL                             R7 1 -1
      158 NAMECALL                         R5 R5 K98 ["Add"]
      160 CALL                             R5 -1 1
      161 GETIMPORT                        R6 K100 [SecurityCapabilities.new]
      163 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
      164 MOVE                             R8 R3
      165 GETIMPORT                        R7 K97 [unpack]
      167 CALL                             R7 1 -1
      168 CALL                             R6 -1 1
      169 DUPCLOSURE                       R7 K101 [PROTO_0]
      170 DUPCLOSURE                       R8 K102 [PROTO_2]
      171 CAPTURE                          VAL R6
      172 DUPCLOSURE                       R9 K103 [PROTO_5]
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R8
      177 DUPTABLE                         R10 K106 [{"applySandboxIfNeeded", "_testing"}]
      178 SETTABLEKS                       R9 R10 K104 ["applySandboxIfNeeded"]
      180 DUPTABLE                         R11 K111 [{"BASIC_CAPABILITIES", "PROCEDURAL_CAPABILITIES", "treeContainsScriptsOrPartOps", "sandboxProceduralModels"}]
      181 SETTABLEKS                       R2 R11 K107 ["BASIC_CAPABILITIES"]
      183 SETTABLEKS                       R3 R11 K108 ["PROCEDURAL_CAPABILITIES"]
      185 SETTABLEKS                       R7 R11 K109 ["treeContainsScriptsOrPartOps"]
      187 SETTABLEKS                       R8 R11 K110 ["sandboxProceduralModels"]
      189 SETTABLEKS                       R11 R10 K105 ["_testing"]
      191 RETURN                           R10 1
