PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R0 K4 [{"preview", "previewFailure", "generation", "generationFailure"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["preview"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["previewFailure"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K5 ["status"]
       10 SETTABLEKS                       R1 R0 K2 ["generation"]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K6 ["failureReason"]
       15 SETTABLEKS                       R1 R0 K3 ["generationFailure"]
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["generateUpscalePreviewAsync"]
        5 DUPTABLE                         R2 K4 [{"assetId"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K3 ["assetId"]
        9 CALL                             R0 2 2
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K5 ["current"]
       13 GETUPVAL                         R3 3
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 RETURN                           R0 0
       17 JUMPIFNOT                        R0 ; [+24]
       18 GETTABLEKS                       R2 R1 K6 ["ok"]
       20 JUMPIFNOT                        R2 ; [+21]
       21 GETUPVAL                         R2 4
       22 DUPTABLE                         R3 K9 [{["status"] = "done"}]
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 5
       25 GETTABLEKS                       R2 R2 K10 ["toForm"]
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R3 R3 K11 ["resolve"]
       30 CALL                             R3 0 -1
       31 CALL                             R2 -1 3
       32 FORGPREP                         R2
       33 GETUPVAL                         R7 6
       34 GETTABLEKS                       R7 R7 K5 ["current"]
       36 MOVE                             R8 R5
       37 MOVE                             R9 R6
       38 CALL                             R7 2 0
       39 FORGLOOP                         R2 2 ; [-7]
       41 RETURN                           R0 0
       42 JUMPIF                           R0 ; [+5]
       43 GETIMPORT                        R2 K13 [warn]
       45 LOADK                            R3 K14 ["[AnimationGen] Upscale generation failed:"]
       46 MOVE                             R4 R1
       47 CALL                             R2 2 0
       48 GETUPVAL                         R2 4
       49 DUPTABLE                         R3 K17 [{["status"] = "failed", ["failureReason"]}]
       50 JUMPIFNOT                        R0 ; [+7]
       51 GETTABLEKS                       R5 R1 K16 ["failureReason"]
       53 JUMPIFEQKNIL                     R5 ; [+4]
       55 GETTABLEKS                       R4 R1 K16 ["failureReason"]
       57 JUMP                             ; [+5]
       58 GETUPVAL                         R4 7
       59 GETTABLEKS                       R4 R4 K18 ["FailureReasons"]
       61 GETTABLEKS                       R4 R4 K19 ["GenerationFailed"]
       63 SETTABLEKS                       R4 R3 K16 ["failureReason"]
       65 CALL                             R2 1 0
       66 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+9]
        5 GETUPVAL                         R1 1
        6 JUMPIFEQKNIL                     R1 ; [+6]
        8 GETUPVAL                         R1 2
        9 JUMPIFEQKNIL                     R1 ; [+3]
       11 GETUPVAL                         R1 3
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 4
       15 DUPTABLE                         R2 K3 [{["status"] = "running"}]
       16 CALL                             R1 1 0
       17 GETIMPORT                        R1 K6 [task.spawn]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 2
        8 CALL                             R0 2 0
        9 NEWCLOSURE                       R0 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U0
       12 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["endClipToUpscalePreviewSession"]
        3 DUPTABLE                         R1 K2 [{"sessionId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["sessionId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 NEWCLOSURE                       R0 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["setClipToUpscalePreviewRig"]
        9 DUPTABLE                         R1 K3 [{"sessionId", "rigUniqueId"}]
       10 GETUPVAL                         R2 2
       11 SETTABLEKS                       R2 R1 K1 ["sessionId"]
       13 GETUPVAL                         R2 3
       14 SETTABLEKS                       R2 R1 K2 ["rigUniqueId"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R0
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+23]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+20]
        6 GETIMPORT                        R0 K1 [pcall]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K2 ["insertClipToUpscalePreviewRigAsync"]
       11 CALL                             R0 1 2
       12 GETUPVAL                         R2 3
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R0 0
       15 JUMPIFNOT                        R0 ; [+9]
       16 JUMPIFEQKNIL                     R1 ; [+8]
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R2 R2 K3 ["setRowValue"]
       21 GETUPVAL                         R3 1
       22 MOVE                             R4 R1
       23 CALL                             R2 2 0
       24 RETURN                           R0 0
       25 GETIMPORT                        R0 K1 [pcall]
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K4 ["previewClipToUpscaleAsync"]
       30 DUPTABLE                         R2 K8 [{"previewId", "assetId", "rigUniqueId"}]
       31 GETUPVAL                         R3 5
       32 SETTABLEKS                       R3 R2 K5 ["previewId"]
       34 GETUPVAL                         R3 6
       35 SETTABLEKS                       R3 R2 K6 ["assetId"]
       37 GETUPVAL                         R3 0
       38 SETTABLEKS                       R3 R2 K7 ["rigUniqueId"]
       40 CALL                             R0 2 2
       41 GETUPVAL                         R2 3
       42 JUMPIFNOT                        R2 ; [+1]
       43 RETURN                           R0 0
       44 JUMPIFNOT                        R0 ; [+4]
       45 GETUPVAL                         R2 7
       46 MOVE                             R3 R1
       47 CALL                             R2 1 0
       48 RETURN                           R0 0
       49 GETIMPORT                        R2 K10 [warn]
       51 LOADK                            R3 K11 ["[AnimationGen] Upscale preview failed:"]
       52 MOVE                             R4 R1
       53 CALL                             R2 2 0
       54 GETUPVAL                         R2 7
       55 DUPTABLE                         R3 K16 [{["ok"] = False, ["reason"] = "LoadFailed"}]
       56 CALL                             R2 1 0
       57 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["clearClipToUpscalePreview"]
        9 DUPTABLE                         R1 K3 [{"previewId"}]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K2 ["previewId"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 3
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 5
       15 JUMPIFEQKNIL                     R0 ; [+4]
       17 GETUPVAL                         R0 6
       18 JUMPIFNOTEQKNIL                  R0 ; [+3]
       20 LOADNIL                          R0
       21 RETURN                           R0 1
       22 GETUPVAL                         R0 7
       23 LOADB                            R2 0
       24 NAMECALL                         R0 R0 K1 ["GenerateGUID"]
       26 CALL                             R0 2 1
       27 GETUPVAL                         R1 8
       28 SETTABLEKS                       R0 R1 K2 ["current"]
       30 LOADB                            R1 0
       31 GETIMPORT                        R2 K5 [task.spawn]
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          UPVAL U9
       35 CAPTURE                          UPVAL U10
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          REF R1
       38 CAPTURE                          UPVAL U11
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U1
       42 CALL                             R2 1 0
       43 NEWCLOSURE                       R2 P1
       44 CAPTURE                          REF R1
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          VAL R0
       48 CLOSEUPVALS                      R1
       49 RETURN                           R2 1

PROTO_16:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["previewClipToUpscaleAsync"]
        5 DUPTABLE                         R2 K5 [{"sessionId", "assetId"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K3 ["sessionId"]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K4 ["assetId"]
       12 CALL                             R0 2 2
       13 GETUPVAL                         R2 3
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R0 0
       16 JUMPIFNOT                        R0 ; [+4]
       17 GETUPVAL                         R2 4
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K7 [warn]
       23 LOADK                            R3 K8 ["[AnimationGen] Upscale preview failed:"]
       24 MOVE                             R4 R1
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 4
       27 DUPTABLE                         R3 K13 [{["ok"] = False, ["reason"] = "LoadFailed"}]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_17:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["clearClipToUpscalePreview"]
        9 DUPTABLE                         R1 K3 [{"sessionId"}]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K2 ["sessionId"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 3
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 5
       15 JUMPIFEQKNIL                     R0 ; [+4]
       17 GETUPVAL                         R0 6
       18 JUMPIFNOTEQKNIL                  R0 ; [+3]
       20 LOADNIL                          R0
       21 RETURN                           R0 1
       22 GETUPVAL                         R0 7
       23 GETUPVAL                         R1 8
       24 LOADB                            R3 0
       25 NAMECALL                         R1 R1 K1 ["GenerateGUID"]
       27 CALL                             R1 2 1
       28 SETTABLEKS                       R1 R0 K2 ["current"]
       30 LOADB                            R0 0
       31 GETIMPORT                        R1 K5 [task.spawn]
       33 NEWCLOSURE                       R2 P0
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U9
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          REF R0
       38 CAPTURE                          UPVAL U1
       39 CALL                             R1 1 0
       40 NEWCLOSURE                       R1 P1
       41 CAPTURE                          REF R0
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U9
       45 CLOSEUPVALS                      R0
       46 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K2 ["useState"]
       15 GETUPVAL                         R5 2
       16 CALL                             R4 1 2
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K2 ["useState"]
       20 DUPCLOSURE                       R7 K3 [PROTO_0]
       21 CAPTURE                          UPVAL U3
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K4 ["useRef"]
       26 LOADNIL                          R8
       27 CALL                             R7 1 1
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R9 R0 K5 ["reportStatus"]
       31 CALL                             R8 1 1
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R10 R0 K6 ["setRowValue"]
       35 CALL                             R9 1 1
       36 GETTABLEKS                       R10 R0 K7 ["definition"]
       38 GETTABLEKS                       R10 R10 K8 ["clipRowName"]
       40 GETTABLEKS                       R11 R0 K7 ["definition"]
       42 GETTABLEKS                       R11 R11 K9 ["rigRowName"]
       44 JUMPIFEQKNIL                     R10 ; [+6]
       46 GETTABLEKS                       R12 R0 K10 ["getRowValue"]
       48 MOVE                             R13 R10
       49 CALL                             R12 1 1
       50 JUMP                             ; [+1]
       51 LOADNIL                          R12
       52 JUMPIFEQKNIL                     R11 ; [+6]
       54 GETTABLEKS                       R13 R0 K10 ["getRowValue"]
       56 MOVE                             R14 R11
       57 CALL                             R13 1 1
       58 JUMP                             ; [+1]
       59 LOADNIL                          R13
       60 JUMPIFEQKNIL                     R13 ; [+4]
       62 GETTABLEKS                       R14 R13 K11 ["uniqueId"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R14
       66 GETUPVAL                         R15 5
       67 GETTABLEKS                       R15 R15 K12 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
       69 JUMPIFNOT                        R15 ; [+7]
       70 GETTABLEKS                       R15 R0 K13 ["active"]
       72 JUMPIFNOT                        R15 ; [+4]
       73 JUMPIFNOTEQKNIL                  R1 ; [+2]
       75 LOADB                            R15 0 +1
       76 LOADB                            R15 1
       77 GETTABLEKS                       R16 R0 K13 ["active"]
       79 JUMPIFNOT                        R16 ; [+7]
       80 LOADB                            R16 0
       81 JUMPIFEQKNIL                     R12 ; [+5]
       83 JUMPIFNOTEQKS                    R12 K14 [""] ; [+2]
       85 LOADB                            R16 0 +1
       86 LOADB                            R16 1
       87 JUMPIFEQKNIL                     R2 ; [+7]
       89 GETTABLEKS                       R18 R2 K15 ["ok"]
       91 JUMPIFNOT                        R18 ; [+3]
       92 GETTABLEKS                       R17 R2 K16 ["duration"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R17
       96 JUMPIFNOTEQKNIL                  R17 ; [+2]
       98 LOADB                            R18 0 +1
       99 LOADB                            R18 1
      100 JUMPIF                           R16 ; [+2]
      101 LOADK                            R19 K17 ["idle"]
      102 JUMP                             ; [+8]
      103 JUMPIFNOTEQKNIL                  R2 ; [+3]
      105 LOADK                            R19 K18 ["loading"]
      106 JUMP                             ; [+4]
      107 JUMPIFNOT                        R18 ; [+2]
      108 LOADK                            R19 K19 ["ready"]
      109 JUMP                             ; [+1]
      110 LOADK                            R19 K20 ["failed"]
      111 JUMPIFEQKNIL                     R2 ; [+4]
      113 GETTABLEKS                       R20 R2 K21 ["reason"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R20
      117 GETUPVAL                         R21 0
      118 GETTABLEKS                       R21 R21 K22 ["useMemo"]
      120 NEWCLOSURE                       R22 P1
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R20
      123 CAPTURE                          VAL R4
      124 NEWTABLE                         R23 0 3
      126 MOVE                             R24 R19
      127 MOVE                             R25 R20
      128 MOVE                             R26 R4
      129 SETLIST                          R23 R24 3 [1]
      131 CALL                             R21 2 1
      132 GETUPVAL                         R22 0
      133 GETTABLEKS                       R22 R22 K23 ["useEffect"]
      135 NEWCLOSURE                       R23 P2
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R21
      138 NEWTABLE                         R24 0 1
      140 MOVE                             R25 R21
      141 SETLIST                          R24 R25 1 [1]
      143 CALL                             R22 2 0
      144 GETUPVAL                         R22 0
      145 GETTABLEKS                       R22 R22 K23 ["useEffect"]
      147 NEWCLOSURE                       R23 P3
      148 CAPTURE                          VAL R8
      149 NEWTABLE                         R24 0 0
      151 CALL                             R22 2 0
      152 GETTABLEKS                       R23 R4 K24 ["status"]
      154 JUMPIFEQKS                       R23 K25 ["running"] ; [+2]
      156 LOADB                            R22 0 +1
      157 LOADB                            R22 1
      158 GETUPVAL                         R23 0
      159 GETTABLEKS                       R23 R23 K26 ["useCallback"]
      161 NEWCLOSURE                       R24 P4
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R22
      166 CAPTURE                          VAL R5
      167 CAPTURE                          UPVAL U6
      168 CAPTURE                          VAL R9
      169 CAPTURE                          UPVAL U7
      170 NEWTABLE                         R25 0 3
      172 MOVE                             R26 R1
      173 MOVE                             R27 R12
      174 MOVE                             R28 R22
      175 SETLIST                          R25 R26 3 [1]
      177 CALL                             R23 2 1
      178 GETTABLEKS                       R24 R0 K7 ["definition"]
      180 GETTABLEKS                       R24 R24 K27 ["generateButtonId"]
      182 GETTABLEKS                       R25 R0 K28 ["registerFooterButton"]
      184 GETUPVAL                         R26 0
      185 GETTABLEKS                       R26 R26 K23 ["useEffect"]
      187 NEWCLOSURE                       R27 P5
      188 CAPTURE                          VAL R24
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R23
      191 NEWTABLE                         R28 0 3
      193 MOVE                             R29 R24
      194 MOVE                             R30 R25
      195 MOVE                             R31 R23
      196 SETLIST                          R28 R29 3 [1]
      198 CALL                             R26 2 0
      199 GETUPVAL                         R26 0
      200 GETTABLEKS                       R26 R26 K23 ["useEffect"]
      202 NEWCLOSURE                       R27 P6
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R6
      206 NEWTABLE                         R28 0 3
      208 MOVE                             R29 R15
      209 MOVE                             R30 R1
      210 MOVE                             R31 R6
      211 SETLIST                          R28 R29 3 [1]
      213 CALL                             R26 2 0
      214 GETUPVAL                         R26 0
      215 GETTABLEKS                       R26 R26 K23 ["useEffect"]
      217 NEWCLOSURE                       R27 P7
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R1
      220 CAPTURE                          VAL R6
      221 CAPTURE                          VAL R14
      222 NEWTABLE                         R28 0 4
      224 MOVE                             R29 R15
      225 MOVE                             R30 R14
      226 MOVE                             R31 R1
      227 MOVE                             R32 R6
      228 SETLIST                          R28 R29 4 [1]
      230 CALL                             R26 2 0
      231 GETUPVAL                         R26 0
      232 GETTABLEKS                       R26 R26 K26 ["useCallback"]
      234 NEWCLOSURE                       R27 P8
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R9
      237 NEWTABLE                         R28 0 1
      239 MOVE                             R29 R11
      240 SETLIST                          R28 R29 1 [1]
      242 CALL                             R26 2 1
      243 GETUPVAL                         R27 1
      244 GETTABLEKS                       R27 R27 K29 ["useClipToUpscalePreviewRigChanged"]
      246 MOVE                             R28 R6
      247 MOVE                             R29 R26
      248 CALL                             R27 2 0
      249 GETUPVAL                         R27 0
      250 GETTABLEKS                       R27 R27 K23 ["useEffect"]
      252 NEWCLOSURE                       R28 P9
      253 CAPTURE                          UPVAL U5
      254 CAPTURE                          VAL R3
      255 CAPTURE                          VAL R5
      256 CAPTURE                          UPVAL U2
      257 CAPTURE                          VAL R16
      258 CAPTURE                          VAL R12
      259 CAPTURE                          VAL R1
      260 CAPTURE                          UPVAL U3
      261 CAPTURE                          VAL R7
      262 CAPTURE                          VAL R14
      263 CAPTURE                          VAL R11
      264 CAPTURE                          VAL R0
      265 NEWTABLE                         R29 0 4
      267 MOVE                             R30 R16
      268 MOVE                             R31 R12
      269 MOVE                             R32 R14
      270 MOVE                             R33 R1
      271 SETLIST                          R29 R30 4 [1]
      273 CALL                             R27 2 0
      274 GETUPVAL                         R27 0
      275 GETTABLEKS                       R27 R27 K23 ["useEffect"]
      277 NEWCLOSURE                       R28 P10
      278 CAPTURE                          UPVAL U5
      279 CAPTURE                          VAL R3
      280 CAPTURE                          VAL R5
      281 CAPTURE                          UPVAL U2
      282 CAPTURE                          VAL R16
      283 CAPTURE                          VAL R12
      284 CAPTURE                          VAL R1
      285 CAPTURE                          VAL R7
      286 CAPTURE                          UPVAL U3
      287 CAPTURE                          VAL R6
      288 NEWTABLE                         R29 0 4
      290 MOVE                             R30 R16
      291 MOVE                             R31 R12
      292 MOVE                             R32 R1
      293 MOVE                             R33 R6
      294 SETLIST                          R29 R30 4 [1]
      296 CALL                             R27 2 0
      297 GETUPVAL                         R27 8
      298 CALL                             R27 0 1
      299 GETUPVAL                         R28 9
      300 GETUPVAL                         R29 10
      301 DUPTABLE                         R30 K33 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      302 GETTABLEKS                       R31 R0 K32 ["LayoutOrder"]
      304 SETTABLEKS                       R31 R30 K32 ["LayoutOrder"]
      306 DUPTABLE                         R31 K36 [{"PlaybackEnabled", "PlaybackDisabled"}]
      307 JUMPIFNOT                        R18 ; [+19]
      308 GETUPVAL                         R32 9
      309 GETUPVAL                         R33 11
      310 DUPTABLE                         R34 K40 [{"layoutOrder", "toolUseId", "duration", "disabled"}]
      311 MOVE                             R35 R27
      312 CALL                             R35 0 1
      313 SETTABLEKS                       R35 R34 K37 ["layoutOrder"]
      315 GETUPVAL                         R35 12
      316 SETTABLEKS                       R35 R34 K38 ["toolUseId"]
      318 SETTABLEKS                       R17 R34 K16 ["duration"]
      320 GETTABLEKS                       R36 R0 K41 ["interactable"]
      322 NOT                              R35 R36
      323 SETTABLEKS                       R35 R34 K39 ["disabled"]
      325 CALL                             R32 2 1
      326 JUMP                             ; [+1]
      327 LOADNIL                          R32
      328 SETTABLEKS                       R32 R31 K34 ["PlaybackEnabled"]
      330 JUMPIF                           R18 ; [+12]
      331 GETUPVAL                         R32 9
      332 GETUPVAL                         R33 11
      333 DUPTABLE                         R34 K44 [{["layoutOrder"], ["toolUseId"], ["duration"] = 0, ["disabled"] = True}]
      334 MOVE                             R35 R27
      335 CALL                             R35 0 1
      336 SETTABLEKS                       R35 R34 K37 ["layoutOrder"]
      338 GETUPVAL                         R35 12
      339 SETTABLEKS                       R35 R34 K38 ["toolUseId"]
      341 CALL                             R32 2 1
      342 JUMP                             ; [+1]
      343 LOADNIL                          R32
      344 SETTABLEKS                       R32 R31 K35 ["PlaybackDisabled"]
      346 CALL                             R28 3 -1
      347 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R1 K11 ["Components"]
       19 GETTABLEKS                       R4 R4 K12 ["Contexts"]
       21 GETTABLEKS                       R4 R4 K13 ["Actions"]
       23 GETTABLEKS                       R4 R4 K14 ["AnimationGenActionsContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R1 K15 ["Util"]
       30 GETTABLEKS                       R5 R5 K16 ["AnimationGen"]
       32 GETTABLEKS                       R5 R5 K17 ["AnimationGenConstants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R1 K18 ["Remotes"]
       39 GETTABLEKS                       R6 R6 K19 ["AnimationGenRemotes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R1 K15 ["Util"]
       46 GETTABLEKS                       R7 R7 K16 ["AnimationGen"]
       48 GETTABLEKS                       R7 R7 K20 ["AnimationGenTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R8 R1 K21 ["Flags"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R2 K22 ["Foundation"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K10 [require]
       63 GETTABLEKS                       R10 R1 K11 ["Components"]
       65 GETTABLEKS                       R10 R10 K23 ["PlaybackWidget"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K10 [require]
       70 GETIMPORT                        R11 K5 [script]
       72 GETTABLEKS                       R11 R11 K8 ["Parent"]
       74 GETTABLEKS                       R11 R11 K8 ["Parent"]
       76 GETTABLEKS                       R11 R11 K24 ["PropertyRowTypes"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R12 R2 K25 ["React"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K10 [require]
       86 GETTABLEKS                       R13 R2 K26 ["ReactUtils"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K10 [require]
       91 GETTABLEKS                       R14 R1 K27 ["Types"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K10 [require]
       96 GETTABLEKS                       R15 R1 K15 ["Util"]
       98 GETTABLEKS                       R15 R15 K16 ["AnimationGen"]
      100 GETTABLEKS                       R15 R15 K28 ["UpscaleSettings"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K10 [require]
      105 GETTABLEKS                       R16 R1 K29 ["Hooks"]
      107 GETTABLEKS                       R16 R16 K30 ["useLatest"]
      109 CALL                             R15 1 1
      110 GETTABLEKS                       R16 R8 K31 ["View"]
      112 GETTABLEKS                       R17 R12 K32 ["createNextOrder"]
      114 GETTABLEKS                       R18 R11 K33 ["createElement"]
      116 GETTABLEKS                       R19 R4 K34 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
      118 DUPTABLE                         R20 K37 [{["status"] = "idle"}]
      119 DUPCLOSURE                       R21 K38 [PROTO_19]
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R20
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R18
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R19
      133 RETURN                           R21 1
