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
      115 GETIMPORT                        R6 K31 [task.delay]
      117 LOADK                            R7 K32 [0.3]
      118 NEWCLOSURE                       R8 P0
      119 CAPTURE                          UPVAL U2
      120 CALL                             R6 2 0
      121 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["release"]
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

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
       65 LOADK                            R10 K12 ["Reimport"]
       66 SETTABLEKS                       R10 R9 K13 ["UploadSource"]
       68 NAMECALL                         R10 R9 K14 ["GetImportTree"]
       70 CALL                             R10 1 1
       71 JUMPIFNOTEQKNIL                  R10 ; [+7]
       73 GETTABLEKS                       R10 R1 K2 ["error"]
       75 LOADK                            R11 K15 ["Import tree is nil"]
       76 CALL                             R10 1 0
       77 CLOSEUPVALS                      R4
       78 RETURN                           R0 0
       79 ADDK                             R4 R4 K16 [0.1]
       80 MULK                             R11 R5 K8 [0.6]
       81 ADD                              R10 R4 R11
       82 GETTABLEKS                       R11 R1 K9 ["progress"]
       84 MOVE                             R12 R10
       85 CALL                             R11 1 0
       86 GETTABLEKS                       R10 R9 K17 ["UploadProgress"]
       88 NEWCLOSURE                       R12 P1
       89 CAPTURE                          REF R5
       90 CAPTURE                          REF R4
       91 CAPTURE                          VAL R1
       92 NAMECALL                         R10 R10 K18 ["Connect"]
       94 CALL                             R10 2 0
       95 NEWCLOSURE                       R10 P2
       96 CAPTURE                          REF R5
       97 CAPTURE                          REF R4
       98 CAPTURE                          VAL R1
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          UPVAL U3
      102 CAPTURE                          VAL R0
      103 CAPTURE                          REF R7
      104 CAPTURE                          UPVAL U0
      105 CAPTURE                          REF R8
      106 LOADNIL                          R11
      107 GETTABLEKS                       R12 R9 K19 ["UploadComplete"]
      109 NEWCLOSURE                       R14 P3
      110 CAPTURE                          UPVAL U4
      111 CAPTURE                          REF R11
      112 CAPTURE                          VAL R10
      113 NAMECALL                         R12 R12 K18 ["Connect"]
      115 CALL                             R12 2 0
      116 NAMECALL                         R12 R9 K14 ["GetImportTree"]
      118 CALL                             R12 1 1
      119 LOADB                            R13 0
      120 SETTABLEKS                       R13 R12 K20 ["AddModelToInventory"]
      122 GETUPVAL                         R13 5
      123 CALL                             R13 0 1
      124 JUMPIFNOT                        R13 ; [+8]
      125 GETTABLEKS                       R13 R8 K21 ["creatorId"]
      127 JUMPIFEQKNIL                     R13 ; [+5]
      129 GETTABLEKS                       R13 R8 K21 ["creatorId"]
      131 SETTABLEKS                       R13 R12 K22 ["PreferredUploadId"]
      133 GETTABLEKS                       R13 R8 K23 ["preset"]
      135 JUMPIFEQKNIL                     R13 ; [+11]
      137 GETUPVAL                         R13 1
      138 GETTABLEKS                       R15 R8 K23 ["preset"]
      140 NAMECALL                         R13 R13 K24 ["GetPreset"]
      142 CALL                             R13 2 1
      143 MOVE                             R16 R13
      144 NAMECALL                         R14 R9 K25 ["ApplyPreset"]
      146 CALL                             R14 2 0
      147 GETUPVAL                         R13 6
      148 CALL                             R13 0 1
      149 JUMPIFNOT                        R13 ; [+9]
      150 GETTABLEKS                       R13 R12 K26 ["MergeMeshes"]
      152 JUMPIFNOT                        R13 ; [+6]
      153 GETTABLEKS                       R13 R1 K2 ["error"]
      155 LOADK                            R14 K27 ["Reimport does not support merged meshes. Please select a different import preset."]
      156 CALL                             R13 1 0
      157 CLOSEUPVALS                      R4
      158 RETURN                           R0 0
      159 GETUPVAL                         R13 7
      160 CALL                             R13 0 1
      161 JUMPIFNOT                        R13 ; [+4]
      162 GETUPVAL                         R13 8
      163 MOVE                             R14 R9
      164 MOVE                             R15 R0
      165 CALL                             R13 2 0
      166 GETUPVAL                         R13 4
      167 CALL                             R13 0 1
      168 JUMPIFNOT                        R13 ; [+9]
      169 GETUPVAL                         R13 9
      170 GETTABLEKS                       R13 R13 K28 ["acquireLock"]
      172 GETTABLEKS                       R14 R8 K5 ["filepath"]
      174 GETTABLEKS                       R15 R8 K21 ["creatorId"]
      176 CALL                             R13 2 1
      177 MOVE                             R11 R13
      178 NAMECALL                         R13 R9 K29 ["Upload"]
      180 CALL                             R13 1 0
      181 ADDK                             R4 R4 K16 [0.1]
      182 MULK                             R14 R5 K8 [0.6]
      183 ADD                              R13 R4 R14
      184 GETTABLEKS                       R14 R1 K9 ["progress"]
      186 MOVE                             R15 R13
      187 CALL                             R14 1 0
      188 CLOSEUPVALS                      R4
      189 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R2 K7 ["External"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetImportService"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Lib"]
       20 GETTABLEKS                       R3 R3 K7 ["External"]
       22 GETTABLEKS                       R3 R3 K9 ["ChangeHistoryService"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Lib"]
       29 GETTABLEKS                       R4 R4 K10 ["Reimport"]
       31 GETTABLEKS                       R4 R4 K11 ["InjectVersionedAssetIds"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Lib"]
       38 GETTABLEKS                       R5 R5 K10 ["Reimport"]
       40 GETTABLEKS                       R5 R5 K12 ["ReimportConfigs"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Lib"]
       47 GETTABLEKS                       R6 R6 K10 ["Reimport"]
       49 GETTABLEKS                       R6 R6 K13 ["TreeMerge"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Lib"]
       56 GETTABLEKS                       R7 R7 K10 ["Reimport"]
       58 GETTABLEKS                       R7 R7 K14 ["UploadUtils"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K15 ["Flags"]
       65 GETTABLEKS                       R8 R8 K16 ["GetFFlagReimportVersionedModels"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K15 ["Flags"]
       72 GETTABLEKS                       R9 R9 K17 ["GetFFlagEnableGroupUpload"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K15 ["Flags"]
       79 GETTABLEKS                       R10 R10 K18 ["GetFFlagReimportEmptyModelPivotFix"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K15 ["Flags"]
       86 GETTABLEKS                       R11 R11 K19 ["GetFFlagReimportFileWatcher"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K15 ["Flags"]
       93 GETTABLEKS                       R12 R12 K20 ["GetFFlagReimportRejectMergeMeshes"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETIMPORT                        R13 K1 [script]
      100 GETTABLEKS                       R13 R13 K21 ["Parent"]
      102 GETTABLEKS                       R13 R13 K22 ["Types"]
      104 CALL                             R12 1 1
      105 DUPCLOSURE                       R13 K23 [PROTO_0]
      106 NEWTABLE                         R14 2 0
      108 DUPCLOSURE                       R15 K24 [PROTO_1]
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R5
      112 SETTABLEKS                       R15 R14 K25 ["doReimportApply"]
      114 DUPCLOSURE                       R15 K26 [PROTO_7]
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R6
      125 SETTABLEKS                       R15 R14 K27 ["reimport"]
      127 RETURN                           R14 1
