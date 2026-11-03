PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Folder"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R1 R1 K4 ["Capabilities"]
        6 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
        7 MOVE                             R4 R0
        8 GETIMPORT                        R3 K7 [table.unpack]
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R1 K8 ["Add"]
       13 CALL                             R1 -1 -1
       14 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 DUPTABLE                         R0 K2 [{"asset", "generator"}]
        5 NEWTABLE                         R2 0 37
        7 GETIMPORT                        R3 K6 [Enum.SecurityCapability.Animation]
        9 GETIMPORT                        R4 K8 [Enum.SecurityCapability.UI]
       11 GETIMPORT                        R5 K10 [Enum.SecurityCapability.CSG]
       13 GETIMPORT                        R6 K12 [Enum.SecurityCapability.Chat]
       15 GETIMPORT                        R7 K14 [Enum.SecurityCapability.Audio]
       17 GETIMPORT                        R8 K16 [Enum.SecurityCapability.Basic]
       19 GETIMPORT                        R9 K18 [Enum.SecurityCapability.Input]
       21 GETIMPORT                        R10 K20 [Enum.SecurityCapability.Avatar]
       23 GETIMPORT                        R11 K22 [Enum.SecurityCapability.Network]
       25 GETIMPORT                        R12 K24 [Enum.SecurityCapability.Physics]
       27 GETIMPORT                        R13 K26 [Enum.SecurityCapability.Players]
       29 GETIMPORT                        R14 K28 [Enum.SecurityCapability.DataStore]
       31 GETIMPORT                        R15 K30 [Enum.SecurityCapability.Environment]
       33 GETIMPORT                        R16 K32 [Enum.SecurityCapability.LegacySound]
       35 GETIMPORT                        R17 K34 [Enum.SecurityCapability.RemoteEvent]
       37 GETIMPORT                        R18 K36 [Enum.SecurityCapability.CreateInstances]
       39 SETLIST                          R2 R3 16 [1]
       41 GETIMPORT                        R3 K38 [Enum.SecurityCapability.RunClientScript]
       43 GETIMPORT                        R4 K40 [Enum.SecurityCapability.RunServerScript]
       45 GETIMPORT                        R5 K42 [Enum.SecurityCapability.AccessOutsideWrite]
       47 GETIMPORT                        R6 K44 [Enum.SecurityCapability.ScriptGlobals]
       49 GETIMPORT                        R7 K46 [Enum.SecurityCapability.AssetRead]
       51 GETIMPORT                        R8 K48 [Enum.SecurityCapability.AssetManagement]
       53 GETIMPORT                        R9 K50 [Enum.SecurityCapability.DynamicGeneration]
       55 GETIMPORT                        R10 K52 [Enum.SecurityCapability.PlatformAvatarEditing]
       57 GETIMPORT                        R11 K54 [Enum.SecurityCapability.AssetCreateUpdate]
       59 GETIMPORT                        R12 K56 [Enum.SecurityCapability.Capture]
       61 GETIMPORT                        R13 K58 [Enum.SecurityCapability.SensitiveInput]
       63 GETIMPORT                        R14 K60 [Enum.SecurityCapability.Monetization]
       65 GETIMPORT                        R15 K62 [Enum.SecurityCapability.Social]
       67 GETIMPORT                        R16 K64 [Enum.SecurityCapability.ServerCommunication]
       69 GETIMPORT                        R17 K66 [Enum.SecurityCapability.Logging]
       71 GETIMPORT                        R18 K68 [Enum.SecurityCapability.PromptExternalPurchase]
       73 SETLIST                          R2 R3 16 [17]
       75 GETIMPORT                        R3 K70 [Enum.SecurityCapability.Groups]
       77 GETIMPORT                        R4 K72 [Enum.SecurityCapability.Teleport]
       79 GETIMPORT                        R5 K74 [Enum.SecurityCapability.Consequences]
       81 GETIMPORT                        R6 K76 [Enum.SecurityCapability.Material]
       83 GETIMPORT                        R7 K78 [Enum.SecurityCapability.AvatarBehavior]
       85 SETLIST                          R2 R3 5 [33]
       87 GETIMPORT                        R3 K81 [Instance.new]
       89 LOADK                            R4 K82 ["Folder"]
       90 CALL                             R3 1 1
       91 GETTABLEKS                       R3 R3 K83 ["Capabilities"]
       93 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
       94 MOVE                             R6 R2
       95 GETIMPORT                        R5 K86 [table.unpack]
       97 CALL                             R5 1 -1
       98 NAMECALL                         R3 R3 K87 ["Add"]
      100 CALL                             R3 -1 1
      101 MOVE                             R1 R3
      102 SETTABLEKS                       R1 R0 K0 ["asset"]
      104 NEWTABLE                         R2 0 16
      106 GETIMPORT                        R3 K6 [Enum.SecurityCapability.Animation]
      108 GETIMPORT                        R4 K78 [Enum.SecurityCapability.AvatarBehavior]
      110 GETIMPORT                        R5 K14 [Enum.SecurityCapability.Audio]
      112 GETIMPORT                        R6 K20 [Enum.SecurityCapability.Avatar]
      114 GETIMPORT                        R7 K16 [Enum.SecurityCapability.Basic]
      116 GETIMPORT                        R8 K36 [Enum.SecurityCapability.CreateInstances]
      118 GETIMPORT                        R9 K10 [Enum.SecurityCapability.CSG]
      120 GETIMPORT                        R10 K50 [Enum.SecurityCapability.DynamicGeneration]
      122 GETIMPORT                        R11 K66 [Enum.SecurityCapability.Logging]
      124 GETIMPORT                        R12 K18 [Enum.SecurityCapability.Input]
      126 GETIMPORT                        R13 K32 [Enum.SecurityCapability.LegacySound]
      128 GETIMPORT                        R14 K76 [Enum.SecurityCapability.Material]
      130 GETIMPORT                        R15 K24 [Enum.SecurityCapability.Physics]
      132 GETIMPORT                        R16 K38 [Enum.SecurityCapability.RunClientScript]
      134 GETIMPORT                        R17 K40 [Enum.SecurityCapability.RunServerScript]
      136 GETIMPORT                        R18 K8 [Enum.SecurityCapability.UI]
      138 SETLIST                          R2 R3 16 [1]
      140 GETIMPORT                        R3 K81 [Instance.new]
      142 LOADK                            R4 K82 ["Folder"]
      143 CALL                             R3 1 1
      144 GETTABLEKS                       R3 R3 K83 ["Capabilities"]
      146 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      147 MOVE                             R6 R2
      148 GETIMPORT                        R5 K86 [table.unpack]
      150 CALL                             R5 1 -1
      151 NAMECALL                         R3 R3 K87 ["Add"]
      153 CALL                             R3 -1 1
      154 MOVE                             R1 R3
      155 SETTABLEKS                       R1 R0 K1 ["generator"]
      157 SETUPVAL                         R0 0
      158 RETURN                           R0 1

