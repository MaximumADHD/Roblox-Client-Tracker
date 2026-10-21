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
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 MOVE                             R2 R0
        3 RETURN                           R2 1
        4 MOVE                             R2 R1
        5 RETURN                           R2 1

PROTO_8:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R3 R1 K0 ["alignFrontAngle"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["alignFrontAngle"]
        8 JUMPIFEQKNIL                     R3 ; [+3]
       10 MOVE                             R2 R3
       11 JUMP                             ; [+1]
       12 MOVE                             R2 R4
       13 GETTABLEKS                       R4 R1 K1 ["r15Plus"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K1 ["r15Plus"]
       18 JUMPIFEQKNIL                     R4 ; [+3]
       20 MOVE                             R3 R4
       21 JUMP                             ; [+1]
       22 MOVE                             R3 R5
       23 GETTABLEKS                       R5 R1 K2 ["decalToDynamicHead"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K2 ["decalToDynamicHead"]
       28 JUMPIFEQKNIL                     R5 ; [+3]
       30 MOVE                             R4 R5
       31 JUMP                             ; [+1]
       32 MOVE                             R4 R6
       33 GETTABLEKS                       R6 R1 K3 ["enableAdditionalHeadProcessing"]
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K3 ["enableAdditionalHeadProcessing"]
       38 JUMPIFEQKNIL                     R6 ; [+3]
       40 MOVE                             R5 R6
       41 JUMP                             ; [+1]
       42 MOVE                             R5 R7
       43 GETTABLEKS                       R6 R1 K4 ["setupType"]
       45 JUMPIFNOTEQKS                    R6 K5 ["Development"] ; [+27]
       47 DUPTABLE                         R6 K14 [{["SetupType"] = "Development", ["AlignFrontAngle"], ["R15Plus"], ["ClothingOnly"] = False, ["EnableAdditionalHeadProcessing"], ["DecalToDynamicHead"], ["DecimationOptions"]}]
       48 SETTABLEKS                       R2 R6 K7 ["AlignFrontAngle"]
       50 SETTABLEKS                       R3 R6 K8 ["R15Plus"]
       52 SETTABLEKS                       R5 R6 K11 ["EnableAdditionalHeadProcessing"]
       54 SETTABLEKS                       R4 R6 K12 ["DecalToDynamicHead"]
       56 GETTABLEKS                       R9 R1 K15 ["reduceTriangles"]
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R10 R10 K15 ["reduceTriangles"]
       61 JUMPIFEQKNIL                     R9 ; [+3]
       63 MOVE                             R8 R9
       64 JUMP                             ; [+1]
       65 MOVE                             R8 R10
       66 JUMPIFNOT                        R8 ; [+2]
       67 LOADK                            R7 K16 ["EverythingEnabled"]
       68 JUMP                             ; [+1]
       69 LOADK                            R7 K17 ["Unspecified"]
       70 SETTABLEKS                       R7 R6 K13 ["DecimationOptions"]
       72 RETURN                           R6 1
       73 DUPTABLE                         R6 K20 [{["SetupType"] = "Platform", ["AlignFrontAngle"], ["R15Plus"], ["ClothingOnly"] = False, ["EnableAdditionalHeadProcessing"], ["DecalToDynamicHead"], ["shouldCreateTemplateBody"] = False}]
       74 SETTABLEKS                       R2 R6 K7 ["AlignFrontAngle"]
       76 SETTABLEKS                       R3 R6 K8 ["R15Plus"]
       78 SETTABLEKS                       R5 R6 K11 ["EnableAdditionalHeadProcessing"]
       80 SETTABLEKS                       R4 R6 K12 ["DecalToDynamicHead"]
       82 RETURN                           R6 1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 0
        6 GETIMPORT                        R1 K2 [task.spawn]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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
       14 MOVE                             R5 R1
       15 LOADNIL                          R6
       16 GETTABLEKS                       R7 R0 K4 ["classifications"]
       18 JUMPIFEQKNIL                     R7 ; [+15]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K5 ["prepareModel"]
       23 MOVE                             R8 R1
       24 GETTABLEKS                       R9 R0 K4 ["classifications"]
       26 CALL                             R7 2 1
       27 MOVE                             R5 R7
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R7 R7 K6 ["countClassifications"]
       31 MOVE                             R8 R5
       32 CALL                             R7 1 1
       33 MOVE                             R6 R7
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R8 R0 K7 ["options"]
       37 CALL                             R7 1 1
       38 LOADK                            R9 K8 ["AutoSetupClientJob_"]
       39 GETUPVAL                         R10 5
       40 NAMECALL                         R10 R10 K9 ["GenerateGUID"]
       42 CALL                             R10 1 1
       43 CONCAT                           R8 R9 R10
       44 GETIMPORT                        R9 K12 [os.clock]
       46 CALL                             R9 0 1
       47 GETTABLEKS                       R10 R2 K13 ["onRequested"]
       49 MOVE                             R11 R8
       50 LOADK                            R12 K14 [""]
       51 MOVE                             R13 R6
       52 CALL                             R10 3 0
       53 GETTABLEKS                       R10 R2 K15 ["onOptions"]
       55 MOVE                             R11 R7
       56 MOVE                             R12 R8
       57 CALL                             R10 2 0
       58 GETIMPORT                        R10 K17 [pcall]
       60 GETUPVAL                         R11 6
       61 GETTABLEKS                       R11 R11 K18 ["serializeModel"]
       63 MOVE                             R12 R5
       64 CALL                             R10 2 2
       65 JUMPIFEQ                         R5 R1 ; [+4]
       67 NAMECALL                         R12 R5 K19 ["Destroy"]
       69 CALL                             R12 1 0
       70 JUMPIF                           R10 ; [+18]
       71 GETTABLEKS                       R12 R2 K20 ["onFailure"]
       73 GETIMPORT                        R14 K12 [os.clock]
       75 CALL                             R14 0 1
       76 SUB                              R13 R14 R9
       77 LOADK                            R14 K21 ["no model uploaded"]
       78 LOADK                            R15 K14 [""]
       79 CALL                             R12 3 0
       80 GETIMPORT                        R12 K23 [error]
       82 LOADK                            R13 K24 ["AvatarAutoSetup: failed to serialize model: %*"]
       83 MOVE                             R15 R11
       84 NAMECALL                         R13 R13 K25 ["format"]
       86 CALL                             R13 2 1
       87 LOADN                            R14 0
       88 CALL                             R12 2 0
       89 GETUPVAL                         R12 6
       90 GETTABLEKS                       R12 R12 K26 ["canUseSerializedInstance"]
       92 MOVE                             R13 R11
       93 CALL                             R12 1 1
       94 LOADK                            R13 K21 ["no model uploaded"]
       95 JUMPIF                           R12 ; [+27]
       96 GETIMPORT                        R14 K17 [pcall]
       98 GETUPVAL                         R15 6
       99 GETTABLEKS                       R15 R15 K27 ["uploadModelAsync"]
      101 MOVE                             R16 R11
      102 CALL                             R14 2 2
      103 JUMPIF                           R14 ; [+18]
      104 GETTABLEKS                       R16 R2 K20 ["onFailure"]
      106 GETIMPORT                        R18 K12 [os.clock]
      108 CALL                             R18 0 1
      109 SUB                              R17 R18 R9
      110 LOADK                            R18 K21 ["no model uploaded"]
      111 LOADK                            R19 K14 [""]
      112 CALL                             R16 3 0
      113 GETIMPORT                        R16 K23 [error]
      115 LOADK                            R17 K28 ["AvatarAutoSetup: failed to upload model: %*"]
      116 MOVE                             R19 R15
      117 NAMECALL                         R17 R17 K25 ["format"]
      119 CALL                             R17 2 1
      120 LOADN                            R18 0
      121 CALL                             R16 2 0
      122 MOVE                             R13 R15
      123 LOADK                            R14 K14 [""]
      124 NEWCLOSURE                       R15 P0
      125 CAPTURE                          REF R14
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R4
      129 GETUPVAL                         R17 7
      130 GETTABLEKS                       R17 R17 K30 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      132 DIVK                             R16 R17 K29 [1000]
      133 GETIMPORT                        R17 K12 [os.clock]
      135 CALL                             R17 0 1
      136 LOADNIL                          R18
      137 LOADNIL                          R19
      138 LOADNIL                          R20
      139 NEWCLOSURE                       R21 P1
      140 CAPTURE                          REF R20
      141 NEWCLOSURE                       R22 P2
      142 CAPTURE                          REF R18
      143 CAPTURE                          REF R17
      144 CAPTURE                          REF R19
      145 CAPTURE                          VAL R3
      146 CAPTURE                          REF R20
      147 DUPTABLE                         R23 K33 [{["status"] = "Running"}]
      148 GETIMPORT                        R24 K36 [task.spawn]
      150 NEWCLOSURE                       R25 P3
      151 CAPTURE                          VAL R12
      152 CAPTURE                          UPVAL U6
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R22
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R7
      157 CAPTURE                          REF R13
      158 CAPTURE                          REF R23
      159 CAPTURE                          REF R20
      160 CALL                             R24 1 0
      161 GETTABLEKS                       R24 R23 K31 ["status"]
      163 JUMPIFNOTEQKS                    R24 K32 ["Running"] ; [+24]
      165 JUMPIFNOTEQKNIL                  R19 ; [+22]
      167 GETIMPORT                        R26 K12 [os.clock]
      169 CALL                             R26 0 1
      170 SUB                              R25 R26 R17
      171 SUB                              R24 R16 R25
      172 LOADN                            R25 0
      173 JUMPIFLE                         R24 R25 ; [+14]
      175 GETIMPORT                        R25 K39 [coroutine.running]
      177 CALL                             R25 0 1
      178 MOVE                             R20 R25
      179 GETIMPORT                        R25 K41 [task.delay]
      181 MOVE                             R26 R24
      182 MOVE                             R27 R21
      183 CALL                             R25 2 0
      184 GETIMPORT                        R25 K43 [coroutine.yield]
      186 CALL                             R25 0 0
      187 JUMPBACK                         ; [-27]
      188 JUMPIFNOTEQKNIL                  R19 ; [+5]
      190 GETTABLEKS                       R24 R23 K31 ["status"]
      192 JUMPIFNOTEQKS                    R24 K32 ["Running"] ; [+41]
      194 GETUPVAL                         R24 6
      195 GETTABLEKS                       R24 R24 K44 ["cancelAutoSetup"]
      197 MOVE                             R25 R14
      198 CALL                             R24 1 0
      199 GETTABLEKS                       R24 R2 K20 ["onFailure"]
      201 GETIMPORT                        R26 K12 [os.clock]
      203 CALL                             R26 0 1
      204 SUB                              R25 R26 R9
      205 MOVE                             R26 R13
      206 LOADK                            R27 K14 [""]
      207 CALL                             R24 3 0
      208 JUMPIFEQKNIL                     R19 ; [+10]
      210 GETIMPORT                        R24 K23 [error]
      212 LOADK                            R25 K45 ["AvatarAutoSetup: engine reported %*"]
      213 MOVE                             R27 R19
      214 NAMECALL                         R25 R25 K25 ["format"]
      216 CALL                             R25 2 1
      217 LOADN                            R26 0
      218 CALL                             R24 2 0
      219 DIVK                             R26 R16 K47 [60]
      220 ADDK                             R25 R26 K46 [0.5]
      221 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      222 GETIMPORT                        R24 K50 [math.floor]
      224 CALL                             R24 1 1
      225 GETIMPORT                        R25 K23 [error]
      227 LOADK                            R26 K51 ["AvatarAutoSetup: auto-setup timed out (no progress for %* min)"]
      228 MOVE                             R28 R24
      229 NAMECALL                         R26 R26 K25 ["format"]
      231 CALL                             R26 2 1
      232 LOADN                            R27 0
      233 CALL                             R25 2 0
      234 GETTABLEKS                       R24 R23 K31 ["status"]
      236 JUMPIFNOTEQKS                    R24 K52 ["Failed"] ; [+20]
      238 GETTABLEKS                       R24 R2 K20 ["onFailure"]
      240 GETIMPORT                        R26 K12 [os.clock]
      242 CALL                             R26 0 1
      243 SUB                              R25 R26 R9
      244 MOVE                             R26 R13
      245 LOADK                            R27 K14 [""]
      246 CALL                             R24 3 0
      247 GETIMPORT                        R24 K23 [error]
      249 LOADK                            R25 K53 ["AvatarAutoSetup: engine call failed: %*"]
      250 GETTABLEKS                       R27 R23 K22 ["error"]
      252 NAMECALL                         R25 R25 K25 ["format"]
      254 CALL                             R25 2 1
      255 LOADN                            R26 0
      256 CALL                             R24 2 0
      257 GETTABLEKS                       R24 R23 K0 ["model"]
      259 GETUPVAL                         R25 8
      260 GETTABLEKS                       R25 R25 K54 ["removeClassificationPrefixes"]
      262 MOVE                             R26 R24
      263 CALL                             R25 1 0
      264 GETUPVAL                         R25 8
      265 GETTABLEKS                       R25 R25 K55 ["addAnimateScript"]
      267 MOVE                             R26 R24
      268 CALL                             R25 1 0
      269 GETUPVAL                         R25 9
      270 LOADK                            R27 K56 ["AvatarAutoSetup"]
      271 LOADK                            R28 K57 ["Avatar Auto Setup"]
      272 NAMECALL                         R25 R25 K58 ["TryBeginRecording"]
      274 CALL                             R25 3 1
      275 LOADK                            R26 K59 ["%*_autosetup"]
      276 GETTABLEKS                       R28 R1 K60 ["Name"]
      278 NAMECALL                         R26 R26 K25 ["format"]
      280 CALL                             R26 2 1
      281 SETTABLEKS                       R26 R24 K60 ["Name"]
      283 GETTABLEKS                       R26 R24 K61 ["Parent"]
      285 JUMPIFNOTEQKNIL                  R26 ; [+4]
      287 GETUPVAL                         R26 10
      288 SETTABLEKS                       R26 R24 K61 ["Parent"]
      290 GETUPVAL                         R26 8
      291 GETTABLEKS                       R26 R26 K62 ["setPivotOffset"]
      293 MOVE                             R27 R24
      294 CALL                             R26 1 0
      295 GETUPVAL                         R26 8
      296 GETTABLEKS                       R26 R26 K63 ["positionInWorkspace"]
      298 MOVE                             R27 R24
      299 MOVE                             R28 R1
      300 CALL                             R26 2 0
      301 JUMPIFEQKNIL                     R25 ; [+8]
      303 GETUPVAL                         R26 9
      304 MOVE                             R28 R25
      305 GETIMPORT                        R29 K67 [Enum.FinishRecordingOperation.Commit]
      307 NAMECALL                         R26 R26 K68 ["FinishRecording"]
      309 CALL                             R26 3 0
      310 GETTABLEKS                       R26 R2 K69 ["onFinish"]
      312 GETIMPORT                        R28 K12 [os.clock]
      314 CALL                             R28 0 1
      315 SUB                              R27 R28 R9
      316 MOVE                             R28 R13
      317 LOADK                            R29 K14 [""]
      318 CALL                             R26 3 0
      319 CLOSEUPVALS                      R13
      320 RETURN                           R24 1

PROTO_15:
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
       33 GETTABLEKS                       R5 R5 K15 ["ClassificationTargetUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K11 [require]
       38 GETTABLEKS                       R6 R0 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K13 ["Util"]
       42 GETTABLEKS                       R6 R6 K14 ["AvatarAutoSetup"]
       44 GETTABLEKS                       R6 R6 K16 ["Engine"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K11 [require]
       49 GETTABLEKS                       R7 R0 K12 ["Src"]
       51 GETTABLEKS                       R7 R7 K17 ["Flags"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K11 [require]
       56 GETTABLEKS                       R8 R0 K12 ["Src"]
       58 GETTABLEKS                       R8 R8 K13 ["Util"]
       60 GETTABLEKS                       R8 R8 K14 ["AvatarAutoSetup"]
       62 GETTABLEKS                       R8 R8 K18 ["PostProcess"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K11 [require]
       67 GETTABLEKS                       R9 R0 K12 ["Src"]
       69 GETTABLEKS                       R9 R9 K13 ["Util"]
       71 GETTABLEKS                       R9 R9 K14 ["AvatarAutoSetup"]
       73 GETTABLEKS                       R9 R9 K19 ["Types"]
       75 CALL                             R8 1 1
       76 DUPCLOSURE                       R9 K20 [PROTO_0]
       77 DUPCLOSURE                       R10 K21 [PROTO_1]
       78 GETIMPORT                        R11 K24 [table.freeze]
       80 DUPTABLE                         R12 K30 [{"onRequested", "onOptions", "onJobInitialized", "onFinish", "onFailure"}]
       81 DUPCLOSURE                       R13 K31 [PROTO_2]
       82 SETTABLEKS                       R13 R12 K25 ["onRequested"]
       84 DUPCLOSURE                       R13 K32 [PROTO_3]
       85 SETTABLEKS                       R13 R12 K26 ["onOptions"]
       87 DUPCLOSURE                       R13 K33 [PROTO_4]
       88 SETTABLEKS                       R13 R12 K27 ["onJobInitialized"]
       90 DUPCLOSURE                       R13 K34 [PROTO_5]
       91 SETTABLEKS                       R13 R12 K28 ["onFinish"]
       93 DUPCLOSURE                       R13 K35 [PROTO_6]
       94 SETTABLEKS                       R13 R12 K29 ["onFailure"]
       96 CALL                             R11 1 1
       97 NEWTABLE                         R12 2 0
       99 GETIMPORT                        R13 K24 [table.freeze]
      101 DUPTABLE                         R14 K43 [{["alignFrontAngle"] = False, ["r15Plus"] = False, ["enableAdditionalHeadProcessing"] = True, ["decalToDynamicHead"] = False, ["reduceTriangles"] = False}]
      102 CALL                             R13 1 1
      103 DUPCLOSURE                       R14 K44 [PROTO_7]
      104 NEWTABLE                         R15 0 0
      106 DUPCLOSURE                       R16 K45 [PROTO_8]
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R13
      109 DUPCLOSURE                       R17 K46 [PROTO_14]
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R3
      121 SETTABLEKS                       R17 R12 K47 ["autoSetupAsync"]
      123 DUPCLOSURE                       R17 K48 [PROTO_15]
      124 CAPTURE                          VAL R5
      125 SETTABLEKS                       R17 R12 K49 ["cancelAutoSetup"]
      127 RETURN                           R12 1
