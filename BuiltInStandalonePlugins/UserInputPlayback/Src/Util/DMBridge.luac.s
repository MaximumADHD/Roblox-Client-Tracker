PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["Plugin object must exist"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_1:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["Localization object must exist"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["IsPlayMode"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["SetItem"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["IsPlayMode"]
        2 LOADB                            R3 0
        3 NAMECALL                         R0 R0 K1 ["GetItem"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PluginEnabled"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["SetItem"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PluginEnabled"]
        2 LOADB                            R3 0
        3 NAMECALL                         R0 R0 K1 ["GetItem"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["RoduxState"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["SetItem"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RoduxState"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["GetItem"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["SetPluginState"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["Invoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getRoduxState"]
        3 CALL                             R0 0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K1 ["common"]
       10 GETTABLEKS                       R1 R1 K2 ["pluginState"]
       12 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["SetPluginState"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["SaveRecordingDataToDM"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["Invoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["User Input Recordings"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+14]
        7 GETIMPORT                        R1 K4 [Instance.new]
        9 LOADK                            R2 K5 ["Folder"]
       10 CALL                             R1 1 1
       11 MOVE                             R0 R1
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K6 ["RecordingsFolderName"]
       15 SETTABLEKS                       R1 R0 K7 ["Name"]
       17 GETUPVAL                         R1 0
       18 SETTABLEKS                       R1 R0 K8 ["Parent"]
       20 FASTCALL1                        ASSERT R0 ; [+3]
       21 MOVE                             R2 R0
       22 GETIMPORT                        R1 K10 [assert]
       24 CALL                             R1 1 0
       25 LOADK                            R4 K5 ["Folder"]
       26 NAMECALL                         R2 R0 K11 ["IsA"]
       28 CALL                             R2 2 1
       29 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       31 LOADK                            R3 K12 ["ReplicatedStorage.User Input Recordings must be a folder!"]
       32 GETIMPORT                        R1 K10 [assert]
       34 CALL                             R1 2 0
       35 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["HostDataModelType"]
        3 GETIMPORT                        R4 K4 [Enum.StudioDataModelType.Edit]
        5 JUMPIFEQ                         R3 R4 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL1                        ASSERT R2 ; [+2]
       10 GETIMPORT                        R1 K6 [assert]
       12 CALL                             R1 1 0
       13 FASTCALL2K                       ASSERT R0 K7 ; [+5]
       15 MOVE                             R2 R0
       16 LOADK                            R3 K7 ["Must have recording data"]
       17 GETIMPORT                        R1 K6 [assert]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 1
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K8 ["JSONEncode"]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 0
       26 LOADK                            R4 K9 ["OpenSaveRecordingDialog"]
       27 LOADK                            R5 K10 ["EnterNameForRecordingMessage"]
       28 NEWTABLE                         R6 0 1
       30 FASTCALL1                        STRING_LEN R1 ; [+3]
       31 MOVE                             R8 R1
       32 GETIMPORT                        R7 K13 [string.len]
       34 CALL                             R7 1 1
       35 SETLIST                          R6 R7 1 [1]
       37 NAMECALL                         R2 R2 K14 ["Invoke"]
       39 CALL                             R2 4 0
       40 GETIMPORT                        R2 K17 [coroutine.yield]
       42 CALL                             R2 0 1
       43 JUMPIFNOT                        R2 ; [+64]
       44 GETIMPORT                        R3 K20 [Instance.new]
       46 LOADK                            R4 K21 ["StringValue"]
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R1 R3 K22 ["Value"]
       50 GETIMPORT                        R5 K25 [os.date]
       52 LOADK                            R6 K26 ["%x %X"]
       53 CALL                             R5 1 -1
       54 FASTCALL                         TOSTRING ; [+2]
       55 GETIMPORT                        R4 K28 [tostring]
       57 CALL                             R4 -1 1
       58 SETTABLEKS                       R4 R3 K29 ["Name"]
       60 GETUPVAL                         R5 2
       61 LOADK                            R7 K30 ["User Input Recordings"]
       62 NAMECALL                         R5 R5 K31 ["FindFirstChild"]
       64 CALL                             R5 2 1
       65 JUMPIFNOTEQKNIL                  R5 ; [+14]
       67 GETIMPORT                        R6 K20 [Instance.new]
       69 LOADK                            R7 K32 ["Folder"]
       70 CALL                             R6 1 1
       71 MOVE                             R5 R6
       72 GETUPVAL                         R6 3
       73 GETTABLEKS                       R6 R6 K33 ["RecordingsFolderName"]
       75 SETTABLEKS                       R6 R5 K29 ["Name"]
       77 GETUPVAL                         R6 2
       78 SETTABLEKS                       R6 R5 K34 ["Parent"]
       80 FASTCALL1                        ASSERT R5 ; [+3]
       81 MOVE                             R7 R5
       82 GETIMPORT                        R6 K6 [assert]
       84 CALL                             R6 1 0
       85 LOADK                            R9 K32 ["Folder"]
       86 NAMECALL                         R7 R5 K35 ["IsA"]
       88 CALL                             R7 2 1
       89 FASTCALL2K                       ASSERT R7 K36 ; [+4]
       91 LOADK                            R8 K36 ["ReplicatedStorage.User Input Recordings must be a folder!"]
       92 GETIMPORT                        R6 K6 [assert]
       94 CALL                             R6 2 0
       95 MOVE                             R4 R5
       96 SETTABLEKS                       R4 R3 K34 ["Parent"]
       98 FASTCALL1                        STRING_LEN R2 ; [+3]
       99 MOVE                             R5 R2
      100 GETIMPORT                        R4 K13 [string.len]
      102 CALL                             R4 1 1
      103 LOADN                            R5 0
      104 JUMPIFNOTLT                      R5 R4 ; [+3]
      106 SETTABLEKS                       R2 R3 K29 ["Name"]
      108 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SetSavedRecordingName"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["Invoke"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["SetSavedRecordingName"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["Invoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["User Input Recordings"]
        2 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+14]
        7 GETIMPORT                        R3 K4 [Instance.new]
        9 LOADK                            R4 K5 ["Folder"]
       10 CALL                             R3 1 1
       11 MOVE                             R2 R3
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K6 ["RecordingsFolderName"]
       15 SETTABLEKS                       R3 R2 K7 ["Name"]
       17 GETUPVAL                         R3 0
       18 SETTABLEKS                       R3 R2 K8 ["Parent"]
       20 FASTCALL1                        ASSERT R2 ; [+3]
       21 MOVE                             R4 R2
       22 GETIMPORT                        R3 K10 [assert]
       24 CALL                             R3 1 0
       25 LOADK                            R6 K5 ["Folder"]
       26 NAMECALL                         R4 R2 K11 ["IsA"]
       28 CALL                             R4 2 1
       29 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       31 LOADK                            R5 K12 ["ReplicatedStorage.User Input Recordings must be a folder!"]
       32 GETIMPORT                        R3 K10 [assert]
       34 CALL                             R3 2 0
       35 MOVE                             R1 R2
       36 MOVE                             R4 R0
       37 LOADB                            R5 0
       38 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       40 CALL                             R2 3 1
       41 JUMPIF                           R2 ; [+12]
       42 GETIMPORT                        R3 K14 [error]
       44 GETUPVAL                         R4 2
       45 LOADK                            R6 K15 ["AssetDM"]
       46 LOADK                            R7 K16 ["CouldNotFindRecordingMessage"]
       47 DUPTABLE                         R8 K18 [{"name"}]
       48 SETTABLEKS                       R0 R8 K17 ["name"]
       50 NAMECALL                         R4 R4 K19 ["getText"]
       52 CALL                             R4 4 -1
       53 CALL                             R3 -1 0
       54 LOADK                            R6 K20 ["StringValue"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 -1
       58 FASTCALL                         ASSERT ; [+2]
       59 GETIMPORT                        R3 K10 [assert]
       61 CALL                             R3 -1 0
       62 GETTABLEKS                       R3 R2 K21 ["Value"]
       64 FASTCALL1                        ASSERT R3 ; [+3]
       65 MOVE                             R5 R3
       66 GETIMPORT                        R4 K10 [assert]
       68 CALL                             R4 1 0
       69 GETUPVAL                         R4 3
       70 LOADK                            R6 K22 ["PlaybackInfoChanged"]
       71 LOADNIL                          R7
       72 LOADN                            R8 0
       73 LOADN                            R9 0
       74 NAMECALL                         R4 R4 K23 ["Invoke"]
       76 CALL                             R4 5 0
       77 GETUPVAL                         R4 3
       78 LOADK                            R6 K24 ["CurrentPlaybackRecordingDataObj"]
       79 LOADNIL                          R7
       80 NAMECALL                         R4 R4 K25 ["SetItem"]
       82 CALL                             R4 3 0
       83 GETUPVAL                         R4 3
       84 LOADK                            R6 K26 ["CurrentPlaybackRecordingDataStr"]
       85 LOADNIL                          R7
       86 NAMECALL                         R4 R4 K25 ["SetItem"]
       88 CALL                             R4 3 0
       89 GETUPVAL                         R4 4
       90 MOVE                             R6 R3
       91 NAMECALL                         R4 R4 K27 ["JSONDecode"]
       93 CALL                             R4 2 1
       94 GETTABLEKS                       R5 R4 K28 ["additionalMetadata"]
       96 FASTCALL2K                       ASSERT R5 K29 ; [+5]
       98 MOVE                             R7 R5
       99 LOADK                            R8 K29 ["metaData key not found"]
      100 GETIMPORT                        R6 K10 [assert]
      102 CALL                             R6 2 0
      103 GETTABLEKS                       R6 R5 K30 ["resolution"]
      105 FASTCALL2K                       ASSERT R6 K31 ; [+5]
      107 MOVE                             R8 R6
      108 LOADK                            R9 K31 ["resolution key not found"]
      109 GETIMPORT                        R7 K10 [assert]
      111 CALL                             R7 2 0
      112 LENGTH                           R9 R6
      113 JUMPIFEQKN                       R9 K32 [2] ; [+2]
      115 LOADB                            R8 0 +1
      116 LOADB                            R8 1
      117 FASTCALL2K                       ASSERT R8 K33 ; [+4]
      119 LOADK                            R9 K33 ["resolution key invalid"]
      120 GETIMPORT                        R7 K10 [assert]
      122 CALL                             R7 2 0
      123 GETTABLEKS                       R7 R5 K34 ["deviceId"]
      125 FASTCALL2K                       ASSERT R7 K35 ; [+5]
      127 MOVE                             R9 R7
      128 LOADK                            R10 K35 ["deviceId key not found"]
      129 GETIMPORT                        R8 K10 [assert]
      131 CALL                             R8 2 0
      132 GETTABLEKS                       R8 R5 K36 ["orientation"]
      134 FASTCALL2K                       ASSERT R8 K37 ; [+5]
      136 MOVE                             R10 R8
      137 LOADK                            R11 K37 ["orientation key not found"]
      138 GETIMPORT                        R9 K10 [assert]
      140 CALL                             R9 2 0
      141 GETTABLEKS                       R9 R4 K38 ["events"]
      143 FASTCALL2K                       ASSERT R9 K39 ; [+5]
      145 MOVE                             R11 R9
      146 LOADK                            R12 K39 ["events not found"]
      147 GETIMPORT                        R10 K10 [assert]
      149 CALL                             R10 2 0
      150 GETTABLEKS                       R10 R4 K40 ["duration"]
      152 FASTCALL2K                       ASSERT R10 K41 ; [+5]
      154 MOVE                             R12 R10
      155 LOADK                            R13 K41 ["duration not found"]
      156 GETIMPORT                        R11 K10 [assert]
      158 CALL                             R11 2 0
      159 LOADN                            R13 0
      160 JUMPIFLE                         R13 R10 ; [+2]
      162 LOADB                            R12 0 +1
      163 LOADB                            R12 1
      164 FASTCALL2K                       ASSERT R12 K42 ; [+4]
      166 LOADK                            R13 K42 ["recording duration cannot be negative"]
      167 GETIMPORT                        R11 K10 [assert]
      169 CALL                             R11 2 0
      170 LENGTH                           R11 R9
      171 DIVK                             R12 R10 K43 [1000]
      172 GETUPVAL                         R13 3
      173 LOADK                            R15 K22 ["PlaybackInfoChanged"]
      174 MOVE                             R16 R5
      175 MOVE                             R17 R12
      176 MOVE                             R18 R11
      177 NAMECALL                         R13 R13 K23 ["Invoke"]
      179 CALL                             R13 5 0
      180 GETUPVAL                         R13 3
      181 LOADK                            R15 K24 ["CurrentPlaybackRecordingDataObj"]
      182 MOVE                             R16 R4
      183 NAMECALL                         R13 R13 K25 ["SetItem"]
      185 CALL                             R13 3 0
      186 GETUPVAL                         R13 3
      187 LOADK                            R15 K26 ["CurrentPlaybackRecordingDataStr"]
      188 MOVE                             R16 R3
      189 NAMECALL                         R13 R13 K25 ["SetItem"]
      191 CALL                             R13 3 0
      192 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K0 ["User Input Recordings"]
        4 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+14]
        9 GETIMPORT                        R3 K4 [Instance.new]
       11 LOADK                            R4 K5 ["Folder"]
       12 CALL                             R3 1 1
       13 MOVE                             R2 R3
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K6 ["RecordingsFolderName"]
       17 SETTABLEKS                       R3 R2 K7 ["Name"]
       19 GETUPVAL                         R3 0
       20 SETTABLEKS                       R3 R2 K8 ["Parent"]
       22 FASTCALL1                        ASSERT R2 ; [+3]
       23 MOVE                             R4 R2
       24 GETIMPORT                        R3 K10 [assert]
       26 CALL                             R3 1 0
       27 LOADK                            R6 K5 ["Folder"]
       28 NAMECALL                         R4 R2 K11 ["IsA"]
       30 CALL                             R4 2 1
       31 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       33 LOADK                            R5 K12 ["ReplicatedStorage.User Input Recordings must be a folder!"]
       34 GETIMPORT                        R3 K10 [assert]
       36 CALL                             R3 2 0
       37 MOVE                             R1 R2
       38 NAMECALL                         R2 R1 K13 ["GetChildren"]
       40 CALL                             R2 1 1
       41 GETIMPORT                        R3 K15 [ipairs]
       43 MOVE                             R4 R2
       44 CALL                             R3 1 3
       45 FORGPREP_INEXT                   R3
       46 LOADK                            R10 K16 ["StringValue"]
       47 NAMECALL                         R8 R7 K11 ["IsA"]
       49 CALL                             R8 2 1
       50 JUMPIFNOT                        R8 ; [+8]
       51 GETTABLEKS                       R10 R7 K7 ["Name"]
       53 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       55 MOVE                             R9 R0
       56 GETIMPORT                        R8 K19 [table.insert]
       58 CALL                             R8 2 0
       59 FORGLOOP                         R3 2 [inext] ; [-14]
       61 GETUPVAL                         R3 2
       62 LOADK                            R5 K20 ["SetPlayableRecordings"]
       63 MOVE                             R6 R0
       64 NAMECALL                         R3 R3 K21 ["Invoke"]
       66 CALL                             R3 3 0
       67 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["EmulationDeviceIdChanged"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R3 R3 K1 ["GetCurrentDeviceId"]
        5 CALL                             R3 1 -1
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["EmulationDeviceOrientationChanged"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R3 R3 K1 ["GetCurrentOrientation"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R3 R3 K2 ["Name"]
        8 NAMECALL                         R0 R0 K3 ["Invoke"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ViewportResolutionChanged"]
        2 GETIMPORT                        R3 K2 [workspace]
        4 GETTABLEKS                       R3 R3 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R3 R3 K4 ["ViewportSize"]
        8 NAMECALL                         R0 R0 K5 ["Invoke"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+28]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["CurrentDeviceIdChanged"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R2 R2 K1 ["Connect"]
       11 CALL                             R2 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R0 K4 [table.insert]
       15 CALL                             R0 -1 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K5 ["OrientationChanged"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U0
       23 NAMECALL                         R2 R2 K1 ["Connect"]
       25 CALL                             R2 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R0 K4 [table.insert]
       29 CALL                             R0 -1 0
       30 GETUPVAL                         R1 1
       31 GETIMPORT                        R2 K7 [workspace]
       33 GETTABLEKS                       R2 R2 K8 ["CurrentCamera"]
       35 LOADK                            R4 K9 ["ViewportSize"]
       36 NAMECALL                         R2 R2 K10 ["GetPropertyChangedSignal"]
       38 CALL                             R2 2 1
       39 NEWCLOSURE                       R4 P2
       40 CAPTURE                          UPVAL U2
       41 NAMECALL                         R2 R2 K1 ["Connect"]
       43 CALL                             R2 2 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R0 K4 [table.insert]
       47 CALL                             R0 -1 0
       48 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["Disconnect"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 NEWTABLE                         R0 0 0
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+31]
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["EmulationDeviceIdChanged"]
        4 GETUPVAL                         R3 0
        5 NAMECALL                         R3 R3 K1 ["GetCurrentDeviceId"]
        7 CALL                             R3 1 -1
        8 NAMECALL                         R0 R0 K2 ["Invoke"]
       10 CALL                             R0 -1 0
       11 GETUPVAL                         R0 1
       12 LOADK                            R2 K3 ["EmulationDeviceOrientationChanged"]
       13 GETUPVAL                         R3 0
       14 NAMECALL                         R3 R3 K4 ["GetCurrentOrientation"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R3 R3 K5 ["Name"]
       19 NAMECALL                         R0 R0 K2 ["Invoke"]
       21 CALL                             R0 3 0
       22 GETUPVAL                         R0 1
       23 LOADK                            R2 K6 ["ViewportResolutionChanged"]
       24 GETIMPORT                        R3 K8 [workspace]
       26 GETTABLEKS                       R3 R3 K9 ["CurrentCamera"]
       28 GETTABLEKS                       R3 R3 K10 ["ViewportSize"]
       30 NAMECALL                         R0 R0 K2 ["Invoke"]
       32 CALL                             R0 3 0
       33 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R1 K2 [coroutine.create]
        2 GETUPVAL                         R2 1
        3 CALL                             R1 1 1
        4 SETUPVAL                         R1 0
        5 GETIMPORT                        R1 K4 [coroutine.resume]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R1 K2 [coroutine.resume]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["Should only setup once per DM"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 1
       11 LOADK                            R2 K3 ["RequestDevicePropertiesUpdate"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       17 CALL                             R0 3 0
       18 GETUPVAL                         R0 1
       19 LOADK                            R2 K5 ["ConnectToStudioDeviceEmulatorServiceEvents"]
       20 GETUPVAL                         R3 3
       21 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       23 CALL                             R0 3 0
       24 GETUPVAL                         R0 1
       25 LOADK                            R2 K6 ["DisconnectStudioDeviceEmulatorServiceEvents"]
       26 GETUPVAL                         R3 4
       27 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       29 CALL                             R0 3 0
       30 GETUPVAL                         R0 1
       31 LOADK                            R2 K7 ["SaveRecordingDataToDM"]
       32 NEWCLOSURE                       R3 P1
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       37 CALL                             R0 3 0
       38 GETUPVAL                         R0 1
       39 LOADK                            R2 K8 ["SetSavedRecordingName"]
       40 NEWCLOSURE                       R3 P2
       41 CAPTURE                          UPVAL U5
       42 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       44 CALL                             R0 3 0
       45 GETUPVAL                         R0 1
       46 LOADK                            R2 K9 ["SearchForUserInputRecordings"]
       47 GETUPVAL                         R3 7
       48 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       50 CALL                             R0 3 0
       51 GETUPVAL                         R0 1
       52 LOADK                            R2 K10 ["LoadRecordingWithName"]
       53 GETUPVAL                         R3 8
       54 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       56 CALL                             R0 3 0
       57 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["Should only setup once per DM"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 1
       11 LOADK                            R2 K3 ["ConnectToStudioDeviceEmulatorServiceEvents"]
       12 GETUPVAL                         R3 2
       13 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       15 CALL                             R0 3 0
       16 GETUPVAL                         R0 1
       17 LOADK                            R2 K5 ["DisconnectStudioDeviceEmulatorServiceEvents"]
       18 GETUPVAL                         R3 3
       19 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       21 CALL                             R0 3 0
       22 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["StartRecordingButtonClicked"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StartRecordingButtonClicked"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["StopRecordingButtonClicked"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StopRecordingButtonClicked"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["StartPlaybackButtonClicked"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StartPlaybackButtonClicked"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["StopPlaybackButtonClicked"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StopPlaybackButtonClicked"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["RequestDevicePropertiesUpdate"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CurrentPlaybackRecordingDataStr"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["GetItem"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CurrentPlaybackRecordingDataObj"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["GetItem"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetEmulationDeviceId"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetEmulationDeviceOrientation"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tostring]
        7 CALL                             R2 1 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetCurrentScreenSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SetSaveRecordingDialogVisible"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADK                            R5 K0 ["EmulationDeviceIdChanged"]
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R3 R3 K1 ["OnInvoke"]
        7 CALL                             R3 3 1
        8 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       10 GETIMPORT                        R1 K4 [table.insert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R2 0
       14 GETUPVAL                         R3 1
       15 LOADK                            R5 K5 ["EmulationDeviceOrientationChanged"]
       16 NEWCLOSURE                       R6 P1
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R3 R3 K1 ["OnInvoke"]
       20 CALL                             R3 3 1
       21 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       23 GETIMPORT                        R1 K4 [table.insert]
       25 CALL                             R1 2 0
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R3 1
       28 LOADK                            R5 K6 ["ViewportResolutionChanged"]
       29 NEWCLOSURE                       R6 P2
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R3 R3 K1 ["OnInvoke"]
       33 CALL                             R3 3 1
       34 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       36 GETIMPORT                        R1 K4 [table.insert]
       38 CALL                             R1 2 0
       39 GETUPVAL                         R2 0
       40 GETUPVAL                         R3 1
       41 LOADK                            R5 K7 ["OpenSaveRecordingDialog"]
       42 NEWCLOSURE                       R6 P3
       43 CAPTURE                          VAL R0
       44 NAMECALL                         R3 R3 K1 ["OnInvoke"]
       46 CALL                             R3 3 1
       47 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       49 GETIMPORT                        R1 K4 [table.insert]
       51 CALL                             R1 2 0
       52 RETURN                           R0 0

PROTO_44:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["Disconnect"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 NEWTABLE                         R0 0 0
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RequestDevicePropertiesUpdate"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 LOADK                            R2 K2 ["ConnectToStudioDeviceEmulatorServiceEvents"]
        7 NAMECALL                         R0 R0 K1 ["Invoke"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DisconnectStudioDeviceEmulatorServiceEvents"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disconnectSetPlayableRecordingsCallback"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 2
        5 LOADK                            R3 K1 ["SetPlayableRecordings"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["OnInvoke"]
        9 CALL                             R1 3 1
       10 SETUPVAL                         R1 1
       11 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SearchForUserInputRecordings"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["LoadRecordingWithName"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["Invoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 1
        1 LOADK                            R3 K0 ["PlaybackInfoChanged"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        5 CALL                             R1 3 1
        6 SETUPVAL                         R1 0
        7 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K8 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K10 [game]
       27 LOADK                            R5 K11 ["StudioDeviceEmulatorService"]
       28 NAMECALL                         R3 R3 K12 ["GetService"]
       30 CALL                             R3 2 1
       31 GETIMPORT                        R4 K10 [game]
       33 LOADK                            R6 K13 ["ReplicatedStorage"]
       34 NAMECALL                         R4 R4 K12 ["GetService"]
       36 CALL                             R4 2 1
       37 GETIMPORT                        R5 K10 [game]
       39 LOADK                            R7 K14 ["HttpService"]
       40 NAMECALL                         R5 R5 K12 ["GetService"]
       42 CALL                             R5 2 1
       43 NEWTABLE                         R6 64 0
       45 DUPTABLE                         R7 K38 [{["PluginEnabled"] = "PluginEnabled", ["RequestDevicePropertiesUpdate"] = "RequestDevicePropertiesUpdate", ["ConnectToStudioDeviceEmulatorServiceEvents"] = "ConnectToStudioDeviceEmulatorServiceEvents", ["DisconnectStudioDeviceEmulatorServiceEvents"] = "DisconnectStudioDeviceEmulatorServiceEvents", ["EmulationDeviceIdChanged"] = "EmulationDeviceIdChanged", ["EmulationDeviceOrientationChanged"] = "EmulationDeviceOrientationChanged", ["ViewportResolutionChanged"] = "ViewportResolutionChanged", ["IsPlayMode"] = "IsPlayMode", ["StartRecordingButtonClicked"] = "StartRecordingButtonClicked", ["StopRecordingButtonClicked"] = "StopRecordingButtonClicked", ["StartPlaybackButtonClicked"] = "StartPlaybackButtonClicked", ["StopPlaybackButtonClicked"] = "StopPlaybackButtonClicked", ["SetPluginState"] = "SetPluginState", ["RoduxState"] = "RoduxState", ["SaveRecordingDataToDM"] = "SaveRecordingDataToDM", ["OpenSaveRecordingDialog"] = "OpenSaveRecordingDialog", ["SetSavedRecordingName"] = "SetSavedRecordingName", ["SearchForUserInputRecordings"] = "SearchForUserInputRecordings", ["SetPlayableRecordings"] = "SetPlayableRecordings", ["LoadRecordingWithName"] = "LoadRecordingWithName", ["CurrentPlaybackRecordingDataStr"] = "CurrentPlaybackRecordingDataStr", ["CurrentPlaybackRecordingDataObj"] = "CurrentPlaybackRecordingDataObj", ["PlaybackInfoChanged"] = "PlaybackInfoChanged"}]
       46 LOADNIL                          R8
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          REF R8
       49 SETTABLEKS                       R9 R6 K39 ["setPluginObject"]
       51 LOADNIL                          R9
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          REF R9
       54 SETTABLEKS                       R10 R6 K40 ["setLocalizationObject"]
       56 NEWCLOSURE                       R10 P2
       57 CAPTURE                          REF R8
       58 SETTABLEKS                       R10 R6 K41 ["setIsPlayMode"]
       60 NEWCLOSURE                       R10 P3
       61 CAPTURE                          REF R8
       62 SETTABLEKS                       R10 R6 K42 ["getIsPlayMode"]
       64 NEWCLOSURE                       R10 P4
       65 CAPTURE                          REF R8
       66 SETTABLEKS                       R10 R6 K43 ["setPluginEnabled"]
       68 NEWCLOSURE                       R10 P5
       69 CAPTURE                          REF R8
       70 SETTABLEKS                       R10 R6 K44 ["getPluginEnabled"]
       72 NEWCLOSURE                       R10 P6
       73 CAPTURE                          REF R8
       74 SETTABLEKS                       R10 R6 K45 ["setRoduxState"]
       76 NEWCLOSURE                       R10 P7
       77 CAPTURE                          REF R8
       78 SETTABLEKS                       R10 R6 K46 ["getRoduxState"]
       80 NEWCLOSURE                       R10 P8
       81 CAPTURE                          REF R8
       82 SETTABLEKS                       R10 R6 K47 ["setPluginState"]
       84 DUPCLOSURE                       R10 K48 [PROTO_9]
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R10 R6 K49 ["getPluginState"]
       88 NEWCLOSURE                       R10 P10
       89 CAPTURE                          REF R8
       90 SETTABLEKS                       R10 R6 K50 ["setPluginStateRoduxActionHandler"]
       92 NEWCLOSURE                       R10 P11
       93 CAPTURE                          REF R8
       94 SETTABLEKS                       R10 R6 K51 ["saveRecordingDataToDM"]
       96 DUPCLOSURE                       R10 K52 [PROTO_12]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R2
       99 LOADNIL                          R11
      100 NEWCLOSURE                       R12 P13
      101 CAPTURE                          REF R8
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R2
      105 NEWCLOSURE                       R13 P14
      106 CAPTURE                          REF R8
      107 SETTABLEKS                       R13 R6 K53 ["onSaveRecordingDialogCancel"]
      109 NEWCLOSURE                       R13 P15
      110 CAPTURE                          REF R8
      111 SETTABLEKS                       R13 R6 K54 ["onSaveRecordingDialogSave"]
      113 NEWCLOSURE                       R13 P16
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R2
      116 CAPTURE                          REF R9
      117 CAPTURE                          REF R8
      118 CAPTURE                          VAL R5
      119 NEWCLOSURE                       R14 P17
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R2
      122 CAPTURE                          REF R8
      123 NEWTABLE                         R15 0 0
      125 NEWCLOSURE                       R16 P18
      126 CAPTURE                          VAL R3
      127 CAPTURE                          REF R15
      128 CAPTURE                          REF R8
      129 NEWCLOSURE                       R17 P19
      130 CAPTURE                          REF R15
      131 LOADB                            R18 0
      132 NEWCLOSURE                       R19 P20
      133 CAPTURE                          REF R18
      134 CAPTURE                          REF R8
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R17
      138 CAPTURE                          REF R11
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R13
      142 SETTABLEKS                       R19 R6 K55 ["setupEditDMEventListeners"]
      144 LOADB                            R19 0
      145 NEWCLOSURE                       R20 P21
      146 CAPTURE                          REF R19
      147 CAPTURE                          REF R8
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R17
      150 SETTABLEKS                       R20 R6 K56 ["setupPlayClientDMEventListeners"]
      152 NEWCLOSURE                       R20 P22
      153 CAPTURE                          REF R8
      154 SETTABLEKS                       R20 R6 K57 ["connectToStartRecordButtonClicked"]
      156 NEWCLOSURE                       R20 P23
      157 CAPTURE                          REF R8
      158 SETTABLEKS                       R20 R6 K58 ["onStartRecordingButtonClicked"]
      160 NEWCLOSURE                       R20 P24
      161 CAPTURE                          REF R8
      162 SETTABLEKS                       R20 R6 K59 ["connectToStopRecordButtonClicked"]
      164 NEWCLOSURE                       R20 P25
      165 CAPTURE                          REF R8
      166 SETTABLEKS                       R20 R6 K60 ["onStopRecordingButtonClicked"]
      168 NEWCLOSURE                       R20 P26
      169 CAPTURE                          REF R8
      170 SETTABLEKS                       R20 R6 K61 ["connectToStartPlaybackButtonClicked"]
      172 NEWCLOSURE                       R20 P27
      173 CAPTURE                          REF R8
      174 SETTABLEKS                       R20 R6 K62 ["onStartPlaybackButtonClicked"]
      176 NEWCLOSURE                       R20 P28
      177 CAPTURE                          REF R8
      178 SETTABLEKS                       R20 R6 K63 ["connectToStopPlaybackButtonClicked"]
      180 NEWCLOSURE                       R20 P29
      181 CAPTURE                          REF R8
      182 SETTABLEKS                       R20 R6 K64 ["onStopPlaybackButtonClicked"]
      184 NEWCLOSURE                       R20 P30
      185 CAPTURE                          VAL R16
      186 CAPTURE                          REF R8
      187 SETTABLEKS                       R20 R6 K65 ["onPlayClientSessionStarted"]
      189 NEWCLOSURE                       R20 P31
      190 CAPTURE                          REF R8
      191 SETTABLEKS                       R20 R6 K66 ["getCurrentPlaybackRecordingDataStr"]
      193 NEWCLOSURE                       R20 P32
      194 CAPTURE                          REF R8
      195 SETTABLEKS                       R20 R6 K67 ["getCurrentPlaybackRecordingDataObj"]
      197 NEWTABLE                         R20 0 0
      199 NEWCLOSURE                       R21 P33
      200 CAPTURE                          REF R20
      201 CAPTURE                          REF R8
      202 SETTABLEKS                       R21 R6 K68 ["connectRecordTabEventListenersWithActions"]
      204 NEWCLOSURE                       R21 P34
      205 CAPTURE                          REF R20
      206 SETTABLEKS                       R21 R6 K69 ["disconnectRecordTabEventListeners"]
      208 NEWCLOSURE                       R21 P35
      209 CAPTURE                          REF R8
      210 SETTABLEKS                       R21 R6 K70 ["onRecordTabShown"]
      212 NEWCLOSURE                       R21 P36
      213 CAPTURE                          REF R8
      214 SETTABLEKS                       R21 R6 K71 ["onRecordTabHidden"]
      216 LOADNIL                          R21
      217 NEWCLOSURE                       R22 P37
      218 CAPTURE                          REF R21
      219 SETTABLEKS                       R22 R6 K72 ["disconnectSetPlayableRecordingsCallback"]
      221 NEWCLOSURE                       R22 P38
      222 CAPTURE                          VAL R6
      223 CAPTURE                          REF R21
      224 CAPTURE                          REF R8
      225 SETTABLEKS                       R22 R6 K73 ["connectSetPlayableRecordingsCallback"]
      227 NEWCLOSURE                       R22 P39
      228 CAPTURE                          REF R8
      229 SETTABLEKS                       R22 R6 K74 ["searchForUserInputRecordings"]
      231 NEWCLOSURE                       R22 P40
      232 CAPTURE                          REF R8
      233 SETTABLEKS                       R22 R6 K75 ["loadRecordingWithName"]
      235 LOADNIL                          R22
      236 NEWCLOSURE                       R23 P41
      237 CAPTURE                          REF R22
      238 CAPTURE                          REF R8
      239 SETTABLEKS                       R23 R6 K76 ["connectPlaybackInfoChangedCallback"]
      241 NEWCLOSURE                       R23 P42
      242 CAPTURE                          REF R22
      243 SETTABLEKS                       R23 R6 K77 ["disconnectPlaybackInfoChangedCallback"]
      245 CLOSEUPVALS                      R8
      246 RETURN                           R6 1
