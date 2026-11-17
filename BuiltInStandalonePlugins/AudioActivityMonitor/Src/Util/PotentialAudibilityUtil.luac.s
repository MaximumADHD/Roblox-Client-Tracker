PROTO_0:
        0 LOADN                            R2 10
        1 DIVK                             R3 R0 K0 [20]
        2 POW                              R1 R2 R3
        3 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADN                            R1 1
        4 RETURN                           R1 1
        5 LOADK                            R3 K1 ["DistortionSoundEffect"]
        6 NAMECALL                         R1 R0 K2 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+2]
       10 LOADN                            R1 1
       11 RETURN                           R1 1
       12 LOADK                            R3 K3 ["ReverbSoundEffect"]
       13 NAMECALL                         R1 R0 K2 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+12]
       17 GETTABLEKS                       R3 R0 K4 ["DryLevel"]
       19 LOADN                            R4 10
       20 DIVK                             R5 R3 K5 [20]
       21 POW                              R2 R4 R5
       22 GETTABLEKS                       R4 R0 K6 ["WetLevel"]
       24 LOADN                            R5 10
       25 DIVK                             R6 R4 K5 [20]
       26 POW                              R3 R5 R6
       27 ADD                              R1 R2 R3
       28 RETURN                           R1 1
       29 LOADK                            R3 K7 ["EchoSoundEffect"]
       30 NAMECALL                         R1 R0 K2 ["IsA"]
       32 CALL                             R1 2 1
       33 JUMPIFNOT                        R1 ; [+12]
       34 GETTABLEKS                       R3 R0 K4 ["DryLevel"]
       36 LOADN                            R4 10
       37 DIVK                             R5 R3 K5 [20]
       38 POW                              R2 R4 R5
       39 GETTABLEKS                       R4 R0 K6 ["WetLevel"]
       41 LOADN                            R5 10
       42 DIVK                             R6 R4 K5 [20]
       43 POW                              R3 R5 R6
       44 ADD                              R1 R2 R3
       45 RETURN                           R1 1
       46 LOADK                            R3 K8 ["EqualizerSoundEffect"]
       47 NAMECALL                         R1 R0 K2 ["IsA"]
       49 CALL                             R1 2 1
       50 JUMPIFNOT                        R1 ; [+20]
       51 GETTABLEKS                       R3 R0 K9 ["LowGain"]
       53 LOADN                            R4 10
       54 DIVK                             R5 R3 K5 [20]
       55 POW                              R2 R4 R5
       56 GETTABLEKS                       R4 R0 K10 ["MidGain"]
       58 LOADN                            R5 10
       59 DIVK                             R6 R4 K5 [20]
       60 POW                              R3 R5 R6
       61 GETTABLEKS                       R5 R0 K11 ["HighGain"]
       63 LOADN                            R6 10
       64 DIVK                             R7 R5 K5 [20]
       65 POW                              R4 R6 R7
       66 FASTCALL                         MATH_MAX ; [+2]
       67 GETIMPORT                        R1 K14 [math.max]
       69 CALL                             R1 3 1
       70 RETURN                           R1 1
       71 LOADK                            R3 K15 ["CompressorSoundEffect"]
       72 NAMECALL                         R1 R0 K2 ["IsA"]
       74 CALL                             R1 2 1
       75 JUMPIFNOT                        R1 ; [+6]
       76 GETTABLEKS                       R2 R0 K16 ["GainMakeup"]
       78 LOADN                            R3 10
       79 DIVK                             R4 R2 K5 [20]
       80 POW                              R1 R3 R4
       81 RETURN                           R1 1
       82 LOADN                            R1 1
       83 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Bypass"]
        3 RETURN                           R0 1

