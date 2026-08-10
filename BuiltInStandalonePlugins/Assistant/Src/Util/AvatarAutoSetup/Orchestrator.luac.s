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
       40 JUMPIF                           R7 ; [+19]
       41 GETTABLEKS                       R9 R2 K15 ["onFailure"]
       43 GETIMPORT                        R11 K8 [os.clock]
       45 CALL                             R11 0 1
       46 SUB                              R10 R11 R6
       47 LOADK                            R11 K16 ["no model uploaded"]
       48 LOADK                            R12 K10 [""]
       49 CALL                             R9 3 0
       50 GETIMPORT                        R9 K18 [error]
       52 LOADK                            R11 K19 ["AvatarAutoSetup: failed to serialize model: %*"]
       53 MOVE                             R13 R8
       54 NAMECALL                         R11 R11 K20 ["format"]
       56 CALL                             R11 2 1
       57 MOVE                             R10 R11
       58 LOADN                            R11 0
       59 CALL                             R9 2 0
       60 GETUPVAL                         R9 5
       61 GETTABLEKS                       R9 R9 K21 ["canUseSerializedInstance"]
       63 MOVE                             R10 R8
       64 CALL                             R9 1 1
       65 LOADK                            R10 K16 ["no model uploaded"]
       66 JUMPIF                           R9 ; [+28]
       67 GETIMPORT                        R11 K13 [pcall]
       69 GETUPVAL                         R12 5
       70 GETTABLEKS                       R12 R12 K22 ["uploadModelAsync"]
       72 MOVE                             R13 R8
       73 CALL                             R11 2 2
       74 JUMPIF                           R11 ; [+19]
       75 GETTABLEKS                       R13 R2 K15 ["onFailure"]
       77 GETIMPORT                        R15 K8 [os.clock]
       79 CALL                             R15 0 1
       80 SUB                              R14 R15 R6
       81 LOADK                            R15 K16 ["no model uploaded"]
       82 LOADK                            R16 K10 [""]
       83 CALL                             R13 3 0
       84 GETIMPORT                        R13 K18 [error]
       86 LOADK                            R15 K23 ["AvatarAutoSetup: failed to upload model: %*"]
       87 MOVE                             R17 R12
       88 NAMECALL                         R15 R15 K20 ["format"]
       90 CALL                             R15 2 1
       91 MOVE                             R14 R15
       92 LOADN                            R15 0
       93 CALL                             R13 2 0
       94 MOVE                             R10 R12
       95 LOADK                            R11 K10 [""]
       96 NEWCLOSURE                       R12 P0
       97 CAPTURE                          REF R11
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R4
      101 GETUPVAL                         R14 6
      102 GETTABLEKS                       R14 R14 K25 ["FIntAssistantAvatarAutoSetupIdleTimeoutMs"]
      104 DIVK                             R13 R14 K24 [1000]
      105 GETIMPORT                        R14 K8 [os.clock]
      107 CALL                             R14 0 1
      108 LOADNIL                          R15
      109 LOADNIL                          R16
      110 LOADNIL                          R17
      111 NEWCLOSURE                       R18 P1
      112 CAPTURE                          REF R17
      113 NEWCLOSURE                       R19 P2
      114 CAPTURE                          REF R15
      115 CAPTURE                          REF R14
      116 CAPTURE                          REF R16
      117 CAPTURE                          VAL R3
      118 CAPTURE                          REF R17
      119 DUPTABLE                         R20 K28 [{["status"] = "Running"}]
      120 GETIMPORT                        R21 K31 [task.spawn]
      122 NEWCLOSURE                       R22 P3
      123 CAPTURE                          VAL R9
      124 CAPTURE                          UPVAL U5
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R12
      128 CAPTURE                          UPVAL U4
      129 CAPTURE                          REF R10
      130 CAPTURE                          REF R20
      131 CAPTURE                          REF R17
      132 CALL                             R21 1 0
      133 GETTABLEKS                       R21 R20 K26 ["status"]
      135 JUMPIFNOTEQKS                    R21 K27 ["Running"] ; [+24]
      137 JUMPIFNOTEQKNIL                  R16 ; [+22]
      139 GETIMPORT                        R23 K8 [os.clock]
      141 CALL                             R23 0 1
      142 SUB                              R22 R23 R14
      143 SUB                              R21 R13 R22
      144 LOADN                            R22 0
      145 JUMPIFLE                         R21 R22 ; [+14]
      147 GETIMPORT                        R22 K34 [coroutine.running]
      149 CALL                             R22 0 1
      150 MOVE                             R17 R22
      151 GETIMPORT                        R22 K36 [task.delay]
      153 MOVE                             R23 R21
      154 MOVE                             R24 R18
      155 CALL                             R22 2 0
      156 GETIMPORT                        R22 K38 [coroutine.yield]
      158 CALL                             R22 0 0
      159 JUMPBACK                         ; [-27]
      160 JUMPIFNOTEQKNIL                  R16 ; [+5]
      162 GETTABLEKS                       R21 R20 K26 ["status"]
      164 JUMPIFNOTEQKS                    R21 K27 ["Running"] ; [+43]
      166 GETUPVAL                         R21 5
      167 GETTABLEKS                       R21 R21 K39 ["cancelAutoSetup"]
      169 MOVE                             R22 R11
      170 CALL                             R21 1 0
      171 GETTABLEKS                       R21 R2 K15 ["onFailure"]
      173 GETIMPORT                        R23 K8 [os.clock]
      175 CALL                             R23 0 1
      176 SUB                              R22 R23 R6
      177 MOVE                             R23 R10
      178 LOADK                            R24 K10 [""]
      179 CALL                             R21 3 0
      180 JUMPIFEQKNIL                     R16 ; [+11]
      182 GETIMPORT                        R21 K18 [error]
      184 LOADK                            R23 K40 ["AvatarAutoSetup: engine reported %*"]
      185 MOVE                             R25 R16
      186 NAMECALL                         R23 R23 K20 ["format"]
      188 CALL                             R23 2 1
      189 MOVE                             R22 R23
      190 LOADN                            R23 0
      191 CALL                             R21 2 0
      192 DIVK                             R23 R13 K42 [60]
      193 ADDK                             R22 R23 K41 [0.5]
      194 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      195 GETIMPORT                        R21 K45 [math.floor]
      197 CALL                             R21 1 1
      198 GETIMPORT                        R22 K18 [error]
      200 LOADK                            R24 K46 ["AvatarAutoSetup: auto-setup timed out (no progress for %* min)"]
      201 MOVE                             R26 R21
      202 NAMECALL                         R24 R24 K20 ["format"]
      204 CALL                             R24 2 1
      205 MOVE                             R23 R24
      206 LOADN                            R24 0
      207 CALL                             R22 2 0
      208 GETTABLEKS                       R21 R20 K26 ["status"]
      210 JUMPIFNOTEQKS                    R21 K47 ["Failed"] ; [+21]
      212 GETTABLEKS                       R21 R2 K15 ["onFailure"]
      214 GETIMPORT                        R23 K8 [os.clock]
      216 CALL                             R23 0 1
      217 SUB                              R22 R23 R6
      218 MOVE                             R23 R10
      219 LOADK                            R24 K10 [""]
      220 CALL                             R21 3 0
      221 GETIMPORT                        R21 K18 [error]
      223 LOADK                            R23 K48 ["AvatarAutoSetup: engine call failed: %*"]
      224 GETTABLEKS                       R25 R20 K17 ["error"]
      226 NAMECALL                         R23 R23 K20 ["format"]
      228 CALL                             R23 2 1
      229 MOVE                             R22 R23
      230 LOADN                            R23 0
      231 CALL                             R21 2 0
      232 GETTABLEKS                       R21 R20 K0 ["model"]
      234 GETUPVAL                         R22 7
      235 GETTABLEKS                       R22 R22 K49 ["addAnimateScript"]
      237 MOVE                             R23 R21
      238 CALL                             R22 1 0
      239 GETUPVAL                         R22 8
      240 LOADK                            R24 K50 ["AvatarAutoSetup"]
      241 LOADK                            R25 K51 ["Avatar Auto Setup"]
      242 NAMECALL                         R22 R22 K52 ["TryBeginRecording"]
      244 CALL                             R22 3 1
      245 LOADK                            R24 K53 ["%*_autosetup"]
      246 GETTABLEKS                       R26 R1 K54 ["Name"]
      248 NAMECALL                         R24 R24 K20 ["format"]
      250 CALL                             R24 2 1
      251 MOVE                             R23 R24
      252 SETTABLEKS                       R23 R21 K54 ["Name"]
      254 GETTABLEKS                       R23 R21 K55 ["Parent"]
      256 JUMPIFNOTEQKNIL                  R23 ; [+4]
      258 GETUPVAL                         R23 9
      259 SETTABLEKS                       R23 R21 K55 ["Parent"]
      261 GETUPVAL                         R23 7
      262 GETTABLEKS                       R23 R23 K56 ["setPivotOffset"]
      264 MOVE                             R24 R21
      265 CALL                             R23 1 0
      266 GETUPVAL                         R23 7
      267 GETTABLEKS                       R23 R23 K57 ["positionInWorkspace"]
      269 MOVE                             R24 R21
      270 MOVE                             R25 R1
      271 CALL                             R23 2 0
      272 JUMPIFEQKNIL                     R22 ; [+8]
      274 GETUPVAL                         R23 8
      275 MOVE                             R25 R22
      276 GETIMPORT                        R26 K61 [Enum.FinishRecordingOperation.Commit]
      278 NAMECALL                         R23 R23 K62 ["FinishRecording"]
      280 CALL                             R23 3 0
      281 GETTABLEKS                       R23 R2 K63 ["onFinish"]
      283 GETIMPORT                        R25 K8 [os.clock]
      285 CALL                             R25 0 1
      286 SUB                              R24 R25 R6
      287 MOVE                             R25 R10
      288 LOADK                            R26 K10 [""]
      289 CALL                             R23 3 0
      290 CLOSEUPVALS                      R10
      291 RETURN                           R21 1

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
       86 NEWTABLE                         R11 1 0
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
      105 RETURN                           R11 1
