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
       12 MOVE                             R7 R0
       13 CALL                             R6 1 1
       14 JUMPIFNOT                        R6 ; [+11]
       15 NAMECALL                         R8 R0 K2 ["GetPivot"]
       17 CALL                             R8 1 -1
       18 NAMECALL                         R6 R1 K3 ["PivotTo"]
       20 CALL                             R6 -1 0
       21 LOADNIL                          R6
       22 SETTABLEKS                       R6 R0 K1 ["Parent"]
       24 MOVE                             R5 R1
       25 JUMP                             ; [+99]
       26 NAMECALL                         R8 R0 K4 ["GetScale"]
       28 CALL                             R8 1 -1
       29 NAMECALL                         R6 R1 K5 ["ScaleTo"]
       31 CALL                             R6 -1 0
       32 JUMPIFEQKNIL                     R3 ; [+66]
       34 LOADK                            R8 K6 ["MeshPart"]
       35 NAMECALL                         R6 R3 K7 ["IsA"]
       37 CALL                             R6 2 1
       38 JUMPIF                           R6 ; [+9]
       39 LOADNIL                          R6
       40 LOADK                            R8 K8 ["Relative target instance must be a MeshPart, got %*"]
       41 GETTABLEKS                       R10 R3 K9 ["ClassName"]
       43 NAMECALL                         R8 R8 K10 ["format"]
       45 CALL                             R8 2 1
       46 MOVE                             R7 R8
       47 RETURN                           R6 2
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R6 R7 K11 ["findMatching"]
       51 MOVE                             R7 R0
       52 MOVE                             R8 R3
       53 MOVE                             R9 R1
       54 CALL                             R6 3 1
       55 JUMPIFNOTEQKNIL                  R6 ; [+10]
       57 LOADNIL                          R7
       58 LOADK                            R9 K12 ["No match for relative target instance %* found in incoming tree"]
       59 GETTABLEKS                       R11 R3 K13 ["Name"]
       61 NAMECALL                         R9 R9 K10 ["format"]
       63 CALL                             R9 2 1
       64 MOVE                             R8 R9
       65 RETURN                           R7 2
       66 LOADK                            R9 K6 ["MeshPart"]
       67 NAMECALL                         R7 R6 K7 ["IsA"]
       69 CALL                             R7 2 1
       70 JUMPIF                           R7 ; [+9]
       71 LOADNIL                          R7
       72 LOADK                            R9 K14 ["relative Target instance must be a MeshPart, matching instance in incoming tree has class: %*"]
       73 GETTABLEKS                       R11 R6 K9 ["ClassName"]
       75 NAMECALL                         R9 R9 K10 ["format"]
       77 CALL                             R9 2 1
       78 MOVE                             R8 R9
       79 RETURN                           R7 2
       80 NAMECALL                         R8 R3 K2 ["GetPivot"]
       82 CALL                             R8 1 1
       83 NAMECALL                         R9 R6 K2 ["GetPivot"]
       85 CALL                             R9 1 1
       86 NAMECALL                         R9 R9 K15 ["Inverse"]
       88 CALL                             R9 1 1
       89 MUL                              R7 R8 R9
       90 NAMECALL                         R9 R1 K2 ["GetPivot"]
       92 CALL                             R9 1 1
       93 MUL                              R8 R9 R7
       94 MOVE                             R11 R8
       95 NAMECALL                         R9 R1 K3 ["PivotTo"]
       97 CALL                             R9 2 0
       98 JUMP                             ; [+6]
       99 NAMECALL                         R8 R0 K2 ["GetPivot"]
      101 CALL                             R8 1 -1
      102 NAMECALL                         R6 R1 K3 ["PivotTo"]
      104 CALL                             R6 -1 0
      105 GETUPVAL                         R7 1
      106 GETTABLEKS                       R6 R7 K16 ["applyTree"]
      108 MOVE                             R7 R0
      109 MOVE                             R8 R1
      110 CALL                             R6 2 2
      111 JUMPIFEQKNIL                     R7 ; [+4]
      113 LOADNIL                          R8
      114 MOVE                             R9 R7
      115 RETURN                           R8 2
      116 FASTCALL1                        ASSERT R6 ; [+3]
      117 MOVE                             R9 R6
      118 GETIMPORT                        R8 K18 [assert]
      120 CALL                             R8 1 0
      121 MOVE                             R5 R6
      122 LOADNIL                          R8
      123 SETTABLEKS                       R8 R1 K1 ["Parent"]
      125 SETTABLEKS                       R4 R5 K1 ["Parent"]
      127 MOVE                             R6 R5
      128 LOADNIL                          R7
      129 RETURN                           R6 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MULK                             R2 R3 K0 [0.6]
        3 ADD                              R0 R1 R2
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K1 ["progress"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["PickMeshFileWithPrompt"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 0
        3 MULK                             R3 R4 K0 [0.6]
        4 ADD                              R1 R2 R3
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["progress"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["success"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 0
        4 MULK                             R3 R4 K0 [0.6]
        5 ADD                              R1 R2 R3
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["progress"]
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
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R2 R3 K10 ["error"]
       37 MOVE                             R3 R1
       38 CALL                             R2 1 0
       39 RETURN                           R0 0
       40 GETTABLEKS                       R1 R0 K11 ["Instance"]
       42 JUMPIF                           R1 ; [+6]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R2 R3 K10 ["error"]
       46 LOADK                            R3 K12 ["No instance returned from upload"]
       47 CALL                             R2 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 3
       50 LOADK                            R4 K13 ["Reimport apply instance"]
       51 NAMECALL                         R2 R2 K14 ["TryBeginRecording"]
       53 CALL                             R2 2 1
       54 DUPTABLE                         R3 K16 [{"anchor"}]
       55 GETUPVAL                         R5 4
       56 GETTABLEKS                       R4 R5 K15 ["anchor"]
       58 SETTABLEKS                       R4 R3 K15 ["anchor"]
       60 GETUPVAL                         R5 5
       61 GETTABLEKS                       R4 R5 K17 ["doReimportApply"]
       63 GETUPVAL                         R5 6
       64 MOVE                             R6 R1
       65 MOVE                             R7 R3
       66 CALL                             R4 3 2
       67 JUMPIFNOT                        R5 ; [+6]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R6 R7 K10 ["error"]
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
       86 GETUPVAL                         R8 2
       87 GETTABLEKS                       R7 R8 K1 ["progress"]
       89 MOVE                             R8 R6
       90 CALL                             R7 1 0
       91 GETUPVAL                         R6 7
       92 JUMPIFNOTEQKNIL                  R6 ; [+7]
       94 GETUPVAL                         R7 8
       95 GETTABLEKS                       R6 R7 K21 ["newConfig"]
       97 GETUPVAL                         R7 9
       98 CALL                             R6 1 1
       99 SETUPVAL                         R6 7
      100 GETUPVAL                         R9 8
      101 GETTABLEKS                       R8 R9 K22 ["ATTRIBUTE_KEY"]
      103 GETUPVAL                         R9 7
      104 NAMECALL                         R6 R4 K23 ["SetAttribute"]
      106 CALL                             R6 3 0
      107 JUMPIFNOT                        R2 ; [+7]
      108 GETUPVAL                         R6 3
      109 MOVE                             R8 R2
      110 GETIMPORT                        R9 K27 [Enum.FinishRecordingOperation.Commit]
      112 NAMECALL                         R6 R6 K28 ["FinishRecording"]
      114 CALL                             R6 3 0
      115 GETUPVAL                         R7 10
      116 GETTABLEKS                       R6 R7 K29 ["logReimportEvent"]
      118 DUPTABLE                         R7 K34 [{"configId", "usedStudioDefaultPreset", "wasReimportRelativeToThis", "targetType"}]
      119 GETUPVAL                         R8 7
      120 SETTABLEKS                       R8 R7 K30 ["configId"]
      122 LOADB                            R8 1
      123 GETUPVAL                         R10 9
      124 GETTABLEKS                       R9 R10 K35 ["preset"]
      126 JUMPIFEQKNIL                     R9 ; [+11]
      128 GETUPVAL                         R10 9
      129 GETTABLEKS                       R9 R10 K35 ["preset"]
      131 GETUPVAL                         R11 11
      132 GETTABLEKS                       R10 R11 K36 ["StudioDefaultPreset"]
      134 JUMPIFEQ                         R9 R10 ; [+2]
      136 LOADB                            R8 0 +1
      137 LOADB                            R8 1
      138 SETTABLEKS                       R8 R7 K31 ["usedStudioDefaultPreset"]
      140 GETUPVAL                         R10 4
      141 GETTABLEKS                       R9 R10 K15 ["anchor"]
      143 JUMPIFNOTEQKNIL                  R9 ; [+2]
      145 LOADB                            R8 0 +1
      146 LOADB                            R8 1
      147 SETTABLEKS                       R8 R7 K32 ["wasReimportRelativeToThis"]
      149 GETUPVAL                         R9 6
      150 GETTABLEKS                       R8 R9 K37 ["ClassName"]
      152 SETTABLEKS                       R8 R7 K33 ["targetType"]
      154 CALL                             R6 1 0
      155 GETIMPORT                        R6 K40 [task.delay]
      157 LOADK                            R7 K41 [0.3]
      158 NEWCLOSURE                       R8 P0
      159 CAPTURE                          UPVAL U2
      160 CALL                             R6 2 0
      161 RETURN                           R0 0

PROTO_7:
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
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K4 ["getOrCreateReimportConfig"]
       25 MOVE                             R8 R0
       26 DUPCLOSURE                       R9 K5 [PROTO_3]
       27 CAPTURE                          UPVAL U1
       28 CALL                             R7 2 2
       29 GETTABLEKS                       R9 R8 K6 ["filepath"]
       31 JUMPIFEQKNIL                     R9 ; [+5]
       33 GETTABLEKS                       R9 R8 K6 ["filepath"]
       35 JUMPIFNOTEQKS                    R9 K7 [""] ; [+10]
       37 GETTABLEKS                       R9 R1 K8 ["warning"]
       39 LOADK                            R10 K9 ["No file selected for reimport"]
       40 CALL                             R9 1 0
       41 GETTABLEKS                       R9 R1 K10 ["success"]
       43 CALL                             R9 0 0
       44 CLOSEUPVALS                      R4
       45 RETURN                           R0 0
       46 MULK                             R10 R5 K11 [0.6]
       47 ADD                              R9 R4 R10
       48 GETTABLEKS                       R10 R1 K12 ["progress"]
       50 MOVE                             R11 R9
       51 CALL                             R10 1 0
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R11 R8 K6 ["filepath"]
       55 NAMECALL                         R9 R9 K13 ["StartSessionWithPathAsync"]
       57 CALL                             R9 2 1
       58 JUMPIF                           R9 ; [+6]
       59 GETTABLEKS                       R10 R1 K2 ["error"]
       61 LOADK                            R11 K14 ["Failed to start import session"]
       62 CALL                             R10 1 0
       63 CLOSEUPVALS                      R4
       64 RETURN                           R0 0
       65 NAMECALL                         R10 R9 K15 ["GetImportTree"]
       67 CALL                             R10 1 1
       68 JUMPIFNOTEQKNIL                  R10 ; [+7]
       70 GETTABLEKS                       R10 R1 K2 ["error"]
       72 LOADK                            R11 K16 ["Import tree is nil"]
       73 CALL                             R10 1 0
       74 CLOSEUPVALS                      R4
       75 RETURN                           R0 0
       76 ADDK                             R4 R4 K17 [0.1]
       77 MULK                             R11 R5 K11 [0.6]
       78 ADD                              R10 R4 R11
       79 GETTABLEKS                       R11 R1 K12 ["progress"]
       81 MOVE                             R12 R10
       82 CALL                             R11 1 0
       83 GETTABLEKS                       R10 R9 K18 ["UploadProgress"]
       85 NEWCLOSURE                       R12 P2
       86 CAPTURE                          REF R5
       87 CAPTURE                          REF R4
       88 CAPTURE                          VAL R1
       89 NAMECALL                         R10 R10 K19 ["Connect"]
       91 CALL                             R10 2 0
       92 GETTABLEKS                       R10 R9 K20 ["UploadComplete"]
       94 NEWCLOSURE                       R12 P3
       95 CAPTURE                          REF R5
       96 CAPTURE                          REF R4
       97 CAPTURE                          VAL R1
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          VAL R3
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          VAL R0
      102 CAPTURE                          REF R7
      103 CAPTURE                          UPVAL U0
      104 CAPTURE                          VAL R8
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          UPVAL U5
      107 NAMECALL                         R10 R10 K19 ["Connect"]
      109 CALL                             R10 2 0
      110 NAMECALL                         R10 R9 K15 ["GetImportTree"]
      112 CALL                             R10 1 1
      113 LOADB                            R11 0
      114 SETTABLEKS                       R11 R10 K21 ["AddModelToInventory"]
      116 GETUPVAL                         R11 6
      117 CALL                             R11 0 1
      118 JUMPIFNOT                        R11 ; [+8]
      119 GETTABLEKS                       R11 R8 K22 ["creatorId"]
      121 JUMPIFEQKNIL                     R11 ; [+5]
      123 GETTABLEKS                       R11 R8 K22 ["creatorId"]
      125 SETTABLEKS                       R11 R10 K23 ["PreferredUploadId"]
      127 GETTABLEKS                       R11 R8 K24 ["preset"]
      129 JUMPIFEQKNIL                     R11 ; [+11]
      131 GETUPVAL                         R11 1
      132 GETTABLEKS                       R13 R8 K24 ["preset"]
      134 NAMECALL                         R11 R11 K25 ["GetPreset"]
      136 CALL                             R11 2 1
      137 MOVE                             R14 R11
      138 NAMECALL                         R12 R9 K26 ["ApplyPreset"]
      140 CALL                             R12 2 0
      141 NAMECALL                         R11 R9 K27 ["Upload"]
      143 CALL                             R11 1 0
      144 ADDK                             R4 R4 K17 [0.1]
      145 MULK                             R12 R5 K11 [0.6]
      146 ADD                              R11 R4 R12
      147 GETTABLEKS                       R12 R1 K12 ["progress"]
      149 MOVE                             R13 R11
      150 CALL                             R12 1 0
      151 CLOSEUPVALS                      R4
      152 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Lib"]
       18 GETTABLEKS                       R4 R5 K8 ["External"]
       20 GETTABLEKS                       R3 R4 K9 ["AssetImportService"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Lib"]
       27 GETTABLEKS                       R5 R6 K8 ["External"]
       29 GETTABLEKS                       R4 R5 K10 ["ChangeHistoryService"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Lib"]
       36 GETTABLEKS                       R6 R7 K11 ["Reimport"]
       38 GETTABLEKS                       R5 R6 K12 ["ReimportConfigs"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Lib"]
       45 GETTABLEKS                       R7 R8 K11 ["Reimport"]
       47 GETTABLEKS                       R6 R7 K13 ["TreeMerge"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K6 ["Lib"]
       54 GETTABLEKS                       R8 R9 K14 ["Util"]
       56 GETTABLEKS                       R7 R8 K15 ["Telemetry"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K16 ["Flags"]
       63 GETTABLEKS                       R8 R9 K17 ["GetFFlagEnableGroupUpload"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETIMPORT                        R11 K1 [script]
       70 GETTABLEKS                       R10 R11 K18 ["Parent"]
       72 GETTABLEKS                       R9 R10 K19 ["Types"]
       74 CALL                             R8 1 1
       75 DUPCLOSURE                       R9 K20 [PROTO_0]
       76 NEWTABLE                         R10 2 0
       78 DUPCLOSURE                       R11 K21 [PROTO_1]
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R5
       81 SETTABLEKS                       R11 R10 K22 ["doReimportApply"]
       83 DUPCLOSURE                       R11 K23 [PROTO_7]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R7
       91 SETTABLEKS                       R11 R10 K24 ["reimport"]
       93 RETURN                           R10 1
