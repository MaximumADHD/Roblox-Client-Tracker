PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim2.fromScale]
        2 MOVE                             R2 R0
        3 LOADN                            R3 1
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K6 [{["tag"] = "row size-full-1000 gap-medium align-y-center", ["LayoutOrder"]}]
       11 GETTABLEKS                       R5 R0 K7 ["layoutOrder"]
       13 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       15 DUPTABLE                         R5 K10 [{"PlaybackButton", "ProgressBar"}]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K1 ["createElement"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K11 ["IconButton"]
       22 DUPTABLE                         R8 K19 [{["icon"], ["size"], ["onActivated"], ["variant"], ["testId"], ["isCircular"] = True, ["LayoutOrder"]}]
       23 GETTABLEKS                       R10 R0 K20 ["playback"]
       25 GETTABLEKS                       R10 R10 K21 ["isPlaying"]
       27 JUMPIFNOT                        R10 ; [+8]
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R9 R9 K22 ["Enums"]
       31 GETTABLEKS                       R9 R9 K23 ["IconName"]
       33 GETTABLEKS                       R9 R9 K24 ["PauseSmall"]
       35 JUMP                             ; [+7]
       36 GETUPVAL                         R9 2
       37 GETTABLEKS                       R9 R9 K22 ["Enums"]
       39 GETTABLEKS                       R9 R9 K23 ["IconName"]
       41 GETTABLEKS                       R9 R9 K25 ["PlaySmall"]
       43 SETTABLEKS                       R9 R8 K12 ["icon"]
       45 GETUPVAL                         R9 2
       46 GETTABLEKS                       R9 R9 K22 ["Enums"]
       48 GETTABLEKS                       R9 R9 K26 ["InputSize"]
       50 GETTABLEKS                       R9 R9 K27 ["Small"]
       52 SETTABLEKS                       R9 R8 K13 ["size"]
       54 GETTABLEKS                       R10 R0 K20 ["playback"]
       56 GETTABLEKS                       R10 R10 K21 ["isPlaying"]
       58 JUMPIFNOT                        R10 ; [+5]
       59 GETTABLEKS                       R9 R0 K20 ["playback"]
       61 GETTABLEKS                       R9 R9 K28 ["pause"]
       63 JUMP                             ; [+4]
       64 GETTABLEKS                       R9 R0 K20 ["playback"]
       66 GETTABLEKS                       R9 R9 K29 ["play"]
       68 SETTABLEKS                       R9 R8 K14 ["onActivated"]
       70 GETUPVAL                         R9 2
       71 GETTABLEKS                       R9 R9 K22 ["Enums"]
       73 GETTABLEKS                       R9 R9 K30 ["ButtonVariant"]
       75 GETTABLEKS                       R9 R9 K31 ["Standard"]
       77 SETTABLEKS                       R9 R8 K15 ["variant"]
       79 GETTABLEKS                       R10 R0 K20 ["playback"]
       81 GETTABLEKS                       R10 R10 K21 ["isPlaying"]
       83 JUMPIFNOT                        R10 ; [+2]
       84 LOADK                            R9 K32 ["PausePlaybackButton"]
       85 JUMP                             ; [+1]
       86 LOADK                            R9 K33 ["StartPlaybackButton"]
       87 SETTABLEKS                       R9 R8 K16 ["testId"]
       89 MOVE                             R9 R1
       90 CALL                             R9 0 1
       91 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       93 CALL                             R6 2 1
       94 SETTABLEKS                       R6 R5 K8 ["PlaybackButton"]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K1 ["createElement"]
       99 GETUPVAL                         R7 2
      100 GETTABLEKS                       R7 R7 K2 ["View"]
      102 DUPTABLE                         R8 K35 [{["tag"] = "size-0-200 radius-circle bg-shift-100 fill", ["LayoutOrder"]}]
      103 MOVE                             R9 R1
      104 CALL                             R9 0 1
      105 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
      107 DUPTABLE                         R9 K37 [{"Fill"}]
      108 GETUPVAL                         R10 1
      109 GETTABLEKS                       R10 R10 K1 ["createElement"]
      111 GETUPVAL                         R11 2
      112 GETTABLEKS                       R11 R11 K2 ["View"]
      114 DUPTABLE                         R12 K40 [{["tag"] = "bg-system-contrast radius-circle", ["Size"]}]
      115 GETTABLEKS                       R13 R0 K20 ["playback"]
      117 GETTABLEKS                       R13 R13 K41 ["progressAlphaBinding"]
      119 DUPCLOSURE                       R15 K42 [PROTO_0]
      120 NAMECALL                         R13 R13 K43 ["map"]
      122 CALL                             R13 2 1
      123 SETTABLEKS                       R13 R12 K39 ["Size"]
      125 CALL                             R10 2 1
      126 SETTABLEKS                       R10 R9 K36 ["Fill"]
      128 CALL                             R6 3 1
      129 SETTABLEKS                       R6 R5 K9 ["ProgressBar"]
      131 CALL                             R2 3 -1
      132 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["Importer"]
       36 GETTABLEKS                       R5 R5 K13 ["usePlayback"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 RETURN                           R5 1
