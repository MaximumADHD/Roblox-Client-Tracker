PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        2 JUMPIFEQKS                       R1 K1 ["Model"] ; [+3]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 LOADK                            R4 K1 ["Model"]
        7 NAMECALL                         R2 R0 K2 ["IsA"]
        9 CALL                             R2 2 -1
       10 FASTCALL                         ASSERT ; [+2]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 -1 0
       14 NAMECALL                         R2 R0 K5 ["GetChildren"]
       16 CALL                             R2 1 1
       17 LENGTH                           R1 R2
       18 LOADN                            R2 0
       19 JUMPIFNOTLT                      R2 R1 ; [+3]
       21 LOADB                            R1 0
       22 RETURN                           R1 1
       23 GETTABLEKS                       R1 R0 K6 ["WorldPivot"]
       25 GETIMPORT                        R2 K9 [CFrame.identity]
       27 JUMPIFEQ                         R1 R2 ; [+3]
       29 LOADB                            R1 0
       30 RETURN                           R1 1
       31 GETIMPORT                        R1 K11 [next]
       33 NAMECALL                         R2 R0 K12 ["GetTags"]
       35 CALL                             R2 1 -1
       36 CALL                             R1 -1 1
       37 JUMPIFNOTEQKNIL                  R1 ; [+9]
       39 GETIMPORT                        R1 K11 [next]
       41 NAMECALL                         R2 R0 K13 ["GetAttributes"]
       43 CALL                             R2 1 -1
       44 CALL                             R1 -1 1
       45 JUMPIFEQKNIL                     R1 ; [+3]
       47 LOADB                            R1 0
       48 RETURN                           R1 1
       49 LOADB                            R1 1
       50 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R2 ; [+3]
        1 GETTABLEKS                       R3 R2 K0 ["anchor"]
        3 JUMPIF                           R3 ; [+1]
        4 LOADNIL                          R3
        5 GETTABLEKS                       R4 R0 K1 ["Parent"]
        7 LOADNIL                          R5
        8 SETTABLEKS                       R5 R1 K1 ["Parent"]
       10 MOVE                             R5 R1
       11 GETUPVAL                         R6 0
       12 CALL                             R6 0 1
       13 JUMPIF                           R6 ; [+15]
       14 GETUPVAL                         R6 1
       15 MOVE                             R7 R0
       16 CALL                             R6 1 1
       17 JUMPIFNOT                        R6 ; [+11]
       18 NAMECALL                         R8 R0 K2 ["GetPivot"]
       20 CALL                             R8 1 -1
       21 NAMECALL                         R6 R1 K3 ["PivotTo"]
       23 CALL                             R6 -1 0
       24 LOADNIL                          R6
       25 SETTABLEKS                       R6 R0 K1 ["Parent"]
       27 MOVE                             R5 R1
       28 JUMP                             ; [+106]
       29 NAMECALL                         R8 R0 K4 ["GetScale"]
       31 CALL                             R8 1 -1
       32 NAMECALL                         R6 R1 K5 ["ScaleTo"]
       34 CALL                             R6 -1 0
       35 JUMPIFEQKNIL                     R3 ; [+66]
       37 LOADK                            R8 K6 ["MeshPart"]
       38 NAMECALL                         R6 R3 K7 ["IsA"]
       40 CALL                             R6 2 1
       41 JUMPIF                           R6 ; [+9]
       42 LOADNIL                          R6
       43 LOADK                            R8 K8 ["Relative target instance must be a MeshPart, got %*"]
       44 GETTABLEKS                       R10 R3 K9 ["ClassName"]
       46 NAMECALL                         R8 R8 K10 ["format"]
       48 CALL                             R8 2 1
       49 MOVE                             R7 R8
       50 RETURN                           R6 2
       51 GETUPVAL                         R6 2
       52 GETTABLEKS                       R6 R6 K11 ["findMatching"]
       54 MOVE                             R7 R0
       55 MOVE                             R8 R3
       56 MOVE                             R9 R1
       57 CALL                             R6 3 1
       58 JUMPIFNOTEQKNIL                  R6 ; [+10]
       60 LOADNIL                          R7
       61 LOADK                            R9 K12 ["No match for relative target instance %* found in incoming tree"]
       62 GETTABLEKS                       R11 R3 K13 ["Name"]
       64 NAMECALL                         R9 R9 K10 ["format"]
       66 CALL                             R9 2 1
       67 MOVE                             R8 R9
       68 RETURN                           R7 2
       69 LOADK                            R9 K6 ["MeshPart"]
       70 NAMECALL                         R7 R6 K7 ["IsA"]
       72 CALL                             R7 2 1
       73 JUMPIF                           R7 ; [+9]
       74 LOADNIL                          R7
       75 LOADK                            R9 K14 ["relative Target instance must be a MeshPart, matching instance in incoming tree has class: %*"]
       76 GETTABLEKS                       R11 R6 K9 ["ClassName"]
       78 NAMECALL                         R9 R9 K10 ["format"]
       80 CALL                             R9 2 1
       81 MOVE                             R8 R9
       82 RETURN                           R7 2
       83 NAMECALL                         R8 R3 K2 ["GetPivot"]
       85 CALL                             R8 1 1
       86 NAMECALL                         R9 R6 K2 ["GetPivot"]
       88 CALL                             R9 1 1
       89 NAMECALL                         R9 R9 K15 ["Inverse"]
       91 CALL                             R9 1 1
       92 MUL                              R7 R8 R9
       93 NAMECALL                         R9 R1 K2 ["GetPivot"]
       95 CALL                             R9 1 1
       96 MUL                              R8 R9 R7
       97 MOVE                             R11 R8
       98 NAMECALL                         R9 R1 K3 ["PivotTo"]
      100 CALL                             R9 2 0
      101 JUMP                             ; [+6]
      102 NAMECALL                         R8 R0 K2 ["GetPivot"]
      104 CALL                             R8 1 -1
      105 NAMECALL                         R6 R1 K3 ["PivotTo"]
      107 CALL                             R6 -1 0
      108 GETUPVAL                         R6 2
      109 GETTABLEKS                       R6 R6 K16 ["applyTree"]
      111 MOVE                             R7 R0
      112 MOVE                             R8 R1
      113 CALL                             R6 2 2
      114 JUMPIFEQKNIL                     R7 ; [+4]
      116 LOADNIL                          R8
      117 MOVE                             R9 R7
      118 RETURN                           R8 2
      119 FASTCALL1                        ASSERT R6 ; [+3]
      120 MOVE                             R9 R6
      121 GETIMPORT                        R8 K18 [assert]
      123 CALL                             R8 1 0
      124 GETUPVAL                         R8 0
      125 CALL                             R8 0 1
      126 JUMPIFNOT                        R8 ; [+4]
      127 GETTABLEKS                       R8 R1 K19 ["WorldPivot"]
      129 SETTABLEKS                       R8 R6 K19 ["WorldPivot"]
      131 MOVE                             R5 R6
      132 LOADNIL                          R8
      133 SETTABLEKS                       R8 R1 K1 ["Parent"]
      135 SETTABLEKS                       R4 R5 K1 ["Parent"]
      137 MOVE                             R6 R5
      138 LOADNIL                          R7
      139 RETURN                           R6 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MULK                             R2 R3 K0 [0.6]
        3 ADD                              R0 R1 R2
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K1 ["progress"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 0
        3 MULK                             R3 R4 K0 [0.6]
        4 ADD                              R1 R2 R3
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["progress"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["success"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 0
        4 MULK                             R3 R4 K0 [0.6]
        5 ADD                              R1 R2 R3
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["progress"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R1 R0 K2 ["Succeeded"]
       13 JUMPIF                           R1 ; [+26]
       14 NEWTABLE                         R1 0 0
       16 GETTABLEKS                       R2 R0 K3 ["ErrorMessages"]
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 DUPTABLE                         R9 K6 [{"label", "mesage"}]
       22 SETTABLEKS                       R5 R9 K4 ["label"]
       24 SETTABLEKS                       R6 R9 K5 ["mesage"]
       26 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       28 MOVE                             R8 R1
       29 GETIMPORT                        R7 K9 [table.insert]
       31 CALL                             R7 2 0
       32 FORGLOOP                         R2 2 ; [-12]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K10 ["error"]
       37 MOVE                             R3 R1
       38 CALL                             R2 1 0
       39 RETURN                           R0 0
       40 GETTABLEKS                       R1 R0 K11 ["Instance"]
       42 JUMPIF                           R1 ; [+6]
       43 GETUPVAL                         R2 2
       44 GETTABLEKS                       R2 R2 K10 ["error"]
       46 LOADK                            R3 K12 ["No instance returned from upload"]
       47 CALL                             R2 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 3
       50 LOADK                            R4 K13 ["Reimport apply instance"]
       51 NAMECALL                         R2 R2 K14 ["TryBeginRecording"]
       53 CALL                             R2 2 1
       54 DUPTABLE                         R3 K16 [{"anchor"}]
       55 GETUPVAL                         R4 4
       56 GETTABLEKS                       R4 R4 K15 ["anchor"]
       58 SETTABLEKS                       R4 R3 K15 ["anchor"]
       60 GETUPVAL                         R4 5
       61 GETTABLEKS                       R4 R4 K17 ["doReimportApply"]
       63 GETUPVAL                         R5 6
       64 MOVE                             R6 R1
       65 MOVE                             R7 R3
       66 CALL                             R4 3 2
       67 JUMPIFNOT                        R5 ; [+6]
       68 GETUPVAL                         R6 2
       69 GETTABLEKS                       R6 R6 K10 ["error"]
       71 MOVE                             R7 R5
       72 CALL                             R6 1 0
       73 RETURN                           R0 0
       74 FASTCALL1                        ASSERT R4 ; [+3]
       75 MOVE                             R7 R4
       76 GETIMPORT                        R6 K19 [assert]
       78 CALL                             R6 1 0
       79 GETUPVAL                         R6 1
       80 ADDK                             R6 R6 K20 [0.2]
       81 SETUPVAL                         R6 1
       82 GETUPVAL                         R7 1
       83 GETUPVAL                         R9 0
       84 MULK                             R8 R9 K0 [0.6]
       85 ADD                              R6 R7 R8
       86 GETUPVAL                         R7 2
       87 GETTABLEKS                       R7 R7 K1 ["progress"]
       89 MOVE                             R8 R6
       90 CALL                             R7 1 0
       91 GETUPVAL                         R6 7
       92 JUMPIFNOTEQKNIL                  R6 ; [+7]
       94 GETUPVAL                         R6 8
       95 GETTABLEKS                       R6 R6 K21 ["newConfig"]
       97 GETUPVAL                         R7 9
       98 CALL                             R6 1 1
       99 SETUPVAL                         R6 7
      100 GETUPVAL                         R8 8
      101 GETTABLEKS                       R8 R8 K22 ["ATTRIBUTE_KEY"]
      103 GETUPVAL                         R9 7
      104 NAMECALL                         R6 R4 K23 ["SetAttribute"]
      106 CALL                             R6 3 0
      107 JUMPIFNOT                        R2 ; [+7]
      108 GETUPVAL                         R6 3
      109 MOVE                             R8 R2
      110 GETIMPORT                        R9 K27 [Enum.FinishRecordingOperation.Commit]
      112 NAMECALL                         R6 R6 K28 ["FinishRecording"]
      114 CALL                             R6 3 0
      115 GETUPVAL                         R6 10
      116 CALL                             R6 0 1
      117 JUMPIF                           R6 ; [+40]
      118 GETUPVAL                         R6 11
      119 GETTABLEKS                       R6 R6 K29 ["logReimportEvent"]
      121 DUPTABLE                         R7 K34 [{"configId", "usedStudioDefaultPreset", "wasReimportRelativeToThis", "targetType"}]
      122 GETUPVAL                         R8 7
      123 SETTABLEKS                       R8 R7 K30 ["configId"]
      125 LOADB                            R8 1
      126 GETUPVAL                         R9 9
      127 GETTABLEKS                       R9 R9 K35 ["preset"]
      129 JUMPIFEQKNIL                     R9 ; [+11]
      131 GETUPVAL                         R9 9
      132 GETTABLEKS                       R9 R9 K35 ["preset"]
      134 GETUPVAL                         R10 12
      135 GETTABLEKS                       R10 R10 K36 ["StudioDefaultPreset"]
      137 JUMPIFEQ                         R9 R10 ; [+2]
      139 LOADB                            R8 0 +1
      140 LOADB                            R8 1
      141 SETTABLEKS                       R8 R7 K31 ["usedStudioDefaultPreset"]
      143 GETUPVAL                         R9 4
      144 GETTABLEKS                       R9 R9 K15 ["anchor"]
      146 JUMPIFNOTEQKNIL                  R9 ; [+2]
      148 LOADB                            R8 0 +1
      149 LOADB                            R8 1
      150 SETTABLEKS                       R8 R7 K32 ["wasReimportRelativeToThis"]
      152 GETUPVAL                         R8 6
      153 GETTABLEKS                       R8 R8 K37 ["ClassName"]
      155 SETTABLEKS                       R8 R7 K33 ["targetType"]
      157 CALL                             R6 1 0
      158 GETIMPORT                        R6 K40 [task.delay]
      160 LOADK                            R7 K41 [0.3]
      161 NEWCLOSURE                       R8 P0
      162 CAPTURE                          UPVAL U2
      163 CALL                             R6 2 0
      164 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R2 ; [+2]
        1 MOVE                             R3 R2
        2 JUMP                             ; [+2]
        3 NEWTABLE                         R3 0 0
        5 LOADN                            R4 0
        6 LOADN                            R5 0
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          REF R4
        9 CAPTURE                          REF R5
       10 CAPTURE                          VAL R1
       11 LOADK                            R9 K0 ["Model"]
       12 NAMECALL                         R7 R0 K1 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIF                           R7 ; [+6]
       16 GETTABLEKS                       R7 R1 K2 ["error"]
       18 LOADK                            R8 K3 ["ReimportModel can only be called on Models"]
       19 CALL                             R7 1 0
       20 CLOSEUPVALS                      R4
       21 RETURN                           R0 0
       22 LOADNIL                          R7
       23 LOADNIL                          R8
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K4 ["getConfigFromInstance"]
       27 MOVE                             R10 R0
       28 CALL                             R9 1 2
       29 MOVE                             R7 R9
       30 MOVE                             R8 R10
       31 JUMPIFNOT                        R8 ; [+8]
       32 GETTABLEKS                       R9 R8 K5 ["filepath"]
       34 JUMPIFEQKNIL                     R9 ; [+5]
       36 GETTABLEKS                       R9 R8 K5 ["filepath"]
       38 JUMPIFNOTEQKS                    R9 K6 [""] ; [+7]
       40 GETTABLEKS                       R9 R1 K2 ["error"]
       42 LOADK                            R10 K7 ["No reimport config found for selection"]
       43 CALL                             R9 1 0
       44 CLOSEUPVALS                      R4
       45 RETURN                           R0 0
       46 MULK                             R10 R5 K8 [0.6]
       47 ADD                              R9 R4 R10
       48 GETTABLEKS                       R10 R1 K9 ["progress"]
       50 MOVE                             R11 R9
       51 CALL                             R10 1 0
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R11 R8 K5 ["filepath"]
       55 NAMECALL                         R9 R9 K10 ["StartSessionWithPathAsync"]
       57 CALL                             R9 2 1
       58 JUMPIF                           R9 ; [+6]
       59 GETTABLEKS                       R10 R1 K2 ["error"]
       61 LOADK                            R11 K11 ["Failed to start import session"]
       62 CALL                             R10 1 0
       63 CLOSEUPVALS                      R4
       64 RETURN                           R0 0
       65 NAMECALL                         R10 R9 K12 ["GetImportTree"]
       67 CALL                             R10 1 1
       68 JUMPIFNOTEQKNIL                  R10 ; [+7]
       70 GETTABLEKS                       R10 R1 K2 ["error"]
       72 LOADK                            R11 K13 ["Import tree is nil"]
       73 CALL                             R10 1 0
       74 CLOSEUPVALS                      R4
       75 RETURN                           R0 0
       76 ADDK                             R4 R4 K14 [0.1]
       77 MULK                             R11 R5 K8 [0.6]
       78 ADD                              R10 R4 R11
       79 GETTABLEKS                       R11 R1 K9 ["progress"]
       81 MOVE                             R12 R10
       82 CALL                             R11 1 0
       83 GETTABLEKS                       R10 R9 K15 ["UploadProgress"]
       85 NEWCLOSURE                       R12 P1
       86 CAPTURE                          REF R5
       87 CAPTURE                          REF R4
       88 CAPTURE                          VAL R1
       89 NAMECALL                         R10 R10 K16 ["Connect"]
       91 CALL                             R10 2 0
       92 GETTABLEKS                       R10 R9 K17 ["UploadComplete"]
       94 NEWCLOSURE                       R12 P2
       95 CAPTURE                          REF R5
       96 CAPTURE                          REF R4
       97 CAPTURE                          VAL R1
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          VAL R3
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          VAL R0
      102 CAPTURE                          REF R7
      103 CAPTURE                          UPVAL U0
      104 CAPTURE                          REF R8
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          UPVAL U5
      107 CAPTURE                          UPVAL U6
      108 NAMECALL                         R10 R10 K16 ["Connect"]
      110 CALL                             R10 2 0
      111 NAMECALL                         R10 R9 K12 ["GetImportTree"]
      113 CALL                             R10 1 1
      114 LOADB                            R11 0
      115 SETTABLEKS                       R11 R10 K18 ["AddModelToInventory"]
      117 GETUPVAL                         R11 7
      118 CALL                             R11 0 1
      119 JUMPIFNOT                        R11 ; [+8]
      120 GETTABLEKS                       R11 R8 K19 ["creatorId"]
      122 JUMPIFEQKNIL                     R11 ; [+5]
      124 GETTABLEKS                       R11 R8 K19 ["creatorId"]
      126 SETTABLEKS                       R11 R10 K20 ["PreferredUploadId"]
      128 GETTABLEKS                       R11 R8 K21 ["preset"]
      130 JUMPIFEQKNIL                     R11 ; [+11]
      132 GETUPVAL                         R11 1
      133 GETTABLEKS                       R13 R8 K21 ["preset"]
      135 NAMECALL                         R11 R11 K22 ["GetPreset"]
      137 CALL                             R11 2 1
      138 MOVE                             R14 R11
      139 NAMECALL                         R12 R9 K23 ["ApplyPreset"]
      141 CALL                             R12 2 0
      142 NAMECALL                         R11 R9 K24 ["Upload"]
      144 CALL                             R11 1 0
      145 ADDK                             R4 R4 K14 [0.1]
      146 MULK                             R12 R5 K8 [0.6]
      147 ADD                              R11 R4 R12
      148 GETTABLEKS                       R12 R1 K9 ["progress"]
      150 MOVE                             R13 R11
      151 CALL                             R12 1 0
      152 CLOSEUPVALS                      R4
      153 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Lib"]
       18 GETTABLEKS                       R3 R3 K8 ["External"]
       20 GETTABLEKS                       R3 R3 K9 ["AssetImportService"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Lib"]
       27 GETTABLEKS                       R4 R4 K8 ["External"]
       29 GETTABLEKS                       R4 R4 K10 ["ChangeHistoryService"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Lib"]
       36 GETTABLEKS                       R5 R5 K11 ["Reimport"]
       38 GETTABLEKS                       R5 R5 K12 ["ReimportConfigs"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Lib"]
       45 GETTABLEKS                       R6 R6 K11 ["Reimport"]
       47 GETTABLEKS                       R6 R6 K13 ["TreeMerge"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Lib"]
       54 GETTABLEKS                       R7 R7 K14 ["Util"]
       56 GETTABLEKS                       R7 R7 K15 ["Telemetry"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K16 ["Flags"]
       63 GETTABLEKS                       R8 R8 K17 ["GetFFlagEnableGroupUpload"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K16 ["Flags"]
       70 GETTABLEKS                       R9 R9 K18 ["GetFFlagReimportBasicTelemetry"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K16 ["Flags"]
       77 GETTABLEKS                       R10 R10 K19 ["GetFFlagReimportEmptyModelPivotFix"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETIMPORT                        R11 K1 [script]
       84 GETTABLEKS                       R11 R11 K20 ["Parent"]
       86 GETTABLEKS                       R11 R11 K21 ["Types"]
       88 CALL                             R10 1 1
       89 DUPCLOSURE                       R11 K22 [PROTO_0]
       90 NEWTABLE                         R12 2 0
       92 DUPCLOSURE                       R13 K23 [PROTO_1]
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R13 R12 K24 ["doReimportApply"]
       98 DUPCLOSURE                       R13 K25 [PROTO_6]
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R7
      107 SETTABLEKS                       R13 R12 K26 ["reimport"]
      109 RETURN                           R12 1
