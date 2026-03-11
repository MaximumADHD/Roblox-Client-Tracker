PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_capabilitiesHandlerComponent"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 LOADK                            R4 K1 ["CapabilitiesHandler"]
        7 NAMECALL                         R2 R0 K2 ["GetPluginComponent"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K0 ["_capabilitiesHandlerComponent"]
       12 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 GETUPVAL                         R6 1
        8 MOVE                             R8 R5
        9 NAMECALL                         R6 R6 K2 ["Contains"]
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+7]
       13 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       15 MOVE                             R7 R0
       16 MOVE                             R8 R5
       17 GETIMPORT                        R6 K5 [table.insert]
       19 CALL                             R6 2 0
       20 FORGLOOP                         R1 2 ; [-14]
       22 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 GETIMPORT                        R4 K1 [pairs]
        8 GETUPVAL                         R5 0
        9 CALL                             R4 1 3
       10 FORGPREP_NEXT                    R4
       11 GETUPVAL                         R9 1
       12 MOVE                             R11 R8
       13 NAMECALL                         R9 R9 K2 ["Contains"]
       15 CALL                             R9 2 1
       16 MOVE                             R12 R8
       17 NAMECALL                         R10 R0 K2 ["Contains"]
       19 CALL                             R10 2 1
       20 JUMPIFNOT                        R10 ; [+9]
       21 JUMPIF                           R9 ; [+8]
       22 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       24 MOVE                             R12 R1
       25 MOVE                             R13 R8
       26 GETIMPORT                        R11 K5 [table.insert]
       28 CALL                             R11 2 0
       29 JUMP                             ; [+9]
       30 JUMPIFNOT                        R9 ; [+8]
       31 JUMPIF                           R10 ; [+7]
       32 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       34 MOVE                             R12 R2
       35 MOVE                             R13 R8
       36 GETIMPORT                        R11 K5 [table.insert]
       38 CALL                             R11 2 0
       39 JUMPIFNOT                        R10 ; [+7]
       40 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       42 MOVE                             R12 R3
       43 MOVE                             R13 R8
       44 GETIMPORT                        R11 K5 [table.insert]
       46 CALL                             R11 2 0
       47 FORGLOOP                         R4 2 ; [-37]
       49 RETURN                           R1 3

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["GetCapabilitiesDelta"]
        3 GETTABLEKS                       R4 R0 K1 ["Capabilities"]
        5 CALL                             R3 1 3
        6 GETUPVAL                         R7 1
        7 CALL                             R7 0 1
        8 JUMPIFNOT                        R7 ; [+2]
        9 LOADNIL                          R6
       10 JUMP                             ; [+2]
       11 GETTABLEKS                       R6 R0 K2 ["UniqueId"]
       13 GETUPVAL                         R8 2
       14 GETTABLEKS                       R7 R8 K3 ["StoreAssetCapabilitiesChanged"]
       16 MOVE                             R8 R1
       17 MOVE                             R9 R3
       18 MOVE                             R10 R4
       19 MOVE                             R11 R5
       20 GETTABLEKS                       R12 R0 K4 ["Sandboxed"]
       22 MOVE                             R13 R6
       23 NAMECALL                         R14 R0 K5 ["GetFullName"]
       25 CALL                             R14 1 1
       26 MOVE                             R15 R2
       27 CALL                             R7 8 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["GetCapabilitiesDelta"]
        3 GETTABLEKS                       R4 R0 K1 ["Capabilities"]
        5 CALL                             R3 1 3
        6 GETUPVAL                         R7 1
        7 CALL                             R7 0 1
        8 JUMPIFNOT                        R7 ; [+2]
        9 LOADNIL                          R6
       10 JUMP                             ; [+2]
       11 GETTABLEKS                       R6 R0 K2 ["UniqueId"]
       13 GETUPVAL                         R8 2
       14 GETTABLEKS                       R7 R8 K3 ["StoreAssetSandboxChanged"]
       16 MOVE                             R8 R1
       17 MOVE                             R9 R3
       18 MOVE                             R10 R4
       19 MOVE                             R11 R5
       20 GETTABLEKS                       R12 R0 K4 ["Sandboxed"]
       22 MOVE                             R13 R6
       23 NAMECALL                         R14 R0 K5 ["GetFullName"]
       25 CALL                             R14 1 1
       26 MOVE                             R15 R2
       27 CALL                             R7 8 0
       28 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CapabilitiesChanged"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SandboxChanged"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R5 K0 ["Capabilities"]
        1 NAMECALL                         R3 R0 K1 ["GetPropertyChangedSignal"]
        3 CALL                             R3 2 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 NAMECALL                         R3 R3 K2 ["Connect"]
       11 CALL                             R3 2 0
       12 LOADK                            R5 K3 ["Sandboxed"]
       13 NAMECALL                         R3 R0 K1 ["GetPropertyChangedSignal"]
       15 CALL                             R3 2 1
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 NAMECALL                         R3 R3 K2 ["Connect"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R2 R0 K0 ["Capabilities"]
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R0 K1 ["Sandboxed"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["SetTelemetryForInstance"]
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 LOADK                            R5 K3 ["ToolboxInsert"]
       12 CALL                             R2 3 0
       13 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+29]
        5 LOADK                            R3 K2 ["Folder"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+24]
       10 LOADK                            R3 K3 ["LuaSourceContainer"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+19]
       15 LOADK                            R3 K4 ["BindableEvent"]
       16 NAMECALL                         R1 R0 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIF                           R1 ; [+14]
       20 LOADK                            R3 K5 ["BindableFunction"]
       21 NAMECALL                         R1 R0 K1 ["IsA"]
       23 CALL                             R1 2 1
       24 JUMPIF                           R1 ; [+9]
       25 LOADK                            R3 K6 ["RemoteFunction"]
       26 NAMECALL                         R1 R0 K1 ["IsA"]
       28 CALL                             R1 2 1
       29 JUMPIF                           R1 ; [+4]
       30 LOADK                            R3 K7 ["BaseRemoteEvent"]
       31 NAMECALL                         R1 R0 K1 ["IsA"]
       33 CALL                             R1 2 1
       34 RETURN                           R1 1

PROTO_10:
        0 LOADB                            R3 0
        1 MOVE                             R4 R0
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 LOADK                            R11 K0 ["LuaSourceContainer"]
        6 NAMECALL                         R9 R8 K1 ["IsA"]
        8 CALL                             R9 2 1
        9 JUMPIF                           R9 ; [+5]
       10 LOADK                            R11 K2 ["PartOperation"]
       11 NAMECALL                         R9 R8 K1 ["IsA"]
       13 CALL                             R9 2 1
       14 JUMPIFNOT                        R9 ; [+2]
       15 LOADB                            R3 1
       16 JUMP                             ; [+21]
       17 NAMECALL                         R9 R8 K3 ["GetDescendants"]
       19 CALL                             R9 1 3
       20 FORGPREP                         R9
       21 LOADK                            R16 K0 ["LuaSourceContainer"]
       22 NAMECALL                         R14 R13 K1 ["IsA"]
       24 CALL                             R14 2 1
       25 JUMPIF                           R14 ; [+5]
       26 LOADK                            R16 K2 ["PartOperation"]
       27 NAMECALL                         R14 R13 K1 ["IsA"]
       29 CALL                             R14 2 1
       30 JUMPIFNOT                        R14 ; [+2]
       31 LOADB                            R3 1
       32 JUMP                             ; [+2]
       33 FORGLOOP                         R9 2 ; [-13]
       35 JUMPIF                           R3 ; [+2]
       36 FORGLOOP                         R4 2 ; [-32]
       38 JUMPIF                           R3 ; [+1]
       39 RETURN                           R0 0
       40 GETUPVAL                         R4 0
       41 CALL                             R4 0 1
       42 JUMPIFNOT                        R4 ; [+20]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R4 R5 K4 ["setUpCapabilitiesHandlerComponent"]
       46 MOVE                             R5 R2
       47 CALL                             R4 1 0
       48 MOVE                             R4 R0
       49 LOADNIL                          R5
       50 LOADNIL                          R6
       51 FORGPREP                         R4
       52 GETUPVAL                         R10 1
       53 GETTABLEKS                       R9 R10 K5 ["_capabilitiesHandlerComponent"]
       55 MOVE                             R11 R8
       56 GETUPVAL                         R12 2
       57 NAMECALL                         R9 R9 K6 ["SetUpCapabilitiesForTreeAsync"]
       59 CALL                             R9 3 0
       60 FORGLOOP                         R4 2 ; [-9]
       62 RETURN                           R0 0
       63 MOVE                             R4 R0
       64 LOADNIL                          R5
       65 LOADNIL                          R6
       66 FORGPREP                         R4
       67 GETUPVAL                         R10 1
       68 GETTABLEKS                       R9 R10 K7 ["IsRelevantInstanceType"]
       70 MOVE                             R10 R8
       71 CALL                             R9 1 1
       72 JUMPIFNOT                        R9 ; [+6]
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R9 R10 K8 ["SetCapabilitiesAndSandboxForInstance"]
       76 MOVE                             R10 R8
       77 MOVE                             R11 R1
       78 CALL                             R9 2 0
       79 NAMECALL                         R9 R8 K9 ["GetChildren"]
       81 CALL                             R9 1 3
       82 FORGPREP                         R9
       83 NEWTABLE                         R14 0 1
       85 MOVE                             R15 R13
       86 SETLIST                          R14 R15 1 [1]
       88 LENGTH                           R15 R14
       89 LOADN                            R16 0
       90 JUMPIFNOTLT                      R16 R15 ; [+32]
       92 GETIMPORT                        R15 K12 [table.remove]
       94 MOVE                             R16 R14
       95 LOADN                            R17 1
       96 CALL                             R15 2 1
       97 GETUPVAL                         R17 1
       98 GETTABLEKS                       R16 R17 K7 ["IsRelevantInstanceType"]
      100 MOVE                             R17 R15
      101 CALL                             R16 1 1
      102 JUMPIFNOT                        R16 ; [+6]
      103 GETUPVAL                         R17 1
      104 GETTABLEKS                       R16 R17 K8 ["SetCapabilitiesAndSandboxForInstance"]
      106 MOVE                             R17 R15
      107 MOVE                             R18 R1
      108 CALL                             R16 2 0
      109 NAMECALL                         R16 R15 K9 ["GetChildren"]
      111 CALL                             R16 1 3
      112 FORGPREP                         R16
      113 FASTCALL2                        TABLE_INSERT R14 R20 ; [+5]
      115 MOVE                             R22 R14
      116 MOVE                             R23 R20
      117 GETIMPORT                        R21 K14 [table.insert]
      119 CALL                             R21 2 0
      120 FORGLOOP                         R16 2 ; [-8]
      122 JUMPBACK                         ; [-35]
      123 FORGLOOP                         R9 2 ; [-41]
      125 FORGLOOP                         R4 2 ; [-59]
      127 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Analytics"]
       15 GETTABLEKS                       R2 R3 K8 ["Analytics"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K7 ["Util"]
       24 GETTABLEKS                       R3 R4 K9 ["isCli"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K7 ["Util"]
       33 GETTABLEKS                       R5 R6 K10 ["SharedFlags"]
       35 GETTABLEKS                       R4 R5 K11 ["getFFlagToolboxCapabilities"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R8 R0 K6 ["Src"]
       42 GETTABLEKS                       R7 R8 K7 ["Util"]
       44 GETTABLEKS                       R6 R7 K10 ["SharedFlags"]
       46 GETTABLEKS                       R5 R6 K12 ["getEngineFeatureCapabilitiesHandler"]
       48 CALL                             R4 1 1
       49 MOVE                             R5 R3
       50 CALL                             R5 0 1
       51 JUMPIFNOT                        R5 ; [+153]
       52 NEWTABLE                         R5 16 0
       54 NEWTABLE                         R6 0 38
       56 GETIMPORT                        R7 K16 [Enum.SecurityCapability.Animation]
       58 GETIMPORT                        R8 K18 [Enum.SecurityCapability.UI]
       60 GETIMPORT                        R9 K20 [Enum.SecurityCapability.CSG]
       62 GETIMPORT                        R10 K22 [Enum.SecurityCapability.Chat]
       64 GETIMPORT                        R11 K24 [Enum.SecurityCapability.Audio]
       66 GETIMPORT                        R12 K26 [Enum.SecurityCapability.Basic]
       68 GETIMPORT                        R13 K28 [Enum.SecurityCapability.Input]
       70 GETIMPORT                        R14 K30 [Enum.SecurityCapability.Avatar]
       72 GETIMPORT                        R15 K32 [Enum.SecurityCapability.Network]
       74 GETIMPORT                        R16 K34 [Enum.SecurityCapability.Physics]
       76 GETIMPORT                        R17 K36 [Enum.SecurityCapability.Players]
       78 GETIMPORT                        R18 K38 [Enum.SecurityCapability.DataStore]
       80 GETIMPORT                        R19 K40 [Enum.SecurityCapability.Environment]
       82 GETIMPORT                        R20 K42 [Enum.SecurityCapability.LegacySound]
       84 GETIMPORT                        R21 K44 [Enum.SecurityCapability.RemoteEvent]
       86 GETIMPORT                        R22 K46 [Enum.SecurityCapability.CreateInstances]
       88 SETLIST                          R6 R7 16 [1]
       90 GETIMPORT                        R7 K48 [Enum.SecurityCapability.RunClientScript]
       92 GETIMPORT                        R8 K50 [Enum.SecurityCapability.RunServerScript]
       94 GETIMPORT                        R9 K52 [Enum.SecurityCapability.AccessOutsideWrite]
       96 GETIMPORT                        R10 K54 [Enum.SecurityCapability.ScriptGlobals]
       98 GETIMPORT                        R11 K56 [Enum.SecurityCapability.AssetRead]
      100 GETIMPORT                        R12 K58 [Enum.SecurityCapability.AssetManagement]
      102 GETIMPORT                        R13 K60 [Enum.SecurityCapability.DynamicGeneration]
      104 GETIMPORT                        R14 K62 [Enum.SecurityCapability.PlatformAvatarEditing]
      106 GETIMPORT                        R15 K64 [Enum.SecurityCapability.AssetCreateUpdate]
      108 GETIMPORT                        R16 K66 [Enum.SecurityCapability.Capture]
      110 GETIMPORT                        R17 K68 [Enum.SecurityCapability.SensitiveInput]
      112 GETIMPORT                        R18 K70 [Enum.SecurityCapability.Monetization]
      114 GETIMPORT                        R19 K72 [Enum.SecurityCapability.LoadOwnedAsset]
      116 GETIMPORT                        R20 K74 [Enum.SecurityCapability.Social]
      118 GETIMPORT                        R21 K76 [Enum.SecurityCapability.ServerCommunication]
      120 GETIMPORT                        R22 K78 [Enum.SecurityCapability.Logging]
      122 SETLIST                          R6 R7 16 [17]
      124 GETIMPORT                        R7 K80 [Enum.SecurityCapability.PromptExternalPurchase]
      126 GETIMPORT                        R8 K82 [Enum.SecurityCapability.Groups]
      128 GETIMPORT                        R9 K84 [Enum.SecurityCapability.Teleport]
      130 GETIMPORT                        R10 K86 [Enum.SecurityCapability.Consequences]
      132 GETIMPORT                        R11 K88 [Enum.SecurityCapability.Material]
      134 GETIMPORT                        R12 K90 [Enum.SecurityCapability.AvatarBehavior]
      136 SETLIST                          R6 R7 6 [33]
      138 GETIMPORT                        R7 K91 [Enum.SecurityCapability]
      140 NAMECALL                         R7 R7 K92 ["GetEnumItems"]
      142 CALL                             R7 1 1
      143 GETIMPORT                        R8 K95 [Instance.new]
      145 LOADK                            R9 K96 ["Folder"]
      146 CALL                             R8 1 1
      147 GETTABLEKS                       R9 R8 K97 ["Capabilities"]
      149 FASTCALL1                        TABLE_UNPACK R6 ; [+3]
      150 MOVE                             R12 R6
      151 GETIMPORT                        R11 K99 [unpack]
      153 CALL                             R11 1 -1
      154 NAMECALL                         R9 R9 K100 ["Add"]
      156 CALL                             R9 -1 1
      157 LOADNIL                          R10
      158 SETTABLEKS                       R10 R5 K101 ["_capabilitiesHandlerComponent"]
      160 DUPCLOSURE                       R10 K102 [PROTO_0]
      161 CAPTURE                          VAL R5
      162 SETTABLEKS                       R10 R5 K103 ["setUpCapabilitiesHandlerComponent"]
      164 DUPCLOSURE                       R10 K104 [PROTO_1]
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R9
      167 SETTABLEKS                       R10 R5 K105 ["GetBasicCapabilities"]
      169 DUPCLOSURE                       R10 K106 [PROTO_2]
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R9
      172 SETTABLEKS                       R10 R5 K107 ["GetCapabilitiesDelta"]
      174 DUPCLOSURE                       R10 K108 [PROTO_3]
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R1
      178 SETTABLEKS                       R10 R5 K109 ["CapabilitiesChanged"]
      180 DUPCLOSURE                       R10 K110 [PROTO_4]
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R1
      184 SETTABLEKS                       R10 R5 K111 ["SandboxChanged"]
      186 DUPCLOSURE                       R10 K112 [PROTO_7]
      187 CAPTURE                          VAL R5
      188 SETTABLEKS                       R10 R5 K113 ["SetTelemetryForInstance"]
      190 DUPCLOSURE                       R10 K114 [PROTO_8]
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R5
      193 SETTABLEKS                       R10 R5 K115 ["SetCapabilitiesAndSandboxForInstance"]
      195 DUPCLOSURE                       R10 K116 [PROTO_9]
      196 SETTABLEKS                       R10 R5 K117 ["IsRelevantInstanceType"]
      198 DUPCLOSURE                       R10 K118 [PROTO_10]
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R9
      202 SETTABLEKS                       R10 R5 K119 ["SetCapabilitiesAndSandboxForModel"]
      204 RETURN                           R5 1
      205 NEWTABLE                         R5 0 0
      207 RETURN                           R5 1
