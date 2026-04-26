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
       14 JUMPIFNOTEQ                      R1 R2 ; [+15]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R2 R0 K0 ["jobId"]
       19 SETTABLEKS                       R2 R1 K4 ["current"]
       21 GETUPVAL                         R1 2
       22 LOADK                            R3 K5 ["autoSetupJobInitialized"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R5 R0 K0 ["jobId"]
       26 NAMECALL                         R1 R1 K6 ["report"]
       28 CALL                             R1 4 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 4
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+100]
        8 GETUPVAL                         R0 3
        9 JUMPIFNOT                        R0 ; [+98]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R1 R2 K0 ["settings"]
       13 GETTABLEKS                       R0 R1 K1 ["SetupType"]
       15 JUMPIFEQKS                       R0 K2 ["Unspecified"] ; [+92]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R1 R2 K0 ["settings"]
       20 GETTABLEKS                       R0 R1 K3 ["ClothingOnly"]
       22 JUMPIFNOT                        R0 ; [+85]
       23 GETUPVAL                         R0 4
       24 LOADK                            R2 K4 ["autoSetupClothingOnlyFinish"]
       25 GETUPVAL                         R3 5
       26 GETUPVAL                         R4 6
       27 NAMECALL                         R0 R0 K5 ["report"]
       29 CALL                             R0 4 0
       30 GETUPVAL                         R0 7
       31 CALL                             R0 0 1
       32 JUMPIFNOT                        R0 ; [+11]
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R1 R2 K6 ["info"]
       36 GETTABLEKS                       R0 R1 K7 ["shouldProcessAttachmentPoint"]
       38 JUMPIFNOT                        R0 ; [+5]
       39 GETUPVAL                         R1 8
       40 GETTABLEKS                       R0 R1 K8 ["processRigidAndAttachmentMeshes"]
       42 GETUPVAL                         R1 9
       43 CALL                             R0 1 0
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R1 R2 K6 ["info"]
       47 GETTABLEKS                       R0 R1 K9 ["shouldCreateTemplateBody"]
       49 JUMPIFNOT                        R0 ; [+48]
       50 GETUPVAL                         R1 8
       51 GETTABLEKS                       R0 R1 K10 ["createTemplateBody"]
       53 CALL                             R0 0 1
       54 GETUPVAL                         R1 9
       55 NAMECALL                         R1 R1 K11 ["Clone"]
       57 CALL                             R1 1 1
       58 NAMECALL                         R2 R1 K12 ["GetDescendants"]
       60 CALL                             R2 1 3
       61 FORGPREP                         R2
       62 LOADK                            R9 K13 ["BasePart"]
       63 NAMECALL                         R7 R6 K14 ["IsA"]
       65 CALL                             R7 2 1
       66 JUMPIFNOT                        R7 ; [+2]
       67 SETTABLEKS                       R0 R6 K15 ["Parent"]
       69 FORGLOOP                         R2 2 ; [-8]
       71 SETUPVAL                         R0 9
       72 GETUPVAL                         R2 10
       73 CALL                             R2 0 1
       74 JUMPIFNOT                        R2 ; [+12]
       75 GETUPVAL                         R3 8
       76 GETTABLEKS                       R2 R3 K16 ["insertBodyAsync"]
       78 LOADNIL                          R3
       79 GETUPVAL                         R4 11
       80 GETUPVAL                         R5 9
       81 GETUPVAL                         R6 12
       82 GETUPVAL                         R7 13
       83 GETUPVAL                         R8 14
       84 GETUPVAL                         R9 3
       85 CALL                             R2 7 0
       86 JUMP                             ; [+46]
       87 GETUPVAL                         R3 8
       88 GETTABLEKS                       R2 R3 K17 ["DEPRECATED_insertBodyAsync"]
       90 LOADNIL                          R3
       91 GETUPVAL                         R4 11
       92 GETUPVAL                         R5 9
       93 GETUPVAL                         R6 12
       94 GETUPVAL                         R7 13
       95 GETUPVAL                         R8 14
       96 CALL                             R2 6 0
       97 JUMP                             ; [+35]
       98 GETUPVAL                         R1 8
       99 GETTABLEKS                       R0 R1 K18 ["insertClothingAsync"]
      101 GETUPVAL                         R1 11
      102 GETUPVAL                         R2 9
      103 GETUPVAL                         R3 12
      104 GETUPVAL                         R4 13
      105 GETUPVAL                         R5 14
      106 CALL                             R0 5 0
      107 JUMP                             ; [+25]
      108 GETUPVAL                         R0 10
      109 CALL                             R0 0 1
      110 JUMPIFNOT                        R0 ; [+12]
      111 GETUPVAL                         R1 8
      112 GETTABLEKS                       R0 R1 K16 ["insertBodyAsync"]
      114 GETUPVAL                         R1 15
      115 GETUPVAL                         R2 11
      116 GETUPVAL                         R3 9
      117 GETUPVAL                         R4 12
      118 GETUPVAL                         R5 13
      119 GETUPVAL                         R6 14
      120 GETUPVAL                         R7 3
      121 CALL                             R0 7 0
      122 JUMP                             ; [+10]
      123 GETUPVAL                         R1 8
      124 GETTABLEKS                       R0 R1 K17 ["DEPRECATED_insertBodyAsync"]
      126 GETUPVAL                         R1 15
      127 GETUPVAL                         R2 11
      128 GETUPVAL                         R3 9
      129 GETUPVAL                         R4 12
      130 GETUPVAL                         R5 13
      131 GETUPVAL                         R6 14
      132 CALL                             R0 6 0
      133 GETUPVAL                         R0 16
      134 LOADNIL                          R1
      135 CALL                             R0 1 0
      136 GETUPVAL                         R0 4
      137 LOADK                            R2 K19 ["autoSetupFinish"]
      138 GETIMPORT                        R4 K22 [os.clock]
      140 CALL                             R4 0 1
      141 GETUPVAL                         R5 17
      142 SUB                              R3 R4 R5
      143 GETUPVAL                         R4 13
      144 GETUPVAL                         R5 14
      145 NAMECALL                         R0 R0 K5 ["report"]
      147 CALL                             R0 5 0
      148 GETUPVAL                         R0 4
      149 LOADK                            R2 K23 ["autoSetupAssetsGenerated"]
      150 GETUPVAL                         R3 18
      151 GETUPVAL                         R4 13
      152 CALL                             R3 1 1
      153 GETUPVAL                         R4 19
      154 GETUPVAL                         R5 9
      155 CALL                             R4 1 -1
      156 NAMECALL                         R0 R0 K5 ["report"]
      158 CALL                             R0 -1 0
      159 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["serializeModel"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K3 ["model"]
        8 CALL                             R0 2 2
        9 JUMPIF                           R0 ; [+25]
       10 GETIMPORT                        R2 K5 [warn]
       12 LOADK                            R4 K6 ["Something went wrong while serializing the model.\n%*"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R4 R4 K7 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 2
       20 GETUPVAL                         R3 1
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 3
       23 LOADK                            R4 K8 ["autoSetupFailure"]
       24 GETIMPORT                        R6 K11 [os.clock]
       26 CALL                             R6 0 1
       27 GETUPVAL                         R7 4
       28 SUB                              R5 R6 R7
       29 LOADK                            R6 K12 ["no model uploaded"]
       30 GETUPVAL                         R7 5
       31 NAMECALL                         R2 R2 K13 ["report"]
       33 CALL                             R2 5 0
       34 RETURN                           R0 0
       35 JUMPIFEQKNIL                     R1 ; [+23]
       37 MOVE                             R3 R1
       38 GETUPVAL                         R5 6
       39 GETTABLEKS                       R4 R5 K14 ["encode"]
       41 GETIMPORT                        R5 K17 [buffer.fromstring]
       43 MOVE                             R6 R3
       44 CALL                             R5 1 -1
       45 CALL                             R4 -1 1
       46 GETIMPORT                        R5 K19 [buffer.len]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 1
       50 GETUPVAL                         R6 7
       51 CALL                             R6 0 1
       52 JUMPIFNOTLT                      R6 R5 ; [+3]
       54 LOADB                            R2 0
       55 JUMP                             ; [+1]
       56 LOADB                            R2 1
       57 JUMPIF                           R2 ; [+1]
       58 LOADNIL                          R1
       59 LOADNIL                          R2
       60 LOADNIL                          R3
       61 JUMPIFNOT                        R1 ; [+3]
       62 LOADB                            R2 1
       63 LOADK                            R3 K12 ["no model uploaded"]
       64 JUMP                             ; [+12]
       65 GETIMPORT                        R4 K1 [pcall]
       67 GETUPVAL                         R6 0
       68 GETTABLEKS                       R5 R6 K20 ["uploadModelAsync"]
       70 GETUPVAL                         R7 1
       71 GETTABLEKS                       R6 R7 K3 ["model"]
       73 CALL                             R4 2 2
       74 MOVE                             R2 R4
       75 MOVE                             R3 R5
       76 LOADNIL                          R1
       77 JUMPIF                           R2 ; [+26]
       78 GETIMPORT                        R4 K5 [warn]
       80 LOADK                            R6 K21 ["Something went wrong while uploading the model.\n%*"]
       81 MOVE                             R8 R3
       82 NAMECALL                         R6 R6 K7 ["format"]
       84 CALL                             R6 2 1
       85 MOVE                             R5 R6
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 2
       88 GETUPVAL                         R5 1
       89 CALL                             R4 1 0
       90 GETUPVAL                         R4 3
       91 LOADK                            R6 K8 ["autoSetupFailure"]
       92 GETIMPORT                        R8 K11 [os.clock]
       94 CALL                             R8 0 1
       95 GETUPVAL                         R9 4
       96 SUB                              R7 R8 R9
       97 LOADK                            R8 K12 ["no model uploaded"]
       98 GETUPVAL                         R9 5
       99 NAMECALL                         R4 R4 K13 ["report"]
      101 CALL                             R4 5 0
      102 CLOSEUPVALS                      R3
      103 RETURN                           R0 0
      104 GETUPVAL                         R4 8
      105 DUPTABLE                         R5 K25 [{"timeStart", "assetId", "modelHash"}]
      106 GETUPVAL                         R6 4
      107 SETTABLEKS                       R6 R5 K22 ["timeStart"]
      109 SETTABLEKS                       R3 R5 K23 ["assetId"]
      111 GETUPVAL                         R6 5
      112 SETTABLEKS                       R6 R5 K24 ["modelHash"]
      114 SETTABLEKS                       R5 R4 K26 ["current"]
      116 NEWCLOSURE                       R4 P0
      117 CAPTURE                          UPVAL U9
      118 CAPTURE                          UPVAL U10
      119 CAPTURE                          UPVAL U11
      120 CAPTURE                          UPVAL U12
      121 NEWCLOSURE                       R5 P1
      122 CAPTURE                          UPVAL U13
      123 CAPTURE                          UPVAL U11
      124 CAPTURE                          UPVAL U3
      125 CAPTURE                          UPVAL U14
      126 CAPTURE                          UPVAL U15
      127 LOADNIL                          R6
      128 LOADNIL                          R7
      129 JUMPIFNOT                        R1 ; [+14]
      130 GETIMPORT                        R8 K1 [pcall]
      132 GETUPVAL                         R10 0
      133 GETTABLEKS                       R9 R10 K27 ["startSerializedAutoSetupAsync"]
      135 MOVE                             R10 R1
      136 GETUPVAL                         R11 5
      137 MOVE                             R12 R4
      138 MOVE                             R13 R5
      139 GETUPVAL                         R14 16
      140 CALL                             R8 6 2
      141 MOVE                             R6 R8
      142 MOVE                             R7 R9
      143 JUMP                             ; [+12]
      144 GETIMPORT                        R8 K1 [pcall]
      146 GETUPVAL                         R10 0
      147 GETTABLEKS                       R9 R10 K28 ["startAutoSetupAsync"]
      149 MOVE                             R10 R3
      150 MOVE                             R11 R4
      151 MOVE                             R12 R5
      152 GETUPVAL                         R13 16
      153 CALL                             R8 5 2
      154 MOVE                             R6 R8
      155 MOVE                             R7 R9
      156 JUMPIFNOT                        R6 ; [+30]
      157 GETUPVAL                         R9 17
      158 GETTABLEKS                       R8 R9 K26 ["current"]
      160 GETUPVAL                         R9 5
      161 SETTABLE                         R7 R8 R9
      162 GETIMPORT                        R8 K31 [task.spawn]
      164 NEWCLOSURE                       R9 P2
      165 CAPTURE                          UPVAL U18
      166 CAPTURE                          UPVAL U19
      167 CAPTURE                          UPVAL U20
      168 CAPTURE                          UPVAL U21
      169 CAPTURE                          UPVAL U3
      170 CAPTURE                          UPVAL U16
      171 CAPTURE                          UPVAL U14
      172 CAPTURE                          UPVAL U22
      173 CAPTURE                          UPVAL U23
      174 CAPTURE                          REF R7
      175 CAPTURE                          UPVAL U24
      176 CAPTURE                          UPVAL U25
      177 CAPTURE                          UPVAL U1
      178 CAPTURE                          REF R3
      179 CAPTURE                          UPVAL U5
      180 CAPTURE                          UPVAL U26
      181 CAPTURE                          UPVAL U27
      182 CAPTURE                          UPVAL U4
      183 CAPTURE                          UPVAL U28
      184 CAPTURE                          UPVAL U29
      185 CALL                             R8 1 0
      186 JUMP                             ; [+30]
      187 JUMPIFNOTEQKS                    R7 K32 ["Autosetup is canceled"] ; [+5]
      189 GETUPVAL                         R8 27
      190 LOADNIL                          R9
      191 CALL                             R8 1 0
      192 JUMP                             ; [+24]
      193 GETIMPORT                        R8 K5 [warn]
      195 LOADK                            R10 K33 ["Something went wrong while performing auto setup.\n%*"]
      196 MOVE                             R12 R7
      197 NAMECALL                         R10 R10 K7 ["format"]
      199 CALL                             R10 2 1
      200 MOVE                             R9 R10
      201 CALL                             R8 1 0
      202 GETUPVAL                         R8 2
      203 GETUPVAL                         R9 1
      204 CALL                             R8 1 0
      205 GETUPVAL                         R8 3
      206 LOADK                            R10 K8 ["autoSetupFailure"]
      207 GETIMPORT                        R12 K11 [os.clock]
      209 CALL                             R12 0 1
      210 GETUPVAL                         R13 4
      211 SUB                              R11 R12 R13
      212 ORK                              R12 R3 K12 ["no model uploaded"]
      213 GETUPVAL                         R13 5
      214 NAMECALL                         R8 R8 K13 ["report"]
      216 CALL                             R8 5 0
      217 GETUPVAL                         R8 8
      218 LOADNIL                          R9
      219 SETTABLEKS                       R9 R8 K26 ["current"]
      221 CLOSEUPVALS                      R3
      222 RETURN                           R0 0

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
       30 LOADK                            R3 K10 [""]
       31 SETTABLEKS                       R3 R2 K11 ["current"]
       33 LOADK                            R3 K12 ["AutoSetupClientJob_"]
       34 GETUPVAL                         R4 5
       35 NAMECALL                         R4 R4 K13 ["GenerateGUID"]
       37 CALL                             R4 1 1
       38 CONCAT                           R2 R3 R4
       39 JUMPIFEQKNIL                     R1 ; [+4]
       41 GETTABLEKS                       R3 R1 K14 ["settings"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R3
       45 GETIMPORT                        R4 K17 [os.clock]
       47 CALL                             R4 0 1
       48 GETTABLEKS                       R5 R0 K18 ["model"]
       50 JUMPIFNOTEQKNIL                  R5 ; [+6]
       52 GETIMPORT                        R5 K20 [error]
       54 LOADK                            R6 K21 ["Must have model"]
       55 CALL                             R5 1 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R5 6
       58 CALL                             R5 0 1
       59 JUMPIFNOT                        R5 ; [+15]
       60 GETUPVAL                         R6 7
       61 GETTABLEKS                       R5 R6 K22 ["collapseTopLevelFolders"]
       63 GETTABLEKS                       R6 R0 K18 ["model"]
       65 CALL                             R5 1 0
       66 GETUPVAL                         R5 8
       67 GETTABLEKS                       R6 R0 K18 ["model"]
       69 CALL                             R5 1 0
       70 GETUPVAL                         R6 7
       71 GETTABLEKS                       R5 R6 K23 ["setModelIntendedName"]
       73 MOVE                             R6 R0
       74 CALL                             R5 1 0
       75 GETUPVAL                         R6 9
       76 GETTABLEKS                       R5 R6 K24 ["computeHashSerializeContext"]
       78 NEWTABLE                         R6 0 1
       80 GETTABLEKS                       R7 R0 K18 ["model"]
       82 SETLIST                          R6 R7 1 [1]
       84 DUPTABLE                         R7 K27 [{"ignoreUniformScaleChanges", "ignoreAccessories"}]
       85 LOADB                            R8 0
       86 SETTABLEKS                       R8 R7 K25 ["ignoreUniformScaleChanges"]
       88 LOADB                            R8 1
       89 SETTABLEKS                       R8 R7 K26 ["ignoreAccessories"]
       91 CALL                             R5 2 1
       92 GETUPVAL                         R7 9
       93 GETTABLEKS                       R6 R7 K28 ["hashCharacter"]
       95 GETTABLEKS                       R7 R0 K18 ["model"]
       97 MOVE                             R8 R5
       98 CALL                             R6 2 1
       99 GETUPVAL                         R7 10
      100 CALL                             R7 0 1
      101 JUMPIFNOT                        R7 ; [+3]
      102 GETUPVAL                         R7 11
      103 MOVE                             R8 R0
      104 CALL                             R7 1 0
      105 GETUPVAL                         R9 12
      106 GETTABLEKS                       R8 R9 K11 ["current"]
      108 GETTABLE                         R7 R8 R6
      109 JUMPIFEQKNIL                     R7 ; [+29]
      111 GETTABLEKS                       R8 R7 K29 ["PrimaryPart"]
      113 JUMPIFEQKNIL                     R8 ; [+25]
      115 GETUPVAL                         R12 13
      116 GETTABLEKS                       R11 R12 K30 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      118 NAMECALL                         R9 R7 K31 ["GetAttribute"]
      120 CALL                             R9 2 1
      121 ORK                              R8 R9 K10 [""]
      122 GETIMPORT                        R9 K34 [task.spawn]
      124 NEWCLOSURE                       R10 P0
      125 CAPTURE                          UPVAL U10
      126 CAPTURE                          UPVAL U14
      127 CAPTURE                          UPVAL U15
      128 CAPTURE                          UPVAL U7
      129 CAPTURE                          UPVAL U16
      130 CAPTURE                          UPVAL U17
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R1
      136 CAPTURE                          UPVAL U18
      137 CALL                             R9 1 0
      138 RETURN                           R0 0
      139 GETUPVAL                         R8 10
      140 CALL                             R8 0 1
      141 JUMPIF                           R8 ; [+3]
      142 GETUPVAL                         R8 11
      143 MOVE                             R9 R0
      144 CALL                             R8 1 0
      145 GETUPVAL                         R8 6
      146 CALL                             R8 0 1
      147 JUMPIFNOT                        R8 ; [+16]
      148 GETUPVAL                         R8 19
      149 LOADK                            R10 K35 ["autoSetupRequested"]
      150 JUMPIFEQKNIL                     R1 ; [+6]
      152 GETTABLEKS                       R12 R1 K36 ["info"]
      154 GETTABLEKS                       R11 R12 K37 ["assetClassification"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R11
      158 MOVE                             R12 R2
      159 MOVE                             R13 R6
      160 NAMECALL                         R8 R8 K38 ["report"]
      162 CALL                             R8 5 0
      163 JUMP                             ; [+5]
      164 GETUPVAL                         R8 19
      165 LOADK                            R10 K35 ["autoSetupRequested"]
      166 NAMECALL                         R8 R8 K38 ["report"]
      168 CALL                             R8 2 0
      169 GETUPVAL                         R8 20
      170 CALL                             R8 0 1
      171 JUMPIFNOT                        R8 ; [+7]
      172 GETUPVAL                         R8 19
      173 LOADK                            R10 K39 ["autoSetupOptions"]
      174 MOVE                             R11 R3
      175 MOVE                             R12 R2
      176 NAMECALL                         R8 R8 K38 ["report"]
      178 CALL                             R8 4 0
      179 LOADNIL                          R8
      180 GETIMPORT                        R9 K34 [task.spawn]
      182 NEWCLOSURE                       R10 P1
      183 CAPTURE                          UPVAL U18
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U21
      186 CAPTURE                          UPVAL U19
      187 CAPTURE                          VAL R4
      188 CAPTURE                          VAL R6
      189 CAPTURE                          UPVAL U22
      190 CAPTURE                          UPVAL U23
      191 CAPTURE                          UPVAL U24
      192 CAPTURE                          UPVAL U25
      193 CAPTURE                          UPVAL U26
      194 CAPTURE                          UPVAL U4
      195 CAPTURE                          UPVAL U3
      196 CAPTURE                          UPVAL U13
      197 CAPTURE                          VAL R2
      198 CAPTURE                          UPVAL U27
      199 CAPTURE                          VAL R3
      200 CAPTURE                          UPVAL U12
      201 CAPTURE                          UPVAL U10
      202 CAPTURE                          UPVAL U14
      203 CAPTURE                          UPVAL U20
      204 CAPTURE                          VAL R1
      205 CAPTURE                          UPVAL U28
      206 CAPTURE                          UPVAL U7
      207 CAPTURE                          UPVAL U15
      208 CAPTURE                          UPVAL U17
      209 CAPTURE                          UPVAL U16
      210 CAPTURE                          UPVAL U11
      211 CAPTURE                          UPVAL U29
      212 CAPTURE                          UPVAL U30
      213 CALL                             R9 1 1
      214 MOVE                             R8 R9
      215 GETUPVAL                         R9 24
      216 DUPTABLE                         R10 K43 [{"timeStart", "assetId", "modelHash"}]
      217 SETTABLEKS                       R4 R10 K40 ["timeStart"]
      219 LOADK                            R11 K44 ["no model uploaded"]
      220 SETTABLEKS                       R11 R10 K41 ["assetId"]
      222 SETTABLEKS                       R6 R10 K42 ["modelHash"]
      224 SETTABLEKS                       R10 R9 K11 ["current"]
      226 GETUPVAL                         R9 1
      227 MOVE                             R10 R8
      228 CALL                             R9 1 0
      229 GETUPVAL                         R10 18
      230 GETTABLEKS                       R9 R10 K45 ["autoSetupClickedSignal"]
      232 JUMPIFEQKNIL                     R9 ; [+7]
      234 GETUPVAL                         R10 18
      235 GETTABLEKS                       R9 R10 K45 ["autoSetupClickedSignal"]
      237 NAMECALL                         R9 R9 K46 ["Fire"]
      239 CALL                             R9 1 0
      240 RETURN                           R0 0

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
      187 CAPTURE                          VAL R20
      188 CAPTURE                          UPVAL U7
      189 CAPTURE                          UPVAL U8
      190 CAPTURE                          UPVAL U9
      191 CAPTURE                          UPVAL U10
      192 CAPTURE                          UPVAL U11
      193 CAPTURE                          UPVAL U12
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R14
      196 CAPTURE                          UPVAL U4
      197 CAPTURE                          VAL R23
      198 CAPTURE                          UPVAL U13
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U14
      204 CAPTURE                          VAL R17
      205 CAPTURE                          UPVAL U15
      206 CAPTURE                          UPVAL U16
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R21
      209 CAPTURE                          UPVAL U17
      210 CAPTURE                          VAL R13
      211 CAPTURE                          UPVAL U18
      212 CAPTURE                          UPVAL U19
      213 CAPTURE                          UPVAL U20
      214 NEWTABLE                         R26 0 5
      216 GETTABLEKS                       R27 R2 K22 ["startAutoSetupAsync"]
      218 GETTABLEKS                       R28 R2 K23 ["uploadModelAsync"]
      220 MOVE                             R29 R22
      221 MOVE                             R30 R15
      222 GETUPVAL                         R32 12
      223 CALL                             R32 0 1
      224 JUMPIFNOT                        R32 ; [+2]
      225 MOVE                             R31 R23
      226 JUMP                             ; [+1]
      227 LOADNIL                          R31
      228 SETLIST                          R26 R27 5 [1]
      230 CALL                             R24 2 1
      231 GETUPVAL                         R26 2
      232 GETTABLEKS                       R25 R26 K18 ["useCallback"]
      234 NEWCLOSURE                       R26 P10
      235 CAPTURE                          VAL R15
      236 CAPTURE                          VAL R6
      237 CAPTURE                          VAL R4
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R20
      240 NEWTABLE                         R27 0 3
      242 GETTABLEKS                       R28 R2 K24 ["cancelAutoSetup"]
      244 GETTABLEKS                       R29 R20 K11 ["current"]
      246 MOVE                             R30 R15
      247 SETLIST                          R27 R28 3 [1]
      249 CALL                             R25 2 1
      250 DUPTABLE                         R26 K32 [{"cancelAutoSetup", "startAutoSetup", "activeTarget", "lastErrorType", "lastErrorTarget", "clearError", "progressState", "metadataState"}]
      251 SETTABLEKS                       R25 R26 K24 ["cancelAutoSetup"]
      253 SETTABLEKS                       R24 R26 K25 ["startAutoSetup"]
      255 SETTABLEKS                       R3 R26 K26 ["activeTarget"]
      257 SETTABLEKS                       R8 R26 K27 ["lastErrorType"]
      259 SETTABLEKS                       R10 R26 K28 ["lastErrorTarget"]
      261 SETTABLEKS                       R16 R26 K29 ["clearError"]
      263 SETTABLEKS                       R18 R26 K30 ["progressState"]
      265 SETTABLEKS                       R12 R26 K31 ["metadataState"]
      267 RETURN                           R26 1

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
      139 GETTABLEKS                       R17 R18 K29 ["getFFlagAvatarPreviewerProcessRigidOnly"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K9 [require]
      144 GETTABLEKS                       R20 R1 K10 ["Src"]
      146 GETTABLEKS                       R19 R20 K26 ["Flags"]
      148 GETTABLEKS                       R18 R19 K30 ["getFFlagAvatarPreviewerSortClothingUI"]
      150 CALL                             R17 1 1
      151 GETIMPORT                        R18 K9 [require]
      153 GETTABLEKS                       R21 R1 K10 ["Src"]
      155 GETTABLEKS                       R20 R21 K26 ["Flags"]
      157 GETTABLEKS                       R19 R20 K31 ["getFFlagDebugAvatarPreviewerSharedCache"]
      159 CALL                             R18 1 1
      160 GETIMPORT                        R19 K9 [require]
      162 GETTABLEKS                       R22 R1 K10 ["Src"]
      164 GETTABLEKS                       R21 R22 K26 ["Flags"]
      166 GETTABLEKS                       R20 R21 K32 ["getFFlagFixLayeredClothingAssignment"]
      168 CALL                             R19 1 1
      169 GETIMPORT                        R20 K9 [require]
      171 GETTABLEKS                       R23 R1 K10 ["Src"]
      173 GETTABLEKS                       R22 R23 K26 ["Flags"]
      175 GETTABLEKS                       R21 R22 K33 ["getFIntAvatarPreviewerMaxSerializedModelToSendBytes"]
      177 CALL                             R20 1 1
      178 GETIMPORT                        R21 K9 [require]
      180 GETTABLEKS                       R24 R1 K10 ["Src"]
      182 GETTABLEKS                       R23 R24 K13 ["Util"]
      184 GETTABLEKS                       R22 R23 K34 ["renameChildrenForClothing"]
      186 CALL                             R21 1 1
      187 DUPTABLE                         R22 K43 [{"Created", "Pending", "Processing", "Finalizing", "Completed", "Invalid", "Failed", "Canceled"}]
      188 LOADN                            R23 1
      189 SETTABLEKS                       R23 R22 K35 ["Created"]
      191 LOADN                            R23 2
      192 SETTABLEKS                       R23 R22 K36 ["Pending"]
      194 LOADN                            R23 3
      195 SETTABLEKS                       R23 R22 K37 ["Processing"]
      197 LOADN                            R23 4
      198 SETTABLEKS                       R23 R22 K38 ["Finalizing"]
      200 LOADN                            R23 5
      201 SETTABLEKS                       R23 R22 K39 ["Completed"]
      203 LOADN                            R23 101
      204 SETTABLEKS                       R23 R22 K40 ["Invalid"]
      206 LOADN                            R23 102
      207 SETTABLEKS                       R23 R22 K41 ["Failed"]
      209 LOADN                            R23 103
      210 SETTABLEKS                       R23 R22 K42 ["Canceled"]
      212 DUPCLOSURE                       R23 K44 [PROTO_0]
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R20
      215 DUPCLOSURE                       R24 K45 [PROTO_19]
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R8
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R6
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R0
      224 CAPTURE                          VAL R17
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R5
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R22
      234 CAPTURE                          VAL R16
      235 CAPTURE                          VAL R12
      236 CAPTURE                          VAL R13
      237 DUPCLOSURE                       R25 K46 [PROTO_22]
      238 CAPTURE                          VAL R24
      239 CAPTURE                          VAL R8
      240 RETURN                           R25 1
