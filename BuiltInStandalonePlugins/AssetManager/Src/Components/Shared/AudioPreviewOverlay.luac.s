PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["IsPlaying"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["pause"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K2 ["resume"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K3 ["play"]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K4 ["AssetId"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

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
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R0
       29 JUMPIFNOT                        R4 ; [+11]
       30 GETTABLEKS                       R9 R1 K2 ["IsPlaying"]
       32 JUMPIFNOT                        R9 ; [+8]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K5 ["Enums"]
       36 GETTABLEKS                       R8 R8 K6 ["IconName"]
       38 GETTABLEKS                       R8 R8 K7 ["PauseLarge"]
       40 JUMP                             ; [+7]
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K5 ["Enums"]
       44 GETTABLEKS                       R8 R8 K6 ["IconName"]
       46 GETTABLEKS                       R8 R8 K8 ["PlayLarge"]
       48 GETUPVAL                         R9 3
       49 GETTABLEKS                       R9 R9 K9 ["createElement"]
       51 GETUPVAL                         R10 2
       52 GETTABLEKS                       R10 R10 K10 ["View"]
       54 DUPTABLE                         R11 K19 [{["ZIndex"] = 3, ["onActivated"], ["onSecondaryActivated"], ["tag"] = "size-full bg-over-media-0 radius-small", ["testId"] = "audio-preview-overlay"}]
       55 SETTABLEKS                       R7 R11 K13 ["onActivated"]
       57 GETTABLEKS                       R12 R0 K20 ["OnRightClick"]
       59 SETTABLEKS                       R12 R11 K14 ["onSecondaryActivated"]
       61 DUPTABLE                         R12 K23 [{"Icon", "Progress"}]
       62 GETUPVAL                         R13 3
       63 GETTABLEKS                       R13 R13 K9 ["createElement"]
       65 GETUPVAL                         R14 2
       66 GETTABLEKS                       R14 R14 K10 ["View"]
       68 DUPTABLE                         R15 K26 [{["Size"], ["tag"] = "position-center-center anchor-center-center"}]
       69 GETIMPORT                        R16 K29 [UDim2.fromOffset]
       71 MOVE                             R17 R3
       72 MOVE                             R18 R3
       73 CALL                             R16 2 1
       74 SETTABLEKS                       R16 R15 K24 ["Size"]
       76 GETUPVAL                         R16 3
       77 GETTABLEKS                       R16 R16 K9 ["createElement"]
       79 GETUPVAL                         R17 2
       80 GETTABLEKS                       R17 R17 K21 ["Icon"]
       82 DUPTABLE                         R18 K32 [{"name", "size"}]
       83 SETTABLEKS                       R8 R18 K30 ["name"]
       85 SETTABLEKS                       R3 R18 K31 ["size"]
       87 CALL                             R16 2 -1
       88 CALL                             R13 -1 1
       89 SETTABLEKS                       R13 R12 K21 ["Icon"]
       91 JUMPIFNOT                        R4 ; [+40]
       92 GETUPVAL                         R13 3
       93 GETTABLEKS                       R13 R13 K9 ["createElement"]
       95 GETUPVAL                         R14 2
       96 GETTABLEKS                       R14 R14 K10 ["View"]
       98 DUPTABLE                         R15 K34 [{["tag"] = "position-bottom-left size-full-0 anchor-bottom-left gui-object-defaults auto-y"}]
       99 GETUPVAL                         R16 3
      100 GETTABLEKS                       R16 R16 K9 ["createElement"]
      102 GETUPVAL                         R17 2
      103 GETTABLEKS                       R17 R17 K22 ["Progress"]
      105 DUPTABLE                         R18 K37 [{"shape", "value"}]
      106 GETUPVAL                         R19 2
      107 GETTABLEKS                       R19 R19 K5 ["Enums"]
      109 GETTABLEKS                       R19 R19 K38 ["ProgressShape"]
      111 GETTABLEKS                       R19 R19 K39 ["Bar"]
      113 SETTABLEKS                       R19 R18 K35 ["shape"]
      115 GETTABLEKS                       R20 R1 K3 ["IsLoading"]
      117 JUMPIF                           R20 ; [+8]
      118 GETTABLEKS                       R20 R1 K40 ["TotalTime"]
      120 LOADN                            R21 0
      121 JUMPIFNOTLT                      R21 R20 ; [+4]
      123 GETTABLEKS                       R19 R1 K41 ["ProgressBinding"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R19
      127 SETTABLEKS                       R19 R18 K36 ["value"]
      129 CALL                             R16 2 -1
      130 CALL                             R13 -1 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R13
      133 SETTABLEKS                       R13 R12 K22 ["Progress"]
      135 CALL                             R9 3 -1
      136 RETURN                           R9 -1

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
