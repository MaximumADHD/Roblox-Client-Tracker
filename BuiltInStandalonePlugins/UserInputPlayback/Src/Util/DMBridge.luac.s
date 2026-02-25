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
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["IsPlayMode"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["SetItem"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["IsPlayMode"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K1 ["GetItem"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["PluginEnabled"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["SetItem"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["PluginEnabled"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K1 ["GetItem"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["RoduxState"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["SetItem"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["RoduxState"]
        4 LOADNIL                          R3
        5 NAMECALL                         R0 R0 K1 ["GetItem"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["SetPluginState"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Invoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getRoduxState"]
        3 CALL                             R0 0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R2 R0 K1 ["common"]
       10 GETTABLEKS                       R1 R2 K2 ["pluginState"]
       12 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["SetPluginState"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["SaveRecordingDataToDM"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Invoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

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
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K6 ["RecordingsFolderName"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["HostDataModelType"]
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
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R4 R5 K9 ["OpenSaveRecordingDialog"]
       29 LOADK                            R5 K10 ["EnterNameForRecordingMessage"]
       30 NEWTABLE                         R6 0 1
       32 FASTCALL1                        STRING_LEN R1 ; [+3]
       33 MOVE                             R8 R1
       34 GETIMPORT                        R7 K13 [string.len]
       36 CALL                             R7 1 1
       37 SETLIST                          R6 R7 1 [1]
       39 NAMECALL                         R2 R2 K14 ["Invoke"]
       41 CALL                             R2 4 0
       42 GETIMPORT                        R2 K17 [coroutine.yield]
       44 CALL                             R2 0 1
       45 JUMPIFNOT                        R2 ; [+64]
       46 GETIMPORT                        R3 K20 [Instance.new]
       48 LOADK                            R4 K21 ["StringValue"]
       49 CALL                             R3 1 1
       50 SETTABLEKS                       R1 R3 K22 ["Value"]
       52 GETIMPORT                        R5 K25 [os.date]
       54 LOADK                            R6 K26 ["%x %X"]
       55 CALL                             R5 1 -1
       56 FASTCALL                         TOSTRING ; [+2]
       57 GETIMPORT                        R4 K28 [tostring]
       59 CALL                             R4 -1 1
       60 SETTABLEKS                       R4 R3 K29 ["Name"]
       62 GETUPVAL                         R5 3
       63 LOADK                            R7 K30 ["User Input Recordings"]
       64 NAMECALL                         R5 R5 K31 ["FindFirstChild"]
       66 CALL                             R5 2 1
       67 JUMPIFNOTEQKNIL                  R5 ; [+14]
       69 GETIMPORT                        R6 K20 [Instance.new]
       71 LOADK                            R7 K32 ["Folder"]
       72 CALL                             R6 1 1
       73 MOVE                             R5 R6
       74 GETUPVAL                         R7 4
       75 GETTABLEKS                       R6 R7 K33 ["RecordingsFolderName"]
       77 SETTABLEKS                       R6 R5 K29 ["Name"]
       79 GETUPVAL                         R6 3
       80 SETTABLEKS                       R6 R5 K34 ["Parent"]
       82 FASTCALL1                        ASSERT R5 ; [+3]
       83 MOVE                             R7 R5
       84 GETIMPORT                        R6 K6 [assert]
       86 CALL                             R6 1 0
       87 LOADK                            R9 K32 ["Folder"]
       88 NAMECALL                         R7 R5 K35 ["IsA"]
       90 CALL                             R7 2 1
       91 FASTCALL2K                       ASSERT R7 K36 ; [+4]
       93 LOADK                            R8 K36 ["ReplicatedStorage.User Input Recordings must be a folder!"]
       94 GETIMPORT                        R6 K6 [assert]
       96 CALL                             R6 2 0
       97 MOVE                             R4 R5
       98 SETTABLEKS                       R4 R3 K34 ["Parent"]
      100 FASTCALL1                        STRING_LEN R2 ; [+3]
      101 MOVE                             R5 R2
      102 GETIMPORT                        R4 K13 [string.len]
      104 CALL                             R4 1 1
      105 LOADN                            R5 0
      106 JUMPIFNOTLT                      R5 R4 ; [+3]
      108 SETTABLEKS                       R2 R3 K29 ["Name"]
      110 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["SetSavedRecordingName"]
        4 LOADNIL                          R3
        5 NAMECALL                         R0 R0 K1 ["Invoke"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["SetSavedRecordingName"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Invoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

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
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K6 ["RecordingsFolderName"]
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
       70 GETUPVAL                         R7 4
       71 GETTABLEKS                       R6 R7 K22 ["PlaybackInfoChanged"]
       73 LOADNIL                          R7
       74 LOADN                            R8 0
       75 LOADN                            R9 0
       76 NAMECALL                         R4 R4 K23 ["Invoke"]
       78 CALL                             R4 5 0
       79 GETUPVAL                         R4 3
       80 GETUPVAL                         R7 4
       81 GETTABLEKS                       R6 R7 K24 ["CurrentPlaybackRecordingDataObj"]
       83 LOADNIL                          R7
       84 NAMECALL                         R4 R4 K25 ["SetItem"]
       86 CALL                             R4 3 0
       87 GETUPVAL                         R4 3
       88 GETUPVAL                         R7 4
       89 GETTABLEKS                       R6 R7 K26 ["CurrentPlaybackRecordingDataStr"]
       91 LOADNIL                          R7
       92 NAMECALL                         R4 R4 K25 ["SetItem"]
       94 CALL                             R4 3 0
       95 GETUPVAL                         R4 5
       96 MOVE                             R6 R3
       97 NAMECALL                         R4 R4 K27 ["JSONDecode"]
       99 CALL                             R4 2 1
      100 GETTABLEKS                       R5 R4 K28 ["additionalMetadata"]
      102 FASTCALL2K                       ASSERT R5 K29 ; [+5]
      104 MOVE                             R7 R5
      105 LOADK                            R8 K29 ["metaData key not found"]
      106 GETIMPORT                        R6 K10 [assert]
      108 CALL                             R6 2 0
      109 GETTABLEKS                       R6 R5 K30 ["resolution"]
      111 FASTCALL2K                       ASSERT R6 K31 ; [+5]
      113 MOVE                             R8 R6
      114 LOADK                            R9 K31 ["resolution key not found"]
      115 GETIMPORT                        R7 K10 [assert]
      117 CALL                             R7 2 0
      118 LENGTH                           R9 R6
      119 JUMPIFEQKN                       R9 K32 [2] ; [+2]
      121 LOADB                            R8 0 +1
      122 LOADB                            R8 1
      123 FASTCALL2K                       ASSERT R8 K33 ; [+4]
      125 LOADK                            R9 K33 ["resolution key invalid"]
      126 GETIMPORT                        R7 K10 [assert]
      128 CALL                             R7 2 0
      129 GETTABLEKS                       R7 R5 K34 ["deviceId"]
      131 FASTCALL2K                       ASSERT R7 K35 ; [+5]
      133 MOVE                             R9 R7
      134 LOADK                            R10 K35 ["deviceId key not found"]
      135 GETIMPORT                        R8 K10 [assert]
      137 CALL                             R8 2 0
      138 GETTABLEKS                       R8 R5 K36 ["orientation"]
      140 FASTCALL2K                       ASSERT R8 K37 ; [+5]
      142 MOVE                             R10 R8
      143 LOADK                            R11 K37 ["orientation key not found"]
      144 GETIMPORT                        R9 K10 [assert]
      146 CALL                             R9 2 0
      147 GETTABLEKS                       R9 R4 K38 ["events"]
      149 FASTCALL2K                       ASSERT R9 K39 ; [+5]
      151 MOVE                             R11 R9
      152 LOADK                            R12 K39 ["events not found"]
      153 GETIMPORT                        R10 K10 [assert]
      155 CALL                             R10 2 0
      156 GETTABLEKS                       R10 R4 K40 ["duration"]
      158 FASTCALL2K                       ASSERT R10 K41 ; [+5]
      160 MOVE                             R12 R10
      161 LOADK                            R13 K41 ["duration not found"]
      162 GETIMPORT                        R11 K10 [assert]
      164 CALL                             R11 2 0
      165 LOADN                            R13 0
      166 JUMPIFLE                         R13 R10 ; [+2]
      168 LOADB                            R12 0 +1
      169 LOADB                            R12 1
      170 FASTCALL2K                       ASSERT R12 K42 ; [+4]
      172 LOADK                            R13 K42 ["recording duration cannot be negative"]
      173 GETIMPORT                        R11 K10 [assert]
      175 CALL                             R11 2 0
      176 LENGTH                           R11 R9
      177 DIVK                             R12 R10 K43 [1000]
      178 GETUPVAL                         R13 3
      179 GETUPVAL                         R16 4
      180 GETTABLEKS                       R15 R16 K22 ["PlaybackInfoChanged"]
      182 MOVE                             R16 R5
      183 MOVE                             R17 R12
      184 MOVE                             R18 R11
      185 NAMECALL                         R13 R13 K23 ["Invoke"]
      187 CALL                             R13 5 0
      188 GETUPVAL                         R13 3
      189 GETUPVAL                         R16 4
      190 GETTABLEKS                       R15 R16 K24 ["CurrentPlaybackRecordingDataObj"]
      192 MOVE                             R16 R4
      193 NAMECALL                         R13 R13 K25 ["SetItem"]
      195 CALL                             R13 3 0
      196 GETUPVAL                         R13 3
      197 GETUPVAL                         R16 4
      198 GETTABLEKS                       R15 R16 K26 ["CurrentPlaybackRecordingDataStr"]
      200 MOVE                             R16 R3
      201 NAMECALL                         R13 R13 K25 ["SetItem"]
      203 CALL                             R13 3 0
      204 RETURN                           R0 0

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
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K6 ["RecordingsFolderName"]
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
       62 GETUPVAL                         R6 3
       63 GETTABLEKS                       R5 R6 K20 ["SetPlayableRecordings"]
       65 MOVE                             R6 R0
       66 NAMECALL                         R3 R3 K21 ["Invoke"]
       68 CALL                             R3 3 0
       69 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["EmulationDeviceIdChanged"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R3 R3 K1 ["GetCurrentDeviceId"]
        7 CALL                             R3 1 -1
        8 NAMECALL                         R0 R0 K2 ["Invoke"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["EmulationDeviceOrientationChanged"]
        4 GETUPVAL                         R4 2
        5 NAMECALL                         R4 R4 K1 ["GetCurrentOrientation"]
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R3 R4 K2 ["Name"]
       10 NAMECALL                         R0 R0 K3 ["Invoke"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["ViewportResolutionChanged"]
        4 GETIMPORT                        R5 K2 [workspace]
        6 GETTABLEKS                       R4 R5 K3 ["CurrentCamera"]
        8 GETTABLEKS                       R3 R4 K4 ["ViewportSize"]
       10 NAMECALL                         R0 R0 K5 ["Invoke"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+30]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K0 ["CurrentDeviceIdChanged"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R2 R2 K1 ["Connect"]
       12 CALL                             R2 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R0 K4 [table.insert]
       16 CALL                             R0 -1 0
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K5 ["OrientationChanged"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U0
       25 NAMECALL                         R2 R2 K1 ["Connect"]
       27 CALL                             R2 2 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R0 K4 [table.insert]
       31 CALL                             R0 -1 0
       32 GETUPVAL                         R1 1
       33 GETIMPORT                        R3 K7 [workspace]
       35 GETTABLEKS                       R2 R3 K8 ["CurrentCamera"]
       37 LOADK                            R4 K9 ["ViewportSize"]
       38 NAMECALL                         R2 R2 K10 ["GetPropertyChangedSignal"]
       40 CALL                             R2 2 1
       41 NEWCLOSURE                       R4 P2
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 NAMECALL                         R2 R2 K1 ["Connect"]
       46 CALL                             R2 2 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R0 K4 [table.insert]
       50 CALL                             R0 -1 0
       51 RETURN                           R0 0

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
        1 JUMPIFNOT                        R0 ; [+37]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K0 ["EmulationDeviceIdChanged"]
        6 GETUPVAL                         R3 0
        7 NAMECALL                         R3 R3 K1 ["GetCurrentDeviceId"]
        9 CALL                             R3 1 -1
       10 NAMECALL                         R0 R0 K2 ["Invoke"]
       12 CALL                             R0 -1 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K3 ["EmulationDeviceOrientationChanged"]
       17 GETUPVAL                         R4 0
       18 NAMECALL                         R4 R4 K4 ["GetCurrentOrientation"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R3 R4 K5 ["Name"]
       23 NAMECALL                         R0 R0 K2 ["Invoke"]
       25 CALL                             R0 3 0
       26 GETUPVAL                         R0 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R2 R3 K6 ["ViewportResolutionChanged"]
       30 GETIMPORT                        R5 K8 [workspace]
       32 GETTABLEKS                       R4 R5 K9 ["CurrentCamera"]
       34 GETTABLEKS                       R3 R4 K10 ["ViewportSize"]
       36 NAMECALL                         R0 R0 K2 ["Invoke"]
       38 CALL                             R0 3 0
       39 RETURN                           R0 0

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
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K3 ["RequestDevicePropertiesUpdate"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       20 CALL                             R0 3 0
       21 GETUPVAL                         R0 1
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K5 ["ConnectToStudioDeviceEmulatorServiceEvents"]
       25 GETUPVAL                         R3 4
       26 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       28 CALL                             R0 3 0
       29 GETUPVAL                         R0 1
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R2 R3 K6 ["DisconnectStudioDeviceEmulatorServiceEvents"]
       33 GETUPVAL                         R3 5
       34 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       36 CALL                             R0 3 0
       37 GETUPVAL                         R0 1
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R2 R3 K7 ["SaveRecordingDataToDM"]
       41 NEWCLOSURE                       R3 P1
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       46 CALL                             R0 3 0
       47 GETUPVAL                         R0 1
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R2 R3 K8 ["SetSavedRecordingName"]
       51 NEWCLOSURE                       R3 P2
       52 CAPTURE                          UPVAL U6
       53 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       55 CALL                             R0 3 0
       56 GETUPVAL                         R0 1
       57 GETUPVAL                         R3 2
       58 GETTABLEKS                       R2 R3 K9 ["SearchForUserInputRecordings"]
       60 GETUPVAL                         R3 8
       61 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       63 CALL                             R0 3 0
       64 GETUPVAL                         R0 1
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R2 R3 K10 ["LoadRecordingWithName"]
       68 GETUPVAL                         R3 9
       69 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       71 CALL                             R0 3 0
       72 RETURN                           R0 0

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
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K3 ["ConnectToStudioDeviceEmulatorServiceEvents"]
       14 GETUPVAL                         R3 3
       15 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       17 CALL                             R0 3 0
       18 GETUPVAL                         R0 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K5 ["DisconnectStudioDeviceEmulatorServiceEvents"]
       22 GETUPVAL                         R3 4
       23 NAMECALL                         R0 R0 K4 ["OnInvoke"]
       25 CALL                             R0 3 0
       26 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["StartRecordingButtonClicked"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["StartRecordingButtonClicked"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["StopRecordingButtonClicked"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["StopRecordingButtonClicked"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["StartPlaybackButtonClicked"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["StartPlaybackButtonClicked"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["StopPlaybackButtonClicked"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["StopPlaybackButtonClicked"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K0 ["RequestDevicePropertiesUpdate"]
        6 NAMECALL                         R0 R0 K1 ["Invoke"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["CurrentPlaybackRecordingDataStr"]
        4 LOADNIL                          R3
        5 NAMECALL                         R0 R0 K1 ["GetItem"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["CurrentPlaybackRecordingDataObj"]
        4 LOADNIL                          R3
        5 NAMECALL                         R0 R0 K1 ["GetItem"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SetEmulationDeviceId"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SetEmulationDeviceOrientation"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tostring]
        7 CALL                             R2 1 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SetCurrentScreenSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["SetSaveRecordingDialogVisible"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R6 2
        3 GETTABLEKS                       R5 R6 K0 ["EmulationDeviceIdChanged"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R3 R3 K1 ["OnInvoke"]
        9 CALL                             R3 3 1
       10 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       12 GETIMPORT                        R1 K4 [table.insert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 0
       16 GETUPVAL                         R3 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K5 ["EmulationDeviceOrientationChanged"]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R3 R3 K1 ["OnInvoke"]
       24 CALL                             R3 3 1
       25 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       27 GETIMPORT                        R1 K4 [table.insert]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R2 0
       31 GETUPVAL                         R3 1
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R5 R6 K6 ["ViewportResolutionChanged"]
       35 NEWCLOSURE                       R6 P2
       36 CAPTURE                          VAL R0
       37 NAMECALL                         R3 R3 K1 ["OnInvoke"]
       39 CALL                             R3 3 1
       40 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       42 GETIMPORT                        R1 K4 [table.insert]
       44 CALL                             R1 2 0
       45 GETUPVAL                         R2 0
       46 GETUPVAL                         R3 1
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R5 R6 K7 ["OpenSaveRecordingDialog"]
       50 NEWCLOSURE                       R6 P3
       51 CAPTURE                          VAL R0
       52 NAMECALL                         R3 R3 K1 ["OnInvoke"]
       54 CALL                             R3 3 1
       55 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       57 GETIMPORT                        R1 K4 [table.insert]
       59 CALL                             R1 2 0
       60 RETURN                           R0 0

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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["RequestDevicePropertiesUpdate"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["ConnectToStudioDeviceEmulatorServiceEvents"]
       11 NAMECALL                         R0 R0 K1 ["Invoke"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["DisconnectStudioDeviceEmulatorServiceEvents"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["disconnectSetPlayableRecordingsCallback"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R4 3
        6 GETTABLEKS                       R3 R4 K1 ["SetPlayableRecordings"]
        8 MOVE                             R4 R0
        9 NAMECALL                         R1 R1 K2 ["OnInvoke"]
       11 CALL                             R1 3 1
       12 SETUPVAL                         R1 1
       13 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["SearchForUserInputRecordings"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["LoadRecordingWithName"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Invoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 1
        1 GETUPVAL                         R4 2
        2 GETTABLEKS                       R3 R4 K0 ["PlaybackInfoChanged"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        7 CALL                             R1 3 1
        8 SETUPVAL                         R1 0
        9 RETURN                           R0 0

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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K5 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K8 ["Constants"]
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
       45 DUPTABLE                         R7 K38 [{"PluginEnabled", "RequestDevicePropertiesUpdate", "ConnectToStudioDeviceEmulatorServiceEvents", "DisconnectStudioDeviceEmulatorServiceEvents", "EmulationDeviceIdChanged", "EmulationDeviceOrientationChanged", "ViewportResolutionChanged", "IsPlayMode", "StartRecordingButtonClicked", "StopRecordingButtonClicked", "StartPlaybackButtonClicked", "StopPlaybackButtonClicked", "SetPluginState", "RoduxState", "SaveRecordingDataToDM", "OpenSaveRecordingDialog", "SetSavedRecordingName", "SearchForUserInputRecordings", "SetPlayableRecordings", "LoadRecordingWithName", "CurrentPlaybackRecordingDataStr", "CurrentPlaybackRecordingDataObj", "PlaybackInfoChanged"}]
       46 LOADK                            R8 K15 ["PluginEnabled"]
       47 SETTABLEKS                       R8 R7 K15 ["PluginEnabled"]
       49 LOADK                            R8 K16 ["RequestDevicePropertiesUpdate"]
       50 SETTABLEKS                       R8 R7 K16 ["RequestDevicePropertiesUpdate"]
       52 LOADK                            R8 K17 ["ConnectToStudioDeviceEmulatorServiceEvents"]
       53 SETTABLEKS                       R8 R7 K17 ["ConnectToStudioDeviceEmulatorServiceEvents"]
       55 LOADK                            R8 K18 ["DisconnectStudioDeviceEmulatorServiceEvents"]
       56 SETTABLEKS                       R8 R7 K18 ["DisconnectStudioDeviceEmulatorServiceEvents"]
       58 LOADK                            R8 K19 ["EmulationDeviceIdChanged"]
       59 SETTABLEKS                       R8 R7 K19 ["EmulationDeviceIdChanged"]
       61 LOADK                            R8 K20 ["EmulationDeviceOrientationChanged"]
       62 SETTABLEKS                       R8 R7 K20 ["EmulationDeviceOrientationChanged"]
       64 LOADK                            R8 K21 ["ViewportResolutionChanged"]
       65 SETTABLEKS                       R8 R7 K21 ["ViewportResolutionChanged"]
       67 LOADK                            R8 K22 ["IsPlayMode"]
       68 SETTABLEKS                       R8 R7 K22 ["IsPlayMode"]
       70 LOADK                            R8 K23 ["StartRecordingButtonClicked"]
       71 SETTABLEKS                       R8 R7 K23 ["StartRecordingButtonClicked"]
       73 LOADK                            R8 K24 ["StopRecordingButtonClicked"]
       74 SETTABLEKS                       R8 R7 K24 ["StopRecordingButtonClicked"]
       76 LOADK                            R8 K25 ["StartPlaybackButtonClicked"]
       77 SETTABLEKS                       R8 R7 K25 ["StartPlaybackButtonClicked"]
       79 LOADK                            R8 K26 ["StopPlaybackButtonClicked"]
       80 SETTABLEKS                       R8 R7 K26 ["StopPlaybackButtonClicked"]
       82 LOADK                            R8 K27 ["SetPluginState"]
       83 SETTABLEKS                       R8 R7 K27 ["SetPluginState"]
       85 LOADK                            R8 K28 ["RoduxState"]
       86 SETTABLEKS                       R8 R7 K28 ["RoduxState"]
       88 LOADK                            R8 K29 ["SaveRecordingDataToDM"]
       89 SETTABLEKS                       R8 R7 K29 ["SaveRecordingDataToDM"]
       91 LOADK                            R8 K30 ["OpenSaveRecordingDialog"]
       92 SETTABLEKS                       R8 R7 K30 ["OpenSaveRecordingDialog"]
       94 LOADK                            R8 K31 ["SetSavedRecordingName"]
       95 SETTABLEKS                       R8 R7 K31 ["SetSavedRecordingName"]
       97 LOADK                            R8 K32 ["SearchForUserInputRecordings"]
       98 SETTABLEKS                       R8 R7 K32 ["SearchForUserInputRecordings"]
      100 LOADK                            R8 K33 ["SetPlayableRecordings"]
      101 SETTABLEKS                       R8 R7 K33 ["SetPlayableRecordings"]
      103 LOADK                            R8 K34 ["LoadRecordingWithName"]
      104 SETTABLEKS                       R8 R7 K34 ["LoadRecordingWithName"]
      106 LOADK                            R8 K35 ["CurrentPlaybackRecordingDataStr"]
      107 SETTABLEKS                       R8 R7 K35 ["CurrentPlaybackRecordingDataStr"]
      109 LOADK                            R8 K36 ["CurrentPlaybackRecordingDataObj"]
      110 SETTABLEKS                       R8 R7 K36 ["CurrentPlaybackRecordingDataObj"]
      112 LOADK                            R8 K37 ["PlaybackInfoChanged"]
      113 SETTABLEKS                       R8 R7 K37 ["PlaybackInfoChanged"]
      115 LOADNIL                          R8
      116 NEWCLOSURE                       R9 P0
      117 CAPTURE                          REF R8
      118 SETTABLEKS                       R9 R6 K39 ["setPluginObject"]
      120 LOADNIL                          R9
      121 NEWCLOSURE                       R10 P1
      122 CAPTURE                          REF R9
      123 SETTABLEKS                       R10 R6 K40 ["setLocalizationObject"]
      125 NEWCLOSURE                       R10 P2
      126 CAPTURE                          REF R8
      127 CAPTURE                          VAL R7
      128 SETTABLEKS                       R10 R6 K41 ["setIsPlayMode"]
      130 NEWCLOSURE                       R10 P3
      131 CAPTURE                          REF R8
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R10 R6 K42 ["getIsPlayMode"]
      135 NEWCLOSURE                       R10 P4
      136 CAPTURE                          REF R8
      137 CAPTURE                          VAL R7
      138 SETTABLEKS                       R10 R6 K43 ["setPluginEnabled"]
      140 NEWCLOSURE                       R10 P5
      141 CAPTURE                          REF R8
      142 CAPTURE                          VAL R7
      143 SETTABLEKS                       R10 R6 K44 ["getPluginEnabled"]
      145 NEWCLOSURE                       R10 P6
      146 CAPTURE                          REF R8
      147 CAPTURE                          VAL R7
      148 SETTABLEKS                       R10 R6 K45 ["setRoduxState"]
      150 NEWCLOSURE                       R10 P7
      151 CAPTURE                          REF R8
      152 CAPTURE                          VAL R7
      153 SETTABLEKS                       R10 R6 K46 ["getRoduxState"]
      155 NEWCLOSURE                       R10 P8
      156 CAPTURE                          REF R8
      157 CAPTURE                          VAL R7
      158 SETTABLEKS                       R10 R6 K47 ["setPluginState"]
      160 DUPCLOSURE                       R10 K48 [PROTO_9]
      161 CAPTURE                          VAL R6
      162 SETTABLEKS                       R10 R6 K49 ["getPluginState"]
      164 NEWCLOSURE                       R10 P10
      165 CAPTURE                          REF R8
      166 CAPTURE                          VAL R7
      167 SETTABLEKS                       R10 R6 K50 ["setPluginStateRoduxActionHandler"]
      169 NEWCLOSURE                       R10 P11
      170 CAPTURE                          REF R8
      171 CAPTURE                          VAL R7
      172 SETTABLEKS                       R10 R6 K51 ["saveRecordingDataToDM"]
      174 DUPCLOSURE                       R10 K52 [PROTO_12]
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R2
      177 LOADNIL                          R11
      178 NEWCLOSURE                       R12 P13
      179 CAPTURE                          REF R8
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R2
      184 NEWCLOSURE                       R13 P14
      185 CAPTURE                          REF R8
      186 CAPTURE                          VAL R7
      187 SETTABLEKS                       R13 R6 K53 ["onSaveRecordingDialogCancel"]
      189 NEWCLOSURE                       R13 P15
      190 CAPTURE                          REF R8
      191 CAPTURE                          VAL R7
      192 SETTABLEKS                       R13 R6 K54 ["onSaveRecordingDialogSave"]
      194 NEWCLOSURE                       R13 P16
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R2
      197 CAPTURE                          REF R9
      198 CAPTURE                          REF R8
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R5
      201 NEWCLOSURE                       R14 P17
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R2
      204 CAPTURE                          REF R8
      205 CAPTURE                          VAL R7
      206 NEWTABLE                         R15 0 0
      208 NEWCLOSURE                       R16 P18
      209 CAPTURE                          VAL R3
      210 CAPTURE                          REF R15
      211 CAPTURE                          REF R8
      212 CAPTURE                          VAL R7
      213 NEWCLOSURE                       R17 P19
      214 CAPTURE                          REF R15
      215 LOADB                            R18 0
      216 NEWCLOSURE                       R19 P20
      217 CAPTURE                          REF R18
      218 CAPTURE                          REF R8
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R17
      223 CAPTURE                          REF R11
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R14
      226 CAPTURE                          VAL R13
      227 SETTABLEKS                       R19 R6 K55 ["setupEditDMEventListeners"]
      229 LOADB                            R19 0
      230 NEWCLOSURE                       R20 P21
      231 CAPTURE                          REF R19
      232 CAPTURE                          REF R8
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R16
      235 CAPTURE                          VAL R17
      236 SETTABLEKS                       R20 R6 K56 ["setupPlayClientDMEventListeners"]
      238 NEWCLOSURE                       R20 P22
      239 CAPTURE                          REF R8
      240 CAPTURE                          VAL R7
      241 SETTABLEKS                       R20 R6 K57 ["connectToStartRecordButtonClicked"]
      243 NEWCLOSURE                       R20 P23
      244 CAPTURE                          REF R8
      245 CAPTURE                          VAL R7
      246 SETTABLEKS                       R20 R6 K58 ["onStartRecordingButtonClicked"]
      248 NEWCLOSURE                       R20 P24
      249 CAPTURE                          REF R8
      250 CAPTURE                          VAL R7
      251 SETTABLEKS                       R20 R6 K59 ["connectToStopRecordButtonClicked"]
      253 NEWCLOSURE                       R20 P25
      254 CAPTURE                          REF R8
      255 CAPTURE                          VAL R7
      256 SETTABLEKS                       R20 R6 K60 ["onStopRecordingButtonClicked"]
      258 NEWCLOSURE                       R20 P26
      259 CAPTURE                          REF R8
      260 CAPTURE                          VAL R7
      261 SETTABLEKS                       R20 R6 K61 ["connectToStartPlaybackButtonClicked"]
      263 NEWCLOSURE                       R20 P27
      264 CAPTURE                          REF R8
      265 CAPTURE                          VAL R7
      266 SETTABLEKS                       R20 R6 K62 ["onStartPlaybackButtonClicked"]
      268 NEWCLOSURE                       R20 P28
      269 CAPTURE                          REF R8
      270 CAPTURE                          VAL R7
      271 SETTABLEKS                       R20 R6 K63 ["connectToStopPlaybackButtonClicked"]
      273 NEWCLOSURE                       R20 P29
      274 CAPTURE                          REF R8
      275 CAPTURE                          VAL R7
      276 SETTABLEKS                       R20 R6 K64 ["onStopPlaybackButtonClicked"]
      278 NEWCLOSURE                       R20 P30
      279 CAPTURE                          VAL R16
      280 CAPTURE                          REF R8
      281 CAPTURE                          VAL R7
      282 SETTABLEKS                       R20 R6 K65 ["onPlayClientSessionStarted"]
      284 NEWCLOSURE                       R20 P31
      285 CAPTURE                          REF R8
      286 CAPTURE                          VAL R7
      287 SETTABLEKS                       R20 R6 K66 ["getCurrentPlaybackRecordingDataStr"]
      289 NEWCLOSURE                       R20 P32
      290 CAPTURE                          REF R8
      291 CAPTURE                          VAL R7
      292 SETTABLEKS                       R20 R6 K67 ["getCurrentPlaybackRecordingDataObj"]
      294 NEWTABLE                         R20 0 0
      296 NEWCLOSURE                       R21 P33
      297 CAPTURE                          REF R20
      298 CAPTURE                          REF R8
      299 CAPTURE                          VAL R7
      300 SETTABLEKS                       R21 R6 K68 ["connectRecordTabEventListenersWithActions"]
      302 NEWCLOSURE                       R21 P34
      303 CAPTURE                          REF R20
      304 SETTABLEKS                       R21 R6 K69 ["disconnectRecordTabEventListeners"]
      306 NEWCLOSURE                       R21 P35
      307 CAPTURE                          REF R8
      308 CAPTURE                          VAL R7
      309 SETTABLEKS                       R21 R6 K70 ["onRecordTabShown"]
      311 NEWCLOSURE                       R21 P36
      312 CAPTURE                          REF R8
      313 CAPTURE                          VAL R7
      314 SETTABLEKS                       R21 R6 K71 ["onRecordTabHidden"]
      316 LOADNIL                          R21
      317 NEWCLOSURE                       R22 P37
      318 CAPTURE                          REF R21
      319 SETTABLEKS                       R22 R6 K72 ["disconnectSetPlayableRecordingsCallback"]
      321 NEWCLOSURE                       R22 P38
      322 CAPTURE                          VAL R6
      323 CAPTURE                          REF R21
      324 CAPTURE                          REF R8
      325 CAPTURE                          VAL R7
      326 SETTABLEKS                       R22 R6 K73 ["connectSetPlayableRecordingsCallback"]
      328 NEWCLOSURE                       R22 P39
      329 CAPTURE                          REF R8
      330 CAPTURE                          VAL R7
      331 SETTABLEKS                       R22 R6 K74 ["searchForUserInputRecordings"]
      333 NEWCLOSURE                       R22 P40
      334 CAPTURE                          REF R8
      335 CAPTURE                          VAL R7
      336 SETTABLEKS                       R22 R6 K75 ["loadRecordingWithName"]
      338 LOADNIL                          R22
      339 NEWCLOSURE                       R23 P41
      340 CAPTURE                          REF R22
      341 CAPTURE                          REF R8
      342 CAPTURE                          VAL R7
      343 SETTABLEKS                       R23 R6 K76 ["connectPlaybackInfoChangedCallback"]
      345 NEWCLOSURE                       R23 P42
      346 CAPTURE                          REF R22
      347 SETTABLEKS                       R23 R6 K77 ["disconnectPlaybackInfoChangedCallback"]
      349 CLOSEUPVALS                      R8
      350 RETURN                           R6 1
