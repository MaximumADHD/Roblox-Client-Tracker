PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["togglePlayback"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["AssetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 2
        4 GETTABLEKS                       R5 R1 K0 ["CurrentSoundId"]
        6 GETTABLEKS                       R6 R0 K1 ["AssetId"]
        8 JUMPIFEQ                         R5 R6 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 MOVE                             R5 R4
       13 JUMPIFNOT                        R5 ; [+5]
       14 GETTABLEKS                       R5 R1 K2 ["IsPlaying"]
       16 JUMPIF                           R5 ; [+2]
       17 GETTABLEKS                       R5 R1 K3 ["IsLoading"]
       19 GETTABLEKS                       R7 R0 K4 ["IsHovered"]
       21 OR                               R6 R7 R5
       22 JUMPIF                           R6 ; [+2]
       23 LOADNIL                          R7
       24 RETURN                           R7 1
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 JUMPIFNOT                        R4 ; [+11]
       29 GETTABLEKS                       R9 R1 K2 ["IsPlaying"]
       31 JUMPIFNOT                        R9 ; [+8]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R8 R8 K5 ["Enums"]
       35 GETTABLEKS                       R8 R8 K6 ["IconName"]
       37 GETTABLEKS                       R8 R8 K7 ["PauseLarge"]
       39 JUMP                             ; [+7]
       40 GETUPVAL                         R8 2
       41 GETTABLEKS                       R8 R8 K5 ["Enums"]
       43 GETTABLEKS                       R8 R8 K6 ["IconName"]
       45 GETTABLEKS                       R8 R8 K8 ["PlayLarge"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K9 ["createElement"]
       50 GETUPVAL                         R10 2
       51 GETTABLEKS                       R10 R10 K10 ["View"]
       53 DUPTABLE                         R11 K19 [{["ZIndex"] = 3, ["onActivated"], ["onSecondaryActivated"], ["tag"] = "size-full bg-over-media-0 radius-small", ["testId"] = "audio-preview-overlay"}]
       54 SETTABLEKS                       R7 R11 K13 ["onActivated"]
       56 GETTABLEKS                       R12 R0 K20 ["OnRightClick"]
       58 SETTABLEKS                       R12 R11 K14 ["onSecondaryActivated"]
       60 DUPTABLE                         R12 K23 [{"Icon", "Progress"}]
       61 GETUPVAL                         R13 3
       62 GETTABLEKS                       R13 R13 K9 ["createElement"]
       64 GETUPVAL                         R14 2
       65 GETTABLEKS                       R14 R14 K10 ["View"]
       67 DUPTABLE                         R15 K26 [{["Size"], ["tag"] = "position-center-center anchor-center-center"}]
       68 GETIMPORT                        R16 K29 [UDim2.fromOffset]
       70 MOVE                             R17 R3
       71 MOVE                             R18 R3
       72 CALL                             R16 2 1
       73 SETTABLEKS                       R16 R15 K24 ["Size"]
       75 GETUPVAL                         R16 3
       76 GETTABLEKS                       R16 R16 K9 ["createElement"]
       78 GETUPVAL                         R17 2
       79 GETTABLEKS                       R17 R17 K21 ["Icon"]
       81 DUPTABLE                         R18 K32 [{"name", "size"}]
       82 SETTABLEKS                       R8 R18 K30 ["name"]
       84 SETTABLEKS                       R3 R18 K31 ["size"]
       86 CALL                             R16 2 -1
       87 CALL                             R13 -1 1
       88 SETTABLEKS                       R13 R12 K21 ["Icon"]
       90 JUMPIFNOT                        R4 ; [+40]
       91 GETUPVAL                         R13 3
       92 GETTABLEKS                       R13 R13 K9 ["createElement"]
       94 GETUPVAL                         R14 2
       95 GETTABLEKS                       R14 R14 K10 ["View"]
       97 DUPTABLE                         R15 K34 [{["tag"] = "position-bottom-left size-full-0 anchor-bottom-left gui-object-defaults auto-y"}]
       98 GETUPVAL                         R16 3
       99 GETTABLEKS                       R16 R16 K9 ["createElement"]
      101 GETUPVAL                         R17 2
      102 GETTABLEKS                       R17 R17 K22 ["Progress"]
      104 DUPTABLE                         R18 K37 [{"shape", "value"}]
      105 GETUPVAL                         R19 2
      106 GETTABLEKS                       R19 R19 K5 ["Enums"]
      108 GETTABLEKS                       R19 R19 K38 ["ProgressShape"]
      110 GETTABLEKS                       R19 R19 K39 ["Bar"]
      112 SETTABLEKS                       R19 R18 K35 ["shape"]
      114 GETTABLEKS                       R20 R1 K3 ["IsLoading"]
      116 JUMPIF                           R20 ; [+8]
      117 GETTABLEKS                       R20 R1 K40 ["TotalTime"]
      119 LOADN                            R21 0
      120 JUMPIFNOTLT                      R21 R20 ; [+4]
      122 GETTABLEKS                       R19 R1 K41 ["ProgressBinding"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R19
      126 SETTABLEKS                       R19 R18 K36 ["value"]
      128 CALL                             R16 2 -1
      129 CALL                             R13 -1 1
      130 JUMP                             ; [+1]
      131 LOADNIL                          R13
      132 SETTABLEKS                       R13 R12 K22 ["Progress"]
      134 CALL                             R9 3 -1
      135 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useAudioPreview"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K12 ["useLayoutInfo"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K13 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 RETURN                           R5 1
