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
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K4 ["setUpCapabilitiesHandlerComponent"]
       43 MOVE                             R5 R2
       44 CALL                             R4 1 0
       45 MOVE                             R4 R0
       46 LOADNIL                          R5
       47 LOADNIL                          R6
       48 FORGPREP                         R4
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R9 R10 K5 ["_capabilitiesHandlerComponent"]
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
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Inserts"]
       15 GETTABLEKS                       R2 R3 K9 ["sandboxProceduralModels"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K7 ["Util"]
       24 GETTABLEKS                       R4 R5 K10 ["SharedFlags"]
       26 GETTABLEKS                       R3 R4 K11 ["getFFlagToolboxCapabilities"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Src"]
       33 GETTABLEKS                       R6 R7 K7 ["Util"]
       35 GETTABLEKS                       R5 R6 K10 ["SharedFlags"]
       37 GETTABLEKS                       R4 R5 K12 ["getFFlagToolboxSandboxProceduralModels"]
       39 CALL                             R3 1 1
       40 MOVE                             R4 R2
       41 CALL                             R4 0 1
       42 JUMPIFNOT                        R4 ; [+115]
       43 NEWTABLE                         R4 4 0
       45 NEWTABLE                         R5 0 38
       47 GETIMPORT                        R6 K16 [Enum.SecurityCapability.Animation]
       49 GETIMPORT                        R7 K18 [Enum.SecurityCapability.UI]
       51 GETIMPORT                        R8 K20 [Enum.SecurityCapability.CSG]
       53 GETIMPORT                        R9 K22 [Enum.SecurityCapability.Chat]
       55 GETIMPORT                        R10 K24 [Enum.SecurityCapability.Audio]
       57 GETIMPORT                        R11 K26 [Enum.SecurityCapability.Basic]
       59 GETIMPORT                        R12 K28 [Enum.SecurityCapability.Input]
       61 GETIMPORT                        R13 K30 [Enum.SecurityCapability.Avatar]
       63 GETIMPORT                        R14 K32 [Enum.SecurityCapability.Network]
       65 GETIMPORT                        R15 K34 [Enum.SecurityCapability.Physics]
       67 GETIMPORT                        R16 K36 [Enum.SecurityCapability.Players]
       69 GETIMPORT                        R17 K38 [Enum.SecurityCapability.DataStore]
       71 GETIMPORT                        R18 K40 [Enum.SecurityCapability.Environment]
       73 GETIMPORT                        R19 K42 [Enum.SecurityCapability.LegacySound]
       75 GETIMPORT                        R20 K44 [Enum.SecurityCapability.RemoteEvent]
       77 GETIMPORT                        R21 K46 [Enum.SecurityCapability.CreateInstances]
       79 SETLIST                          R5 R6 16 [1]
       81 GETIMPORT                        R6 K48 [Enum.SecurityCapability.RunClientScript]
       83 GETIMPORT                        R7 K50 [Enum.SecurityCapability.RunServerScript]
       85 GETIMPORT                        R8 K52 [Enum.SecurityCapability.AccessOutsideWrite]
       87 GETIMPORT                        R9 K54 [Enum.SecurityCapability.ScriptGlobals]
       89 GETIMPORT                        R10 K56 [Enum.SecurityCapability.AssetRead]
       91 GETIMPORT                        R11 K58 [Enum.SecurityCapability.AssetManagement]
       93 GETIMPORT                        R12 K60 [Enum.SecurityCapability.DynamicGeneration]
       95 GETIMPORT                        R13 K62 [Enum.SecurityCapability.PlatformAvatarEditing]
       97 GETIMPORT                        R14 K64 [Enum.SecurityCapability.AssetCreateUpdate]
       99 GETIMPORT                        R15 K66 [Enum.SecurityCapability.Capture]
      101 GETIMPORT                        R16 K68 [Enum.SecurityCapability.SensitiveInput]
      103 GETIMPORT                        R17 K70 [Enum.SecurityCapability.Monetization]
      105 GETIMPORT                        R18 K72 [Enum.SecurityCapability.LoadOwnedAsset]
      107 GETIMPORT                        R19 K74 [Enum.SecurityCapability.Social]
      109 GETIMPORT                        R20 K76 [Enum.SecurityCapability.ServerCommunication]
      111 GETIMPORT                        R21 K78 [Enum.SecurityCapability.Logging]
      113 SETLIST                          R5 R6 16 [17]
      115 GETIMPORT                        R6 K80 [Enum.SecurityCapability.PromptExternalPurchase]
      117 GETIMPORT                        R7 K82 [Enum.SecurityCapability.Groups]
      119 GETIMPORT                        R8 K84 [Enum.SecurityCapability.Teleport]
      121 GETIMPORT                        R9 K86 [Enum.SecurityCapability.Consequences]
      123 GETIMPORT                        R10 K88 [Enum.SecurityCapability.Material]
      125 GETIMPORT                        R11 K90 [Enum.SecurityCapability.AvatarBehavior]
      127 SETLIST                          R5 R6 6 [33]
      129 GETIMPORT                        R6 K93 [Instance.new]
      131 LOADK                            R7 K94 ["Folder"]
      132 CALL                             R6 1 1
      133 GETTABLEKS                       R7 R6 K95 ["Capabilities"]
      135 FASTCALL1                        TABLE_UNPACK R5 ; [+3]
      136 MOVE                             R10 R5
      137 GETIMPORT                        R9 K97 [unpack]
      139 CALL                             R9 1 -1
      140 NAMECALL                         R7 R7 K98 ["Add"]
      142 CALL                             R7 -1 1
      143 LOADNIL                          R8
      144 SETTABLEKS                       R8 R4 K99 ["_capabilitiesHandlerComponent"]
      146 DUPCLOSURE                       R8 K100 [PROTO_0]
      147 CAPTURE                          VAL R4
      148 SETTABLEKS                       R8 R4 K101 ["setUpCapabilitiesHandlerComponent"]
      150 DUPCLOSURE                       R8 K102 [PROTO_1]
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R1
      155 SETTABLEKS                       R8 R4 K103 ["SetCapabilitiesAndSandboxForModel"]
      157 RETURN                           R4 1
      158 NEWTABLE                         R4 0 0
      160 RETURN                           R4 1
