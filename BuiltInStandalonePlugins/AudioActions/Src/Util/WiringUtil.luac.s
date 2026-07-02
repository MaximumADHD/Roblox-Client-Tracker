PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        5 GETUPVAL                         R3 0
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R3 0
        9 GETTABLE                         R2 R3 R1
       10 GETTABLEKS                       R2 R2 K1 ["HasInput"]
       12 RETURN                           R2 1

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        5 GETUPVAL                         R3 0
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R3 0
        9 GETTABLE                         R2 R3 R1
       10 GETTABLEKS                       R2 R2 K1 ["HasOutput"]
       12 RETURN                           R2 1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        5 GETUPVAL                         R3 0
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+8]
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R3 R4 R1
       10 GETTABLEKS                       R3 R3 K1 ["HasSidechain"]
       12 JUMPIFEQKB                       R3 TRUE ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+7]
        1 LENGTH                           R1 R0
        2 JUMPIFNOTEQKN                    R1 K0 [2] ; [+5]
        4 GETTABLEN                        R1 R0 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 GETTABLEN                        R1 R0 2
        7 JUMPIF                           R1 ; [+3]
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 RETURN                           R1 2
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K1 ["hasOutputPin"]
       14 GETTABLEN                        R2 R0 1
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+9]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K2 ["hasInputPin"]
       20 GETTABLEN                        R2 R0 2
       21 CALL                             R1 1 1
       22 JUMPIFNOT                        R1 ; [+3]
       23 GETTABLEN                        R1 R0 1
       24 GETTABLEN                        R2 R0 2
       25 RETURN                           R1 2
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K2 ["hasInputPin"]
       29 GETTABLEN                        R2 R0 1
       30 CALL                             R1 1 1
       31 JUMPIFNOT                        R1 ; [+9]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K1 ["hasOutputPin"]
       35 GETTABLEN                        R2 R0 2
       36 CALL                             R1 1 1
       37 JUMPIFNOT                        R1 ; [+3]
       38 GETTABLEN                        R1 R0 2
       39 GETTABLEN                        R2 R0 1
       40 RETURN                           R1 2
       41 LOADNIL                          R1
       42 LOADNIL                          R2
       43 RETURN                           R1 2

