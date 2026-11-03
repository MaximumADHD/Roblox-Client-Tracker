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
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K3 ["selection"]
       24 CALL                             R4 1 2
       25 JUMPIFNOTEQ                      R4 R5 ; [+30]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K4 ["sourceIndexToClipNumbers"]
       30 GETTABLE                         R6 R7 R4
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K5 ["sources"]
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 GETUPVAL                         R13 0
       38 GETTABLEKS                       R13 R13 K4 ["sourceIndexToClipNumbers"]
       40 GETTABLE                         R12 R13 R10
       41 JUMPIFNOTEQ                      R12 R6 ; [+8]
       43 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       45 MOVE                             R13 R3
       46 MOVE                             R14 R10
       47 GETIMPORT                        R12 K8 [table.insert]
       49 CALL                             R12 2 0
       50 JUMPIFNOTEQ                      R10 R4 ; [+2]
       52 LENGTH                           R1 R3
       53 FORGLOOP                         R7 2 ; [-17]
       55 JUMP                             ; [+12]
       56 MOVE                             R8 R4
       57 MOVE                             R6 R5
       58 LOADN                            R7 1
       59 FORNPREP                         R6
       60 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       62 MOVE                             R10 R3
       63 MOVE                             R11 R8
       64 GETIMPORT                        R9 K8 [table.insert]
       66 CALL                             R9 2 0
       67 FORNLOOP                         R6
       68 LOADN                            R6 0
       69 LOADN                            R7 0
       70 MOVE                             R8 R3
       71 LOADNIL                          R9
       72 LOADNIL                          R10
       73 FORGPREP                         R8
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R14 R14 K5 ["sources"]
       77 GETTABLE                         R13 R14 R12
       78 GETUPVAL                         R16 0
       79 GETTABLEKS                       R16 R16 K4 ["sourceIndexToClipNumbers"]
       81 GETTABLE                         R15 R16 R12
       82 GETTABLE                         R14 R2 R15
       83 DIVRK                            R15 K9 [1] R14
       84 DUPTABLE                         R18 K12 [{"source", "delay"}]
       85 SETTABLEKS                       R13 R18 K10 ["source"]
       87 SETTABLEKS                       R15 R18 K11 ["delay"]
       89 FASTCALL2                        TABLE_INSERT R0 R18 ; [+4]
       91 MOVE                             R17 R0
       92 GETIMPORT                        R16 K8 [table.insert]
       94 CALL                             R16 2 0
       95 JUMPIFNOTLT                      R12 R4 ; [+2]
       97 ADD                              R6 R6 R15
       98 ADD                              R7 R7 R15
       99 FORGLOOP                         R8 2 ; [-26]
      101 MOVE                             R8 R0
      102 MOVE                             R9 R1
      103 DIV                              R10 R6 R7
      104 RETURN                           R8 3

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
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 SETTABLEKS                       R1 R0 K3 ["lastPlayClock"]
        8 GETUPVAL                         R1 1
        9 SETTABLEKS                       R1 R0 K4 ["step"]
       11 RETURN                           R0 1

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
       29 JUMPIFNOT                        R5 ; [+40]
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
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CALL                             R8 1 0
       69 JUMPBACK                         ; [-44]
       70 LOADNIL                          R5
       71 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R4 0 3
       15 GETTABLEKS                       R5 R0 K3 ["clips"]
       17 GETTABLEKS                       R6 R0 K4 ["selection"]
       19 GETTABLEKS                       R7 R0 K5 ["sourceIndexToClipNumbers"]
       21 SETLIST                          R4 R5 3 [1]
       23 CALL                             R2 2 3
       24 NEWTABLE                         R5 0 4
       26 GETTABLEKS                       R6 R1 K6 ["clock"]
       28 MOVE                             R7 R2
       29 MOVE                             R8 R3
       30 MOVE                             R9 R4
       31 SETLIST                          R5 R6 4 [1]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          VAL R4
       39 MOVE                             R8 R5
       40 CALL                             R6 2 2
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K7 ["useStagnatingState"]
       44 DUPTABLE                         R9 K14 [{["isPlaying"] = False, ["step"], ["lastPlayClock"], ["progressAlphaBinding"], ["setProgressAlpha"]}]
       45 SETTABLEKS                       R3 R9 K10 ["step"]
       47 GETTABLEKS                       R10 R1 K6 ["clock"]
       49 CALL                             R10 0 1
       50 SETTABLEKS                       R10 R9 K11 ["lastPlayClock"]
       52 SETTABLEKS                       R6 R9 K12 ["progressAlphaBinding"]
       54 SETTABLEKS                       R7 R9 K13 ["setProgressAlpha"]
       56 MOVE                             R10 R5
       57 CALL                             R8 2 2
       58 GETUPVAL                         R10 3
       59 GETTABLEKS                       R10 R10 K15 ["useEventCallback"]
       61 NEWCLOSURE                       R11 P2
       62 CAPTURE                          VAL R9
       63 CALL                             R10 1 1
       64 GETUPVAL                         R11 3
       65 GETTABLEKS                       R11 R11 K15 ["useEventCallback"]
       67 NEWCLOSURE                       R12 P3
       68 CAPTURE                          VAL R9
       69 CALL                             R11 1 1
       70 GETUPVAL                         R12 3
       71 GETTABLEKS                       R12 R12 K16 ["useAsync"]
       73 NEWCLOSURE                       R13 P4
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R9
       78 NEWTABLE                         R14 0 4
       80 MOVE                             R15 R2
       81 GETTABLEKS                       R16 R8 K8 ["isPlaying"]
       83 GETTABLEKS                       R17 R8 K13 ["setProgressAlpha"]
       85 GETTABLEKS                       R18 R1 K17 ["wait"]
       87 SETLIST                          R14 R15 4 [1]
       89 CALL                             R12 2 0
       90 DUPTABLE                         R12 K21 [{"play", "pause", "isPlaying", "playhead", "progressAlphaBinding"}]
       91 SETTABLEKS                       R10 R12 K18 ["play"]
       93 SETTABLEKS                       R11 R12 K19 ["pause"]
       95 GETTABLEKS                       R13 R8 K8 ["isPlaying"]
       97 SETTABLEKS                       R13 R12 K8 ["isPlaying"]
       99 GETTABLEKS                       R14 R8 K10 ["step"]
      101 GETTABLE                         R13 R2 R14
      102 GETTABLEKS                       R13 R13 K22 ["source"]
      104 SETTABLEKS                       R13 R12 K20 ["playhead"]
      106 SETTABLEKS                       R6 R12 K12 ["progressAlphaBinding"]
      108 RETURN                           R12 1

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
