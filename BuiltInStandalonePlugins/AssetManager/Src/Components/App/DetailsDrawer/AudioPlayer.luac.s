PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getAudioPreviewManager"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R1 R0 K1 ["getState"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["CurrentSoundId"]
        9 GETUPVAL                         R2 1
       10 JUMPIFNOTEQ                      R1 R2 ; [+4]
       12 NAMECALL                         R1 R0 K3 ["stop"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["togglePlayback"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R0 K1 ["AssetId"]
        8 GETTABLEKS                       R5 R2 K2 ["CurrentSoundId"]
       10 JUMPIFEQ                         R5 R3 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R7 0 1
       22 MOVE                             R8 R3
       23 SETLIST                          R7 R8 1 [1]
       25 CALL                             R5 2 0
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K4 ["createElement"]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K5 ["View"]
       32 DUPTABLE                         R7 K10 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["testId"] = "details-drawer-audio-player"}]
       33 DUPTABLE                         R8 K13 [{"PlayPause", "Progress"}]
       34 GETUPVAL                         R9 2
       35 GETTABLEKS                       R9 R9 K4 ["createElement"]
       37 GETUPVAL                         R10 3
       38 GETTABLEKS                       R10 R10 K14 ["IconButton"]
       40 DUPTABLE                         R11 K22 [{["LayoutOrder"] = 1, ["onActivated"], ["icon"], ["variant"], ["size"], ["testId"] = "details-drawer-audio-play-button"}]
       41 NEWCLOSURE                       R12 P1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R12 R11 K17 ["onActivated"]
       46 JUMPIFNOT                        R4 ; [+11]
       47 GETTABLEKS                       R13 R2 K23 ["IsPlaying"]
       49 JUMPIFNOT                        R13 ; [+8]
       50 GETUPVAL                         R12 3
       51 GETTABLEKS                       R12 R12 K24 ["Enums"]
       53 GETTABLEKS                       R12 R12 K25 ["IconName"]
       55 GETTABLEKS                       R12 R12 K26 ["PauseSmall"]
       57 JUMP                             ; [+7]
       58 GETUPVAL                         R12 3
       59 GETTABLEKS                       R12 R12 K24 ["Enums"]
       61 GETTABLEKS                       R12 R12 K25 ["IconName"]
       63 GETTABLEKS                       R12 R12 K27 ["PlaySmall"]
       65 SETTABLEKS                       R12 R11 K18 ["icon"]
       67 GETUPVAL                         R12 3
       68 GETTABLEKS                       R12 R12 K24 ["Enums"]
       70 GETTABLEKS                       R12 R12 K28 ["ButtonVariant"]
       72 GETTABLEKS                       R12 R12 K29 ["Utility"]
       74 SETTABLEKS                       R12 R11 K19 ["variant"]
       76 GETUPVAL                         R12 3
       77 GETTABLEKS                       R12 R12 K24 ["Enums"]
       79 GETTABLEKS                       R12 R12 K30 ["InputSize"]
       81 GETTABLEKS                       R12 R12 K31 ["XSmall"]
       83 SETTABLEKS                       R12 R11 K20 ["size"]
       85 CALL                             R9 2 1
       86 SETTABLEKS                       R9 R8 K11 ["PlayPause"]
       88 GETUPVAL                         R9 2
       89 GETTABLEKS                       R9 R9 K4 ["createElement"]
       91 GETUPVAL                         R10 3
       92 GETTABLEKS                       R10 R10 K5 ["View"]
       94 DUPTABLE                         R11 K34 [{["LayoutOrder"] = 2, ["tag"] = "fill size-full-0 auto-y"}]
       95 DUPTABLE                         R12 K36 [{"Bar"}]
       96 GETUPVAL                         R13 2
       97 GETTABLEKS                       R13 R13 K4 ["createElement"]
       99 GETUPVAL                         R14 3
      100 GETTABLEKS                       R14 R14 K12 ["Progress"]
      102 DUPTABLE                         R15 K39 [{"shape", "size", "value"}]
      103 GETUPVAL                         R16 3
      104 GETTABLEKS                       R16 R16 K24 ["Enums"]
      106 GETTABLEKS                       R16 R16 K40 ["ProgressShape"]
      108 GETTABLEKS                       R16 R16 K35 ["Bar"]
      110 SETTABLEKS                       R16 R15 K37 ["shape"]
      112 GETUPVAL                         R16 3
      113 GETTABLEKS                       R16 R16 K24 ["Enums"]
      115 GETTABLEKS                       R16 R16 K41 ["ProgressSize"]
      117 GETTABLEKS                       R16 R16 K42 ["Small"]
      119 SETTABLEKS                       R16 R15 K20 ["size"]
      121 JUMPIF                           R4 ; [+2]
      122 LOADN                            R16 0
      123 JUMP                             ; [+12]
      124 GETTABLEKS                       R17 R2 K43 ["IsLoading"]
      126 JUMPIF                           R17 ; [+8]
      127 GETTABLEKS                       R17 R2 K44 ["TotalTime"]
      129 LOADN                            R18 0
      130 JUMPIFNOTLT                      R18 R17 ; [+4]
      132 GETTABLEKS                       R16 R2 K45 ["ProgressBinding"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R16
      136 SETTABLEKS                       R16 R15 K38 ["value"]
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K35 ["Bar"]
      141 CALL                             R9 3 1
      142 SETTABLEKS                       R9 R8 K12 ["Progress"]
      144 CALL                             R5 3 -1
      145 RETURN                           R5 -1

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
       25 GETTABLEKS                       R4 R4 K10 ["Controllers"]
       27 GETTABLEKS                       R4 R4 K11 ["ItemsController"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K13 ["useAudioPreview"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_3]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 RETURN                           R5 1
