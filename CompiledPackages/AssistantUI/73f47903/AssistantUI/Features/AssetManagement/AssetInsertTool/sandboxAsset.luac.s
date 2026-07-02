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
      112 CALL                             R6 0 1
      113 LOADB                            R7 0
      114 JUMPIFNOT                        R6 ; [+4]
      115 GETUPVAL                         R8 3
      116 MOVE                             R9 R0
      117 CALL                             R8 1 1
      118 MOVE                             R7 R8
      119 LOADK                            R9 K15 ["[sandboxAsset] Procedural sandbox: flag=%*, touched=%*"]
      120 FASTCALL1                        TOSTRING R6 ; [+3]
      121 MOVE                             R12 R6
      122 GETIMPORT                        R11 K2 [tostring]
      124 CALL                             R11 1 1
      125 FASTCALL1                        TOSTRING R7 ; [+3]
      126 MOVE                             R13 R7
      127 GETIMPORT                        R12 K2 [tostring]
      129 CALL                             R12 1 1
      130 NAMECALL                         R9 R9 K3 ["format"]
      132 CALL                             R9 3 1
      133 MOVE                             R8 R9
      134 JUMPIFNOT                        R2 ; [+3]
      135 MOVE                             R9 R2
      136 MOVE                             R10 R8
      137 CALL                             R9 1 0
      138 OR                               R8 R5 R7
      139 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAssistantInsertAssetSandboxProceduralModels"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Flags"]
       18 GETTABLEKS                       R3 R3 K8 ["FFlagAssistantInsertAssetSandboxRemoveLoadOwnedAsset"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 0 38
       23 GETIMPORT                        R4 K12 [Enum.SecurityCapability.Animation]
       25 GETIMPORT                        R5 K14 [Enum.SecurityCapability.UI]
       27 GETIMPORT                        R6 K16 [Enum.SecurityCapability.CSG]
       29 GETIMPORT                        R7 K18 [Enum.SecurityCapability.Chat]
       31 GETIMPORT                        R8 K20 [Enum.SecurityCapability.Audio]
       33 GETIMPORT                        R9 K22 [Enum.SecurityCapability.Basic]
       35 GETIMPORT                        R10 K24 [Enum.SecurityCapability.Input]
       37 GETIMPORT                        R11 K26 [Enum.SecurityCapability.Avatar]
       39 GETIMPORT                        R12 K28 [Enum.SecurityCapability.Network]
       41 GETIMPORT                        R13 K30 [Enum.SecurityCapability.Physics]
       43 GETIMPORT                        R14 K32 [Enum.SecurityCapability.Players]
       45 GETIMPORT                        R15 K34 [Enum.SecurityCapability.DataStore]
       47 GETIMPORT                        R16 K36 [Enum.SecurityCapability.Environment]
       49 GETIMPORT                        R17 K38 [Enum.SecurityCapability.LegacySound]
       51 GETIMPORT                        R18 K40 [Enum.SecurityCapability.RemoteEvent]
       53 GETIMPORT                        R19 K42 [Enum.SecurityCapability.CreateInstances]
       55 SETLIST                          R3 R4 16 [1]
       57 GETIMPORT                        R4 K44 [Enum.SecurityCapability.RunClientScript]
       59 GETIMPORT                        R5 K46 [Enum.SecurityCapability.RunServerScript]
       61 GETIMPORT                        R6 K48 [Enum.SecurityCapability.AccessOutsideWrite]
       63 GETIMPORT                        R7 K50 [Enum.SecurityCapability.ScriptGlobals]
       65 GETIMPORT                        R8 K52 [Enum.SecurityCapability.AssetRead]
       67 GETIMPORT                        R9 K54 [Enum.SecurityCapability.AssetManagement]
       69 GETIMPORT                        R10 K56 [Enum.SecurityCapability.DynamicGeneration]
       71 GETIMPORT                        R11 K58 [Enum.SecurityCapability.PlatformAvatarEditing]
       73 GETIMPORT                        R12 K60 [Enum.SecurityCapability.AssetCreateUpdate]
       75 GETIMPORT                        R13 K62 [Enum.SecurityCapability.Capture]
       77 GETIMPORT                        R14 K64 [Enum.SecurityCapability.SensitiveInput]
       79 GETIMPORT                        R15 K66 [Enum.SecurityCapability.Monetization]
       81 GETIMPORT                        R16 K68 [Enum.SecurityCapability.LoadOwnedAsset]
       83 GETIMPORT                        R17 K70 [Enum.SecurityCapability.Social]
       85 GETIMPORT                        R18 K72 [Enum.SecurityCapability.ServerCommunication]
       87 GETIMPORT                        R19 K74 [Enum.SecurityCapability.Logging]
       89 SETLIST                          R3 R4 16 [17]
       91 GETIMPORT                        R4 K76 [Enum.SecurityCapability.PromptExternalPurchase]
       93 GETIMPORT                        R5 K78 [Enum.SecurityCapability.Groups]
       95 GETIMPORT                        R6 K80 [Enum.SecurityCapability.Teleport]
       97 GETIMPORT                        R7 K82 [Enum.SecurityCapability.Consequences]
       99 GETIMPORT                        R8 K84 [Enum.SecurityCapability.Material]
      101 GETIMPORT                        R9 K86 [Enum.SecurityCapability.AvatarBehavior]
      103 SETLIST                          R3 R4 6 [33]
      105 NEWTABLE                         R4 0 16
      107 GETIMPORT                        R5 K12 [Enum.SecurityCapability.Animation]
      109 GETIMPORT                        R6 K86 [Enum.SecurityCapability.AvatarBehavior]
      111 GETIMPORT                        R7 K20 [Enum.SecurityCapability.Audio]
      113 GETIMPORT                        R8 K26 [Enum.SecurityCapability.Avatar]
      115 GETIMPORT                        R9 K22 [Enum.SecurityCapability.Basic]
      117 GETIMPORT                        R10 K42 [Enum.SecurityCapability.CreateInstances]
      119 GETIMPORT                        R11 K16 [Enum.SecurityCapability.CSG]
      121 GETIMPORT                        R12 K56 [Enum.SecurityCapability.DynamicGeneration]
      123 GETIMPORT                        R13 K74 [Enum.SecurityCapability.Logging]
      125 GETIMPORT                        R14 K24 [Enum.SecurityCapability.Input]
      127 GETIMPORT                        R15 K38 [Enum.SecurityCapability.LegacySound]
      129 GETIMPORT                        R16 K84 [Enum.SecurityCapability.Material]
      131 GETIMPORT                        R17 K30 [Enum.SecurityCapability.Physics]
      133 GETIMPORT                        R18 K44 [Enum.SecurityCapability.RunClientScript]
      135 GETIMPORT                        R19 K46 [Enum.SecurityCapability.RunServerScript]
      137 GETIMPORT                        R20 K14 [Enum.SecurityCapability.UI]
      139 SETLIST                          R4 R5 16 [1]
      141 MOVE                             R5 R2
      142 CALL                             R5 0 1
      143 JUMPIFNOT                        R5 ; [+12]
      144 GETIMPORT                        R5 K89 [table.find]
      146 MOVE                             R6 R3
      147 GETIMPORT                        R7 K68 [Enum.SecurityCapability.LoadOwnedAsset]
      149 CALL                             R5 2 1
      150 JUMPIFNOT                        R5 ; [+5]
      151 GETIMPORT                        R6 K91 [table.remove]
      153 MOVE                             R7 R3
      154 MOVE                             R8 R5
      155 CALL                             R6 2 0
      156 GETIMPORT                        R5 K94 [Instance.new]
      158 LOADK                            R6 K95 ["Folder"]
      159 CALL                             R5 1 1
      160 GETTABLEKS                       R6 R5 K96 ["Capabilities"]
      162 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
      163 MOVE                             R9 R3
      164 GETIMPORT                        R8 K98 [unpack]
      166 CALL                             R8 1 -1
      167 NAMECALL                         R6 R6 K99 ["Add"]
      169 CALL                             R6 -1 1
      170 GETIMPORT                        R7 K101 [SecurityCapabilities.new]
      172 FASTCALL1                        TABLE_UNPACK R4 ; [+3]
      173 MOVE                             R9 R4
      174 GETIMPORT                        R8 K98 [unpack]
      176 CALL                             R8 1 -1
      177 CALL                             R7 -1 1
      178 DUPCLOSURE                       R8 K102 [PROTO_0]
      179 DUPCLOSURE                       R9 K103 [PROTO_2]
      180 CAPTURE                          VAL R7
      181 DUPCLOSURE                       R10 K104 [PROTO_5]
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R9
      186 DUPTABLE                         R11 K107 [{"applySandboxIfNeeded", "_testing"}]
      187 SETTABLEKS                       R10 R11 K105 ["applySandboxIfNeeded"]
      189 DUPTABLE                         R12 K112 [{"BASIC_CAPABILITIES", "PROCEDURAL_CAPABILITIES", "treeContainsScriptsOrPartOps", "sandboxProceduralModels"}]
      190 SETTABLEKS                       R3 R12 K108 ["BASIC_CAPABILITIES"]
      192 SETTABLEKS                       R4 R12 K109 ["PROCEDURAL_CAPABILITIES"]
      194 SETTABLEKS                       R8 R12 K110 ["treeContainsScriptsOrPartOps"]
      196 SETTABLEKS                       R9 R12 K111 ["sandboxProceduralModels"]
      198 SETTABLEKS                       R12 R11 K106 ["_testing"]
      200 RETURN                           R11 1