PROTO_5:
        0 LOADK                            R4 K0 ["Output"]
        1 NAMECALL                         R2 R0 K1 ["GetConnectedWires"]
        3 CALL                             R2 2 3
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K2 ["TargetInstance"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+2]
        9 RETURN                           R6 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_6:
        0 LOADK                            R6 K0 ["AudioDeviceInput"]
        1 NAMECALL                         R4 R1 K1 ["IsA"]
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+2]
        5 MOVE                             R3 R2
        6 JUMP                             ; [+1]
        7 MOVE                             R3 R1
        8 SETTABLEKS                       R3 R0 K2 ["Parent"]
       10 SETTABLEKS                       R1 R0 K3 ["SourceInstance"]
       12 SETTABLEKS                       R2 R0 K4 ["TargetInstance"]
       14 GETTABLEKS                       R4 R0 K3 ["SourceInstance"]
       16 JUMPIFNOTEQ                      R4 R1 ; [+17]
       18 GETTABLEKS                       R4 R0 K4 ["TargetInstance"]
       20 JUMPIFNOTEQ                      R4 R2 ; [+13]
       22 LOADK                            R5 K5 ["%* -> %*"]
       23 GETTABLEKS                       R7 R1 K6 ["Name"]
       25 GETTABLEKS                       R8 R2 K6 ["Name"]
       27 NAMECALL                         R5 R5 K7 ["format"]
       29 CALL                             R5 3 1
       30 MOVE                             R4 R5
       31 SETTABLEKS                       R4 R0 K6 ["Name"]
       33 RETURN                           R0 1
       34 NAMECALL                         R4 R0 K8 ["Destroy"]
       36 CALL                             R4 1 0
       37 LOADNIL                          R4
       38 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["hasOutputPin"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["hasInputPin"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 JUMPIF                           R2 ; [+2]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["findWire"]
       17 MOVE                             R3 R0
       18 MOVE                             R4 R1
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+1]
       21 RETURN                           R2 1
       22 GETIMPORT                        R3 K5 [Instance.new]
       24 LOADK                            R4 K6 ["Wire"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K7 ["rewire"]
       29 MOVE                             R5 R3
       30 MOVE                             R6 R0
       31 MOVE                             R7 R1
       32 CALL                             R4 3 -1
       33 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R1 K18 [{"AudioPlayer", "AudioDeviceInput", "AudioDeviceOutput", "AudioEmitter", "AudioListener", "AudioChorus", "AudioCompressor", "AudioDistortion", "AudioEcho", "AudioEqualizer", "AudioFader", "AudioFilter", "AudioFlanger", "AudioLimiter", "AudioPitchShifter", "AudioReverb", "AudioAnalyzer", "Wire"}]
        4 DUPTABLE                         R2 K23 [{["HasInput"] = False, ["HasOutput"] = True}]
        5 SETTABLEKS                       R2 R1 K0 ["AudioPlayer"]
        7 DUPTABLE                         R2 K23 [{["HasInput"] = False, ["HasOutput"] = True}]
        8 SETTABLEKS                       R2 R1 K1 ["AudioDeviceInput"]
       10 DUPTABLE                         R2 K24 [{["HasInput"] = True, ["HasOutput"] = False}]
       11 SETTABLEKS                       R2 R1 K2 ["AudioDeviceOutput"]
       13 DUPTABLE                         R2 K24 [{["HasInput"] = True, ["HasOutput"] = False}]
       14 SETTABLEKS                       R2 R1 K3 ["AudioEmitter"]
       16 DUPTABLE                         R2 K23 [{["HasInput"] = False, ["HasOutput"] = True}]
       17 SETTABLEKS                       R2 R1 K4 ["AudioListener"]
       19 DUPTABLE                         R2 K25 [{["HasInput"] = True, ["HasOutput"] = True}]
       20 SETTABLEKS                       R2 R1 K5 ["AudioChorus"]
       22 DUPTABLE                         R2 K27 [{["HasInput"] = True, ["HasOutput"] = True, ["HasSidechain"] = True}]
       23 SETTABLEKS                       R2 R1 K6 ["AudioCompressor"]
       25 DUPTABLE                         R2 K25 [{["HasInput"] = True, ["HasOutput"] = True}]
       26 SETTABLEKS                       R2 R1 K7 ["AudioDistortion"]
       28 DUPTABLE                         R2 K25 [{["HasInput"] = True, ["HasOutput"] = True}]
       29 SETTABLEKS                       R2 R1 K8 ["AudioEcho"]
       31 DUPTABLE                         R2 K25 [{["HasInput"] = True, ["HasOutput"] = True}]
       32 SETTABLEKS                       R2 R1 K9 ["AudioEqualizer"]
       34 DUPTABLE                         R2 K25 [{["HasInput"] = True, ["HasOutput"] = True}]
       35 SETTABLEKS                       R2 R1 K10 ["AudioFader"]
       37 DUPTABLE                         R2 K25 [{["HasInput"] = True, ["HasOutput"] = True}]
       38 SETTABLEKS                       R2 R1 K11 ["AudioFilter"]
       40 DUPTABLE                         R2 K25 [{["HasInput"] = True, ["HasOutput"] = True}]
       41 SETTABLEKS                       R2 R1 K12 ["AudioFlanger"]
       43 DUPTABLE                         R2 K25 [{["HasInput"] = True, ["HasOutput"] = True}]
       44 SETTABLEKS                       R2 R1 K13 ["AudioLimiter"]
       46 DUPTABLE                         R2 K25 [{["HasInput"] = True, ["HasOutput"] = True}]
       47 SETTABLEKS                       R2 R1 K14 ["AudioPitchShifter"]
       49 DUPTABLE                         R2 K25 [{["HasInput"] = True, ["HasOutput"] = True}]
       50 SETTABLEKS                       R2 R1 K15 ["AudioReverb"]
       52 DUPTABLE                         R2 K24 [{["HasInput"] = True, ["HasOutput"] = False}]
       53 SETTABLEKS                       R2 R1 K16 ["AudioAnalyzer"]
       55 DUPTABLE                         R2 K28 [{["HasInput"] = False, ["HasOutput"] = False}]
       56 SETTABLEKS                       R2 R1 K17 ["Wire"]
       58 DUPCLOSURE                       R2 K29 [PROTO_0]
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R2 R0 K30 ["getAudioInstanceDefs"]
       62 DUPCLOSURE                       R2 K31 [PROTO_1]
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R2 R0 K32 ["hasInputPin"]
       66 DUPCLOSURE                       R2 K33 [PROTO_2]
       67 CAPTURE                          VAL R1
       68 SETTABLEKS                       R2 R0 K34 ["hasOutputPin"]
       70 DUPCLOSURE                       R2 K35 [PROTO_3]
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R2 R0 K36 ["hasSidechainPin"]
       74 DUPCLOSURE                       R2 K37 [PROTO_4]
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R2 R0 K38 ["getWirableInstances"]
       78 DUPCLOSURE                       R2 K39 [PROTO_5]
       79 SETTABLEKS                       R2 R0 K40 ["findWire"]
       81 DUPCLOSURE                       R2 K41 [PROTO_6]
       82 SETTABLEKS                       R2 R0 K42 ["rewire"]
       84 DUPCLOSURE                       R2 K43 [PROTO_7]
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R2 R0 K44 ["connectByWire"]
       88 RETURN                           R0 1
