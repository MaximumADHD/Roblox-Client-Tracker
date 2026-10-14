PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["getInputs"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 3
        7 FORGPREP                         R3
        8 LOADB                            R8 1
        9 SETTABLE                         R8 R2 R7
       10 FORGLOOP                         R3 2 ; [-3]
       12 NEWTABLE                         R3 0 0
       14 LOADK                            R6 K1 ["Input"]
       15 NAMECALL                         R4 R1 K2 ["GetConnectedWires"]
       17 CALL                             R4 2 3
       18 FORGPREP                         R4
       19 GETTABLEKS                       R9 R8 K3 ["SourceInstance"]
       21 JUMPIFNOT                        R9 ; [+5]
       22 GETTABLE                         R10 R2 R9
       23 JUMPIFNOT                        R10 ; [+3]
       24 LOADB                            R10 1
       25 SETTABLE                         R10 R3 R9
       26 JUMP                             ; [+3]
       27 NAMECALL                         R10 R8 K4 ["Destroy"]
       29 CALL                             R10 1 0
       30 FORGLOOP                         R4 2 ; [-12]
       32 MOVE                             R4 R2
       33 LOADNIL                          R5
       34 LOADNIL                          R6
       35 FORGPREP                         R4
       36 GETTABLE                         R9 R3 R7
       37 JUMPIF                           R9 ; [+9]
       38 GETIMPORT                        R9 K7 [Instance.new]
       40 LOADK                            R10 K8 ["Wire"]
       41 MOVE                             R11 R1
       42 CALL                             R9 2 1
       43 SETTABLEKS                       R7 R9 K3 ["SourceInstance"]
       45 SETTABLEKS                       R1 R9 K9 ["TargetInstance"]
       47 FORGLOOP                         R4 1 ; [-12]
       49 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETIMPORT                        R1 K2 [Instance.new]
        7 LOADK                            R2 K3 ["AudioAnalyzer"]
        8 GETUPVAL                         R3 0
        9 CALL                             R1 2 1
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K4 ["SpectrumEnabled"]
       13 GETUPVAL                         R2 1
       14 SETTABLE                         R1 R2 R0
       15 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["AudioEmitter"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 JUMPIFNOTEQKNIL                  R2 ; [+3]
        9 LOADNIL                          R1
       10 JUMP                             ; [+11]
       11 GETIMPORT                        R2 K4 [Instance.new]
       13 LOADK                            R3 K5 ["AudioAnalyzer"]
       14 GETUPVAL                         R4 0
       15 CALL                             R2 2 1
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K6 ["SpectrumEnabled"]
       19 GETUPVAL                         R3 1
       20 SETTABLE                         R2 R3 R0
       21 MOVE                             R1 R2
       22 JUMPIF                           R1 ; [+1]
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 2
       25 MOVE                             R3 R0
       26 MOVE                             R4 R1
       27 CALL                             R2 2 0
       28 GETUPVAL                         R3 3
       29 GETTABLE                         R2 R3 R0
       30 JUMPIFNOT                        R2 ; [+5]
       31 GETUPVAL                         R3 3
       32 GETTABLE                         R2 R3 R0
       33 NAMECALL                         R2 R2 K7 ["Disconnect"]
       35 CALL                             R2 1 0
       36 GETUPVAL                         R2 3
       37 GETTABLEKS                       R3 R0 K8 ["WiringChanged"]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 NAMECALL                         R3 R3 K9 ["Connect"]
       45 CALL                             R3 2 1
       46 SETTABLE                         R3 R2 R0
       47 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Standard"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K1 [0.7]
        6 JUMPIFNOTLE                      R0 R1 ; [+5]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["Success"]
       11 RETURN                           R1 1
       12 LOADN                            R1 1
       13 JUMPIFNOTLT                      R0 R1 ; [+5]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K3 ["Warning"]
       18 RETURN                           R1 1
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K4 ["Alert"]
       22 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R3 K0 ["Sound"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+13]
        5 GETTABLEKS                       R1 R0 K2 ["IsPlaying"]
        7 JUMPIFNOT                        R1 ; [+10]
        8 GETTABLEKS                       R3 R0 K4 ["PlaybackLoudness"]
       10 DIVK                             R2 R3 K3 [1000]
       11 LOADN                            R3 0
       12 LOADK                            R4 K5 [1.5]
       13 FASTCALL                         MATH_CLAMP ; [+2]
       14 GETIMPORT                        R1 K8 [math.clamp]
       16 CALL                             R1 3 1
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLE                         R1 R2 R0
       20 JUMPIFNOTEQKNIL                  R1 ; [+4]
       22 GETUPVAL                         R1 1
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 GETUPVAL                         R2 0
       26 GETTABLE                         R1 R2 R0
       27 JUMPIFEQKNIL                     R1 ; [+18]
       29 GETUPVAL                         R1 2
       30 GETTABLEKS                       R1 R1 K9 ["isPlaying"]
       32 MOVE                             R2 R0
       33 CALL                             R1 1 1
       34 JUMPIFNOT                        R1 ; [+11]
       35 GETUPVAL                         R3 0
       36 GETTABLE                         R2 R3 R0
       37 GETTABLEKS                       R2 R2 K10 ["PeakLevel"]
       39 LOADN                            R3 0
       40 LOADK                            R4 K5 [1.5]
       41 FASTCALL                         MATH_CLAMP ; [+2]
       42 GETIMPORT                        R1 K8 [math.clamp]
       44 CALL                             R1 3 1
       45 RETURN                           R1 1
       46 LOADNIL                          R1
       47 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 NAMECALL                         R1 R1 K0 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLE                         R2 R1 R0
       11 GETUPVAL                         R2 1
       12 GETTABLE                         R1 R2 R0
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETUPVAL                         R2 1
       15 GETTABLE                         R1 R2 R0
       16 NAMECALL                         R1 R1 K1 ["Destroy"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 1
       20 LOADNIL                          R2
       21 SETTABLE                         R2 R1 R0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["create"]
        3 LOADK                            R1 K1 ["Metering"]
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 0
       12 NEWTABLE                         R0 0 0
       14 SETUPVAL                         R0 1
       15 GETUPVAL                         R0 2
       16 JUMPIFNOT                        R0 ; [+7]
       17 GETUPVAL                         R0 3
       18 GETTABLEKS                       R0 R0 K1 ["destroy"]
       20 GETUPVAL                         R1 2
       21 CALL                             R0 1 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 2
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["SoundEmitterUtil"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["ContainersUtil"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K12 ["Enums"]
       34 GETTABLEKS                       R4 R4 K13 ["StatusBadgeVariant"]
       36 NEWTABLE                         R5 8 0
       38 NEWTABLE                         R6 0 0
       40 NEWTABLE                         R7 0 0
       42 LOADNIL                          R8
       43 DUPCLOSURE                       R9 K14 [PROTO_0]
       44 CAPTURE                          VAL R1
       45 NEWCLOSURE                       R10 P1
       46 CAPTURE                          REF R8
       47 CAPTURE                          REF R6
       48 NEWCLOSURE                       R11 P2
       49 CAPTURE                          REF R8
       50 CAPTURE                          REF R6
       51 CAPTURE                          VAL R9
       52 CAPTURE                          REF R7
       53 DUPCLOSURE                       R12 K15 [PROTO_4]
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R12 R5 K16 ["meterVariant"]
       57 NEWCLOSURE                       R12 P4
       58 CAPTURE                          REF R6
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R12 R5 K17 ["getMetering"]
       63 NEWCLOSURE                       R12 P5
       64 CAPTURE                          REF R7
       65 CAPTURE                          REF R6
       66 SETTABLEKS                       R12 R5 K18 ["remove"]
       68 NEWCLOSURE                       R12 P6
       69 CAPTURE                          REF R8
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R12 R5 K19 ["onOpenView"]
       73 NEWCLOSURE                       R12 P7
       74 CAPTURE                          REF R7
       75 CAPTURE                          REF R6
       76 CAPTURE                          REF R8
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R12 R5 K20 ["onCloseView"]
       80 CLOSEUPVALS                      R6
       81 RETURN                           R5 1
