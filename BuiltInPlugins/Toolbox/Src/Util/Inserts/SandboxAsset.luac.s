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
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["ClassName"]
        3 JUMPIFEQKS                       R2 K1 ["Model"] ; [+35]
        5 LOADK                            R3 K2 ["Folder"]
        6 NAMECALL                         R1 R0 K3 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+29]
       10 LOADK                            R3 K4 ["LuaSourceContainer"]
       11 NAMECALL                         R1 R0 K3 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+24]
       15 LOADK                            R3 K5 ["BindableEvent"]
       16 NAMECALL                         R1 R0 K3 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIF                           R1 ; [+19]
       20 LOADK                            R3 K6 ["BindableFunction"]
       21 NAMECALL                         R1 R0 K3 ["IsA"]
       23 CALL                             R1 2 1
       24 JUMPIF                           R1 ; [+14]
       25 LOADK                            R3 K7 ["RemoteFunction"]
       26 NAMECALL                         R1 R0 K3 ["IsA"]
       28 CALL                             R1 2 1
       29 JUMPIF                           R1 ; [+9]
       30 LOADK                            R3 K8 ["BaseRemoteEvent"]
       31 NAMECALL                         R1 R0 K3 ["IsA"]
       33 CALL                             R1 2 1
       34 JUMPIF                           R1 ; [+4]
       35 LOADK                            R3 K9 ["PartOperation"]
       36 NAMECALL                         R1 R0 K3 ["IsA"]
       38 CALL                             R1 2 1
       39 RETURN                           R1 1

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
       62 JUMP                             ; [+64]
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
      127 GETUPVAL                         R4 3
      128 CALL                             R4 0 1
      129 JUMPIFNOT                        R4 ; [+3]
      130 GETUPVAL                         R4 4
      131 MOVE                             R5 R0
      132 CALL                             R4 1 0
      133 RETURN                           R0 0

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
       33 GETTABLEKS                       R5 R6 K10 ["Inserts"]
       35 GETTABLEKS                       R4 R5 K11 ["sandboxProceduralModels"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R8 R0 K6 ["Src"]
       42 GETTABLEKS                       R7 R8 K7 ["Util"]
       44 GETTABLEKS                       R6 R7 K12 ["SharedFlags"]
       46 GETTABLEKS                       R5 R6 K13 ["getFFlagToolboxCapabilities"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R9 R0 K6 ["Src"]
       53 GETTABLEKS                       R8 R9 K7 ["Util"]
       55 GETTABLEKS                       R7 R8 K12 ["SharedFlags"]
       57 GETTABLEKS                       R6 R7 K14 ["getEngineFeatureCapabilitiesHandler"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K5 [require]
       62 GETTABLEKS                       R10 R0 K6 ["Src"]
       64 GETTABLEKS                       R9 R10 K7 ["Util"]
       66 GETTABLEKS                       R8 R9 K12 ["SharedFlags"]
       68 GETTABLEKS                       R7 R8 K15 ["getFFlagToolboxSandboxProceduralModels"]
       70 CALL                             R6 1 1
       71 MOVE                             R7 R4
       72 CALL                             R7 0 1
       73 JUMPIFNOT                        R7 ; [+155]
       74 NEWTABLE                         R7 16 0
       76 NEWTABLE                         R8 0 38
       78 GETIMPORT                        R9 K19 [Enum.SecurityCapability.Animation]
       80 GETIMPORT                        R10 K21 [Enum.SecurityCapability.UI]
       82 GETIMPORT                        R11 K23 [Enum.SecurityCapability.CSG]
       84 GETIMPORT                        R12 K25 [Enum.SecurityCapability.Chat]
       86 GETIMPORT                        R13 K27 [Enum.SecurityCapability.Audio]
       88 GETIMPORT                        R14 K29 [Enum.SecurityCapability.Basic]
       90 GETIMPORT                        R15 K31 [Enum.SecurityCapability.Input]
       92 GETIMPORT                        R16 K33 [Enum.SecurityCapability.Avatar]
       94 GETIMPORT                        R17 K35 [Enum.SecurityCapability.Network]
       96 GETIMPORT                        R18 K37 [Enum.SecurityCapability.Physics]
       98 GETIMPORT                        R19 K39 [Enum.SecurityCapability.Players]
      100 GETIMPORT                        R20 K41 [Enum.SecurityCapability.DataStore]
      102 GETIMPORT                        R21 K43 [Enum.SecurityCapability.Environment]
      104 GETIMPORT                        R22 K45 [Enum.SecurityCapability.LegacySound]
      106 GETIMPORT                        R23 K47 [Enum.SecurityCapability.RemoteEvent]
      108 GETIMPORT                        R24 K49 [Enum.SecurityCapability.CreateInstances]
      110 SETLIST                          R8 R9 16 [1]
      112 GETIMPORT                        R9 K51 [Enum.SecurityCapability.RunClientScript]
      114 GETIMPORT                        R10 K53 [Enum.SecurityCapability.RunServerScript]
      116 GETIMPORT                        R11 K55 [Enum.SecurityCapability.AccessOutsideWrite]
      118 GETIMPORT                        R12 K57 [Enum.SecurityCapability.ScriptGlobals]
      120 GETIMPORT                        R13 K59 [Enum.SecurityCapability.AssetRead]
      122 GETIMPORT                        R14 K61 [Enum.SecurityCapability.AssetManagement]
      124 GETIMPORT                        R15 K63 [Enum.SecurityCapability.DynamicGeneration]
      126 GETIMPORT                        R16 K65 [Enum.SecurityCapability.PlatformAvatarEditing]
      128 GETIMPORT                        R17 K67 [Enum.SecurityCapability.AssetCreateUpdate]
      130 GETIMPORT                        R18 K69 [Enum.SecurityCapability.Capture]
      132 GETIMPORT                        R19 K71 [Enum.SecurityCapability.SensitiveInput]
      134 GETIMPORT                        R20 K73 [Enum.SecurityCapability.Monetization]
      136 GETIMPORT                        R21 K75 [Enum.SecurityCapability.LoadOwnedAsset]
      138 GETIMPORT                        R22 K77 [Enum.SecurityCapability.Social]
      140 GETIMPORT                        R23 K79 [Enum.SecurityCapability.ServerCommunication]
      142 GETIMPORT                        R24 K81 [Enum.SecurityCapability.Logging]
      144 SETLIST                          R8 R9 16 [17]
      146 GETIMPORT                        R9 K83 [Enum.SecurityCapability.PromptExternalPurchase]
      148 GETIMPORT                        R10 K85 [Enum.SecurityCapability.Groups]
      150 GETIMPORT                        R11 K87 [Enum.SecurityCapability.Teleport]
      152 GETIMPORT                        R12 K89 [Enum.SecurityCapability.Consequences]
      154 GETIMPORT                        R13 K91 [Enum.SecurityCapability.Material]
      156 GETIMPORT                        R14 K93 [Enum.SecurityCapability.AvatarBehavior]
      158 SETLIST                          R8 R9 6 [33]
      160 GETIMPORT                        R9 K94 [Enum.SecurityCapability]
      162 NAMECALL                         R9 R9 K95 ["GetEnumItems"]
      164 CALL                             R9 1 1
      165 GETIMPORT                        R10 K98 [Instance.new]
      167 LOADK                            R11 K99 ["Folder"]
      168 CALL                             R10 1 1
      169 GETTABLEKS                       R11 R10 K100 ["Capabilities"]
      171 FASTCALL1                        TABLE_UNPACK R8 ; [+3]
      172 MOVE                             R14 R8
      173 GETIMPORT                        R13 K102 [unpack]
      175 CALL                             R13 1 -1
      176 NAMECALL                         R11 R11 K103 ["Add"]
      178 CALL                             R11 -1 1
      179 LOADNIL                          R12
      180 SETTABLEKS                       R12 R7 K104 ["_capabilitiesHandlerComponent"]
      182 DUPCLOSURE                       R12 K105 [PROTO_0]
      183 CAPTURE                          VAL R7
      184 SETTABLEKS                       R12 R7 K106 ["setUpCapabilitiesHandlerComponent"]
      186 DUPCLOSURE                       R12 K107 [PROTO_1]
      187 CAPTURE                          VAL R9
      188 CAPTURE                          VAL R11
      189 SETTABLEKS                       R12 R7 K108 ["GetBasicCapabilities"]
      191 DUPCLOSURE                       R12 K109 [PROTO_2]
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R11
      194 SETTABLEKS                       R12 R7 K110 ["GetCapabilitiesDelta"]
      196 DUPCLOSURE                       R12 K111 [PROTO_3]
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R1
      200 SETTABLEKS                       R12 R7 K112 ["CapabilitiesChanged"]
      202 DUPCLOSURE                       R12 K113 [PROTO_4]
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R1
      206 SETTABLEKS                       R12 R7 K114 ["SandboxChanged"]
      208 DUPCLOSURE                       R12 K115 [PROTO_7]
      209 CAPTURE                          VAL R7
      210 SETTABLEKS                       R12 R7 K116 ["SetTelemetryForInstance"]
      212 DUPCLOSURE                       R12 K117 [PROTO_8]
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R7
      215 SETTABLEKS                       R12 R7 K118 ["SetCapabilitiesAndSandboxForInstance"]
      217 DUPCLOSURE                       R12 K119 [PROTO_9]
      218 SETTABLEKS                       R12 R7 K120 ["IsRelevantInstanceType"]
      220 DUPCLOSURE                       R12 K121 [PROTO_10]
      221 CAPTURE                          VAL R5
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R11
      224 CAPTURE                          VAL R6
      225 CAPTURE                          VAL R3
      226 SETTABLEKS                       R12 R7 K122 ["SetCapabilitiesAndSandboxForModel"]
      228 RETURN                           R7 1
      229 NEWTABLE                         R7 0 0
      231 RETURN                           R7 1
