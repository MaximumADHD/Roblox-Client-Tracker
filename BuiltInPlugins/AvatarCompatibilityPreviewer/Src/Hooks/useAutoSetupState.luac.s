PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["encode"]
        3 GETIMPORT                        R2 K3 [buffer.fromstring]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 1
        8 GETIMPORT                        R2 K5 [buffer.len]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 CALL                             R3 0 1
       14 JUMPIFNOTLT                      R3 R2 ; [+3]
       16 LOADB                            R2 0
       17 RETURN                           R2 1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_1:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_3:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_4:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["autoSetupCancelled"]
        6 GETIMPORT                        R6 K4 [os.clock]
        8 CALL                             R6 0 1
        9 GETTABLEKS                       R7 R1 K5 ["timeStart"]
       11 SUB                              R5 R6 R7
       12 GETTABLEKS                       R6 R1 K6 ["assetId"]
       14 GETTABLEKS                       R7 R1 K7 ["modelHash"]
       16 MOVE                             R8 R0
       17 NAMECALL                         R2 R2 K8 ["report"]
       19 CALL                             R2 6 0
       20 GETUPVAL                         R2 0
       21 LOADNIL                          R3
       22 SETTABLEKS                       R3 R2 K0 ["current"]
       24 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFEQKS                       R0 K3 ["dead"] ; [+4]
        6 GETUPVAL                         R0 1
        7 LOADK                            R1 K4 ["PluginClosed"]
        8 CALL                             R0 1 0
        9 GETIMPORT                        R0 K7 [task.cancel]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["ErrorSourceFail"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 LOADNIL                          R2
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [table.clone]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 LOADK                            R2 K3 ["InsertingResults"]
        8 SETTABLEKS                       R2 R1 K4 ["progressName"]
       10 LOADN                            R2 1
       11 SETTABLEKS                       R2 R1 K5 ["progressPercentage"]
       13 LOADK                            R2 K6 ["Completed"]
       14 SETTABLEKS                       R2 R1 K7 ["jobStatus"]
       16 GETTABLEKS                       R3 R1 K8 ["completionStart"]
       18 FASTCALL2K                       MATH_MAX R3 K9 ; [+4]
       20 LOADK                            R4 K9 [0.95]
       21 GETIMPORT                        R2 K12 [math.max]
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R1 K8 ["completionStart"]
       26 GETTABLEKS                       R3 R1 K13 ["completionEnd"]
       28 FASTCALL2K                       MATH_MAX R3 K14 ; [+4]
       30 LOADK                            R4 K14 [0.99]
       31 GETIMPORT                        R2 K12 [math.max]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K13 ["completionEnd"]
       36 LOADN                            R2 10
       37 SETTABLEKS                       R2 R1 K15 ["estimatedWait"]
       39 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_10]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+12]
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R0 R1 K0 ["insertBodyAsync"]
       11 GETUPVAL                         R1 4
       12 GETUPVAL                         R2 5
       13 GETUPVAL                         R3 6
       14 GETUPVAL                         R4 7
       15 GETUPVAL                         R5 8
       16 GETUPVAL                         R6 9
       17 GETUPVAL                         R7 10
       18 CALL                             R0 7 0
       19 JUMP                             ; [+10]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R0 R1 K1 ["DEPRECATED_insertBodyAsync"]
       23 GETUPVAL                         R1 4
       24 GETUPVAL                         R2 5
       25 GETUPVAL                         R3 6
       26 GETUPVAL                         R4 7
       27 GETUPVAL                         R5 8
       28 GETUPVAL                         R6 9
       29 CALL                             R0 6 0
       30 GETUPVAL                         R1 11
       31 GETTABLEKS                       R0 R1 K2 ["autoSetupClickedSignal"]
       33 JUMPIFNOT                        R0 ; [+6]
       34 GETUPVAL                         R1 11
       35 GETTABLEKS                       R0 R1 K2 ["autoSetupClickedSignal"]
       37 NAMECALL                         R0 R0 K3 ["Fire"]
       39 CALL                             R0 1 0
       40 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["jobStatus"]
        2 JUMPIFEQKNIL                     R1 ; [+5]
        4 GETTABLEKS                       R1 R0 K0 ["jobStatus"]
        6 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R1 R0 K0 ["jobStatus"]
       11 JUMPIFNOTEQKS                    R1 K2 ["Created"] ; [+9]
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R4 R0 K0 ["jobStatus"]
       17 GETTABLE                         R2 R3 R4
       18 SETTABLEKS                       R2 R1 K3 ["current"]
       20 JUMP                             ; [+8]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R1 R2 K3 ["current"]
       24 GETTABLEKS                       R2 R0 K4 ["jobId"]
       26 JUMPIFEQ                         R1 R2 ; [+2]
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K3 ["current"]
       32 JUMPIFNOTEQKNIL                  R3 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       38 LOADK                            R3 K5 ["current progress stage is nil"]
       39 GETIMPORT                        R1 K7 [assert]
       41 CALL                             R1 2 0
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R3 R0 K0 ["jobStatus"]
       45 GETTABLE                         R1 R2 R3
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R2 R3 K3 ["current"]
       49 JUMPIFNOTLT                      R1 R2 ; [+2]
       51 RETURN                           R0 0
       52 GETUPVAL                         R1 0
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R4 R0 K0 ["jobStatus"]
       56 GETTABLE                         R2 R3 R4
       57 SETTABLEKS                       R2 R1 K3 ["current"]
       59 GETUPVAL                         R1 3
       60 MOVE                             R2 R0
       61 CALL                             R1 1 0
       62 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["jobId"]
        2 JUMPIFEQKNIL                     R1 ; [+5]
        4 GETTABLEKS                       R1 R0 K0 ["jobId"]
        6 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R1 R0 K2 ["notificationType"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K3 ["AUTO_SETUP_JOB_INITIALIZATION"]
       14 JUMPIFNOTEQ                      R1 R2 ; [+18]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R2 R0 K0 ["jobId"]
       19 SETTABLEKS                       R2 R1 K4 ["current"]
       21 GETUPVAL                         R1 2
       22 CALL                             R1 0 1
       23 JUMPIFNOT                        R1 ; [+8]
       24 GETUPVAL                         R1 3
       25 LOADK                            R3 K5 ["autoSetupJobInitialized"]
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R5 R0 K0 ["jobId"]
       29 NAMECALL                         R1 R1 K6 ["report"]
       31 CALL                             R1 4 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 5
       34 MOVE                             R2 R0
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+89]
        8 GETUPVAL                         R0 3
        9 JUMPIFNOT                        R0 ; [+87]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R1 R2 K0 ["settings"]
       13 GETTABLEKS                       R0 R1 K1 ["SetupType"]
       15 JUMPIFEQKS                       R0 K2 ["Unspecified"] ; [+81]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R1 R2 K0 ["settings"]
       20 GETTABLEKS                       R0 R1 K3 ["ClothingOnly"]
       22 JUMPIFNOT                        R0 ; [+74]
       23 GETUPVAL                         R0 4
       24 LOADK                            R2 K4 ["autoSetupClothingOnlyFinish"]
       25 GETUPVAL                         R3 5
       26 GETUPVAL                         R4 6
       27 NAMECALL                         R0 R0 K5 ["report"]
       29 CALL                             R0 4 0
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R1 R2 K6 ["info"]
       33 GETTABLEKS                       R0 R1 K7 ["shouldCreateTemplateBody"]
       35 JUMPIFNOT                        R0 ; [+51]
       36 GETUPVAL                         R1 7
       37 GETTABLEKS                       R0 R1 K8 ["createTemplateBodyFromOutfitId"]
       39 GETUPVAL                         R2 8
       40 GETTABLEKS                       R1 R2 K9 ["TEMPLATE_BODY_OUTFIT_ID"]
       42 CALL                             R0 1 1
       43 GETUPVAL                         R1 9
       44 NAMECALL                         R1 R1 K10 ["Clone"]
       46 CALL                             R1 1 1
       47 NAMECALL                         R2 R1 K11 ["GetDescendants"]
       49 CALL                             R2 1 3
       50 FORGPREP                         R2
       51 LOADK                            R9 K12 ["BasePart"]
       52 NAMECALL                         R7 R6 K13 ["IsA"]
       54 CALL                             R7 2 1
       55 JUMPIFNOT                        R7 ; [+2]
       56 SETTABLEKS                       R0 R6 K14 ["Parent"]
       58 FORGLOOP                         R2 2 ; [-8]
       60 SETUPVAL                         R0 9
       61 GETUPVAL                         R2 10
       62 CALL                             R2 0 1
       63 JUMPIFNOT                        R2 ; [+12]
       64 GETUPVAL                         R3 7
       65 GETTABLEKS                       R2 R3 K15 ["insertBodyAsync"]
       67 LOADNIL                          R3
       68 GETUPVAL                         R4 11
       69 GETUPVAL                         R5 9
       70 GETUPVAL                         R6 12
       71 GETUPVAL                         R7 13
       72 GETUPVAL                         R8 14
       73 GETUPVAL                         R9 3
       74 CALL                             R2 7 0
       75 JUMP                             ; [+46]
       76 GETUPVAL                         R3 7
       77 GETTABLEKS                       R2 R3 K16 ["DEPRECATED_insertBodyAsync"]
       79 LOADNIL                          R3
       80 GETUPVAL                         R4 11
       81 GETUPVAL                         R5 9
       82 GETUPVAL                         R6 12
       83 GETUPVAL                         R7 13
       84 GETUPVAL                         R8 14
       85 CALL                             R2 6 0
       86 JUMP                             ; [+35]
       87 GETUPVAL                         R1 7
       88 GETTABLEKS                       R0 R1 K17 ["insertClothingAsync"]
       90 GETUPVAL                         R1 11
       91 GETUPVAL                         R2 9
       92 GETUPVAL                         R3 12
       93 GETUPVAL                         R4 13
       94 GETUPVAL                         R5 14
       95 CALL                             R0 5 0
       96 JUMP                             ; [+25]
       97 GETUPVAL                         R0 10
       98 CALL                             R0 0 1
       99 JUMPIFNOT                        R0 ; [+12]
      100 GETUPVAL                         R1 7
      101 GETTABLEKS                       R0 R1 K15 ["insertBodyAsync"]
      103 GETUPVAL                         R1 15
      104 GETUPVAL                         R2 11
      105 GETUPVAL                         R3 9
      106 GETUPVAL                         R4 12
      107 GETUPVAL                         R5 13
      108 GETUPVAL                         R6 14
      109 GETUPVAL                         R7 3
      110 CALL                             R0 7 0
      111 JUMP                             ; [+10]
      112 GETUPVAL                         R1 7
      113 GETTABLEKS                       R0 R1 K16 ["DEPRECATED_insertBodyAsync"]
      115 GETUPVAL                         R1 15
      116 GETUPVAL                         R2 11
      117 GETUPVAL                         R3 9
      118 GETUPVAL                         R4 12
      119 GETUPVAL                         R5 13
      120 GETUPVAL                         R6 14
      121 CALL                             R0 6 0
      122 GETUPVAL                         R0 16
      123 LOADNIL                          R1
      124 CALL                             R0 1 0
      125 GETUPVAL                         R0 4
      126 LOADK                            R2 K18 ["autoSetupFinish"]
      127 GETIMPORT                        R4 K21 [os.clock]
      129 CALL                             R4 0 1
      130 GETUPVAL                         R5 17
      131 SUB                              R3 R4 R5
      132 GETUPVAL                         R4 13
      133 GETUPVAL                         R5 14
      134 NAMECALL                         R0 R0 K5 ["report"]
      136 CALL                             R0 5 0
      137 GETUPVAL                         R0 4
      138 LOADK                            R2 K22 ["autoSetupAssetsGenerated"]
      139 GETUPVAL                         R3 18
      140 GETUPVAL                         R4 13
      141 CALL                             R3 1 1
      142 GETUPVAL                         R4 19
      143 GETUPVAL                         R5 9
      144 CALL                             R4 1 -1
      145 NAMECALL                         R0 R0 K5 ["report"]
      147 CALL                             R0 -1 0
      148 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+62]
        5 GETIMPORT                        R2 K1 [pcall]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["serializeModel"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K3 ["model"]
       13 CALL                             R2 2 2
       14 MOVE                             R0 R2
       15 MOVE                             R1 R3
       16 JUMPIF                           R0 ; [+25]
       17 GETIMPORT                        R2 K5 [warn]
       19 LOADK                            R4 K6 ["Something went wrong while serializing the model.\n%*"]
       20 MOVE                             R6 R1
       21 NAMECALL                         R4 R4 K7 ["format"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 3
       27 GETUPVAL                         R3 2
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 4
       30 LOADK                            R4 K8 ["autoSetupFailure"]
       31 GETIMPORT                        R6 K11 [os.clock]
       33 CALL                             R6 0 1
       34 GETUPVAL                         R7 5
       35 SUB                              R5 R6 R7
       36 LOADK                            R6 K12 ["no model uploaded"]
       37 GETUPVAL                         R7 6
       38 NAMECALL                         R2 R2 K13 ["report"]
       40 CALL                             R2 5 0
       41 RETURN                           R0 0
       42 JUMPIFEQKNIL                     R1 ; [+24]
       44 MOVE                             R3 R1
       45 GETUPVAL                         R5 7
       46 GETTABLEKS                       R4 R5 K14 ["encode"]
       48 GETIMPORT                        R5 K17 [buffer.fromstring]
       50 MOVE                             R6 R3
       51 CALL                             R5 1 -1
       52 CALL                             R4 -1 1
       53 GETIMPORT                        R5 K19 [buffer.len]
       55 MOVE                             R6 R4
       56 CALL                             R5 1 1
       57 GETUPVAL                         R6 8
       58 CALL                             R6 0 1
       59 JUMPIFNOTLT                      R6 R5 ; [+3]
       61 LOADB                            R2 0
       62 JUMP                             ; [+1]
       63 LOADB                            R2 1
       64 JUMPIF                           R2 ; [+2]
       65 LOADB                            R0 0
       66 LOADNIL                          R1
       67 LOADNIL                          R2
       68 LOADNIL                          R3
       69 GETUPVAL                         R4 0
       70 CALL                             R4 0 1
       71 JUMPIFNOT                        R4 ; [+4]
       72 JUMPIFNOT                        R1 ; [+3]
       73 LOADB                            R2 1
       74 LOADK                            R3 K12 ["no model uploaded"]
       75 JUMP                             ; [+12]
       76 GETIMPORT                        R4 K1 [pcall]
       78 GETUPVAL                         R6 1
       79 GETTABLEKS                       R5 R6 K20 ["uploadModelAsync"]
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R6 R7 K3 ["model"]
       84 CALL                             R4 2 2
       85 MOVE                             R2 R4
       86 MOVE                             R3 R5
       87 LOADNIL                          R1
       88 JUMPIF                           R2 ; [+26]
       89 GETIMPORT                        R4 K5 [warn]
       91 LOADK                            R6 K21 ["Something went wrong while uploading the model.\n%*"]
       92 MOVE                             R8 R3
       93 NAMECALL                         R6 R6 K7 ["format"]
       95 CALL                             R6 2 1
       96 MOVE                             R5 R6
       97 CALL                             R4 1 0
       98 GETUPVAL                         R4 3
       99 GETUPVAL                         R5 2
      100 CALL                             R4 1 0
      101 GETUPVAL                         R4 4
      102 LOADK                            R6 K8 ["autoSetupFailure"]
      103 GETIMPORT                        R8 K11 [os.clock]
      105 CALL                             R8 0 1
      106 GETUPVAL                         R9 5
      107 SUB                              R7 R8 R9
      108 LOADK                            R8 K12 ["no model uploaded"]
      109 GETUPVAL                         R9 6
      110 NAMECALL                         R4 R4 K13 ["report"]
      112 CALL                             R4 5 0
      113 CLOSEUPVALS                      R3
      114 RETURN                           R0 0
      115 GETUPVAL                         R4 9
      116 DUPTABLE                         R5 K25 [{"timeStart", "assetId", "modelHash"}]
      117 GETUPVAL                         R6 5
      118 SETTABLEKS                       R6 R5 K22 ["timeStart"]
      120 SETTABLEKS                       R3 R5 K23 ["assetId"]
      122 GETUPVAL                         R6 6
      123 SETTABLEKS                       R6 R5 K24 ["modelHash"]
      125 SETTABLEKS                       R5 R4 K26 ["current"]
      127 NEWCLOSURE                       R4 P0
      128 CAPTURE                          UPVAL U10
      129 CAPTURE                          UPVAL U11
      130 CAPTURE                          UPVAL U12
      131 CAPTURE                          UPVAL U13
      132 NEWCLOSURE                       R5 P1
      133 CAPTURE                          UPVAL U14
      134 CAPTURE                          UPVAL U12
      135 CAPTURE                          UPVAL U15
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          UPVAL U16
      138 CAPTURE                          UPVAL U17
      139 LOADNIL                          R6
      140 LOADNIL                          R7
      141 GETUPVAL                         R8 0
      142 CALL                             R8 0 1
      143 JUMPIFNOT                        R8 ; [+15]
      144 JUMPIFNOT                        R1 ; [+14]
      145 GETIMPORT                        R8 K1 [pcall]
      147 GETUPVAL                         R10 1
      148 GETTABLEKS                       R9 R10 K27 ["startSerializedAutoSetupAsync"]
      150 MOVE                             R10 R1
      151 GETUPVAL                         R11 6
      152 MOVE                             R12 R4
      153 MOVE                             R13 R5
      154 GETUPVAL                         R14 18
      155 CALL                             R8 6 2
      156 MOVE                             R6 R8
      157 MOVE                             R7 R9
      158 JUMP                             ; [+12]
      159 GETIMPORT                        R8 K1 [pcall]
      161 GETUPVAL                         R10 1
      162 GETTABLEKS                       R9 R10 K28 ["startAutoSetupAsync"]
      164 MOVE                             R10 R3
      165 MOVE                             R11 R4
      166 MOVE                             R12 R5
      167 GETUPVAL                         R13 18
      168 CALL                             R8 5 2
      169 MOVE                             R6 R8
      170 MOVE                             R7 R9
      171 JUMPIFNOT                        R6 ; [+30]
      172 GETUPVAL                         R9 19
      173 GETTABLEKS                       R8 R9 K26 ["current"]
      175 GETUPVAL                         R9 6
      176 SETTABLE                         R7 R8 R9
      177 GETIMPORT                        R8 K31 [task.spawn]
      179 NEWCLOSURE                       R9 P2
      180 CAPTURE                          UPVAL U20
      181 CAPTURE                          UPVAL U21
      182 CAPTURE                          UPVAL U22
      183 CAPTURE                          UPVAL U23
      184 CAPTURE                          UPVAL U4
      185 CAPTURE                          UPVAL U18
      186 CAPTURE                          UPVAL U16
      187 CAPTURE                          UPVAL U24
      188 CAPTURE                          UPVAL U14
      189 CAPTURE                          REF R7
      190 CAPTURE                          UPVAL U25
      191 CAPTURE                          UPVAL U26
      192 CAPTURE                          UPVAL U2
      193 CAPTURE                          REF R3
      194 CAPTURE                          UPVAL U6
      195 CAPTURE                          UPVAL U27
      196 CAPTURE                          UPVAL U28
      197 CAPTURE                          UPVAL U5
      198 CAPTURE                          UPVAL U29
      199 CAPTURE                          UPVAL U30
      200 CALL                             R8 1 0
      201 JUMP                             ; [+30]
      202 JUMPIFNOTEQKS                    R7 K32 ["Autosetup is canceled"] ; [+5]
      204 GETUPVAL                         R8 28
      205 LOADNIL                          R9
      206 CALL                             R8 1 0
      207 JUMP                             ; [+24]
      208 GETIMPORT                        R8 K5 [warn]
      210 LOADK                            R10 K33 ["Something went wrong while performing auto setup.\n%*"]
      211 MOVE                             R12 R7
      212 NAMECALL                         R10 R10 K7 ["format"]
      214 CALL                             R10 2 1
      215 MOVE                             R9 R10
      216 CALL                             R8 1 0
      217 GETUPVAL                         R8 3
      218 GETUPVAL                         R9 2
      219 CALL                             R8 1 0
      220 GETUPVAL                         R8 4
      221 LOADK                            R10 K8 ["autoSetupFailure"]
      222 GETIMPORT                        R12 K11 [os.clock]
      224 CALL                             R12 0 1
      225 GETUPVAL                         R13 5
      226 SUB                              R11 R12 R13
      227 ORK                              R12 R3 K12 ["no model uploaded"]
      228 GETUPVAL                         R13 6
      229 NAMECALL                         R8 R8 K13 ["report"]
      231 CALL                             R8 5 0
      232 GETUPVAL                         R8 9
      233 LOADNIL                          R9
      234 SETTABLEKS                       R9 R8 K26 ["current"]
      236 CLOSEUPVALS                      R3
      237 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["NewSetupStarted"]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 0
        8 GETUPVAL                         R2 3
        9 DUPTABLE                         R3 K7 [{"progressPercentage", "progressName", "completionStart", "completionEnd", "jobStatus", "jobId"}]
       10 LOADN                            R4 0
       11 SETTABLEKS                       R4 R3 K1 ["progressPercentage"]
       13 LOADK                            R4 K8 ["PreppingMesh"]
       14 SETTABLEKS                       R4 R3 K2 ["progressName"]
       16 LOADN                            R4 0
       17 SETTABLEKS                       R4 R3 K3 ["completionStart"]
       19 LOADN                            R4 0
       20 SETTABLEKS                       R4 R3 K4 ["completionEnd"]
       22 LOADK                            R4 K9 ["Created"]
       23 SETTABLEKS                       R4 R3 K5 ["jobStatus"]
       25 LOADK                            R4 K10 [""]
       26 SETTABLEKS                       R4 R3 K6 ["jobId"]
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 4
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+4]
       32 GETUPVAL                         R2 5
       33 LOADK                            R3 K10 [""]
       34 SETTABLEKS                       R3 R2 K11 ["current"]
       36 GETUPVAL                         R3 4
       37 CALL                             R3 0 1
       38 JUMPIFNOT                        R3 ; [+7]
       39 LOADK                            R3 K12 ["AutoSetupClientJob_"]
       40 GETUPVAL                         R4 6
       41 NAMECALL                         R4 R4 K13 ["GenerateGUID"]
       43 CALL                             R4 1 1
       44 CONCAT                           R2 R3 R4
       45 JUMP                             ; [+1]
       46 LOADNIL                          R2
       47 JUMPIFEQKNIL                     R1 ; [+4]
       49 GETTABLEKS                       R3 R1 K14 ["settings"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R3
       53 GETIMPORT                        R4 K17 [os.clock]
       55 CALL                             R4 0 1
       56 GETTABLEKS                       R5 R0 K18 ["model"]
       58 JUMPIFNOTEQKNIL                  R5 ; [+6]
       60 GETIMPORT                        R5 K20 [error]
       62 LOADK                            R6 K21 ["Must have model"]
       63 CALL                             R5 1 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R5 7
       66 CALL                             R5 0 1
       67 JUMPIFNOT                        R5 ; [+15]
       68 GETUPVAL                         R6 8
       69 GETTABLEKS                       R5 R6 K22 ["collapseTopLevelFolders"]
       71 GETTABLEKS                       R6 R0 K18 ["model"]
       73 CALL                             R5 1 0
       74 GETUPVAL                         R5 9
       75 GETTABLEKS                       R6 R0 K18 ["model"]
       77 CALL                             R5 1 0
       78 GETUPVAL                         R6 8
       79 GETTABLEKS                       R5 R6 K23 ["setModelIntendedName"]
       81 MOVE                             R6 R0
       82 CALL                             R5 1 0
       83 GETUPVAL                         R6 10
       84 GETTABLEKS                       R5 R6 K24 ["computeHashSerializeContext"]
       86 NEWTABLE                         R6 0 1
       88 GETTABLEKS                       R7 R0 K18 ["model"]
       90 SETLIST                          R6 R7 1 [1]
       92 DUPTABLE                         R7 K27 [{"ignoreUniformScaleChanges", "ignoreAccessories"}]
       93 LOADB                            R8 0
       94 SETTABLEKS                       R8 R7 K25 ["ignoreUniformScaleChanges"]
       96 LOADB                            R8 1
       97 SETTABLEKS                       R8 R7 K26 ["ignoreAccessories"]
       99 CALL                             R5 2 1
      100 GETUPVAL                         R7 10
      101 GETTABLEKS                       R6 R7 K28 ["hashCharacter"]
      103 GETTABLEKS                       R7 R0 K18 ["model"]
      105 MOVE                             R8 R5
      106 CALL                             R6 2 1
      107 GETUPVAL                         R7 11
      108 CALL                             R7 0 1
      109 JUMPIFNOT                        R7 ; [+3]
      110 GETUPVAL                         R7 12
      111 MOVE                             R8 R0
      112 CALL                             R7 1 0
      113 GETUPVAL                         R9 13
      114 GETTABLEKS                       R8 R9 K11 ["current"]
      116 GETTABLE                         R7 R8 R6
      117 JUMPIFEQKNIL                     R7 ; [+29]
      119 GETTABLEKS                       R8 R7 K29 ["PrimaryPart"]
      121 JUMPIFEQKNIL                     R8 ; [+25]
      123 GETUPVAL                         R12 14
      124 GETTABLEKS                       R11 R12 K30 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      126 NAMECALL                         R9 R7 K31 ["GetAttribute"]
      128 CALL                             R9 2 1
      129 ORK                              R8 R9 K10 [""]
      130 GETIMPORT                        R9 K34 [task.spawn]
      132 NEWCLOSURE                       R10 P0
      133 CAPTURE                          UPVAL U11
      134 CAPTURE                          UPVAL U15
      135 CAPTURE                          UPVAL U16
      136 CAPTURE                          UPVAL U8
      137 CAPTURE                          UPVAL U17
      138 CAPTURE                          UPVAL U18
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R1
      144 CAPTURE                          UPVAL U19
      145 CALL                             R9 1 0
      146 RETURN                           R0 0
      147 GETUPVAL                         R8 11
      148 CALL                             R8 0 1
      149 JUMPIF                           R8 ; [+3]
      150 GETUPVAL                         R8 12
      151 MOVE                             R9 R0
      152 CALL                             R8 1 0
      153 GETUPVAL                         R8 7
      154 CALL                             R8 0 1
      155 JUMPIFNOT                        R8 ; [+34]
      156 GETUPVAL                         R8 20
      157 CALL                             R8 0 1
      158 JUMPIFNOT                        R8 ; [+31]
      159 GETUPVAL                         R8 4
      160 CALL                             R8 0 1
      161 JUMPIFNOT                        R8 ; [+16]
      162 GETUPVAL                         R8 21
      163 LOADK                            R10 K35 ["autoSetupRequested"]
      164 JUMPIFEQKNIL                     R1 ; [+6]
      166 GETTABLEKS                       R12 R1 K36 ["info"]
      168 GETTABLEKS                       R11 R12 K37 ["assetClassification"]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R11
      172 MOVE                             R12 R2
      173 MOVE                             R13 R6
      174 NAMECALL                         R8 R8 K38 ["report"]
      176 CALL                             R8 5 0
      177 JUMP                             ; [+17]
      178 GETUPVAL                         R8 21
      179 LOADK                            R10 K35 ["autoSetupRequested"]
      180 GETUPVAL                         R12 8
      181 GETTABLEKS                       R11 R12 K39 ["getClothingCategoryCounts"]
      183 GETTABLEKS                       R12 R0 K18 ["model"]
      185 CALL                             R11 1 -1
      186 NAMECALL                         R8 R8 K38 ["report"]
      188 CALL                             R8 -1 0
      189 JUMP                             ; [+5]
      190 GETUPVAL                         R8 21
      191 LOADK                            R10 K35 ["autoSetupRequested"]
      192 NAMECALL                         R8 R8 K38 ["report"]
      194 CALL                             R8 2 0
      195 GETUPVAL                         R8 22
      196 CALL                             R8 0 1
      197 JUMPIFNOT                        R8 ; [+7]
      198 GETUPVAL                         R8 21
      199 LOADK                            R10 K40 ["autoSetupOptions"]
      200 MOVE                             R11 R3
      201 MOVE                             R12 R2
      202 NAMECALL                         R8 R8 K38 ["report"]
      204 CALL                             R8 4 0
      205 LOADNIL                          R8
      206 GETIMPORT                        R9 K34 [task.spawn]
      208 NEWCLOSURE                       R10 P1
      209 CAPTURE                          UPVAL U23
      210 CAPTURE                          UPVAL U19
      211 CAPTURE                          VAL R0
      212 CAPTURE                          UPVAL U24
      213 CAPTURE                          UPVAL U21
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R6
      216 CAPTURE                          UPVAL U25
      217 CAPTURE                          UPVAL U26
      218 CAPTURE                          UPVAL U27
      219 CAPTURE                          UPVAL U28
      220 CAPTURE                          UPVAL U29
      221 CAPTURE                          UPVAL U5
      222 CAPTURE                          UPVAL U3
      223 CAPTURE                          UPVAL U14
      224 CAPTURE                          UPVAL U4
      225 CAPTURE                          VAL R2
      226 CAPTURE                          UPVAL U30
      227 CAPTURE                          VAL R3
      228 CAPTURE                          UPVAL U13
      229 CAPTURE                          UPVAL U11
      230 CAPTURE                          UPVAL U15
      231 CAPTURE                          UPVAL U22
      232 CAPTURE                          VAL R1
      233 CAPTURE                          UPVAL U8
      234 CAPTURE                          UPVAL U16
      235 CAPTURE                          UPVAL U18
      236 CAPTURE                          UPVAL U17
      237 CAPTURE                          UPVAL U12
      238 CAPTURE                          UPVAL U31
      239 CAPTURE                          UPVAL U32
      240 CALL                             R9 1 1
      241 MOVE                             R8 R9
      242 GETUPVAL                         R9 27
      243 DUPTABLE                         R10 K44 [{"timeStart", "assetId", "modelHash"}]
      244 SETTABLEKS                       R4 R10 K41 ["timeStart"]
      246 LOADK                            R11 K45 ["no model uploaded"]
      247 SETTABLEKS                       R11 R10 K42 ["assetId"]
      249 SETTABLEKS                       R6 R10 K43 ["modelHash"]
      251 SETTABLEKS                       R10 R9 K11 ["current"]
      253 GETUPVAL                         R9 1
      254 MOVE                             R10 R8
      255 CALL                             R9 1 0
      256 GETUPVAL                         R10 19
      257 GETTABLEKS                       R9 R10 K46 ["autoSetupClickedSignal"]
      259 JUMPIFEQKNIL                     R9 ; [+7]
      261 GETUPVAL                         R10 19
      262 GETTABLEKS                       R9 R10 K46 ["autoSetupClickedSignal"]
      264 NAMECALL                         R9 R9 K47 ["Fire"]
      266 CALL                             R9 1 0
      267 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["UserCanceled"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R0 R1 K1 ["cancelAutoSetup"]
       12 GETUPVAL                         R2 4
       13 GETTABLEKS                       R1 R2 K2 ["current"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 LOADK                            R1 K3 [""]
       18 SETTABLEKS                       R1 R0 K2 ["current"]
       20 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R1 K1 ["Analytics"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K2 ["use"]
       11 CALL                             R1 1 1
       12 NAMECALL                         R1 R1 K3 ["get"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K4 ["useContext"]
       18 GETUPVAL                         R3 3
       19 CALL                             R2 1 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K5 ["useState"]
       23 DUPCLOSURE                       R4 K6 [PROTO_1]
       24 CALL                             R3 1 2
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K5 ["useState"]
       28 DUPCLOSURE                       R6 K7 [PROTO_2]
       29 CALL                             R5 1 2
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R7 R8 K8 ["useRef"]
       33 LOADNIL                          R8
       34 CALL                             R7 1 1
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R8 R9 K5 ["useState"]
       38 DUPCLOSURE                       R9 K9 [PROTO_3]
       39 CALL                             R8 1 2
       40 GETUPVAL                         R11 2
       41 GETTABLEKS                       R10 R11 K5 ["useState"]
       43 DUPCLOSURE                       R11 K10 [PROTO_4]
       44 CALL                             R10 1 2
       45 GETUPVAL                         R13 2
       46 GETTABLEKS                       R12 R13 K5 ["useState"]
       48 LOADNIL                          R13
       49 CALL                             R12 1 2
       50 GETUPVAL                         R15 2
       51 GETTABLEKS                       R14 R15 K8 ["useRef"]
       53 NEWTABLE                         R15 0 0
       55 CALL                             R14 1 1
       56 GETTABLEKS                       R17 R14 K11 ["current"]
       58 JUMPIFNOTEQKNIL                  R17 ; [+2]
       60 LOADB                            R16 0 +1
       61 LOADB                            R16 1
       62 GETUPVAL                         R18 4
       63 GETTABLEKS                       R17 R18 K12 ["LUAU_ANALYZE_ERROR"]
       65 FASTCALL2                        ASSERT R16 R17 ; [+3]
       67 GETIMPORT                        R15 K14 [assert]
       69 CALL                             R15 2 0
       70 GETUPVAL                         R15 5
       71 CALL                             R15 0 1
       72 JUMPIFNOT                        R15 ; [+19]
       73 GETIMPORT                        R16 K17 [shared]
       75 GETTABLEKS                       R15 R16 K15 ["roblox.plugins.avatarCompatibilityPreviewer"]
       77 JUMPIFEQKNIL                     R15 ; [+8]
       79 GETIMPORT                        R16 K17 [shared]
       81 GETTABLEKS                       R15 R16 K15 ["roblox.plugins.avatarCompatibilityPreviewer"]
       83 SETTABLEKS                       R15 R14 K11 ["current"]
       85 JUMP                             ; [+6]
       86 GETIMPORT                        R15 K17 [shared]
       88 GETTABLEKS                       R16 R14 K11 ["current"]
       90 SETTABLEKS                       R16 R15 K15 ["roblox.plugins.avatarCompatibilityPreviewer"]
       92 GETUPVAL                         R16 2
       93 GETTABLEKS                       R15 R16 K18 ["useCallback"]
       95 NEWCLOSURE                       R16 P4
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R17 0 1
      100 MOVE                             R18 R7
      101 SETLIST                          R17 R18 1 [1]
      103 CALL                             R15 2 1
      104 GETUPVAL                         R17 2
      105 GETTABLEKS                       R16 R17 K19 ["useEffect"]
      107 NEWCLOSURE                       R17 P5
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R15
      110 NEWTABLE                         R18 0 1
      112 MOVE                             R19 R5
      113 SETLIST                          R18 R19 1 [1]
      115 CALL                             R16 2 0
      116 GETUPVAL                         R17 2
      117 GETTABLEKS                       R16 R17 K18 ["useCallback"]
      119 NEWCLOSURE                       R17 P6
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R13
      123 NEWTABLE                         R18 0 3
      125 MOVE                             R19 R9
      126 MOVE                             R20 R11
      127 MOVE                             R21 R13
      128 SETLIST                          R18 R19 3 [1]
      130 CALL                             R16 2 1
      131 GETUPVAL                         R18 2
      132 GETTABLEKS                       R17 R18 K18 ["useCallback"]
      134 NEWCLOSURE                       R18 P7
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R4
      138 NEWTABLE                         R19 0 3
      140 MOVE                             R20 R9
      141 MOVE                             R21 R11
      142 MOVE                             R22 R4
      143 SETLIST                          R19 R20 3 [1]
      145 CALL                             R17 2 1
      146 GETUPVAL                         R19 2
      147 GETTABLEKS                       R18 R19 K5 ["useState"]
      149 LOADNIL                          R19
      150 CALL                             R18 1 2
      151 GETUPVAL                         R21 2
      152 GETTABLEKS                       R20 R21 K8 ["useRef"]
      154 LOADK                            R21 K20 [""]
      155 CALL                             R20 1 1
      156 GETUPVAL                         R22 2
      157 GETTABLEKS                       R21 R22 K8 ["useRef"]
      159 LOADN                            R22 0
      160 CALL                             R21 1 1
      161 GETUPVAL                         R23 2
      162 GETTABLEKS                       R22 R23 K4 ["useContext"]
      164 GETUPVAL                         R24 6
      165 GETTABLEKS                       R23 R24 K21 ["Context"]
      167 CALL                             R22 1 1
      168 GETUPVAL                         R24 2
      169 GETTABLEKS                       R23 R24 K18 ["useCallback"]
      171 NEWCLOSURE                       R24 P8
      172 CAPTURE                          VAL R19
      173 NEWTABLE                         R25 0 1
      175 MOVE                             R26 R19
      176 SETLIST                          R25 R26 1 [1]
      178 CALL                             R23 2 1
      179 GETUPVAL                         R25 2
      180 GETTABLEKS                       R24 R25 K18 ["useCallback"]
      182 NEWCLOSURE                       R25 P9
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R19
      187 CAPTURE                          UPVAL U7
      188 CAPTURE                          VAL R20
      189 CAPTURE                          UPVAL U8
      190 CAPTURE                          UPVAL U9
      191 CAPTURE                          UPVAL U10
      192 CAPTURE                          UPVAL U11
      193 CAPTURE                          UPVAL U12
      194 CAPTURE                          UPVAL U13
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R14
      197 CAPTURE                          UPVAL U4
      198 CAPTURE                          VAL R23
      199 CAPTURE                          UPVAL U14
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R2
      203 CAPTURE                          UPVAL U15
      204 CAPTURE                          VAL R0
      205 CAPTURE                          UPVAL U16
      206 CAPTURE                          UPVAL U17
      207 CAPTURE                          VAL R17
      208 CAPTURE                          UPVAL U18
      209 CAPTURE                          UPVAL U19
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R21
      212 CAPTURE                          UPVAL U20
      213 CAPTURE                          VAL R13
      214 CAPTURE                          UPVAL U21
      215 CAPTURE                          UPVAL U22
      216 NEWTABLE                         R26 0 5
      218 GETTABLEKS                       R27 R2 K22 ["startAutoSetupAsync"]
      220 GETTABLEKS                       R28 R2 K23 ["uploadModelAsync"]
      222 MOVE                             R29 R22
      223 MOVE                             R30 R15
      224 GETUPVAL                         R32 13
      225 CALL                             R32 0 1
      226 JUMPIFNOT                        R32 ; [+2]
      227 MOVE                             R31 R23
      228 JUMP                             ; [+1]
      229 LOADNIL                          R31
      230 SETLIST                          R26 R27 5 [1]
      232 CALL                             R24 2 1
      233 GETUPVAL                         R26 2
      234 GETTABLEKS                       R25 R26 K18 ["useCallback"]
      236 NEWCLOSURE                       R26 P10
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R4
      240 CAPTURE                          VAL R2
      241 CAPTURE                          VAL R20
      242 NEWTABLE                         R27 0 3
      244 GETTABLEKS                       R28 R2 K24 ["cancelAutoSetup"]
      246 GETTABLEKS                       R29 R20 K11 ["current"]
      248 MOVE                             R30 R15
      249 SETLIST                          R27 R28 3 [1]
      251 CALL                             R25 2 1
      252 DUPTABLE                         R26 K32 [{"cancelAutoSetup", "startAutoSetup", "activeTarget", "lastErrorType", "lastErrorTarget", "clearError", "progressState", "metadataState"}]
      253 SETTABLEKS                       R25 R26 K24 ["cancelAutoSetup"]
      255 SETTABLEKS                       R24 R26 K25 ["startAutoSetup"]
      257 SETTABLEKS                       R3 R26 K26 ["activeTarget"]
      259 SETTABLEKS                       R8 R26 K27 ["lastErrorType"]
      261 SETTABLEKS                       R10 R26 K28 ["lastErrorTarget"]
      263 SETTABLEKS                       R16 R26 K29 ["clearError"]
      265 SETTABLEKS                       R18 R26 K30 ["progressState"]
      267 SETTABLEKS                       R12 R26 K31 ["metadataState"]
      269 RETURN                           R26 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["activeTarget"]
        3 JUMPIFNOT                        R0 ; [+20]
        4 DUPTABLE                         R0 K5 [{"type", "target", "progressState", "metadataState"}]
        5 LOADK                            R1 K6 ["inAutoSetup"]
        6 SETTABLEKS                       R1 R0 K1 ["type"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K0 ["activeTarget"]
       11 SETTABLEKS                       R1 R0 K2 ["target"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K3 ["progressState"]
       16 SETTABLEKS                       R1 R0 K3 ["progressState"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K4 ["metadataState"]
       21 SETTABLEKS                       R1 R0 K4 ["metadataState"]
       23 RETURN                           R0 1
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R0 R1 K7 ["lastErrorType"]
       27 JUMPIFNOT                        R0 ; [+21]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R0 R1 K8 ["lastErrorTarget"]
       31 JUMPIFNOT                        R0 ; [+17]
       32 DUPTABLE                         R0 K10 [{"type", "target", "error"}]
       33 LOADK                            R1 K9 ["error"]
       34 SETTABLEKS                       R1 R0 K1 ["type"]
       36 GETUPVAL                         R1 1
       37 JUMPIF                           R1 ; [+3]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R1 R2 K8 ["lastErrorTarget"]
       41 SETTABLEKS                       R1 R0 K2 ["target"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R1 R2 K7 ["lastErrorType"]
       46 SETTABLEKS                       R1 R0 K9 ["error"]
       48 RETURN                           R0 1
       49 GETUPVAL                         R0 1
       50 JUMPIFNOT                        R0 ; [+8]
       51 DUPTABLE                         R0 K11 [{"type", "target"}]
       52 LOADK                            R1 K12 ["hasSelection"]
       53 SETTABLEKS                       R1 R0 K1 ["type"]
       55 GETUPVAL                         R1 1
       56 SETTABLEKS                       R1 R0 K2 ["target"]
       58 RETURN                           R0 1
       59 DUPTABLE                         R0 K13 [{"type"}]
       60 LOADK                            R1 K14 ["none"]
       61 SETTABLEKS                       R1 R0 K1 ["type"]
       63 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["startAutoSetup"]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 NEWTABLE                         R4 0 6
       10 GETTABLEKS                       R5 R1 K1 ["activeTarget"]
       12 GETTABLEKS                       R6 R1 K2 ["lastErrorType"]
       14 GETTABLEKS                       R7 R1 K3 ["lastErrorTarget"]
       16 MOVE                             R8 R0
       17 GETTABLEKS                       R9 R1 K4 ["progressState"]
       19 GETTABLEKS                       R10 R1 K5 ["metadataState"]
       21 SETLIST                          R4 R5 6 [1]
       23 CALL                             R2 2 1
       24 DUPTABLE                         R3 K10 [{"state", "cancelAutoSetup", "clearError", "startAutoSetup"}]
       25 SETTABLEKS                       R2 R3 K6 ["state"]
       27 GETTABLEKS                       R4 R1 K7 ["cancelAutoSetup"]
       29 SETTABLEKS                       R4 R3 K7 ["cancelAutoSetup"]
       31 GETTABLEKS                       R4 R1 K8 ["clearError"]
       33 SETTABLEKS                       R4 R3 K8 ["clearError"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R4 R5 K11 ["useCallback"]
       38 NEWCLOSURE                       R5 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 NEWTABLE                         R6 0 1
       43 MOVE                             R7 R0
       44 SETLIST                          R6 R7 1 [1]
       46 CALL                             R4 2 1
       47 SETTABLEKS                       R4 R3 K9 ["startAutoSetup"]
       49 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Components"]
       19 GETTABLEKS                       R3 R4 K12 ["AutoSetupContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R1 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K13 ["Util"]
       28 GETTABLEKS                       R4 R5 K14 ["AutoSetupUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R7 R1 K10 ["Src"]
       35 GETTABLEKS                       R6 R7 K13 ["Util"]
       37 GETTABLEKS                       R5 R6 K15 ["Base64Util"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R8 R1 K10 ["Src"]
       44 GETTABLEKS                       R7 R8 K13 ["Util"]
       46 GETTABLEKS                       R6 R7 K16 ["CharacterHashUtils"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R9 R1 K10 ["Src"]
       53 GETTABLEKS                       R8 R9 K13 ["Util"]
       55 GETTABLEKS                       R7 R8 K17 ["Constants"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R9 R1 K18 ["Packages"]
       62 GETTABLEKS                       R8 R9 K19 ["Framework"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R10 R1 K18 ["Packages"]
       69 GETTABLEKS                       R9 R10 K20 ["React"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R12 R1 K10 ["Src"]
       76 GETTABLEKS                       R11 R12 K13 ["Util"]
       78 GETTABLEKS                       R10 R11 K21 ["SelectionWrapper"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R12 R1 K10 ["Src"]
       85 GETTABLEKS                       R11 R12 K22 ["Types"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R14 R1 K10 ["Src"]
       92 GETTABLEKS                       R13 R14 K11 ["Components"]
       94 GETTABLEKS                       R12 R13 K23 ["UGCValidationContext"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K9 [require]
       99 GETTABLEKS                       R15 R1 K10 ["Src"]
      101 GETTABLEKS                       R14 R15 K13 ["Util"]
      103 GETTABLEKS                       R13 R14 K24 ["assetUriToId"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K9 [require]
      108 GETTABLEKS                       R16 R1 K10 ["Src"]
      110 GETTABLEKS                       R15 R16 K13 ["Util"]
      112 GETTABLEKS                       R14 R15 K25 ["findUnderlyingMeshAssetIds"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K9 [require]
      117 GETTABLEKS                       R17 R1 K10 ["Src"]
      119 GETTABLEKS                       R16 R17 K26 ["Flags"]
      121 GETTABLEKS                       R15 R16 K27 ["getFFlagAvatarAutosetupOptionsInput"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K9 [require]
      126 GETTABLEKS                       R18 R1 K10 ["Src"]
      128 GETTABLEKS                       R17 R18 K26 ["Flags"]
      130 GETTABLEKS                       R16 R17 K28 ["getFFlagAvatarPreviewerCustomHumanoidImportOption"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K9 [require]
      135 GETTABLEKS                       R19 R1 K10 ["Src"]
      137 GETTABLEKS                       R18 R19 K26 ["Flags"]
      139 GETTABLEKS                       R17 R18 K29 ["getFFlagAvatarPreviewerAssetClassificationTelemetry"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K9 [require]
      144 GETTABLEKS                       R20 R1 K10 ["Src"]
      146 GETTABLEKS                       R19 R20 K26 ["Flags"]
      148 GETTABLEKS                       R18 R19 K30 ["getFFlagAvatarPreviewerClientJobIdTelemetry"]
      150 CALL                             R17 1 1
      151 GETIMPORT                        R18 K9 [require]
      153 GETTABLEKS                       R21 R1 K10 ["Src"]
      155 GETTABLEKS                       R20 R21 K26 ["Flags"]
      157 GETTABLEKS                       R19 R20 K31 ["getFFlagAvatarPreviewerSortClothingUI"]
      159 CALL                             R18 1 1
      160 GETIMPORT                        R19 K9 [require]
      162 GETTABLEKS                       R22 R1 K10 ["Src"]
      164 GETTABLEKS                       R21 R22 K26 ["Flags"]
      166 GETTABLEKS                       R20 R21 K32 ["getFFlagDebugAvatarPreviewerSharedCache"]
      168 CALL                             R19 1 1
      169 GETIMPORT                        R20 K9 [require]
      171 GETTABLEKS                       R23 R1 K10 ["Src"]
      173 GETTABLEKS                       R22 R23 K26 ["Flags"]
      175 GETTABLEKS                       R21 R22 K33 ["getFFlagFixLayeredClothingAssignment"]
      177 CALL                             R20 1 1
      178 GETIMPORT                        R21 K9 [require]
      180 GETTABLEKS                       R24 R1 K10 ["Src"]
      182 GETTABLEKS                       R23 R24 K26 ["Flags"]
      184 GETTABLEKS                       R22 R23 K34 ["getFFlagNoAvatarAutoSetupInputModelUpload"]
      186 CALL                             R21 1 1
      187 GETIMPORT                        R22 K9 [require]
      189 GETTABLEKS                       R25 R1 K10 ["Src"]
      191 GETTABLEKS                       R24 R25 K26 ["Flags"]
      193 GETTABLEKS                       R23 R24 K35 ["getFIntAvatarPreviewerMaxSerializedModelToSendBytes"]
      195 CALL                             R22 1 1
      196 GETIMPORT                        R23 K9 [require]
      198 GETTABLEKS                       R26 R1 K10 ["Src"]
      200 GETTABLEKS                       R25 R26 K13 ["Util"]
      202 GETTABLEKS                       R24 R25 K36 ["renameChildrenForClothing"]
      204 CALL                             R23 1 1
      205 DUPTABLE                         R24 K45 [{"Created", "Pending", "Processing", "Finalizing", "Completed", "Invalid", "Failed", "Canceled"}]
      206 LOADN                            R25 1
      207 SETTABLEKS                       R25 R24 K37 ["Created"]
      209 LOADN                            R25 2
      210 SETTABLEKS                       R25 R24 K38 ["Pending"]
      212 LOADN                            R25 3
      213 SETTABLEKS                       R25 R24 K39 ["Processing"]
      215 LOADN                            R25 4
      216 SETTABLEKS                       R25 R24 K40 ["Finalizing"]
      218 LOADN                            R25 5
      219 SETTABLEKS                       R25 R24 K41 ["Completed"]
      221 LOADN                            R25 101
      222 SETTABLEKS                       R25 R24 K42 ["Invalid"]
      224 LOADN                            R25 102
      225 SETTABLEKS                       R25 R24 K43 ["Failed"]
      227 LOADN                            R25 103
      228 SETTABLEKS                       R25 R24 K44 ["Canceled"]
      230 DUPCLOSURE                       R25 K46 [PROTO_0]
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R22
      233 DUPCLOSURE                       R26 K47 [PROTO_19]
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R9
      236 CAPTURE                          VAL R8
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R19
      240 CAPTURE                          VAL R11
      241 CAPTURE                          VAL R17
      242 CAPTURE                          VAL R0
      243 CAPTURE                          VAL R18
      244 CAPTURE                          VAL R3
      245 CAPTURE                          VAL R23
      246 CAPTURE                          VAL R5
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R15
      249 CAPTURE                          VAL R16
      250 CAPTURE                          VAL R14
      251 CAPTURE                          VAL R21
      252 CAPTURE                          VAL R4
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R24
      255 CAPTURE                          VAL R12
      256 CAPTURE                          VAL R13
      257 DUPCLOSURE                       R27 K48 [PROTO_22]
      258 CAPTURE                          VAL R26
      259 CAPTURE                          VAL R8
      260 RETURN                           R27 1