PROTO_3:
        0 NAMECALL                         R3 R0 K0 ["GetOutputPins"]
        2 CALL                             R3 1 1
        3 GETTABLEN                        R2 R3 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R2 K2 [pcall]
       13 CALL                             R2 1 2
       14 JUMPIFNOT                        R1 ; [+4]
       15 JUMPIFNOT                        R2 ; [+3]
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADN                            R4 1
       18 RETURN                           R4 1
       19 LOADK                            R6 K3 ["AudioPlayer"]
       20 NAMECALL                         R4 R0 K4 ["IsA"]
       22 CALL                             R4 2 1
       23 JUMPIFNOT                        R4 ; [+3]
       24 GETTABLEKS                       R4 R0 K5 ["Volume"]
       26 RETURN                           R4 1
       27 LOADK                            R6 K6 ["AudioDeviceInput"]
       28 NAMECALL                         R4 R0 K4 ["IsA"]
       30 CALL                             R4 2 1
       31 JUMPIFNOT                        R4 ; [+3]
       32 GETTABLEKS                       R4 R0 K5 ["Volume"]
       34 RETURN                           R4 1
       35 LOADK                            R6 K7 ["AudioTextToSpeech"]
       36 NAMECALL                         R4 R0 K4 ["IsA"]
       38 CALL                             R4 2 1
       39 JUMPIFNOT                        R4 ; [+3]
       40 GETTABLEKS                       R4 R0 K5 ["Volume"]
       42 RETURN                           R4 1
       43 LOADK                            R6 K8 ["VideoPlayer"]
       44 NAMECALL                         R4 R0 K4 ["IsA"]
       46 CALL                             R4 2 1
       47 JUMPIFNOT                        R4 ; [+3]
       48 GETTABLEKS                       R4 R0 K5 ["Volume"]
       50 RETURN                           R4 1
       51 LOADK                            R6 K9 ["AudioFader"]
       52 NAMECALL                         R4 R0 K4 ["IsA"]
       54 CALL                             R4 2 1
       55 JUMPIFNOT                        R4 ; [+3]
       56 GETTABLEKS                       R4 R0 K5 ["Volume"]
       58 RETURN                           R4 1
       59 LOADK                            R6 K10 ["AudioCompressor"]
       60 NAMECALL                         R4 R0 K4 ["IsA"]
       62 CALL                             R4 2 1
       63 JUMPIFNOT                        R4 ; [+6]
       64 GETTABLEKS                       R5 R0 K11 ["MakeupGain"]
       66 LOADN                            R6 10
       67 DIVK                             R7 R5 K12 [20]
       68 POW                              R4 R6 R7
       69 RETURN                           R4 1
       70 LOADK                            R6 K13 ["AudioLimiter"]
       71 NAMECALL                         R4 R0 K4 ["IsA"]
       73 CALL                             R4 2 1
       74 JUMPIFNOT                        R4 ; [+2]
       75 LOADN                            R4 1
       76 RETURN                           R4 1
       77 LOADK                            R6 K14 ["AudioEqualizer"]
       78 NAMECALL                         R4 R0 K4 ["IsA"]
       80 CALL                             R4 2 1
       81 JUMPIFNOT                        R4 ; [+20]
       82 GETTABLEKS                       R6 R0 K15 ["LowGain"]
       84 LOADN                            R7 10
       85 DIVK                             R8 R6 K12 [20]
       86 POW                              R5 R7 R8
       87 GETTABLEKS                       R7 R0 K16 ["MidGain"]
       89 LOADN                            R8 10
       90 DIVK                             R9 R7 K12 [20]
       91 POW                              R6 R8 R9
       92 GETTABLEKS                       R8 R0 K17 ["HighGain"]
       94 LOADN                            R9 10
       95 DIVK                             R10 R8 K12 [20]
       96 POW                              R7 R9 R10
       97 FASTCALL                         MATH_MAX ; [+2]
       98 GETIMPORT                        R4 K20 [math.max]
      100 CALL                             R4 3 1
      101 RETURN                           R4 1
      102 LOADK                            R6 K21 ["AudioFilter"]
      103 NAMECALL                         R4 R0 K4 ["IsA"]
      105 CALL                             R4 2 1
      106 JUMPIFNOT                        R4 ; [+2]
      107 LOADN                            R4 1
      108 RETURN                           R4 1
      109 LOADK                            R6 K22 ["AudioReverb"]
      110 NAMECALL                         R4 R0 K4 ["IsA"]
      112 CALL                             R4 2 1
      113 JUMPIFNOT                        R4 ; [+12]
      114 GETTABLEKS                       R6 R0 K23 ["DryLevel"]
      116 LOADN                            R7 10
      117 DIVK                             R8 R6 K12 [20]
      118 POW                              R5 R7 R8
      119 GETTABLEKS                       R7 R0 K24 ["WetLevel"]
      121 LOADN                            R8 10
      122 DIVK                             R9 R7 K12 [20]
      123 POW                              R6 R8 R9
      124 ADD                              R4 R5 R6
      125 RETURN                           R4 1
      126 LOADK                            R6 K25 ["AudioEcho"]
      127 NAMECALL                         R4 R0 K4 ["IsA"]
      129 CALL                             R4 2 1
      130 JUMPIFNOT                        R4 ; [+12]
      131 GETTABLEKS                       R6 R0 K23 ["DryLevel"]
      133 LOADN                            R7 10
      134 DIVK                             R8 R6 K12 [20]
      135 POW                              R5 R7 R8
      136 GETTABLEKS                       R7 R0 K24 ["WetLevel"]
      138 LOADN                            R8 10
      139 DIVK                             R9 R7 K12 [20]
      140 POW                              R6 R8 R9
      141 ADD                              R4 R5 R6
      142 RETURN                           R4 1
      143 LOADK                            R6 K26 ["AudioDistortion"]
      144 NAMECALL                         R4 R0 K4 ["IsA"]
      146 CALL                             R4 2 1
      147 JUMPIFNOT                        R4 ; [+2]
      148 LOADN                            R4 1
      149 RETURN                           R4 1
      150 LOADN                            R4 1
      151 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetWorldCFrame"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+3]
        1 LOADN                            R3 0
        2 JUMPIFNOTLE                      R2 R3 ; [+3]
        4 LOADN                            R3 0
        5 RETURN                           R3 1
        6 MOVE                             R3 R2
        7 NAMECALL                         R4 R0 K0 ["GetChildren"]
        9 CALL                             R4 1 3
       10 FORGPREP                         R4
       11 LOADK                            R11 K1 ["SoundEffect"]
       12 NAMECALL                         R9 R8 K2 ["IsA"]
       14 CALL                             R9 2 1
       15 JUMPIFNOT                        R9 ; [+6]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K3 ["_getGainMultiplierForSoundEffect"]
       19 MOVE                             R10 R8
       20 CALL                             R9 1 1
       21 MUL                              R3 R3 R9
       22 FORGLOOP                         R4 2 ; [-12]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R0
       26 FASTPCALL                        pcall 1 ; [+2]
       27 GETIMPORT                        R4 K5 [pcall]
       29 CALL                             R4 1 2
       30 JUMPIFNOT                        R4 ; [+5]
       31 JUMPIFEQKNIL                     R5 ; [+4]
       33 GETTABLEKS                       R6 R0 K6 ["RollOffGain"]
       35 MUL                              R3 R3 R6
       36 GETTABLEKS                       R6 R0 K7 ["SoundGroup"]
       38 JUMPIFNOT                        R6 ; [+35]
       39 GETTABLEKS                       R7 R6 K8 ["Volume"]
       41 MUL                              R3 R3 R7
       42 NAMECALL                         R7 R6 K0 ["GetChildren"]
       44 CALL                             R7 1 3
       45 FORGPREP                         R7
       46 LOADK                            R14 K1 ["SoundEffect"]
       47 NAMECALL                         R12 R11 K2 ["IsA"]
       49 CALL                             R12 2 1
       50 JUMPIFNOT                        R12 ; [+6]
       51 GETUPVAL                         R12 0
       52 GETTABLEKS                       R12 R12 K3 ["_getGainMultiplierForSoundEffect"]
       54 MOVE                             R13 R11
       55 CALL                             R12 1 1
       56 MUL                              R3 R3 R12
       57 FORGLOOP                         R7 2 ; [-12]
       59 GETTABLEKS                       R7 R6 K9 ["Parent"]
       61 JUMPIFNOT                        R7 ; [+10]
       62 GETTABLEKS                       R7 R6 K9 ["Parent"]
       64 LOADK                            R9 K7 ["SoundGroup"]
       65 NAMECALL                         R7 R7 K2 ["IsA"]
       67 CALL                             R7 2 1
       68 JUMPIFNOT                        R7 ; [+3]
       69 GETTABLEKS                       R6 R6 K9 ["Parent"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R6
       73 JUMPBACK                         ; [-36]
       74 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetWorldCFrame"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetListenerWorldCFrame"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+23]
        7 JUMPIFNOT                        R2 ; [+22]
        8 DUPCLOSURE                       R4 K2 [PROTO_7]
        9 CAPTURE                          UPVAL U0
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R3 K1 [pcall]
       13 CALL                             R3 1 2
       14 JUMPIFNOT                        R3 ; [+11]
       15 LOADB                            R5 1
       16 GETTABLEKS                       R7 R4 K3 ["Position"]
       18 GETTABLEKS                       R8 R2 K3 ["Position"]
       20 SUB                              R6 R7 R8
       21 GETTABLEKS                       R6 R6 K4 ["Magnitude"]
       23 GETTABLEKS                       R7 R0 K5 ["RollOffGain"]
       25 RETURN                           R5 3
       26 LOADB                            R5 1
       27 LOADNIL                          R6
       28 LOADN                            R7 0
       29 RETURN                           R5 3
       30 LOADB                            R3 0
       31 LOADN                            R4 0
       32 LOADN                            R5 1
       33 RETURN                           R3 3