PROTO_2:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADK                            R8 K0 ["LuaSourceContainer"]
        5 NAMECALL                         R6 R5 K1 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIF                           R6 ; [+19]
        9 LOADK                            R8 K2 ["PartOperation"]
       10 NAMECALL                         R6 R5 K1 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIF                           R6 ; [+14]
       14 LOADK                            R8 K0 ["LuaSourceContainer"]
       15 LOADB                            R9 1
       16 NAMECALL                         R6 R5 K3 ["FindFirstChildWhichIsA"]
       18 CALL                             R6 3 1
       19 JUMPIFNOTEQKNIL                  R6 ; [+8]
       21 LOADK                            R8 K2 ["PartOperation"]
       22 LOADB                            R9 1
       23 NAMECALL                         R6 R5 K3 ["FindFirstChildWhichIsA"]
       25 CALL                             R6 3 1
       26 JUMPIFEQKNIL                     R6 ; [+3]
       28 LOADB                            R6 1
       29 RETURN                           R6 1
       30 FORGLOOP                         R1 2 ; [-27]
       32 LOADB                            R1 0
       33 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADK                            R9 K0 ["ProceduralModel"]
        7 NAMECALL                         R7 R6 K1 ["QueryDescendants"]
        9 CALL                             R7 2 1
       10 LOADK                            R10 K0 ["ProceduralModel"]
       11 NAMECALL                         R8 R6 K2 ["IsA"]
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
       17 MOVE                             R9 R7
       18 MOVE                             R10 R6
       19 GETIMPORT                        R8 K5 [table.insert]
       21 CALL                             R8 2 0
       22 MOVE                             R8 R7
       23 LOADNIL                          R9
       24 LOADNIL                          R10
       25 FORGPREP                         R8
       26 GETTABLEKS                       R13 R12 K6 ["Generator"]
       28 JUMPIFNOT                        R13 ; [+4]
       29 GETTABLEKS                       R13 R12 K6 ["Generator"]
       31 LOADB                            R14 1
       32 SETTABLE                         R14 R1 R13
       33 FORGLOOP                         R8 2 ; [-8]
       35 FORGLOOP                         R2 2 ; [-30]
       37 MOVE                             R2 R1
       38 LOADNIL                          R3
       39 LOADNIL                          R4
       40 FORGPREP                         R2
       41 GETUPVAL                         R7 0
       42 CALL                             R7 0 1
       43 GETTABLEKS                       R7 R7 K7 ["generator"]
       45 SETTABLEKS                       R7 R5 K8 ["Capabilities"]
       47 LOADB                            R7 1
       48 SETTABLEKS                       R7 R5 K9 ["Sandboxed"]
       50 LOADK                            R9 K10 ["ModuleScript"]
       51 NAMECALL                         R7 R5 K1 ["QueryDescendants"]
       53 CALL                             R7 2 3
       54 FORGPREP                         R7
       55 GETTABLE                         R12 R1 R11
       56 JUMPIF                           R12 ; [+3]
       57 LOADB                            R12 0
       58 SETTABLEKS                       R12 R11 K9 ["Sandboxed"]
       60 FORGLOOP                         R7 2 ; [-6]
       62 FORGLOOP                         R2 1 ; [-22]
       64 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R2 R0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 MOVE                             R9 R6
       10 GETUPVAL                         R10 1
       11 CALL                             R10 0 1
       12 GETTABLEKS                       R10 R10 K0 ["asset"]
       14 NAMECALL                         R7 R1 K1 ["SetUpCapabilitiesForTreeAsync"]
       16 CALL                             R7 3 0
       17 FORGLOOP                         R2 2 ; [-9]
       19 GETUPVAL                         R2 2
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 LOADNIL                          R1
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          REF R1
        5 DUPCLOSURE                       R3 K1 [PROTO_2]
        6 DUPCLOSURE                       R4 K2 [PROTO_3]
        7 CAPTURE                          VAL R2
        8 DUPCLOSURE                       R5 K3 [PROTO_4]
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R4
       12 CLOSEUPVALS                      R1
       13 RETURN                           R5 1
