PROTO_0:
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

PROTO_1:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["clearClipToUpscalePreview"]
        5 DUPTABLE                         R1 K2 [{"previewId"}]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K1 ["previewId"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 2
        6 JUMPIFEQKNIL                     R0 ; [+4]
        8 GETUPVAL                         R0 3
        9 JUMPIFNOTEQKNIL                  R0 ; [+3]
       11 LOADNIL                          R0
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 4
       14 LOADB                            R2 0
       15 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
       17 CALL                             R0 2 1
       18 LOADB                            R1 0
       19 GETIMPORT                        R2 K3 [task.spawn]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          REF R1
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U0
       30 CALL                             R2 1 0
       31 NEWCLOSURE                       R2 P1
       32 CAPTURE                          REF R1
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R0
       35 CLOSEUPVALS                      R1
       36 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETTABLEKS                       R4 R0 K3 ["definition"]
       14 GETTABLEKS                       R4 R4 K4 ["clipRowName"]
       16 GETTABLEKS                       R5 R0 K3 ["definition"]
       18 GETTABLEKS                       R5 R5 K5 ["rigRowName"]
       20 JUMPIFEQKNIL                     R4 ; [+6]
       22 GETTABLEKS                       R6 R0 K6 ["getRowValue"]
       24 MOVE                             R7 R4
       25 CALL                             R6 1 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R6
       28 JUMPIFEQKNIL                     R5 ; [+6]
       30 GETTABLEKS                       R7 R0 K6 ["getRowValue"]
       32 MOVE                             R8 R5
       33 CALL                             R7 1 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 JUMPIFEQKNIL                     R7 ; [+4]
       38 GETTABLEKS                       R8 R7 K7 ["uniqueId"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R8
       42 GETTABLEKS                       R9 R0 K8 ["active"]
       44 JUMPIFNOT                        R9 ; [+7]
       45 LOADB                            R9 0
       46 JUMPIFEQKNIL                     R6 ; [+5]
       48 JUMPIFNOTEQKS                    R6 K9 [""] ; [+2]
       50 LOADB                            R9 0 +1
       51 LOADB                            R9 1
       52 JUMPIFEQKNIL                     R2 ; [+7]
       54 GETTABLEKS                       R11 R2 K10 ["ok"]
       56 JUMPIFNOT                        R11 ; [+3]
       57 GETTABLEKS                       R10 R2 K11 ["duration"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R10
       61 JUMPIFNOTEQKNIL                  R10 ; [+2]
       63 LOADB                            R11 0 +1
       64 LOADB                            R11 1
       65 JUMPIFEQKNIL                     R2 ; [+10]
       67 GETTABLEKS                       R13 R2 K12 ["reason"]
       69 JUMPIFEQKNIL                     R13 ; [+6]
       71 GETUPVAL                         R13 2
       72 GETTABLEKS                       R14 R2 K12 ["reason"]
       74 GETTABLE                         R12 R13 R14
       75 JUMP                             ; [+1]
       76 LOADNIL                          R12
       77 GETUPVAL                         R13 0
       78 GETTABLEKS                       R13 R13 K13 ["useEffect"]
       80 NEWCLOSURE                       R14 P0
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R0
       89 NEWTABLE                         R15 0 4
       91 MOVE                             R16 R9
       92 MOVE                             R17 R6
       93 MOVE                             R18 R8
       94 MOVE                             R19 R1
       95 SETLIST                          R15 R16 4 [1]
       97 CALL                             R13 2 0
       98 GETUPVAL                         R13 4
       99 CALL                             R13 0 1
      100 GETUPVAL                         R14 5
      101 GETUPVAL                         R15 6
      102 DUPTABLE                         R16 K17 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      103 GETTABLEKS                       R17 R0 K16 ["LayoutOrder"]
      105 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      107 DUPTABLE                         R17 K21 [{"FailureMessage", "PlaybackEnabled", "PlaybackDisabled"}]
      108 JUMPIFEQKNIL                     R12 ; [+12]
      110 GETUPVAL                         R18 5
      111 GETUPVAL                         R19 7
      112 DUPTABLE                         R20 K24 [{["LayoutOrder"], ["tag"] = "auto-y size-full-0 text-body-small content-muted text-wrap text-align-x-left", ["Text"]}]
      113 MOVE                             R21 R13
      114 CALL                             R21 0 1
      115 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      117 SETTABLEKS                       R12 R20 K23 ["Text"]
      119 CALL                             R18 2 1
      120 JUMP                             ; [+1]
      121 LOADNIL                          R18
      122 SETTABLEKS                       R18 R17 K18 ["FailureMessage"]
      124 JUMPIFNOT                        R11 ; [+19]
      125 GETUPVAL                         R18 5
      126 GETUPVAL                         R19 8
      127 DUPTABLE                         R20 K28 [{"layoutOrder", "toolUseId", "duration", "disabled"}]
      128 MOVE                             R21 R13
      129 CALL                             R21 0 1
      130 SETTABLEKS                       R21 R20 K25 ["layoutOrder"]
      132 GETUPVAL                         R21 9
      133 SETTABLEKS                       R21 R20 K26 ["toolUseId"]
      135 SETTABLEKS                       R10 R20 K11 ["duration"]
      137 GETTABLEKS                       R22 R0 K29 ["interactable"]
      139 NOT                              R21 R22
      140 SETTABLEKS                       R21 R20 K27 ["disabled"]
      142 CALL                             R18 2 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R18
      145 SETTABLEKS                       R18 R17 K19 ["PlaybackEnabled"]
      147 JUMPIF                           R11 ; [+12]
      148 GETUPVAL                         R18 5
      149 GETUPVAL                         R19 8
      150 DUPTABLE                         R20 K32 [{["layoutOrder"], ["toolUseId"], ["duration"] = 0, ["disabled"] = True}]
      151 MOVE                             R21 R13
      152 CALL                             R21 0 1
      153 SETTABLEKS                       R21 R20 K25 ["layoutOrder"]
      155 GETUPVAL                         R21 9
      156 SETTABLEKS                       R21 R20 K26 ["toolUseId"]
      158 CALL                             R18 2 1
      159 JUMP                             ; [+1]
      160 LOADNIL                          R18
      161 SETTABLEKS                       R18 R17 K20 ["PlaybackDisabled"]
      163 CALL                             R14 3 -1
      164 RETURN                           R14 -1

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
       44 GETTABLEKS                       R7 R2 K20 ["Foundation"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R1 K11 ["Components"]
       51 GETTABLEKS                       R8 R8 K21 ["PlaybackWidget"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETIMPORT                        R9 K5 [script]
       58 GETTABLEKS                       R9 R9 K8 ["Parent"]
       60 GETTABLEKS                       R9 R9 K8 ["Parent"]
       62 GETTABLEKS                       R9 R9 K22 ["PropertyRowTypes"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R2 K23 ["React"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R11 R2 K24 ["ReactUtils"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K10 [require]
       77 GETTABLEKS                       R12 R1 K25 ["Types"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R6 K26 ["Text"]
       82 GETTABLEKS                       R13 R6 K27 ["View"]
       84 GETTABLEKS                       R14 R10 K28 ["createNextOrder"]
       86 GETTABLEKS                       R15 R9 K29 ["createElement"]
       88 GETTABLEKS                       R16 R4 K30 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
       90 DUPTABLE                         R17 K37 [{["NotR6"] = "Preview supports R6 clips only.", ["UnsupportedClipType"] = "This animation type can't be previewed, but it can still be upscaled.", ["LoadFailed"] = "Couldn't load this clip for preview."}]
       91 DUPCLOSURE                       R18 K38 [PROTO_3]
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R16
      102 RETURN                           R18 1
