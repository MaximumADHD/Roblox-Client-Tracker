PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["encode"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
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
        7 JUMPIFNOT                        R0 ; [+15]
        8 GETUPVAL                         R0 3
        9 GETTABLEKS                       R0 R0 K0 ["insertResultAsync"]
       11 GETUPVAL                         R1 4
       12 GETUPVAL                         R2 5
       13 GETUPVAL                         R3 6
       14 GETUPVAL                         R4 7
       15 GETUPVAL                         R5 8
       16 GETUPVAL                         R6 9
       17 GETUPVAL                         R7 10
       18 CALL                             R0 7 0
       19 GETUPVAL                         R0 11
       20 LOADNIL                          R1
       21 CALL                             R0 1 0
       22 JUMP                             ; [+25]
       23 GETUPVAL                         R0 12
       24 CALL                             R0 0 1
       25 JUMPIFNOT                        R0 ; [+12]
       26 GETUPVAL                         R0 3
       27 GETTABLEKS                       R0 R0 K1 ["insertBodyAsync"]
       29 GETUPVAL                         R1 4
       30 GETUPVAL                         R2 5
       31 GETUPVAL                         R3 6
       32 GETUPVAL                         R4 7
       33 GETUPVAL                         R5 8
       34 GETUPVAL                         R6 9
       35 GETUPVAL                         R7 10
       36 CALL                             R0 7 0
       37 JUMP                             ; [+10]
       38 GETUPVAL                         R0 3
       39 GETTABLEKS                       R0 R0 K2 ["DEPRECATED_insertBodyAsync"]
       41 GETUPVAL                         R1 4
       42 GETUPVAL                         R2 5
       43 GETUPVAL                         R3 6
       44 GETUPVAL                         R4 7
       45 GETUPVAL                         R5 8
       46 GETUPVAL                         R6 9
       47 CALL                             R0 6 0
       48 GETUPVAL                         R0 13
       49 GETTABLEKS                       R0 R0 K3 ["autoSetupClickedSignal"]
       51 JUMPIFNOT                        R0 ; [+6]
       52 GETUPVAL                         R0 13
       53 GETTABLEKS                       R0 R0 K3 ["autoSetupClickedSignal"]
       55 NAMECALL                         R0 R0 K4 ["Fire"]
       57 CALL                             R0 1 0
       58 RETURN                           R0 0

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
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K3 ["current"]
       24 GETTABLEKS                       R2 R0 K4 ["jobId"]
       26 JUMPIFEQ                         R1 R2 ; [+2]
       28 RETURN                           R0 0
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K3 ["current"]
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
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K3 ["current"]
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
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["AUTO_SETUP_JOB_INITIALIZATION"]
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
        2 JUMPIFNOT                        R0 ; [+26]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R0 2
        6 LOADK                            R2 K0 ["autoSetupClothingOnlyFinish"]
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 NAMECALL                         R0 R0 K1 ["report"]
       11 CALL                             R0 4 0
       12 GETUPVAL                         R0 5
       13 CALL                             R0 0 1
       14 JUMPIFNOT                        R0 ; [+2]
       15 GETUPVAL                         R0 6
       16 CALL                             R0 0 0
       17 GETUPVAL                         R0 7
       18 GETTABLEKS                       R0 R0 K2 ["insertResultAsync"]
       20 GETUPVAL                         R1 8
       21 GETUPVAL                         R2 9
       22 GETUPVAL                         R3 10
       23 GETUPVAL                         R4 11
       24 GETUPVAL                         R5 12
       25 GETUPVAL                         R6 13
       26 GETUPVAL                         R7 14
       27 CALL                             R0 7 0
       28 JUMP                             ; [+133]
       29 GETUPVAL                         R0 5
       30 CALL                             R0 0 1
       31 JUMPIFNOT                        R0 ; [+2]
       32 GETUPVAL                         R0 6
       33 CALL                             R0 0 0
       34 GETUPVAL                         R0 15
       35 CALL                             R0 0 1
       36 JUMPIFNOT                        R0 ; [+100]
       37 GETUPVAL                         R0 14
       38 JUMPIFNOT                        R0 ; [+98]
       39 GETUPVAL                         R0 14
       40 GETTABLEKS                       R0 R0 K3 ["settings"]
       42 GETTABLEKS                       R0 R0 K4 ["SetupType"]
       44 JUMPIFEQKS                       R0 K5 ["Unspecified"] ; [+92]
       46 GETUPVAL                         R0 14
       47 GETTABLEKS                       R0 R0 K3 ["settings"]
       49 GETTABLEKS                       R0 R0 K6 ["ClothingOnly"]
       51 JUMPIFNOT                        R0 ; [+85]
       52 GETUPVAL                         R0 2
       53 LOADK                            R2 K0 ["autoSetupClothingOnlyFinish"]
       54 GETUPVAL                         R3 3
       55 GETUPVAL                         R4 4
       56 NAMECALL                         R0 R0 K1 ["report"]
       58 CALL                             R0 4 0
       59 GETUPVAL                         R0 16
       60 CALL                             R0 0 1
       61 JUMPIFNOT                        R0 ; [+11]
       62 GETUPVAL                         R0 14
       63 GETTABLEKS                       R0 R0 K7 ["info"]
       65 GETTABLEKS                       R0 R0 K8 ["shouldProcessAttachmentPoint"]
       67 JUMPIFNOT                        R0 ; [+5]
       68 GETUPVAL                         R0 7
       69 GETTABLEKS                       R0 R0 K9 ["processRigidAndAttachmentMeshes"]
       71 GETUPVAL                         R1 10
       72 CALL                             R0 1 0
       73 GETUPVAL                         R0 14
       74 GETTABLEKS                       R0 R0 K7 ["info"]
       76 GETTABLEKS                       R0 R0 K10 ["shouldCreateTemplateBody"]
       78 JUMPIFNOT                        R0 ; [+48]
       79 GETUPVAL                         R0 7
       80 GETTABLEKS                       R0 R0 K11 ["createTemplateBody"]
       82 CALL                             R0 0 1
       83 GETUPVAL                         R1 10
       84 NAMECALL                         R1 R1 K12 ["Clone"]
       86 CALL                             R1 1 1
       87 NAMECALL                         R2 R1 K13 ["GetDescendants"]
       89 CALL                             R2 1 3
       90 FORGPREP                         R2
       91 LOADK                            R9 K14 ["BasePart"]
       92 NAMECALL                         R7 R6 K15 ["IsA"]
       94 CALL                             R7 2 1
       95 JUMPIFNOT                        R7 ; [+2]
       96 SETTABLEKS                       R0 R6 K16 ["Parent"]
       98 FORGLOOP                         R2 2 ; [-8]
      100 SETUPVAL                         R0 10
      101 GETUPVAL                         R2 17
      102 CALL                             R2 0 1
      103 JUMPIFNOT                        R2 ; [+12]
      104 GETUPVAL                         R2 7
      105 GETTABLEKS                       R2 R2 K17 ["insertBodyAsync"]
      107 LOADNIL                          R3
      108 GETUPVAL                         R4 9
      109 GETUPVAL                         R5 10
      110 GETUPVAL                         R6 11
      111 GETUPVAL                         R7 12
      112 GETUPVAL                         R8 13
      113 GETUPVAL                         R9 14
      114 CALL                             R2 7 0
      115 JUMP                             ; [+46]
      116 GETUPVAL                         R2 7
      117 GETTABLEKS                       R2 R2 K18 ["DEPRECATED_insertBodyAsync"]
      119 LOADNIL                          R3
      120 GETUPVAL                         R4 9
      121 GETUPVAL                         R5 10
      122 GETUPVAL                         R6 11
      123 GETUPVAL                         R7 12
      124 GETUPVAL                         R8 13
      125 CALL                             R2 6 0
      126 JUMP                             ; [+35]
      127 GETUPVAL                         R0 7
      128 GETTABLEKS                       R0 R0 K19 ["insertClothingAsync"]
      130 GETUPVAL                         R1 9
      131 GETUPVAL                         R2 10
      132 GETUPVAL                         R3 11
      133 GETUPVAL                         R4 12
      134 GETUPVAL                         R5 13
      135 CALL                             R0 5 0
      136 JUMP                             ; [+25]
      137 GETUPVAL                         R0 17
      138 CALL                             R0 0 1
      139 JUMPIFNOT                        R0 ; [+12]
      140 GETUPVAL                         R0 7
      141 GETTABLEKS                       R0 R0 K17 ["insertBodyAsync"]
      143 GETUPVAL                         R1 8
      144 GETUPVAL                         R2 9
      145 GETUPVAL                         R3 10
      146 GETUPVAL                         R4 11
      147 GETUPVAL                         R5 12
      148 GETUPVAL                         R6 13
      149 GETUPVAL                         R7 14
      150 CALL                             R0 7 0
      151 JUMP                             ; [+10]
      152 GETUPVAL                         R0 7
      153 GETTABLEKS                       R0 R0 K18 ["DEPRECATED_insertBodyAsync"]
      155 GETUPVAL                         R1 8
      156 GETUPVAL                         R2 9
      157 GETUPVAL                         R3 10
      158 GETUPVAL                         R4 11
      159 GETUPVAL                         R5 12
      160 GETUPVAL                         R6 13
      161 CALL                             R0 6 0
      162 GETUPVAL                         R0 18
      163 LOADNIL                          R1
      164 CALL                             R0 1 0
      165 GETUPVAL                         R0 2
      166 LOADK                            R2 K20 ["autoSetupFinish"]
      167 GETIMPORT                        R4 K23 [os.clock]
      169 CALL                             R4 0 1
      170 GETUPVAL                         R5 19
      171 SUB                              R3 R4 R5
      172 GETUPVAL                         R4 12
      173 GETUPVAL                         R5 13
      174 NAMECALL                         R0 R0 K1 ["report"]
      176 CALL                             R0 5 0
      177 GETUPVAL                         R0 2
      178 LOADK                            R2 K24 ["autoSetupAssetsGenerated"]
      179 GETUPVAL                         R3 20
      180 GETUPVAL                         R4 12
      181 CALL                             R3 1 1
      182 GETUPVAL                         R4 21
      183 GETUPVAL                         R5 10
      184 CALL                             R4 1 1
      185 GETUPVAL                         R6 22
      186 CALL                             R6 0 1
      187 JUMPIFNOT                        R6 ; [+4]
      188 GETUPVAL                         R5 23
      189 GETTABLEKS                       R5 R5 K25 ["current"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R5
      193 NAMECALL                         R0 R0 K1 ["report"]
      195 CALL                             R0 5 0
      196 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["serializeModel"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K3 ["model"]
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
       38 GETUPVAL                         R4 6
       39 GETTABLEKS                       R4 R4 K14 ["encode"]
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
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R5 R5 K20 ["uploadModelAsync"]
       70 GETUPVAL                         R6 1
       71 GETTABLEKS                       R6 R6 K3 ["model"]
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
      132 GETUPVAL                         R9 0
      133 GETTABLEKS                       R9 R9 K27 ["startSerializedAutoSetupAsync"]
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
      146 GETUPVAL                         R9 0
      147 GETTABLEKS                       R9 R9 K28 ["startAutoSetupAsync"]
      149 MOVE                             R10 R3
      150 MOVE                             R11 R4
      151 MOVE                             R12 R5
      152 GETUPVAL                         R13 16
      153 CALL                             R8 5 2
      154 MOVE                             R6 R8
      155 MOVE                             R7 R9
      156 JUMPIFNOT                        R6 ; [+34]
      157 GETUPVAL                         R8 17
      158 GETTABLEKS                       R8 R8 K26 ["current"]
      160 GETUPVAL                         R9 18
      161 SETTABLE                         R7 R8 R9
      162 GETIMPORT                        R8 K31 [task.spawn]
      164 NEWCLOSURE                       R9 P2
      165 CAPTURE                          UPVAL U19
      166 CAPTURE                          UPVAL U20
      167 CAPTURE                          UPVAL U3
      168 CAPTURE                          UPVAL U16
      169 CAPTURE                          UPVAL U14
      170 CAPTURE                          UPVAL U21
      171 CAPTURE                          UPVAL U22
      172 CAPTURE                          UPVAL U23
      173 CAPTURE                          UPVAL U24
      174 CAPTURE                          UPVAL U25
      175 CAPTURE                          REF R7
      176 CAPTURE                          UPVAL U1
      177 CAPTURE                          REF R3
      178 CAPTURE                          UPVAL U5
      179 CAPTURE                          UPVAL U26
      180 CAPTURE                          UPVAL U27
      181 CAPTURE                          UPVAL U28
      182 CAPTURE                          UPVAL U29
      183 CAPTURE                          UPVAL U30
      184 CAPTURE                          UPVAL U4
      185 CAPTURE                          UPVAL U31
      186 CAPTURE                          UPVAL U32
      187 CAPTURE                          UPVAL U33
      188 CAPTURE                          UPVAL U11
      189 CALL                             R8 1 0
      190 JUMP                             ; [+30]
      191 JUMPIFNOTEQKS                    R7 K32 ["Autosetup is canceled"] ; [+5]
      193 GETUPVAL                         R8 30
      194 LOADNIL                          R9
      195 CALL                             R8 1 0
      196 JUMP                             ; [+24]
      197 GETIMPORT                        R8 K5 [warn]
      199 LOADK                            R10 K33 ["Something went wrong while performing auto setup.\n%*"]
      200 MOVE                             R12 R7
      201 NAMECALL                         R10 R10 K7 ["format"]
      203 CALL                             R10 2 1
      204 MOVE                             R9 R10
      205 CALL                             R8 1 0
      206 GETUPVAL                         R8 2
      207 GETUPVAL                         R9 1
      208 CALL                             R8 1 0
      209 GETUPVAL                         R8 3
      210 LOADK                            R10 K8 ["autoSetupFailure"]
      211 GETIMPORT                        R12 K11 [os.clock]
      213 CALL                             R12 0 1
      214 GETUPVAL                         R13 4
      215 SUB                              R11 R12 R13
      216 ORK                              R12 R3 K12 ["no model uploaded"]
      217 GETUPVAL                         R13 5
      218 NAMECALL                         R8 R8 K13 ["report"]
      220 CALL                             R8 5 0
      221 GETUPVAL                         R8 8
      222 LOADNIL                          R9
      223 SETTABLEKS                       R9 R8 K26 ["current"]
      225 CLOSEUPVALS                      R3
      226 RETURN                           R0 0

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
       60 GETUPVAL                         R5 7
       61 GETTABLEKS                       R5 R5 K22 ["collapseTopLevelFolders"]
       63 GETTABLEKS                       R6 R0 K18 ["model"]
       65 CALL                             R5 1 0
       66 GETUPVAL                         R5 8
       67 GETTABLEKS                       R6 R0 K18 ["model"]
       69 CALL                             R5 1 0
       70 GETUPVAL                         R5 7
       71 GETTABLEKS                       R5 R5 K23 ["setModelIntendedName"]
       73 MOVE                             R6 R0
       74 CALL                             R5 1 0
       75 GETUPVAL                         R5 9
       76 GETTABLEKS                       R5 R5 K24 ["computeHashSerializeContext"]
       78 NEWTABLE                         R6 0 1
       80 GETTABLEKS                       R7 R0 K18 ["model"]
       82 SETLIST                          R6 R7 1 [1]
       84 DUPTABLE                         R7 K27 [{"ignoreUniformScaleChanges", "ignoreAccessories"}]
       85 LOADB                            R8 0
       86 SETTABLEKS                       R8 R7 K25 ["ignoreUniformScaleChanges"]
       88 LOADB                            R8 1
       89 SETTABLEKS                       R8 R7 K26 ["ignoreAccessories"]
       91 CALL                             R5 2 1
       92 GETUPVAL                         R6 9
       93 GETTABLEKS                       R6 R6 K28 ["hashCharacter"]
       95 GETTABLEKS                       R7 R0 K18 ["model"]
       97 MOVE                             R8 R5
       98 CALL                             R6 2 1
       99 GETUPVAL                         R7 7
      100 GETTABLEKS                       R7 R7 K29 ["isClothingOnly"]
      102 MOVE                             R8 R1
      103 CALL                             R7 1 1
      104 LOADNIL                          R8
      105 GETUPVAL                         R9 10
      106 CALL                             R9 0 1
      107 JUMPIFNOT                        R9 ; [+16]
      108 JUMPIFEQKNIL                     R3 ; [+13]
      110 LOADK                            R9 K30 ["%*|%*"]
      111 MOVE                             R11 R6
      112 GETUPVAL                         R12 5
      113 MOVE                             R14 R3
      114 NAMECALL                         R12 R12 K31 ["JSONEncode"]
      116 CALL                             R12 2 1
      117 NAMECALL                         R9 R9 K32 ["format"]
      119 CALL                             R9 3 1
      120 MOVE                             R8 R9
      121 JUMP                             ; [+3]
      122 MOVE                             R8 R6
      123 JUMP                             ; [+1]
      124 MOVE                             R8 R6
      125 GETUPVAL                         R9 11
      126 CALL                             R9 0 1
      127 JUMPIFNOT                        R9 ; [+3]
      128 GETUPVAL                         R9 12
      129 MOVE                             R10 R0
      130 CALL                             R9 1 0
      131 GETUPVAL                         R10 13
      132 GETTABLEKS                       R10 R10 K11 ["current"]
      134 GETTABLE                         R9 R10 R8
      135 JUMPIFEQKNIL                     R9 ; [+36]
      137 GETTABLEKS                       R10 R9 K33 ["PrimaryPart"]
      139 JUMPIFNOTEQKNIL                  R10 ; [+5]
      141 GETUPVAL                         R10 10
      142 CALL                             R10 0 1
      143 JUMPIFNOT                        R10 ; [+28]
      144 JUMPIFNOT                        R7 ; [+27]
      145 GETUPVAL                         R13 14
      146 GETTABLEKS                       R13 R13 K34 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
      148 NAMECALL                         R11 R9 K35 ["GetAttribute"]
      150 CALL                             R11 2 1
      151 ORK                              R10 R11 K10 [""]
      152 GETIMPORT                        R11 K38 [task.spawn]
      154 NEWCLOSURE                       R12 P0
      155 CAPTURE                          UPVAL U11
      156 CAPTURE                          UPVAL U15
      157 CAPTURE                          UPVAL U10
      158 CAPTURE                          UPVAL U7
      159 CAPTURE                          UPVAL U16
      160 CAPTURE                          UPVAL U17
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R0
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R1
      166 CAPTURE                          UPVAL U12
      167 CAPTURE                          UPVAL U18
      168 CAPTURE                          UPVAL U19
      169 CALL                             R11 1 0
      170 CLOSEUPVALS                      R8
      171 RETURN                           R0 0
      172 GETUPVAL                         R10 11
      173 CALL                             R10 0 1
      174 JUMPIF                           R10 ; [+3]
      175 GETUPVAL                         R10 12
      176 MOVE                             R11 R0
      177 CALL                             R10 1 0
      178 GETUPVAL                         R10 6
      179 CALL                             R10 0 1
      180 JUMPIFNOT                        R10 ; [+16]
      181 GETUPVAL                         R10 20
      182 LOADK                            R12 K39 ["autoSetupRequested"]
      183 JUMPIFEQKNIL                     R1 ; [+6]
      185 GETTABLEKS                       R13 R1 K40 ["info"]
      187 GETTABLEKS                       R13 R13 K41 ["assetClassification"]
      189 JUMP                             ; [+1]
      190 LOADNIL                          R13
      191 MOVE                             R14 R2
      192 MOVE                             R15 R6
      193 NAMECALL                         R10 R10 K42 ["report"]
      195 CALL                             R10 5 0
      196 JUMP                             ; [+5]
      197 GETUPVAL                         R10 20
      198 LOADK                            R12 K39 ["autoSetupRequested"]
      199 NAMECALL                         R10 R10 K42 ["report"]
      201 CALL                             R10 2 0
      202 GETUPVAL                         R10 21
      203 CALL                             R10 0 1
      204 JUMPIFNOT                        R10 ; [+7]
      205 GETUPVAL                         R10 20
      206 LOADK                            R12 K43 ["autoSetupOptions"]
      207 MOVE                             R13 R3
      208 MOVE                             R14 R2
      209 NAMECALL                         R10 R10 K42 ["report"]
      211 CALL                             R10 4 0
      212 LOADNIL                          R10
      213 GETIMPORT                        R11 K38 [task.spawn]
      215 NEWCLOSURE                       R12 P1
      216 CAPTURE                          UPVAL U19
      217 CAPTURE                          VAL R0
      218 CAPTURE                          UPVAL U22
      219 CAPTURE                          UPVAL U20
      220 CAPTURE                          VAL R4
      221 CAPTURE                          VAL R6
      222 CAPTURE                          UPVAL U23
      223 CAPTURE                          UPVAL U24
      224 CAPTURE                          UPVAL U25
      225 CAPTURE                          UPVAL U26
      226 CAPTURE                          UPVAL U27
      227 CAPTURE                          UPVAL U4
      228 CAPTURE                          UPVAL U3
      229 CAPTURE                          UPVAL U14
      230 CAPTURE                          VAL R2
      231 CAPTURE                          UPVAL U28
      232 CAPTURE                          VAL R3
      233 CAPTURE                          UPVAL U13
      234 CAPTURE                          REF R8
      235 CAPTURE                          UPVAL U10
      236 CAPTURE                          VAL R7
      237 CAPTURE                          UPVAL U11
      238 CAPTURE                          UPVAL U15
      239 CAPTURE                          UPVAL U7
      240 CAPTURE                          UPVAL U16
      241 CAPTURE                          UPVAL U17
      242 CAPTURE                          VAL R1
      243 CAPTURE                          UPVAL U21
      244 CAPTURE                          UPVAL U29
      245 CAPTURE                          UPVAL U18
      246 CAPTURE                          UPVAL U12
      247 CAPTURE                          UPVAL U30
      248 CAPTURE                          UPVAL U31
      249 CAPTURE                          UPVAL U32
      250 CALL                             R11 1 1
      251 MOVE                             R10 R11
      252 GETUPVAL                         R11 25
      253 DUPTABLE                         R12 K47 [{"timeStart", "assetId", "modelHash"}]
      254 SETTABLEKS                       R4 R12 K44 ["timeStart"]
      256 LOADK                            R13 K48 ["no model uploaded"]
      257 SETTABLEKS                       R13 R12 K45 ["assetId"]
      259 SETTABLEKS                       R6 R12 K46 ["modelHash"]
      261 SETTABLEKS                       R12 R11 K11 ["current"]
      263 GETUPVAL                         R11 1
      264 MOVE                             R12 R10
      265 CALL                             R11 1 0
      266 GETUPVAL                         R11 19
      267 GETTABLEKS                       R11 R11 K49 ["autoSetupClickedSignal"]
      269 JUMPIFEQKNIL                     R11 ; [+7]
      271 GETUPVAL                         R11 19
      272 GETTABLEKS                       R11 R11 K49 ["autoSetupClickedSignal"]
      274 NAMECALL                         R11 R11 K50 ["Fire"]
      276 CALL                             R11 1 0
      277 CLOSEUPVALS                      R8
      278 RETURN                           R0 0

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
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K1 ["cancelAutoSetup"]
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K2 ["current"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 LOADK                            R1 K3 [""]
       18 SETTABLEKS                       R1 R0 K2 ["current"]
       20 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Analytics"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K2 ["use"]
       11 CALL                             R1 1 1
       12 NAMECALL                         R1 R1 K3 ["get"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K4 ["useContext"]
       18 GETUPVAL                         R3 3
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K5 ["useState"]
       23 DUPCLOSURE                       R4 K6 [PROTO_1]
       24 CALL                             R3 1 2
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K5 ["useState"]
       28 DUPCLOSURE                       R6 K7 [PROTO_2]
       29 CALL                             R5 1 2
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K8 ["useRef"]
       33 LOADNIL                          R8
       34 CALL                             R7 1 1
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K5 ["useState"]
       38 DUPCLOSURE                       R9 K9 [PROTO_3]
       39 CALL                             R8 1 2
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R10 R10 K5 ["useState"]
       43 DUPCLOSURE                       R11 K10 [PROTO_4]
       44 CALL                             R10 1 2
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K5 ["useState"]
       48 LOADNIL                          R13
       49 CALL                             R12 1 2
       50 GETUPVAL                         R14 2
       51 GETTABLEKS                       R14 R14 K8 ["useRef"]
       53 NEWTABLE                         R15 0 0
       55 CALL                             R14 1 1
       56 GETTABLEKS                       R17 R14 K11 ["current"]
       58 JUMPIFNOTEQKNIL                  R17 ; [+2]
       60 LOADB                            R16 0 +1
       61 LOADB                            R16 1
       62 GETUPVAL                         R17 4
       63 GETTABLEKS                       R17 R17 K12 ["LUAU_ANALYZE_ERROR"]
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
       92 GETUPVAL                         R15 2
       93 GETTABLEKS                       R15 R15 K18 ["useCallback"]
       95 NEWCLOSURE                       R16 P4
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R17 0 1
      100 MOVE                             R18 R7
      101 SETLIST                          R17 R18 1 [1]
      103 CALL                             R15 2 1
      104 GETUPVAL                         R16 2
      105 GETTABLEKS                       R16 R16 K19 ["useEffect"]
      107 NEWCLOSURE                       R17 P5
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R15
      110 NEWTABLE                         R18 0 1
      112 MOVE                             R19 R5
      113 SETLIST                          R18 R19 1 [1]
      115 CALL                             R16 2 0
      116 GETUPVAL                         R16 2
      117 GETTABLEKS                       R16 R16 K18 ["useCallback"]
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
      131 GETUPVAL                         R17 2
      132 GETTABLEKS                       R17 R17 K18 ["useCallback"]
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
      146 GETUPVAL                         R18 2
      147 GETTABLEKS                       R18 R18 K5 ["useState"]
      149 LOADNIL                          R19
      150 CALL                             R18 1 2
      151 GETUPVAL                         R20 2
      152 GETTABLEKS                       R20 R20 K8 ["useRef"]
      154 LOADK                            R21 K20 [""]
      155 CALL                             R20 1 1
      156 GETUPVAL                         R21 2
      157 GETTABLEKS                       R21 R21 K8 ["useRef"]
      159 LOADN                            R22 0
      160 CALL                             R21 1 1
      161 GETUPVAL                         R22 2
      162 GETTABLEKS                       R22 R22 K4 ["useContext"]
      164 GETUPVAL                         R23 6
      165 GETTABLEKS                       R23 R23 K21 ["Context"]
      167 CALL                             R22 1 1
      168 GETUPVAL                         R23 2
      169 GETTABLEKS                       R23 R23 K18 ["useCallback"]
      171 NEWCLOSURE                       R24 P8
      172 CAPTURE                          VAL R19
      173 NEWTABLE                         R25 0 1
      175 MOVE                             R26 R19
      176 SETLIST                          R25 R26 1 [1]
      178 CALL                             R23 2 1
      179 GETUPVAL                         R24 2
      180 GETTABLEKS                       R24 R24 K18 ["useCallback"]
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
      194 CAPTURE                          UPVAL U13
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R14
      197 CAPTURE                          UPVAL U4
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R1
      201 CAPTURE                          UPVAL U14
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R0
      204 CAPTURE                          UPVAL U15
      205 CAPTURE                          VAL R17
      206 CAPTURE                          UPVAL U16
      207 CAPTURE                          UPVAL U17
      208 CAPTURE                          VAL R7
      209 CAPTURE                          VAL R21
      210 CAPTURE                          UPVAL U18
      211 CAPTURE                          VAL R13
      212 CAPTURE                          UPVAL U19
      213 CAPTURE                          UPVAL U20
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
      233 GETUPVAL                         R25 2
      234 GETTABLEKS                       R25 R25 K18 ["useCallback"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["activeTarget"]
        3 JUMPIFNOT                        R0 ; [+20]
        4 DUPTABLE                         R0 K5 [{"type", "target", "progressState", "metadataState"}]
        5 LOADK                            R1 K6 ["inAutoSetup"]
        6 SETTABLEKS                       R1 R0 K1 ["type"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["activeTarget"]
       11 SETTABLEKS                       R1 R0 K2 ["target"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K3 ["progressState"]
       16 SETTABLEKS                       R1 R0 K3 ["progressState"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K4 ["metadataState"]
       21 SETTABLEKS                       R1 R0 K4 ["metadataState"]
       23 RETURN                           R0 1
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K7 ["lastErrorType"]
       27 JUMPIFNOT                        R0 ; [+21]
       28 GETUPVAL                         R0 0
       29 GETTABLEKS                       R0 R0 K8 ["lastErrorTarget"]
       31 JUMPIFNOT                        R0 ; [+17]
       32 DUPTABLE                         R0 K10 [{"type", "target", "error"}]
       33 LOADK                            R1 K9 ["error"]
       34 SETTABLEKS                       R1 R0 K1 ["type"]
       36 GETUPVAL                         R1 1
       37 JUMPIF                           R1 ; [+3]
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K8 ["lastErrorTarget"]
       41 SETTABLEKS                       R1 R0 K2 ["target"]
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K7 ["lastErrorType"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["startAutoSetup"]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
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
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K11 ["useCallback"]
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
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Components"]
       19 GETTABLEKS                       R3 R3 K12 ["AutoSetupContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K13 ["Util"]
       28 GETTABLEKS                       R4 R4 K14 ["AutoSetupUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R1 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K13 ["Util"]
       37 GETTABLEKS                       R5 R5 K15 ["Base64Util"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R1 K10 ["Src"]
       44 GETTABLEKS                       R6 R6 K13 ["Util"]
       46 GETTABLEKS                       R6 R6 K16 ["CharacterHashUtils"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R1 K10 ["Src"]
       53 GETTABLEKS                       R7 R7 K13 ["Util"]
       55 GETTABLEKS                       R7 R7 K17 ["Constants"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R8 R1 K18 ["Packages"]
       62 GETTABLEKS                       R8 R8 K19 ["Framework"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R9 R1 K18 ["Packages"]
       69 GETTABLEKS                       R9 R9 K20 ["React"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R1 K10 ["Src"]
       76 GETTABLEKS                       R10 R10 K13 ["Util"]
       78 GETTABLEKS                       R10 R10 K21 ["SelectionWrapper"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R11 R1 K10 ["Src"]
       85 GETTABLEKS                       R11 R11 K22 ["Types"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R12 R1 K10 ["Src"]
       92 GETTABLEKS                       R12 R12 K11 ["Components"]
       94 GETTABLEKS                       R12 R12 K23 ["UGCValidationContext"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K9 [require]
       99 GETTABLEKS                       R13 R1 K10 ["Src"]
      101 GETTABLEKS                       R13 R13 K13 ["Util"]
      103 GETTABLEKS                       R13 R13 K24 ["assetUriToId"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K9 [require]
      108 GETTABLEKS                       R14 R1 K10 ["Src"]
      110 GETTABLEKS                       R14 R14 K13 ["Util"]
      112 GETTABLEKS                       R14 R14 K25 ["findUnderlyingMeshAssetIds"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K9 [require]
      117 GETTABLEKS                       R15 R1 K10 ["Src"]
      119 GETTABLEKS                       R15 R15 K26 ["Flags"]
      121 GETTABLEKS                       R15 R15 K27 ["getFFlagAvatarAutosetupJobIdTelemetry"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K9 [require]
      126 GETTABLEKS                       R16 R1 K10 ["Src"]
      128 GETTABLEKS                       R16 R16 K26 ["Flags"]
      130 GETTABLEKS                       R16 R16 K28 ["getFFlagAvatarAutosetupOptionsInput"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K9 [require]
      135 GETTABLEKS                       R17 R1 K10 ["Src"]
      137 GETTABLEKS                       R17 R17 K26 ["Flags"]
      139 GETTABLEKS                       R17 R17 K29 ["getFFlagAvatarPreviewerCustomHumanoidImportOption"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K9 [require]
      144 GETTABLEKS                       R18 R1 K10 ["Src"]
      146 GETTABLEKS                       R18 R18 K26 ["Flags"]
      148 GETTABLEKS                       R18 R18 K30 ["getFFlagAvatarPreviewerFixAutoSetupCache"]
      150 CALL                             R17 1 1
      151 GETIMPORT                        R18 K9 [require]
      153 GETTABLEKS                       R19 R1 K10 ["Src"]
      155 GETTABLEKS                       R19 R19 K26 ["Flags"]
      157 GETTABLEKS                       R19 R19 K31 ["getFFlagAvatarPreviewerProcessRigidOnly"]
      159 CALL                             R18 1 1
      160 GETIMPORT                        R19 K9 [require]
      162 GETTABLEKS                       R20 R1 K10 ["Src"]
      164 GETTABLEKS                       R20 R20 K26 ["Flags"]
      166 GETTABLEKS                       R20 R20 K32 ["getFFlagAvatarPreviewerSortClothingUI"]
      168 CALL                             R19 1 1
      169 GETIMPORT                        R20 K9 [require]
      171 GETTABLEKS                       R21 R1 K10 ["Src"]
      173 GETTABLEKS                       R21 R21 K26 ["Flags"]
      175 GETTABLEKS                       R21 R21 K33 ["getFFlagDebugAvatarPreviewerSharedCache"]
      177 CALL                             R20 1 1
      178 GETIMPORT                        R21 K9 [require]
      180 GETTABLEKS                       R22 R1 K10 ["Src"]
      182 GETTABLEKS                       R22 R22 K26 ["Flags"]
      184 GETTABLEKS                       R22 R22 K34 ["getFFlagFixLayeredClothingAssignment"]
      186 CALL                             R21 1 1
      187 GETIMPORT                        R22 K9 [require]
      189 GETTABLEKS                       R23 R1 K10 ["Src"]
      191 GETTABLEKS                       R23 R23 K26 ["Flags"]
      193 GETTABLEKS                       R23 R23 K35 ["getFIntAvatarPreviewerMaxSerializedModelToSendBytes"]
      195 CALL                             R22 1 1
      196 GETIMPORT                        R23 K9 [require]
      198 GETTABLEKS                       R24 R1 K10 ["Src"]
      200 GETTABLEKS                       R24 R24 K13 ["Util"]
      202 GETTABLEKS                       R24 R24 K36 ["renameChildrenForClothing"]
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
      239 CAPTURE                          VAL R20
      240 CAPTURE                          VAL R11
      241 CAPTURE                          VAL R0
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R23
      245 CAPTURE                          VAL R5
      246 CAPTURE                          VAL R17
      247 CAPTURE                          VAL R21
      248 CAPTURE                          VAL R16
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R4
      251 CAPTURE                          VAL R22
      252 CAPTURE                          VAL R24
      253 CAPTURE                          VAL R18
      254 CAPTURE                          VAL R12
      255 CAPTURE                          VAL R13
      256 CAPTURE                          VAL R14
      257 DUPCLOSURE                       R27 K48 [PROTO_22]
      258 CAPTURE                          VAL R26
      259 CAPTURE                          VAL R8
      260 RETURN                           R27 1
