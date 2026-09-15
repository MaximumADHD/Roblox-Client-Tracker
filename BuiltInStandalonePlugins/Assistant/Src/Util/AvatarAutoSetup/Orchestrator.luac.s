PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["jobId"]
        2 JUMPIFEQKNIL                     R1 ; [+17]
        4 GETTABLEKS                       R1 R0 K0 ["jobId"]
        6 JUMPIFEQKS                       R1 K1 [""] ; [+13]
        8 GETUPVAL                         R1 0
        9 JUMPIFNOTEQKS                    R1 K1 [""] ; [+10]
       11 GETTABLEKS                       R1 R0 K0 ["jobId"]
       13 SETUPVAL                         R1 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K2 ["onJobInitialized"]
       17 GETUPVAL                         R2 2
       18 GETUPVAL                         R3 0
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 3
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 0
        6 GETIMPORT                        R1 K2 [task.spawn]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+23]
        3 GETTABLEKS                       R1 R0 K0 ["jobStatus"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["jobStatus"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+16]
       10 GETTABLEKS                       R1 R0 K1 ["progressName"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["progressName"]
       15 JUMPIFNOTEQ                      R1 R2 ; [+9]
       17 GETTABLEKS                       R1 R0 K2 ["progressPercentage"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K2 ["progressPercentage"]
       22 JUMPIFNOTEQ                      R1 R2 ; [+2]
       24 RETURN                           R0 0
       25 SETUPVAL                         R0 0
       26 GETIMPORT                        R1 K5 [os.clock]
       28 CALL                             R1 0 1
       29 SETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R0 K0 ["jobStatus"]
       32 JUMPIFEQKS                       R1 K6 ["Failed"] ; [+5]
       34 GETTABLEKS                       R1 R0 K0 ["jobStatus"]
       36 JUMPIFNOTEQKS                    R1 K7 ["Canceled"] ; [+4]
       38 GETTABLEKS                       R1 R0 K0 ["jobStatus"]
       40 SETUPVAL                         R1 2
       41 GETUPVAL                         R1 3
       42 MOVE                             R2 R0
       43 CALL                             R1 1 0
       44 GETUPVAL                         R1 2
       45 JUMPIFEQKNIL                     R1 ; [+11]
       47 GETUPVAL                         R1 4
       48 JUMPIFNOTEQKNIL                  R1 ; [+2]
       50 RETURN                           R0 0
       51 LOADNIL                          R2
       52 SETUPVAL                         R2 4
       53 GETIMPORT                        R2 K10 [task.spawn]
       55 MOVE                             R3 R1
       56 CALL                             R2 1 0
       57 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["startSerializedAutoSetupAsync"]
        5 GETUPVAL                         R1 2
        6 LOADK                            R2 K1 [""]
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 GETUPVAL                         R5 5
       10 CALL                             R0 5 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K2 ["startAutoSetupAsync"]
       15 GETUPVAL                         R1 6
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R3 4
       18 GETUPVAL                         R4 5
       19 CALL                             R0 4 -1
       20 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R0 1 2
       11 JUMPIFNOT                        R0 ; [+4]
       12 DUPTABLE                         R2 K5 [{["status"] = "Succeeded", ["model"]}]
       13 SETTABLEKS                       R1 R2 K4 ["model"]
       15 JUMP                             ; [+8]
       16 DUPTABLE                         R2 K8 [{["status"] = "Failed", ["error"]}]
       17 FASTCALL1                        TOSTRING R1 ; [+3]
       18 MOVE                             R4 R1
       19 GETIMPORT                        R3 K10 [tostring]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K7 ["error"]
       24 SETUPVAL                         R2 7
       25 GETUPVAL                         R2 8
       26 JUMPIFNOTEQKNIL                  R2 ; [+2]
       28 RETURN                           R0 0
       29 LOADNIL                          R3
       30 SETUPVAL                         R3 8
       31 GETIMPORT                        R3 K13 [task.spawn]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["model"]
        2 GETTABLEKS                       R2 R0 K1 ["analytics"]
        4 JUMPIF                           R2 ; [+1]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K2 ["onProgress"]
        8 JUMPIF                           R3 ; [+1]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R0 K3 ["onNotification"]
       12 JUMPIF                           R4 ; [+1]
       13 GETUPVAL                         R4 2
       14 LOADK                            R6 K4 ["AutoSetupClientJob_"]
       15 GETUPVAL                         R7 3
       16 NAMECALL                         R7 R7 K5 ["GenerateGUID"]
       18 CALL                             R7 1 1
       19 CONCAT                           R5 R6 R7
       20 GETIMPORT                        R6 K8 [os.clock]
       22 CALL                             R6 0 1
       23 GETTABLEKS                       R7 R2 K9 ["onRequested"]
       25 MOVE                             R8 R5
       26 LOADK                            R9 K10 [""]
       27 CALL                             R7 2 0
       28 GETTABLEKS                       R7 R2 K11 ["onOptions"]
       30 GETUPVAL                         R8 4
       31 MOVE                             R9 R5
       32 CALL                             R7 2 0
       33 GETIMPORT                        R7 K13 [pcall]
       35 GETUPVAL                         R8 5
       36 GETTABLEKS                       R8 R8 K14 ["serializeModel"]
       38 MOVE                             R9 R1
       39 CALL                             R7 2 2
       40 JUMPIF                           R7 ; [+18]
       41 GETTABLEKS                       R9 R2 K15 ["onFailure"]
       43 GETIMPORT                        R11 K8 [os.clock]
       45 CALL                             R11 0 1
       46 SUB                              R10 R11 R6
       47 LOADK                            R11 K16 ["no model uploaded"]
       48 LOADK                            R12 K10 [""]
       49 CALL                             R9 3 0
       50 GETIMPORT                        R9 K18 [error]
       52 LOADK                            R10 K19 ["AvatarAutoSetup: failed to serialize model: %*"]
       53 MOVE                             R12 R8
       54 NAMECALL                         R10 R10 K20 ["format"]
       56 CALL                             R10 2 1
       57 LOADN                            R11 0
       58 CALL                             R9 2 0
       59 GETUPVAL                         R9 5
       60 GETTABLEKS                       R9 R9 K21 ["canUseSerializedInstance"]
       62 MOVE                             R10 R8
       63 CALL                             R9 1 1
       64 LOADK                            R10 K16 ["no model uploaded"]
       65 JUMPIF                           R9 ; [+27]
       66 GETIMPORT                        R11 K13 [pcall]
       68 GETUPVAL                         R12 5
       69 GETTABLEKS                       R12 R12 K22 ["uploadModelAsync"]
       71 MOVE                             R13 R8
       72 CALL                             R11 2 2
       73 JUMPIF                           R11 ; [+18]
       74 GETTABLEKS                       R13 R2 K15 ["onFailure"]
       76 GETIMPORT                        R15 K8 [os.clock]
       78 CALL                             R15 0 1
       79 SUB                              R14 R15 R6
       80 LOADK                            R15 K16 ["no model uploaded"]
       81 LOADK                            R16 K10 [""]
       82 CALL                             R13 3 0
       83 GETIMPORT                        R13 K18 [error]
       85 LOADK                            R14 K23 ["AvatarAutoSetup: failed to upload model: %*"]
       86 MOVE                             R16 R12
       87 NAMECALL                         R14 R14 K20 ["format"]
       89 CALL                             R14 2 1
       90 LOADN                            R15 0
       91 CALL                             R13 2 0
       92 MOVE                             R10 R12
       93 LOADK                            R11 K10 [""]
       94 NEWCLOSURE                       R12 P0
       95 CAPTURE                          REF R11
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R4
       99 GETUPVAL                         R14 6
      100 GETTABLEKS                       R14 R14 K25 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      102 DIVK                             R13 R14 K24 [1000]
      103 GETIMPORT                        R14 K8 [os.clock]
      105 CALL                             R14 0 1
      106 LOADNIL                          R15
      107 LOADNIL                          R16
      108 LOADNIL                          R17
      109 NEWCLOSURE                       R18 P1
      110 CAPTURE                          REF R17
      111 NEWCLOSURE                       R19 P2
      112 CAPTURE                          REF R15
      113 CAPTURE                          REF R14
      114 CAPTURE                          REF R16
      115 CAPTURE                          VAL R3
      116 CAPTURE                          REF R17
      117 DUPTABLE                         R20 K28 [{["status"] = "Running"}]
      118 GETIMPORT                        R21 K31 [task.spawn]
      120 NEWCLOSURE                       R22 P3
      121 CAPTURE                          VAL R9
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R12
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          REF R10
      128 CAPTURE                          REF R20
      129 CAPTURE                          REF R17
      130 CALL                             R21 1 0
      131 GETTABLEKS                       R21 R20 K26 ["status"]
      133 JUMPIFNOTEQKS                    R21 K27 ["Running"] ; [+24]
      135 JUMPIFNOTEQKNIL                  R16 ; [+22]
      137 GETIMPORT                        R23 K8 [os.clock]
      139 CALL                             R23 0 1
      140 SUB                              R22 R23 R14
      141 SUB                              R21 R13 R22
      142 LOADN                            R22 0
      143 JUMPIFLE                         R21 R22 ; [+14]
      145 GETIMPORT                        R22 K34 [coroutine.running]
      147 CALL                             R22 0 1
      148 MOVE                             R17 R22
      149 GETIMPORT                        R22 K36 [task.delay]
      151 MOVE                             R23 R21
      152 MOVE                             R24 R18
      153 CALL                             R22 2 0
      154 GETIMPORT                        R22 K38 [coroutine.yield]
      156 CALL                             R22 0 0
      157 JUMPBACK                         ; [-27]
      158 JUMPIFNOTEQKNIL                  R16 ; [+5]
      160 GETTABLEKS                       R21 R20 K26 ["status"]
      162 JUMPIFNOTEQKS                    R21 K27 ["Running"] ; [+41]
      164 GETUPVAL                         R21 5
      165 GETTABLEKS                       R21 R21 K39 ["cancelAutoSetup"]
      167 MOVE                             R22 R11
      168 CALL                             R21 1 0
      169 GETTABLEKS                       R21 R2 K15 ["onFailure"]
      171 GETIMPORT                        R23 K8 [os.clock]
      173 CALL                             R23 0 1
      174 SUB                              R22 R23 R6
      175 MOVE                             R23 R10
      176 LOADK                            R24 K10 [""]
      177 CALL                             R21 3 0
      178 JUMPIFEQKNIL                     R16 ; [+10]
      180 GETIMPORT                        R21 K18 [error]
      182 LOADK                            R22 K40 ["AvatarAutoSetup: engine reported %*"]
      183 MOVE                             R24 R16
      184 NAMECALL                         R22 R22 K20 ["format"]
      186 CALL                             R22 2 1
      187 LOADN                            R23 0
      188 CALL                             R21 2 0
      189 DIVK                             R23 R13 K42 [60]
      190 ADDK                             R22 R23 K41 [0.5]
      191 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      192 GETIMPORT                        R21 K45 [math.floor]
      194 CALL                             R21 1 1
      195 GETIMPORT                        R22 K18 [error]
      197 LOADK                            R23 K46 ["AvatarAutoSetup: auto-setup timed out (no progress for %* min)"]
      198 MOVE                             R25 R21
      199 NAMECALL                         R23 R23 K20 ["format"]
      201 CALL                             R23 2 1
      202 LOADN                            R24 0
      203 CALL                             R22 2 0
      204 GETTABLEKS                       R21 R20 K26 ["status"]
      206 JUMPIFNOTEQKS                    R21 K47 ["Failed"] ; [+20]
      208 GETTABLEKS                       R21 R2 K15 ["onFailure"]
      210 GETIMPORT                        R23 K8 [os.clock]
      212 CALL                             R23 0 1
      213 SUB                              R22 R23 R6
      214 MOVE                             R23 R10
      215 LOADK                            R24 K10 [""]
      216 CALL                             R21 3 0
      217 GETIMPORT                        R21 K18 [error]
      219 LOADK                            R22 K48 ["AvatarAutoSetup: engine call failed: %*"]
      220 GETTABLEKS                       R24 R20 K17 ["error"]
      222 NAMECALL                         R22 R22 K20 ["format"]
      224 CALL                             R22 2 1
      225 LOADN                            R23 0
      226 CALL                             R21 2 0
      227 GETTABLEKS                       R21 R20 K0 ["model"]
      229 GETUPVAL                         R22 7
      230 GETTABLEKS                       R22 R22 K49 ["addAnimateScript"]
      232 MOVE                             R23 R21
      233 CALL                             R22 1 0
      234 GETUPVAL                         R22 8
      235 LOADK                            R24 K50 ["AvatarAutoSetup"]
      236 LOADK                            R25 K51 ["Avatar Auto Setup"]
      237 NAMECALL                         R22 R22 K52 ["TryBeginRecording"]
      239 CALL                             R22 3 1
      240 LOADK                            R23 K53 ["%*_autosetup"]
      241 GETTABLEKS                       R25 R1 K54 ["Name"]
      243 NAMECALL                         R23 R23 K20 ["format"]
      245 CALL                             R23 2 1
      246 SETTABLEKS                       R23 R21 K54 ["Name"]
      248 GETTABLEKS                       R23 R21 K55 ["Parent"]
      250 JUMPIFNOTEQKNIL                  R23 ; [+4]
      252 GETUPVAL                         R23 9
      253 SETTABLEKS                       R23 R21 K55 ["Parent"]
      255 GETUPVAL                         R23 7
      256 GETTABLEKS                       R23 R23 K56 ["setPivotOffset"]
      258 MOVE                             R24 R21
      259 CALL                             R23 1 0
      260 GETUPVAL                         R23 7
      261 GETTABLEKS                       R23 R23 K57 ["positionInWorkspace"]
      263 MOVE                             R24 R21
      264 MOVE                             R25 R1
      265 CALL                             R23 2 0
      266 JUMPIFEQKNIL                     R22 ; [+8]
      268 GETUPVAL                         R23 8
      269 MOVE                             R25 R22
      270 GETIMPORT                        R26 K61 [Enum.FinishRecordingOperation.Commit]
      272 NAMECALL                         R23 R23 K62 ["FinishRecording"]
      274 CALL                             R23 3 0
      275 GETTABLEKS                       R23 R2 K63 ["onFinish"]
      277 GETIMPORT                        R25 K8 [os.clock]
      279 CALL                             R25 0 1
      280 SUB                              R24 R25 R6
      281 MOVE                             R25 R10
      282 LOADK                            R26 K10 [""]
      283 CALL                             R23 3 0
      284 CLOSEUPVALS                      R10
      285 RETURN                           R21 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cancelAutoSetup"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["Workspace"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Src"]
       29 GETTABLEKS                       R5 R5 K13 ["Util"]
       31 GETTABLEKS                       R5 R5 K14 ["AvatarAutoSetup"]
       33 GETTABLEKS                       R5 R5 K15 ["Engine"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K11 [require]
       38 GETTABLEKS                       R6 R0 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Flags"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K11 [require]
       45 GETTABLEKS                       R7 R0 K12 ["Src"]
       47 GETTABLEKS                       R7 R7 K13 ["Util"]
       49 GETTABLEKS                       R7 R7 K14 ["AvatarAutoSetup"]
       51 GETTABLEKS                       R7 R7 K17 ["PostProcess"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K11 [require]
       56 GETTABLEKS                       R8 R0 K12 ["Src"]
       58 GETTABLEKS                       R8 R8 K13 ["Util"]
       60 GETTABLEKS                       R8 R8 K14 ["AvatarAutoSetup"]
       62 GETTABLEKS                       R8 R8 K18 ["Types"]
       64 CALL                             R7 1 1
       65 DUPCLOSURE                       R8 K19 [PROTO_0]
       66 DUPCLOSURE                       R9 K20 [PROTO_1]
       67 GETIMPORT                        R10 K23 [table.freeze]
       69 DUPTABLE                         R11 K29 [{"onRequested", "onOptions", "onJobInitialized", "onFinish", "onFailure"}]
       70 DUPCLOSURE                       R12 K30 [PROTO_2]
       71 SETTABLEKS                       R12 R11 K24 ["onRequested"]
       73 DUPCLOSURE                       R12 K31 [PROTO_3]
       74 SETTABLEKS                       R12 R11 K25 ["onOptions"]
       76 DUPCLOSURE                       R12 K32 [PROTO_4]
       77 SETTABLEKS                       R12 R11 K26 ["onJobInitialized"]
       79 DUPCLOSURE                       R12 K33 [PROTO_5]
       80 SETTABLEKS                       R12 R11 K27 ["onFinish"]
       82 DUPCLOSURE                       R12 K34 [PROTO_6]
       83 SETTABLEKS                       R12 R11 K28 ["onFailure"]
       85 CALL                             R10 1 1
       86 NEWTABLE                         R11 2 0
       88 GETIMPORT                        R12 K23 [table.freeze]
       90 DUPTABLE                         R13 K45 [{["SetupType"] = "Platform", ["AlignFrontAngle"] = False, ["R15Plus"] = False, ["ClothingOnly"] = False, ["EnableAdditionalHeadProcessing"] = True, ["DecalToDynamicHead"] = False, ["shouldCreateTemplateBody"] = False}]
       91 CALL                             R12 1 1
       92 DUPCLOSURE                       R13 K46 [PROTO_12]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R3
      103 SETTABLEKS                       R13 R11 K47 ["autoSetupAsync"]
      105 DUPCLOSURE                       R13 K48 [PROTO_13]
      106 CAPTURE                          VAL R4
      107 SETTABLEKS                       R13 R11 K49 ["cancelAutoSetup"]
      109 RETURN                           R11 1