PROTO_9:
        0 JUMPIFNOT                        R1 ; [+3]
        1 LOADN                            R3 0
        2 JUMPIFNOTLE                      R2 R3 ; [+3]
        4 LOADN                            R3 0
        5 RETURN                           R3 1
        6 RETURN                           R2 1

PROTO_10:
        0 LOADB                            R1 1
        1 LOADNIL                          R2
        2 LOADN                            R3 0
        3 RETURN                           R1 3

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_computeAudibilityForWirable"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_12:
        0 GETTABLE                         R2 R1 R0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 LOADB                            R2 1
        5 SETTABLE                         R2 R1 R0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["_getGainMultiplierForWirable"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 LOADN                            R3 0
       12 LOADK                            R6 K1 ["AudioDeviceOutput"]
       13 NAMECALL                         R4 R0 K2 ["IsA"]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R4 ; [+2]
       17 LOADN                            R3 1
       18 JUMP                             ; [+58]
       19 LOADK                            R6 K3 ["AudioEmitter"]
       20 NAMECALL                         R4 R0 K2 ["IsA"]
       22 CALL                             R4 2 1
       23 JUMPIFNOT                        R4 ; [+21]
       24 NAMECALL                         R4 R0 K4 ["GetInteractingListeners"]
       26 CALL                             R4 1 3
       27 FORGPREP                         R4
       28 MOVE                             R11 R8
       29 NAMECALL                         R9 R0 K5 ["GetAudibilityFor"]
       31 CALL                             R9 2 1
       32 JUMPIFEQKN                       R9 K6 [0] ; [+9]
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R11 R11 K7 ["_computeAudibilityForWirable"]
       37 MOVE                             R12 R8
       38 MOVE                             R13 R1
       39 CALL                             R11 2 1
       40 MUL                              R10 R9 R11
       41 ADD                              R3 R3 R10
       42 FORGLOOP                         R4 2 ; [-15]
       44 JUMP                             ; [+32]
       45 LOADN                            R4 0
       46 JUMPIFNOTLT                      R4 R2 ; [+30]
       48 NAMECALL                         R4 R0 K8 ["GetOutputPins"]
       50 CALL                             R4 1 3
       51 FORGPREP                         R4
       52 MOVE                             R11 R8
       53 NAMECALL                         R9 R0 K9 ["GetConnectedWires"]
       55 CALL                             R9 2 3
       56 FORGPREP                         R9
       57 GETTABLEKS                       R14 R13 K10 ["TargetInstance"]
       59 JUMPIFNOT                        R14 ; [+13]
       60 GETTABLEKS                       R14 R13 K11 ["TargetName"]
       62 JUMPIFEQKS                       R14 K12 ["Sidechain"] ; [+10]
       64 GETUPVAL                         R15 0
       65 GETTABLEKS                       R15 R15 K7 ["_computeAudibilityForWirable"]
       67 GETTABLEKS                       R16 R13 K10 ["TargetInstance"]
       69 MOVE                             R17 R1
       70 CALL                             R15 2 1
       71 MUL                              R14 R2 R15
       72 ADD                              R3 R3 R14
       73 FORGLOOP                         R9 2 ; [-17]
       75 FORGLOOP                         R4 2 ; [-24]
       77 LOADNIL                          R4
       78 SETTABLE                         R4 R1 R0
       79 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetWorldCFrame"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetWorldCFrame"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_15:
        0 LOADNIL                          R1
        1 LOADN                            R2 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R3 K1 [pcall]
        7 CALL                             R3 1 2
        8 JUMPIFNOT                        R3 ; [+1]
        9 JUMPIF                           R4 ; [+4]
       10 LOADB                            R5 1
       11 MOVE                             R6 R1
       12 MOVE                             R7 R2
       13 RETURN                           R5 3
       14 NAMECALL                         R5 R0 K2 ["GetInteractingListeners"]
       16 CALL                             R5 1 3
       17 FORGPREP                         R5
       18 NEWCLOSURE                       R11 P1
       19 CAPTURE                          VAL R9
       20 FASTPCALL                        pcall 1 ; [+2]
       21 GETIMPORT                        R10 K1 [pcall]
       23 CALL                             R10 1 2
       24 JUMPIFNOT                        R10 ; [+18]
       25 JUMPIFNOT                        R11 ; [+17]
       26 GETTABLEKS                       R13 R11 K3 ["Position"]
       28 GETTABLEKS                       R14 R4 K3 ["Position"]
       30 SUB                              R12 R13 R14
       31 GETTABLEKS                       R12 R12 K4 ["Magnitude"]
       33 JUMPIFEQKNIL                     R1 ; [+3]
       35 JUMPIFNOTLT                      R12 R1 ; [+2]
       37 MOVE                             R1 R12
       38 MOVE                             R15 R9
       39 NAMECALL                         R13 R0 K5 ["GetAudibilityFor"]
       41 CALL                             R13 2 1
       42 ADD                              R2 R2 R13
       43 FORGLOOP                         R5 2 ; [-26]
       45 LOADB                            R5 1
       46 MOVE                             R6 R1
       47 MOVE                             R7 R2
       48 RETURN                           R5 3

PROTO_16:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["_computeTargetsForWirable"]
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 MOVE                             R6 R0
        8 LOADN                            R7 1
        9 NEWTABLE                         R8 0 0
       11 CALL                             R3 5 0
       12 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetOutputPins"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_18:
        0 GETTABLE                         R5 R4 R2
        1 JUMPIFNOT                        R5 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R5 1
        4 SETTABLE                         R5 R4 R2
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          VAL R2
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R5 K1 [pcall]
       10 CALL                             R5 1 2
       11 JUMPIF                           R5 ; [+3]
       12 LOADB                            R7 0
       13 SETTABLE                         R7 R4 R2
       14 RETURN                           R0 0
       15 LENGTH                           R7 R6
       16 JUMPIFNOTEQKN                    R7 K2 [0] ; [+19]
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 CALL                             R7 1 1
       21 JUMPIFEQKNIL                     R7 ; [+51]
       23 GETTABLE                         R8 R0 R7
       24 JUMPIF                           R8 ; [+4]
       25 DUPTABLE                         R8 K5 [{["Id"], ["ContributingGain"] = 0}]
       26 SETTABLEKS                       R7 R8 K3 ["Id"]
       28 SETTABLE                         R8 R0 R7
       29 GETTABLE                         R8 R0 R7
       30 GETTABLEKS                       R9 R8 K4 ["ContributingGain"]
       32 ADD                              R9 R9 R3
       33 SETTABLEKS                       R9 R8 K4 ["ContributingGain"]
       35 JUMP                             ; [+37]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K6 ["_getGainMultiplierForWirable"]
       39 MOVE                             R8 R2
       40 CALL                             R7 1 1
       41 MUL                              R3 R3 R7
       42 MOVE                             R7 R6
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 FORGPREP                         R7
       46 MOVE                             R14 R11
       47 NAMECALL                         R12 R2 K7 ["GetConnectedWires"]
       49 CALL                             R12 2 3
       50 FORGPREP                         R12
       51 GETTABLEKS                       R17 R16 K8 ["TargetName"]
       53 JUMPIFEQKS                       R17 K9 ["Sidechain"] ; [+15]
       55 GETTABLEKS                       R17 R16 K10 ["TargetInstance"]
       57 JUMPIFEQKNIL                     R17 ; [+11]
       59 GETUPVAL                         R17 0
       60 GETTABLEKS                       R17 R17 K11 ["_computeTargetsForWirable"]
       62 MOVE                             R18 R0
       63 MOVE                             R19 R1
       64 GETTABLEKS                       R20 R16 K10 ["TargetInstance"]
       66 MOVE                             R21 R3
       67 MOVE                             R22 R4
       68 CALL                             R17 5 0
       69 FORGLOOP                         R12 2 ; [-19]
       71 FORGLOOP                         R7 2 ; [-26]
       73 LOADB                            R7 0
       74 SETTABLE                         R7 R4 R2
       75 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["SoundService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 DUPCLOSURE                       R3 K12 [PROTO_0]
       21 NEWTABLE                         R4 16 0
       23 DUPCLOSURE                       R5 K13 [PROTO_1]
       24 SETTABLEKS                       R5 R4 K14 ["_getGainMultiplierForSoundEffect"]
       26 DUPCLOSURE                       R5 K15 [PROTO_3]
       27 SETTABLEKS                       R5 R4 K16 ["_getGainMultiplierForWirable"]
       29 DUPCLOSURE                       R5 K17 [PROTO_5]
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R5 R4 K18 ["getAudibilityForSound"]
       33 DUPCLOSURE                       R5 K19 [PROTO_8]
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R5 R4 K20 ["getAttenuationForSound"]
       37 DUPCLOSURE                       R5 K21 [PROTO_9]
       38 SETTABLEKS                       R5 R4 K22 ["getAudibilityForVideoFrame"]
       40 DUPCLOSURE                       R5 K23 [PROTO_10]
       41 SETTABLEKS                       R5 R4 K24 ["getAttenuationForVideoFrame"]
       43 DUPCLOSURE                       R5 K25 [PROTO_11]
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R5 R4 K26 ["getAudibilityForWirable"]
       47 DUPCLOSURE                       R5 K27 [PROTO_12]
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R5 R4 K28 ["_computeAudibilityForWirable"]
       51 DUPCLOSURE                       R5 K29 [PROTO_15]
       52 SETTABLEKS                       R5 R4 K30 ["getAttenuationForEmitter"]
       54 DUPCLOSURE                       R5 K31 [PROTO_16]
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R5 R4 K32 ["getTargetsForWirable"]
       58 DUPCLOSURE                       R5 K33 [PROTO_18]
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R5 R4 K34 ["_computeTargetsForWirable"]
       62 RETURN                           R4 1
