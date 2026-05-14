PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_capabilitiesHandlerComponent"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 LOADK                            R4 K1 ["CapabilitiesHandler"]
        7 NAMECALL                         R2 R0 K2 ["GetPluginComponent"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K0 ["_capabilitiesHandlerComponent"]
       12 RETURN                           R0 0

PROTO_1:
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
       41 GETTABLEKS                       R4 R4 K4 ["setUpCapabilitiesHandlerComponent"]
       43 MOVE                             R5 R2
       44 CALL                             R4 1 0
       45 MOVE                             R4 R0
       46 LOADNIL                          R5
       47 LOADNIL                          R6
       48 FORGPREP                         R4
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K5 ["_capabilitiesHandlerComponent"]
       52 MOVE                             R11 R8
       53 GETUPVAL                         R12 1
       54 NAMECALL                         R9 R9 K6 ["SetUpCapabilitiesForTreeAsync"]
       56 CALL                             R9 3 0
       57 FORGLOOP                         R4 2 ; [-9]
       59 GETUPVAL                         R4 2
       60 CALL                             R4 0 1
       61 JUMPIFNOT                        R4 ; [+3]
       62 GETUPVAL                         R4 3
       63 MOVE                             R5 R0
       64 CALL                             R4 1 0
       65 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Inserts"]
       15 GETTABLEKS                       R2 R2 K9 ["sandboxProceduralModels"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K10 ["SharedFlags"]
       26 GETTABLEKS                       R3 R3 K11 ["getFFlagToolboxCapabilities"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K7 ["Util"]
       35 GETTABLEKS                       R4 R4 K10 ["SharedFlags"]
       37 GETTABLEKS                       R4 R4 K12 ["getFFlagToolboxSandboxProceduralModels"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K6 ["Src"]
       44 GETTABLEKS                       R5 R5 K7 ["Util"]
       46 GETTABLEKS                       R5 R5 K10 ["SharedFlags"]
       48 GETTABLEKS                       R5 R5 K13 ["getFFlagToolboxRemoveLoadOwnedAsset"]
       50 CALL                             R4 1 1
       51 MOVE                             R5 R2
       52 CALL                             R5 0 1
       53 JUMPIFNOT                        R5 ; [+130]
       54 NEWTABLE                         R5 4 0
       56 NEWTABLE                         R6 0 38
       58 GETIMPORT                        R7 K17 [Enum.SecurityCapability.Animation]
       60 GETIMPORT                        R8 K19 [Enum.SecurityCapability.UI]
       62 GETIMPORT                        R9 K21 [Enum.SecurityCapability.CSG]
       64 GETIMPORT                        R10 K23 [Enum.SecurityCapability.Chat]
       66 GETIMPORT                        R11 K25 [Enum.SecurityCapability.Audio]
       68 GETIMPORT                        R12 K27 [Enum.SecurityCapability.Basic]
       70 GETIMPORT                        R13 K29 [Enum.SecurityCapability.Input]
       72 GETIMPORT                        R14 K31 [Enum.SecurityCapability.Avatar]
       74 GETIMPORT                        R15 K33 [Enum.SecurityCapability.Network]
       76 GETIMPORT                        R16 K35 [Enum.SecurityCapability.Physics]
       78 GETIMPORT                        R17 K37 [Enum.SecurityCapability.Players]
       80 GETIMPORT                        R18 K39 [Enum.SecurityCapability.DataStore]
       82 GETIMPORT                        R19 K41 [Enum.SecurityCapability.Environment]
       84 GETIMPORT                        R20 K43 [Enum.SecurityCapability.LegacySound]
       86 GETIMPORT                        R21 K45 [Enum.SecurityCapability.RemoteEvent]
       88 GETIMPORT                        R22 K47 [Enum.SecurityCapability.CreateInstances]
       90 SETLIST                          R6 R7 16 [1]
       92 GETIMPORT                        R7 K49 [Enum.SecurityCapability.RunClientScript]
       94 GETIMPORT                        R8 K51 [Enum.SecurityCapability.RunServerScript]
       96 GETIMPORT                        R9 K53 [Enum.SecurityCapability.AccessOutsideWrite]
       98 GETIMPORT                        R10 K55 [Enum.SecurityCapability.ScriptGlobals]
      100 GETIMPORT                        R11 K57 [Enum.SecurityCapability.AssetRead]
      102 GETIMPORT                        R12 K59 [Enum.SecurityCapability.AssetManagement]
      104 GETIMPORT                        R13 K61 [Enum.SecurityCapability.DynamicGeneration]
      106 GETIMPORT                        R14 K63 [Enum.SecurityCapability.PlatformAvatarEditing]
      108 GETIMPORT                        R15 K65 [Enum.SecurityCapability.AssetCreateUpdate]
      110 GETIMPORT                        R16 K67 [Enum.SecurityCapability.Capture]
      112 GETIMPORT                        R17 K69 [Enum.SecurityCapability.SensitiveInput]
      114 GETIMPORT                        R18 K71 [Enum.SecurityCapability.Monetization]
      116 GETIMPORT                        R19 K73 [Enum.SecurityCapability.LoadOwnedAsset]
      118 GETIMPORT                        R20 K75 [Enum.SecurityCapability.Social]
      120 GETIMPORT                        R21 K77 [Enum.SecurityCapability.ServerCommunication]
      122 GETIMPORT                        R22 K79 [Enum.SecurityCapability.Logging]
      124 SETLIST                          R6 R7 16 [17]
      126 GETIMPORT                        R7 K81 [Enum.SecurityCapability.PromptExternalPurchase]
      128 GETIMPORT                        R8 K83 [Enum.SecurityCapability.Groups]
      130 GETIMPORT                        R9 K85 [Enum.SecurityCapability.Teleport]
      132 GETIMPORT                        R10 K87 [Enum.SecurityCapability.Consequences]
      134 GETIMPORT                        R11 K89 [Enum.SecurityCapability.Material]
      136 GETIMPORT                        R12 K91 [Enum.SecurityCapability.AvatarBehavior]
      138 SETLIST                          R6 R7 6 [33]
      140 MOVE                             R7 R4
      141 CALL                             R7 0 1
      142 JUMPIFNOT                        R7 ; [+12]
      143 GETIMPORT                        R7 K94 [table.find]
      145 MOVE                             R8 R6
      146 GETIMPORT                        R9 K73 [Enum.SecurityCapability.LoadOwnedAsset]
      148 CALL                             R7 2 1
      149 JUMPIFNOT                        R7 ; [+5]
      150 GETIMPORT                        R8 K96 [table.remove]
      152 MOVE                             R9 R6
      153 MOVE                             R10 R7
      154 CALL                             R8 2 0
      155 GETIMPORT                        R7 K99 [Instance.new]
      157 LOADK                            R8 K100 ["Folder"]
      158 CALL                             R7 1 1
      159 GETTABLEKS                       R8 R7 K101 ["Capabilities"]
      161 FASTCALL1                        TABLE_UNPACK R6 ; [+3]
      162 MOVE                             R11 R6
      163 GETIMPORT                        R10 K103 [unpack]
      165 CALL                             R10 1 -1
      166 NAMECALL                         R8 R8 K104 ["Add"]
      168 CALL                             R8 -1 1
      169 LOADNIL                          R9
      170 SETTABLEKS                       R9 R5 K105 ["_capabilitiesHandlerComponent"]
      172 DUPCLOSURE                       R9 K106 [PROTO_0]
      173 CAPTURE                          VAL R5
      174 SETTABLEKS                       R9 R5 K107 ["setUpCapabilitiesHandlerComponent"]
      176 DUPCLOSURE                       R9 K108 [PROTO_1]
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R1
      181 SETTABLEKS                       R9 R5 K109 ["SetCapabilitiesAndSandboxForModel"]
      183 RETURN                           R5 1
      184 NEWTABLE                         R5 0 0
      186 RETURN                           R5 1
