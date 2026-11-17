PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 1
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["clips"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R7 K1 ["number"]
       13 GETTABLEKS                       R9 R7 K2 ["fps"]
       15 SETTABLE                         R9 R2 R8
       16 FORGLOOP                         R3 2 ; [-6]
       18 NEWTABLE                         R3 0 0
       20 GETUPVAL                         R4 1
       21 GETUPVAL                         R5 2
       22 CALL                             R4 1 2
       23 JUMPIFNOTEQ                      R4 R5 ; [+30]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K3 ["sourceIndexToClipNumbers"]
       28 GETTABLE                         R6 R7 R4
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K4 ["sources"]
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 FORGPREP                         R7
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R13 R13 K3 ["sourceIndexToClipNumbers"]
       38 GETTABLE                         R12 R13 R10
       39 JUMPIFNOTEQ                      R12 R6 ; [+8]
       41 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       43 MOVE                             R13 R3
       44 MOVE                             R14 R10
       45 GETIMPORT                        R12 K7 [table.insert]
       47 CALL                             R12 2 0
       48 JUMPIFNOTEQ                      R10 R4 ; [+2]
       50 LENGTH                           R1 R3
       51 FORGLOOP                         R7 2 ; [-17]
       53 JUMP                             ; [+12]
       54 MOVE                             R8 R4
       55 MOVE                             R6 R5
       56 LOADN                            R7 1
       57 FORNPREP                         R6
       58 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       60 MOVE                             R10 R3
       61 MOVE                             R11 R8
       62 GETIMPORT                        R9 K7 [table.insert]
       64 CALL                             R9 2 0
       65 FORNLOOP                         R6
       66 LOADN                            R6 0
       67 LOADN                            R7 0
       68 MOVE                             R8 R3
       69 LOADNIL                          R9
       70 LOADNIL                          R10
       71 FORGPREP                         R8
       72 GETUPVAL                         R14 0
       73 GETTABLEKS                       R14 R14 K4 ["sources"]
       75 GETTABLE                         R13 R14 R12
       76 GETUPVAL                         R15 0
       77 GETTABLEKS                       R15 R15 K3 ["sourceIndexToClipNumbers"]
       79 GETTABLE                         R14 R15 R12
       80 JUMPIFNOT                        R14 ; [+2]
       81 GETTABLE                         R15 R2 R14
       82 JUMP                             ; [+3]
       83 GETUPVAL                         R15 0
       84 GETTABLEKS                       R15 R15 K8 ["unclippedFps"]
       86 DIVRK                            R16 K9 [1] R15
       87 DUPTABLE                         R19 K12 [{"source", "delay"}]
       88 SETTABLEKS                       R13 R19 K10 ["source"]
       90 SETTABLEKS                       R16 R19 K11 ["delay"]
       92 FASTCALL2                        TABLE_INSERT R0 R19 ; [+4]
       94 MOVE                             R18 R0
       95 GETIMPORT                        R17 K7 [table.insert]
       97 CALL                             R17 2 0
       98 JUMPIFNOTLT                      R12 R4 ; [+2]
      100 ADD                              R6 R6 R16
      101 ADD                              R7 R7 R16
      102 FORGLOOP                         R8 2 ; [-31]
      104 MOVE                             R8 R0
      105 MOVE                             R9 R1
      106 DIV                              R10 R6 R7
      107 RETURN                           R8 3

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createBinding"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["isPlaying"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K3 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 MOVE                             R0 R1
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K0 ["isPlaying"]
       12 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_2]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["isPlaying"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K3 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 MOVE                             R0 R1
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K0 ["isPlaying"]
       12 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_4]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["sourceSteps"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K3 [table.clone]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 MOVE                             R0 R1
       11 GETUPVAL                         R1 1
       12 SETTABLEKS                       R1 R0 K4 ["lastPlayClock"]
       14 GETUPVAL                         R1 2
       15 SETTABLEKS                       R1 R0 K5 ["step"]
       17 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPlaying"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["step"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["lastPlayClock"]
       12 NEWTABLE                         R2 0 0
       14 LOADN                            R3 0
       15 GETUPVAL                         R4 1
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 SETTABLE                         R3 R2 R7
       20 GETTABLEKS                       R9 R8 K3 ["delay"]
       22 ADD                              R3 R3 R9
       23 FORGLOOP                         R4 2 ; [-5]
       25 MOVE                             R4 R3
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["isPlaying"]
       29 JUMPIFNOT                        R5 ; [+41]
       30 GETUPVAL                         R7 1
       31 GETTABLE                         R6 R7 R0
       32 GETTABLEKS                       R6 R6 K3 ["delay"]
       34 ADD                              R5 R1 R6
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K4 ["clock"]
       38 CALL                             R6 0 1
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K5 ["setProgressAlpha"]
       42 GETTABLE                         R11 R2 R0
       43 ADD                              R10 R11 R6
       44 SUB                              R9 R10 R1
       45 DIV                              R8 R9 R4
       46 CALL                             R7 1 0
       47 JUMPIFLE                         R5 R6 ; [+6]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K6 ["wait"]
       52 CALL                             R7 0 0
       53 JUMPBACK                         ; [-19]
       54 GETUPVAL                         R6 2
       55 GETTABLEKS                       R6 R6 K4 ["clock"]
       57 CALL                             R6 0 1
       58 MOVE                             R1 R6
       59 GETUPVAL                         R10 1
       60 LENGTH                           R9 R10
       61 MOD                              R8 R0 R9
       62 ADDK                             R7 R8 K7 [1]
       63 MOVE                             R0 R7
       64 GETUPVAL                         R8 3
       65 NEWCLOSURE                       R9 P0
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 CALL                             R8 1 0
       70 JUMPBACK                         ; [-45]
       71 LOADNIL                          R5
       72 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R5 0 5
       16 GETTABLEKS                       R6 R0 K3 ["clips"]
       18 MOVE                             R7 R1
       19 GETTABLEKS                       R8 R0 K4 ["sourceIndexToClipNumbers"]
       21 GETTABLEKS                       R9 R0 K5 ["unclippedFps"]
       23 GETTABLEKS                       R10 R0 K6 ["sources"]
       25 SETLIST                          R5 R6 5 [1]
       27 CALL                             R3 2 3
       28 NEWTABLE                         R6 0 4
       30 GETTABLEKS                       R7 R2 K7 ["clock"]
       32 MOVE                             R8 R3
       33 MOVE                             R9 R4
       34 MOVE                             R10 R5
       35 SETLIST                          R6 R7 4 [1]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       40 NEWCLOSURE                       R8 P1
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          VAL R5
       43 MOVE                             R9 R6
       44 CALL                             R7 2 2
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R9 R9 K8 ["useStagnatingState"]
       48 DUPTABLE                         R10 K16 [{["isPlaying"] = False, ["step"], ["sourceSteps"], ["lastPlayClock"], ["progressAlphaBinding"], ["setProgressAlpha"]}]
       49 SETTABLEKS                       R4 R10 K11 ["step"]
       51 SETTABLEKS                       R3 R10 K12 ["sourceSteps"]
       53 GETTABLEKS                       R11 R2 K7 ["clock"]
       55 CALL                             R11 0 1
       56 SETTABLEKS                       R11 R10 K13 ["lastPlayClock"]
       58 SETTABLEKS                       R7 R10 K14 ["progressAlphaBinding"]
       60 SETTABLEKS                       R8 R10 K15 ["setProgressAlpha"]
       62 MOVE                             R11 R6
       63 CALL                             R9 2 2
       64 GETUPVAL                         R11 3
       65 GETTABLEKS                       R11 R11 K17 ["useEventCallback"]
       67 NEWCLOSURE                       R12 P2
       68 CAPTURE                          VAL R10
       69 CALL                             R11 1 1
       70 GETUPVAL                         R12 3
       71 GETTABLEKS                       R12 R12 K17 ["useEventCallback"]
       73 NEWCLOSURE                       R13 P3
       74 CAPTURE                          VAL R10
       75 CALL                             R12 1 1
       76 GETUPVAL                         R13 3
       77 GETTABLEKS                       R13 R13 K18 ["useAsync"]
       79 NEWCLOSURE                       R14 P4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R10
       84 NEWTABLE                         R15 0 4
       86 MOVE                             R16 R3
       87 GETTABLEKS                       R17 R9 K9 ["isPlaying"]
       89 GETTABLEKS                       R18 R9 K15 ["setProgressAlpha"]
       91 GETTABLEKS                       R19 R2 K19 ["wait"]
       93 SETLIST                          R15 R16 4 [1]
       95 CALL                             R13 2 0
       96 DUPTABLE                         R13 K23 [{"play", "pause", "isPlaying", "playhead", "progressAlphaBinding"}]
       97 SETTABLEKS                       R11 R13 K20 ["play"]
       99 SETTABLEKS                       R12 R13 K21 ["pause"]
      101 GETTABLEKS                       R14 R9 K9 ["isPlaying"]
      103 SETTABLEKS                       R14 R13 K9 ["isPlaying"]
      105 GETTABLEKS                       R15 R9 K11 ["step"]
      107 GETTABLE                         R14 R3 R15
      108 GETTABLEKS                       R14 R14 K24 ["source"]
      110 SETTABLEKS                       R14 R13 K22 ["playhead"]
      112 SETTABLEKS                       R7 R13 K14 ["progressAlphaBinding"]
      114 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["TimeContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Libraries"]
       43 GETTABLEKS                       R6 R6 K14 ["minMax"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_8]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R2
       51 RETURN                           R6 1
