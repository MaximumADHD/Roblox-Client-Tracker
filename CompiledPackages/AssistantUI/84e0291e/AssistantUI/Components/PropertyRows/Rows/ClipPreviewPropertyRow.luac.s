PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["generateUpscalePreviewAsync"]
        5 DUPTABLE                         R2 K5 [{"assetId", "rigUniqueId"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K3 ["assetId"]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K4 ["rigUniqueId"]
       12 CALL                             R0 2 2
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K6 ["current"]
       16 GETUPVAL                         R3 4
       17 JUMPIFEQ                         R2 R3 ; [+2]
       19 RETURN                           R0 0
       20 JUMPIFNOT                        R0 ; [+24]
       21 GETTABLEKS                       R2 R1 K7 ["ok"]
       23 JUMPIFNOT                        R2 ; [+21]
       24 GETUPVAL                         R2 5
       25 DUPTABLE                         R3 K10 [{["status"] = "done"}]
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 6
       28 GETTABLEKS                       R2 R2 K11 ["toForm"]
       30 GETUPVAL                         R3 6
       31 GETTABLEKS                       R3 R3 K12 ["resolve"]
       33 CALL                             R3 0 -1
       34 CALL                             R2 -1 3
       35 FORGPREP                         R2
       36 GETUPVAL                         R7 7
       37 GETTABLEKS                       R7 R7 K6 ["current"]
       39 MOVE                             R8 R5
       40 MOVE                             R9 R6
       41 CALL                             R7 2 0
       42 FORGLOOP                         R2 2 ; [-7]
       44 RETURN                           R0 0
       45 JUMPIF                           R0 ; [+5]
       46 GETIMPORT                        R2 K14 [warn]
       48 LOADK                            R3 K15 ["[AnimationGen] Upscale generation failed:"]
       49 MOVE                             R4 R1
       50 CALL                             R2 2 0
       51 GETUPVAL                         R2 5
       52 DUPTABLE                         R3 K18 [{["status"] = "failed", ["failureReason"]}]
       53 JUMPIFNOT                        R0 ; [+7]
       54 GETTABLEKS                       R5 R1 K17 ["failureReason"]
       56 JUMPIFEQKNIL                     R5 ; [+4]
       58 GETTABLEKS                       R4 R1 K17 ["failureReason"]
       60 JUMP                             ; [+5]
       61 GETUPVAL                         R4 8
       62 GETTABLEKS                       R4 R4 K19 ["FailureReasons"]
       64 GETTABLEKS                       R4 R4 K20 ["GenerationFailed"]
       66 SETTABLEKS                       R4 R3 K17 ["failureReason"]
       68 CALL                             R2 1 0
       69 RETURN                           R0 0

PROTO_5:
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
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 3
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R0 4
        9 JUMPIFEQKNIL                     R0 ; [+4]
       11 GETUPVAL                         R0 5
       12 JUMPIFNOTEQKNIL                  R0 ; [+3]
       14 LOADNIL                          R0
       15 RETURN                           R0 1
       16 GETUPVAL                         R0 6
       17 LOADB                            R2 0
       18 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
       20 CALL                             R0 2 1
       21 GETUPVAL                         R1 7
       22 SETTABLEKS                       R0 R1 K1 ["current"]
       24 LOADB                            R1 0
       25 GETIMPORT                        R2 K4 [task.spawn]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          UPVAL U9
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          REF R1
       32 CAPTURE                          UPVAL U10
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U0
       36 CALL                             R2 1 0
       37 NEWCLOSURE                       R2 P1
       38 CAPTURE                          REF R1
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R0
       42 CLOSEUPVALS                      R1
       43 RETURN                           R2 1

PROTO_11:
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
       18 GETTABLEKS                       R6 R6 K3 ["useRef"]
       20 LOADNIL                          R7
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R8 R0 K4 ["reportStatus"]
       25 CALL                             R7 1 1
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R9 R0 K5 ["setRowValue"]
       29 CALL                             R8 1 1
       30 GETTABLEKS                       R9 R0 K6 ["definition"]
       32 GETTABLEKS                       R9 R9 K7 ["clipRowName"]
       34 GETTABLEKS                       R10 R0 K6 ["definition"]
       36 GETTABLEKS                       R10 R10 K8 ["rigRowName"]
       38 JUMPIFEQKNIL                     R9 ; [+6]
       40 GETTABLEKS                       R11 R0 K9 ["getRowValue"]
       42 MOVE                             R12 R9
       43 CALL                             R11 1 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R11
       46 JUMPIFEQKNIL                     R10 ; [+6]
       48 GETTABLEKS                       R12 R0 K9 ["getRowValue"]
       50 MOVE                             R13 R10
       51 CALL                             R12 1 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R12
       54 JUMPIFEQKNIL                     R12 ; [+4]
       56 GETTABLEKS                       R13 R12 K10 ["uniqueId"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R13
       60 GETTABLEKS                       R14 R0 K11 ["active"]
       62 JUMPIFNOT                        R14 ; [+7]
       63 LOADB                            R14 0
       64 JUMPIFEQKNIL                     R11 ; [+5]
       66 JUMPIFNOTEQKS                    R11 K12 [""] ; [+2]
       68 LOADB                            R14 0 +1
       69 LOADB                            R14 1
       70 JUMPIFEQKNIL                     R2 ; [+7]
       72 GETTABLEKS                       R16 R2 K13 ["ok"]
       74 JUMPIFNOT                        R16 ; [+3]
       75 GETTABLEKS                       R15 R2 K14 ["duration"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R15
       79 JUMPIFNOTEQKNIL                  R15 ; [+2]
       81 LOADB                            R16 0 +1
       82 LOADB                            R16 1
       83 JUMPIF                           R14 ; [+2]
       84 LOADK                            R17 K15 ["idle"]
       85 JUMP                             ; [+8]
       86 JUMPIFNOTEQKNIL                  R2 ; [+3]
       88 LOADK                            R17 K16 ["loading"]
       89 JUMP                             ; [+4]
       90 JUMPIFNOT                        R16 ; [+2]
       91 LOADK                            R17 K17 ["ready"]
       92 JUMP                             ; [+1]
       93 LOADK                            R17 K18 ["failed"]
       94 JUMPIFEQKNIL                     R2 ; [+4]
       96 GETTABLEKS                       R18 R2 K19 ["reason"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R18
      100 GETUPVAL                         R19 0
      101 GETTABLEKS                       R19 R19 K20 ["useMemo"]
      103 NEWCLOSURE                       R20 P0
      104 CAPTURE                          VAL R17
      105 CAPTURE                          VAL R18
      106 CAPTURE                          VAL R4
      107 NEWTABLE                         R21 0 3
      109 MOVE                             R22 R17
      110 MOVE                             R23 R18
      111 MOVE                             R24 R4
      112 SETLIST                          R21 R22 3 [1]
      114 CALL                             R19 2 1
      115 GETUPVAL                         R20 0
      116 GETTABLEKS                       R20 R20 K21 ["useEffect"]
      118 NEWCLOSURE                       R21 P1
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R19
      121 NEWTABLE                         R22 0 1
      123 MOVE                             R23 R19
      124 SETLIST                          R22 R23 1 [1]
      126 CALL                             R20 2 0
      127 GETUPVAL                         R20 0
      128 GETTABLEKS                       R20 R20 K21 ["useEffect"]
      130 NEWCLOSURE                       R21 P2
      131 CAPTURE                          VAL R7
      132 NEWTABLE                         R22 0 0
      134 CALL                             R20 2 0
      135 GETTABLEKS                       R21 R4 K22 ["status"]
      137 JUMPIFEQKS                       R21 K23 ["running"] ; [+2]
      139 LOADB                            R20 0 +1
      140 LOADB                            R20 1
      141 GETUPVAL                         R21 0
      142 GETTABLEKS                       R21 R21 K24 ["useCallback"]
      144 NEWCLOSURE                       R22 P3
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R13
      151 CAPTURE                          UPVAL U4
      152 CAPTURE                          VAL R8
      153 CAPTURE                          UPVAL U5
      154 NEWTABLE                         R23 0 4
      156 MOVE                             R24 R1
      157 MOVE                             R25 R11
      158 MOVE                             R26 R13
      159 MOVE                             R27 R20
      160 SETLIST                          R23 R24 4 [1]
      162 CALL                             R21 2 1
      163 GETTABLEKS                       R22 R0 K6 ["definition"]
      165 GETTABLEKS                       R22 R22 K25 ["generateButtonId"]
      167 GETTABLEKS                       R23 R0 K26 ["registerFooterButton"]
      169 GETUPVAL                         R24 0
      170 GETTABLEKS                       R24 R24 K21 ["useEffect"]
      172 NEWCLOSURE                       R25 P4
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R23
      175 CAPTURE                          VAL R21
      176 NEWTABLE                         R26 0 3
      178 MOVE                             R27 R22
      179 MOVE                             R28 R23
      180 MOVE                             R29 R21
      181 SETLIST                          R26 R27 3 [1]
      183 CALL                             R24 2 0
      184 GETUPVAL                         R24 0
      185 GETTABLEKS                       R24 R24 K21 ["useEffect"]
      187 NEWCLOSURE                       R25 P5
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R5
      190 CAPTURE                          UPVAL U2
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R1
      194 CAPTURE                          UPVAL U6
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R0
      199 NEWTABLE                         R26 0 4
      201 MOVE                             R27 R14
      202 MOVE                             R28 R11
      203 MOVE                             R29 R13
      204 MOVE                             R30 R1
      205 SETLIST                          R26 R27 4 [1]
      207 CALL                             R24 2 0
      208 GETUPVAL                         R24 7
      209 CALL                             R24 0 1
      210 GETUPVAL                         R25 8
      211 GETUPVAL                         R26 9
      212 DUPTABLE                         R27 K30 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      213 GETTABLEKS                       R28 R0 K29 ["LayoutOrder"]
      215 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      217 DUPTABLE                         R28 K33 [{"PlaybackEnabled", "PlaybackDisabled"}]
      218 JUMPIFNOT                        R16 ; [+19]
      219 GETUPVAL                         R29 8
      220 GETUPVAL                         R30 10
      221 DUPTABLE                         R31 K37 [{"layoutOrder", "toolUseId", "duration", "disabled"}]
      222 MOVE                             R32 R24
      223 CALL                             R32 0 1
      224 SETTABLEKS                       R32 R31 K34 ["layoutOrder"]
      226 GETUPVAL                         R32 11
      227 SETTABLEKS                       R32 R31 K35 ["toolUseId"]
      229 SETTABLEKS                       R15 R31 K14 ["duration"]
      231 GETTABLEKS                       R33 R0 K38 ["interactable"]
      233 NOT                              R32 R33
      234 SETTABLEKS                       R32 R31 K36 ["disabled"]
      236 CALL                             R29 2 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R29
      239 SETTABLEKS                       R29 R28 K31 ["PlaybackEnabled"]
      241 JUMPIF                           R16 ; [+12]
      242 GETUPVAL                         R29 8
      243 GETUPVAL                         R30 10
      244 DUPTABLE                         R31 K41 [{["layoutOrder"], ["toolUseId"], ["duration"] = 0, ["disabled"] = True}]
      245 MOVE                             R32 R24
      246 CALL                             R32 0 1
      247 SETTABLEKS                       R32 R31 K34 ["layoutOrder"]
      249 GETUPVAL                         R32 11
      250 SETTABLEKS                       R32 R31 K35 ["toolUseId"]
      252 CALL                             R29 2 1
      253 JUMP                             ; [+1]
      254 LOADNIL                          R29
      255 SETTABLEKS                       R29 R28 K32 ["PlaybackDisabled"]
      257 CALL                             R25 3 -1
      258 RETURN                           R25 -1

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
       53 GETTABLEKS                       R8 R2 K21 ["Foundation"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R1 K11 ["Components"]
       60 GETTABLEKS                       R9 R9 K22 ["PlaybackWidget"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETIMPORT                        R10 K5 [script]
       67 GETTABLEKS                       R10 R10 K8 ["Parent"]
       69 GETTABLEKS                       R10 R10 K8 ["Parent"]
       71 GETTABLEKS                       R10 R10 K23 ["PropertyRowTypes"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R2 K24 ["React"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R12 R2 K25 ["ReactUtils"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K10 [require]
       86 GETTABLEKS                       R13 R1 K26 ["Types"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K10 [require]
       91 GETTABLEKS                       R14 R1 K15 ["Util"]
       93 GETTABLEKS                       R14 R14 K16 ["AnimationGen"]
       95 GETTABLEKS                       R14 R14 K27 ["UpscaleSettings"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K10 [require]
      100 GETTABLEKS                       R15 R1 K28 ["Hooks"]
      102 GETTABLEKS                       R15 R15 K29 ["useLatest"]
      104 CALL                             R14 1 1
      105 GETTABLEKS                       R15 R7 K30 ["View"]
      107 GETTABLEKS                       R16 R11 K31 ["createNextOrder"]
      109 GETTABLEKS                       R17 R10 K32 ["createElement"]
      111 GETTABLEKS                       R18 R4 K33 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
      113 DUPTABLE                         R19 K36 [{["status"] = "idle"}]
      114 DUPCLOSURE                       R20 K37 [PROTO_11]
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R19
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R18
      127 RETURN                           R20 1
