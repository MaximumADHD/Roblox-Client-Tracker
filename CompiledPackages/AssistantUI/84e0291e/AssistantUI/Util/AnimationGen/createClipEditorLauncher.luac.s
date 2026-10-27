PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetTags"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantUseNewTags"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADK                            R2 K2 ["RBXAI%-Animation%-"]
       10 JUMP                             ; [+1]
       11 LOADK                            R2 K3 ["Assistant%-AnimationGenLink%-"]
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETIMPORT                        R8 K6 [string.find]
       18 MOVE                             R9 R7
       19 MOVE                             R10 R2
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+1]
       22 RETURN                           R7 1
       23 FORGLOOP                         R3 2 ; [-8]
       25 LOADNIL                          R3
       26 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+12]
        7 GETIMPORT                        R2 K3 [Instance.new]
        9 LOADK                            R3 K4 ["Model"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K5 ["Name"]
       14 GETUPVAL                         R3 0
       15 SETTABLEKS                       R3 R2 K6 ["Parent"]
       17 MOVE                             R1 R2
       18 LOADNIL                          R2
       19 GETUPVAL                         R5 2
       20 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+7]
       24 LOADK                            R6 K7 ["ObjectValue"]
       25 NAMECALL                         R4 R3 K8 ["IsA"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+2]
       29 MOVE                             R2 R3
       30 JUMP                             ; [+23]
       31 GETIMPORT                        R4 K3 [Instance.new]
       33 LOADK                            R5 K7 ["ObjectValue"]
       34 CALL                             R4 1 1
       35 GETUPVAL                         R5 2
       36 SETTABLEKS                       R5 R4 K5 ["Name"]
       38 SETTABLEKS                       R0 R4 K6 ["Parent"]
       40 JUMPIFEQKNIL                     R3 ; [+12]
       42 NAMECALL                         R5 R3 K9 ["GetChildren"]
       44 CALL                             R5 1 3
       45 FORGPREP                         R5
       46 SETTABLEKS                       R4 R9 K6 ["Parent"]
       48 FORGLOOP                         R5 2 ; [-3]
       50 NAMECALL                         R5 R3 K10 ["Destroy"]
       52 CALL                             R5 1 0
       53 MOVE                             R2 R4
       54 GETTABLEKS                       R4 R2 K11 ["Value"]
       56 JUMPIFNOT                        R4 ; [+9]
       57 LOADK                            R7 K7 ["ObjectValue"]
       58 NAMECALL                         R5 R4 K8 ["IsA"]
       60 CALL                             R5 2 1
       61 JUMPIFNOT                        R5 ; [+4]
       62 GETTABLEKS                       R5 R4 K11 ["Value"]
       64 JUMPIFEQ                         R5 R0 ; [+16]
       66 GETIMPORT                        R5 K3 [Instance.new]
       68 LOADK                            R6 K7 ["ObjectValue"]
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R6 R0 K5 ["Name"]
       72 SETTABLEKS                       R6 R5 K5 ["Name"]
       74 SETTABLEKS                       R1 R5 K6 ["Parent"]
       76 SETTABLEKS                       R0 R5 K11 ["Value"]
       78 MOVE                             R4 R5
       79 SETTABLEKS                       R4 R2 K11 ["Value"]
       81 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 LOADNIL                          R4
        4 NAMECALL                         R5 R3 K0 ["GetChildren"]
        6 CALL                             R5 1 3
        7 FORGPREP                         R5
        8 LOADK                            R12 K1 ["KeyframeSequence"]
        9 NAMECALL                         R10 R9 K2 ["IsA"]
       11 CALL                             R10 2 1
       12 JUMPIFNOT                        R10 ; [+9]
       13 GETUPVAL                         R10 1
       14 MOVE                             R12 R9
       15 MOVE                             R13 R2
       16 NAMECALL                         R10 R10 K3 ["HasTag"]
       18 CALL                             R10 3 1
       19 JUMPIFNOT                        R10 ; [+2]
       20 MOVE                             R4 R9
       21 JUMP                             ; [+2]
       22 FORGLOOP                         R5 2 ; [-15]
       24 JUMPIFNOTEQKNIL                  R4 ; [+6]
       26 NAMECALL                         R5 R0 K4 ["Clone"]
       28 CALL                             R5 1 1
       29 SETTABLEKS                       R3 R5 K5 ["Parent"]
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["OpenAnimationInClipEditor"]
        7 GETUPVAL                         R3 2
        8 NAMECALL                         R0 R0 K1 ["Fire"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AnimationClipEditorReady"]
        2 NAMECALL                         R1 R1 K1 ["GetItem"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_5:
        0 JUMPIFEQKS                       R0 K0 ["true"] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 JUMPIFEQKNIL                     R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 0
       12 GETUPVAL                         R1 1
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R0 0
       15 LOADB                            R1 1
       16 SETUPVAL                         R1 1
       17 GETUPVAL                         R1 2
       18 LOADK                            R3 K2 ["OpenAnimationInClipEditor"]
       19 GETUPVAL                         R4 3
       20 NAMECALL                         R1 R1 K3 ["Fire"]
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAnimationGenOpenACE"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFEQKNIL                     R2 ; [+4]
       11 GETTABLEKS                       R3 R2 K2 ["keyframeSequence"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R3
       15 JUMPIFEQKNIL                     R2 ; [+3]
       17 JUMPIFNOTEQKNIL                  R3 ; [+6]
       19 GETIMPORT                        R4 K4 [warn]
       21 LOADK                            R5 K5 ["[AnimationGen] Open in Clip Editor: no generated animation for this content."]
       22 CALL                             R4 1 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R4 R2 K6 ["rig"]
       26 JUMPIFEQKNIL                     R4 ; [+5]
       28 GETTABLEKS                       R5 R4 K7 ["Parent"]
       30 JUMPIFNOTEQKNIL                  R5 ; [+6]
       32 GETIMPORT                        R5 K4 [warn]
       34 LOADK                            R6 K8 ["[AnimationGen] Open in Clip Editor: rig is missing or no longer in the scene."]
       35 CALL                             R5 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R5 2
       38 MOVE                             R6 R3
       39 CALL                             R5 1 1
       40 JUMPIFNOTEQKNIL                  R5 ; [+6]
       42 GETIMPORT                        R6 K4 [warn]
       44 LOADK                            R7 K9 ["[AnimationGen] Open in Clip Editor: generated animation has no link tag."]
       45 CALL                             R6 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R6 3
       48 MOVE                             R7 R3
       49 MOVE                             R8 R4
       50 MOVE                             R9 R5
       51 CALL                             R6 3 0
       52 GETUPVAL                         R6 4
       53 DUPTABLE                         R8 K12 [{"animationTag", "rigUniqueId"}]
       54 SETTABLEKS                       R5 R8 K10 ["animationTag"]
       56 GETTABLEKS                       R10 R1 K13 ["instances"]
       58 GETTABLEKS                       R10 R10 K14 ["getUniqueId"]
       60 MOVE                             R11 R4
       61 CALL                             R10 1 -1
       62 FASTCALL                         TOSTRING ; [+2]
       63 GETIMPORT                        R9 K16 [tostring]
       65 CALL                             R9 -1 1
       66 SETTABLEKS                       R9 R8 K11 ["rigUniqueId"]
       68 NAMECALL                         R6 R6 K17 ["JSONEncode"]
       70 CALL                             R6 2 1
       71 LOADB                            R7 0
       72 NEWCLOSURE                       R8 P0
       73 CAPTURE                          REF R7
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          VAL R6
       76 DUPCLOSURE                       R9 K18 [PROTO_4]
       77 CAPTURE                          UPVAL U5
       78 GETUPVAL                         R11 5
       79 LOADK                            R13 K19 ["AnimationClipEditorReady"]
       80 NAMECALL                         R11 R11 K20 ["GetItem"]
       82 CALL                             R11 2 1
       83 JUMPIFEQKS                       R11 K21 ["true"] ; [+2]
       85 LOADB                            R10 0 +1
       86 LOADB                            R10 1
       87 JUMPIFNOT                        R10 ; [+10]
       88 JUMPIFNOT                        R7 ; [+1]
       89 JUMP                             ; [+56]
       90 LOADB                            R7 1
       91 GETUPVAL                         R10 5
       92 LOADK                            R12 K22 ["OpenAnimationInClipEditor"]
       93 MOVE                             R13 R6
       94 NAMECALL                         R10 R10 K23 ["Fire"]
       96 CALL                             R10 3 0
       97 JUMP                             ; [+48]
       98 GETUPVAL                         R10 6
       99 JUMPIFEQKNIL                     R10 ; [+7]
      101 GETUPVAL                         R10 6
      102 NAMECALL                         R10 R10 K24 ["Disconnect"]
      104 CALL                             R10 1 0
      105 LOADNIL                          R10
      106 SETUPVAL                         R10 6
      107 GETUPVAL                         R10 5
      108 LOADK                            R12 K19 ["AnimationClipEditorReady"]
      109 NEWCLOSURE                       R13 P2
      110 CAPTURE                          UPVAL U6
      111 CAPTURE                          REF R7
      112 CAPTURE                          UPVAL U5
      113 CAPTURE                          VAL R6
      114 NAMECALL                         R10 R10 K25 ["Bind"]
      116 CALL                             R10 3 1
      117 SETUPVAL                         R10 6
      118 GETUPVAL                         R11 5
      119 LOADK                            R13 K19 ["AnimationClipEditorReady"]
      120 NAMECALL                         R11 R11 K20 ["GetItem"]
      122 CALL                             R11 2 1
      123 JUMPIFEQKS                       R11 K21 ["true"] ; [+2]
      125 LOADB                            R10 0 +1
      126 LOADB                            R10 1
      127 JUMPIFNOT                        R10 ; [+18]
      128 GETUPVAL                         R10 6
      129 JUMPIFEQKNIL                     R10 ; [+16]
      131 GETUPVAL                         R10 6
      132 NAMECALL                         R10 R10 K24 ["Disconnect"]
      134 CALL                             R10 1 0
      135 LOADNIL                          R10
      136 SETUPVAL                         R10 6
      137 JUMPIFNOT                        R7 ; [+1]
      138 JUMP                             ; [+7]
      139 LOADB                            R7 1
      140 GETUPVAL                         R10 5
      141 LOADK                            R12 K22 ["OpenAnimationInClipEditor"]
      142 MOVE                             R13 R6
      143 NAMECALL                         R10 R10 K23 ["Fire"]
      145 CALL                             R10 3 0
      146 GETTABLEKS                       R10 R1 K26 ["tools"]
      148 GETTABLEKS                       R10 R10 K27 ["animationGen"]
      150 GETTABLEKS                       R10 R10 K28 ["openAnimationClipEditorAsync"]
      152 JUMPIFEQKNIL                     R10 ; [+3]
      154 MOVE                             R11 R10
      155 CALL                             R11 0 0
      156 CLOSEUPVALS                      R7
      157 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          REF R1
        9 DUPTABLE                         R3 K2 [{"openInAnimationClipEditor", "destroy"}]
       10 SETTABLEKS                       R2 R3 K0 ["openInAnimationClipEditor"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          REF R1
       14 SETTABLEKS                       R4 R3 K1 ["destroy"]
       16 CLOSEUPVALS                      R1
       17 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["MemStorageService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["ServerStorage"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["AssistantUI"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Util"]
       35 GETTABLEKS                       R6 R6 K14 ["AnimationGen"]
       37 GETTABLEKS                       R6 R6 K15 ["AnimationGenConstants"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K12 [require]
       42 GETTABLEKS                       R7 R4 K16 ["Remotes"]
       44 GETTABLEKS                       R7 R7 K17 ["AnimationGenRemotes"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K12 [require]
       49 GETTABLEKS                       R8 R4 K18 ["Guest"]
       51 GETTABLEKS                       R8 R8 K19 ["Environment"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K12 [require]
       56 GETTABLEKS                       R9 R4 K20 ["Flags"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K12 [require]
       61 GETTABLEKS                       R10 R4 K13 ["Util"]
       63 GETTABLEKS                       R10 R10 K14 ["AnimationGen"]
       65 GETTABLEKS                       R10 R10 K21 ["HostTypes"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R5 K22 ["RBX_ANIMSAVES_FOLDER_NAME"]
       70 GETTABLEKS                       R11 R5 K23 ["ANIM_SAVES_INSTANCE_NAME"]
       72 DUPCLOSURE                       R12 K24 [PROTO_0]
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R8
       75 DUPCLOSURE                       R13 K25 [PROTO_1]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R11
       79 DUPCLOSURE                       R14 K26 [PROTO_2]
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R0
       82 DUPCLOSURE                       R15 K27 [PROTO_8]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R2
       88 RETURN                           R15 1
