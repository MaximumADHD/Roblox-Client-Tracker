PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CapabilitiesChanged"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SandboxChanged"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 LOADB                            R2 0
        1 MOVE                             R3 R0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 LOADK                            R10 K0 ["LuaSourceContainer"]
        6 NAMECALL                         R8 R7 K1 ["IsA"]
        8 CALL                             R8 2 1
        9 JUMPIFNOT                        R8 ; [+2]
       10 LOADB                            R2 1
       11 JUMP                             ; [+16]
       12 NAMECALL                         R8 R7 K2 ["GetDescendants"]
       14 CALL                             R8 1 3
       15 FORGPREP                         R8
       16 LOADK                            R15 K0 ["LuaSourceContainer"]
       17 NAMECALL                         R13 R12 K1 ["IsA"]
       19 CALL                             R13 2 1
       20 JUMPIFNOT                        R13 ; [+2]
       21 LOADB                            R2 1
       22 JUMP                             ; [+2]
       23 FORGLOOP                         R8 2 ; [-8]
       25 JUMPIF                           R2 ; [+2]
       26 FORGLOOP                         R3 2 ; [-22]
       28 JUMPIF                           R2 ; [+1]
       29 RETURN                           R0 0
       30 MOVE                             R3 R0
       31 LOADNIL                          R4
       32 LOADNIL                          R5
       33 FORGPREP                         R3
       34 LOADK                            R10 K3 ["Model"]
       35 NAMECALL                         R8 R7 K1 ["IsA"]
       37 CALL                             R8 2 1
       38 JUMPIF                           R8 ; [+10]
       39 LOADK                            R10 K4 ["Folder"]
       40 NAMECALL                         R8 R7 K1 ["IsA"]
       42 CALL                             R8 2 1
       43 JUMPIF                           R8 ; [+5]
       44 LOADK                            R10 K0 ["LuaSourceContainer"]
       45 NAMECALL                         R8 R7 K1 ["IsA"]
       47 CALL                             R8 2 1
       48 JUMPIFNOT                        R8 ; [+6]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R8 R9 K5 ["SetCapabilitiesAndSandboxForInstance"]
       52 MOVE                             R9 R7
       53 MOVE                             R10 R1
       54 CALL                             R8 2 0
       55 NAMECALL                         R8 R7 K6 ["GetChildren"]
       57 CALL                             R8 1 3
       58 FORGPREP                         R8
       59 NEWTABLE                         R13 0 1
       61 MOVE                             R14 R12
       62 SETLIST                          R13 R14 1 [1]
       64 LENGTH                           R14 R13
       65 LOADN                            R15 0
       66 JUMPIFNOTLT                      R15 R14 ; [+41]
       68 GETIMPORT                        R14 K9 [table.remove]
       70 MOVE                             R15 R13
       71 LOADN                            R16 1
       72 CALL                             R14 2 1
       73 LOADK                            R17 K3 ["Model"]
       74 NAMECALL                         R15 R14 K1 ["IsA"]
       76 CALL                             R15 2 1
       77 JUMPIF                           R15 ; [+10]
       78 LOADK                            R17 K4 ["Folder"]
       79 NAMECALL                         R15 R14 K1 ["IsA"]
       81 CALL                             R15 2 1
       82 JUMPIF                           R15 ; [+5]
       83 LOADK                            R17 K0 ["LuaSourceContainer"]
       84 NAMECALL                         R15 R14 K1 ["IsA"]
       86 CALL                             R15 2 1
       87 JUMPIFNOT                        R15 ; [+6]
       88 GETUPVAL                         R16 0
       89 GETTABLEKS                       R15 R16 K5 ["SetCapabilitiesAndSandboxForInstance"]
       91 MOVE                             R16 R14
       92 MOVE                             R17 R1
       93 CALL                             R15 2 0
       94 NAMECALL                         R15 R14 K6 ["GetChildren"]
       96 CALL                             R15 1 3
       97 FORGPREP                         R15
       98 FASTCALL2                        TABLE_INSERT R13 R19 ; [+5]
      100 MOVE                             R21 R13
      101 MOVE                             R22 R19
      102 GETIMPORT                        R20 K11 [table.insert]
      104 CALL                             R20 2 0
      105 FORGLOOP                         R15 2 ; [-8]
      107 JUMPBACK                         ; [-44]
      108 FORGLOOP                         R8 2 ; [-50]
      110 FORGLOOP                         R3 2 ; [-77]
      112 RETURN                           R0 0

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
       38 MOVE                             R4 R3
       39 CALL                             R4 0 1
       40 JUMPIFNOT                        R4 ; [+141]
       41 NEWTABLE                         R4 8 0
       43 NEWTABLE                         R5 0 38
       45 GETIMPORT                        R6 K15 [Enum.SecurityCapability.Animation]
       47 GETIMPORT                        R7 K17 [Enum.SecurityCapability.UI]
       49 GETIMPORT                        R8 K19 [Enum.SecurityCapability.CSG]
       51 GETIMPORT                        R9 K21 [Enum.SecurityCapability.Chat]
       53 GETIMPORT                        R10 K23 [Enum.SecurityCapability.Audio]
       55 GETIMPORT                        R11 K25 [Enum.SecurityCapability.Basic]
       57 GETIMPORT                        R12 K27 [Enum.SecurityCapability.Input]
       59 GETIMPORT                        R13 K29 [Enum.SecurityCapability.Avatar]
       61 GETIMPORT                        R14 K31 [Enum.SecurityCapability.Network]
       63 GETIMPORT                        R15 K33 [Enum.SecurityCapability.Physics]
       65 GETIMPORT                        R16 K35 [Enum.SecurityCapability.Players]
       67 GETIMPORT                        R17 K37 [Enum.SecurityCapability.DataStore]
       69 GETIMPORT                        R18 K39 [Enum.SecurityCapability.Environment]
       71 GETIMPORT                        R19 K41 [Enum.SecurityCapability.LegacySound]
       73 GETIMPORT                        R20 K43 [Enum.SecurityCapability.RemoteEvent]
       75 GETIMPORT                        R21 K45 [Enum.SecurityCapability.CreateInstances]
       77 SETLIST                          R5 R6 16 [1]
       79 GETIMPORT                        R6 K47 [Enum.SecurityCapability.RunClientScript]
       81 GETIMPORT                        R7 K49 [Enum.SecurityCapability.RunServerScript]
       83 GETIMPORT                        R8 K51 [Enum.SecurityCapability.AccessOutsideWrite]
       85 GETIMPORT                        R9 K53 [Enum.SecurityCapability.ScriptGlobals]
       87 GETIMPORT                        R10 K55 [Enum.SecurityCapability.AssetRead]
       89 GETIMPORT                        R11 K57 [Enum.SecurityCapability.AssetManagement]
       91 GETIMPORT                        R12 K59 [Enum.SecurityCapability.DynamicGeneration]
       93 GETIMPORT                        R13 K61 [Enum.SecurityCapability.PlatformAvatarEditing]
       95 GETIMPORT                        R14 K63 [Enum.SecurityCapability.AssetCreateUpdate]
       97 GETIMPORT                        R15 K65 [Enum.SecurityCapability.Capture]
       99 GETIMPORT                        R16 K67 [Enum.SecurityCapability.SensitiveInput]
      101 GETIMPORT                        R17 K69 [Enum.SecurityCapability.Monetization]
      103 GETIMPORT                        R18 K71 [Enum.SecurityCapability.LoadOwnedAsset]
      105 GETIMPORT                        R19 K73 [Enum.SecurityCapability.Social]
      107 GETIMPORT                        R20 K75 [Enum.SecurityCapability.ServerCommunication]
      109 GETIMPORT                        R21 K77 [Enum.SecurityCapability.Logging]
      111 SETLIST                          R5 R6 16 [17]
      113 GETIMPORT                        R6 K79 [Enum.SecurityCapability.PromptExternalPurchase]
      115 GETIMPORT                        R7 K81 [Enum.SecurityCapability.Groups]
      117 GETIMPORT                        R8 K83 [Enum.SecurityCapability.Teleport]
      119 GETIMPORT                        R9 K85 [Enum.SecurityCapability.Consequences]
      121 GETIMPORT                        R10 K87 [Enum.SecurityCapability.Material]
      123 GETIMPORT                        R11 K89 [Enum.SecurityCapability.AvatarBehavior]
      125 SETLIST                          R5 R6 6 [33]
      127 GETIMPORT                        R6 K90 [Enum.SecurityCapability]
      129 NAMECALL                         R6 R6 K91 ["GetEnumItems"]
      131 CALL                             R6 1 1
      132 GETIMPORT                        R7 K94 [Instance.new]
      134 LOADK                            R8 K95 ["Folder"]
      135 CALL                             R7 1 1
      136 GETTABLEKS                       R8 R7 K96 ["Capabilities"]
      138 FASTCALL1                        TABLE_UNPACK R5 ; [+3]
      139 MOVE                             R11 R5
      140 GETIMPORT                        R10 K98 [unpack]
      142 CALL                             R10 1 -1
      143 NAMECALL                         R8 R8 K99 ["Add"]
      145 CALL                             R8 -1 1
      146 DUPCLOSURE                       R9 K100 [PROTO_0]
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R8
      149 SETTABLEKS                       R9 R4 K101 ["GetBasicCapabilities"]
      151 DUPCLOSURE                       R9 K102 [PROTO_1]
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R8
      154 SETTABLEKS                       R9 R4 K103 ["GetCapabilitiesDelta"]
      156 DUPCLOSURE                       R9 K104 [PROTO_2]
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R1
      160 SETTABLEKS                       R9 R4 K105 ["CapabilitiesChanged"]
      162 DUPCLOSURE                       R9 K106 [PROTO_3]
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R1
      166 SETTABLEKS                       R9 R4 K107 ["SandboxChanged"]
      168 DUPCLOSURE                       R9 K108 [PROTO_6]
      169 CAPTURE                          VAL R4
      170 SETTABLEKS                       R9 R4 K109 ["SetTelemetryForInstance"]
      172 DUPCLOSURE                       R9 K110 [PROTO_7]
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R4
      175 SETTABLEKS                       R9 R4 K111 ["SetCapabilitiesAndSandboxForInstance"]
      177 DUPCLOSURE                       R9 K112 [PROTO_8]
      178 CAPTURE                          VAL R4
      179 SETTABLEKS                       R9 R4 K113 ["SetCapabilitiesAndSandboxForModel"]
      181 RETURN                           R4 1
      182 NEWTABLE                         R4 0 0
      184 RETURN                           R4 1
