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
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R3 R4 R1
       10 GETTABLEKS                       R2 R3 K1 ["HasInput"]
       12 RETURN                           R2 1

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        5 GETUPVAL                         R3 0
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R3 R4 R1
       10 GETTABLEKS                       R2 R3 K1 ["HasOutput"]
       12 RETURN                           R2 1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        5 GETUPVAL                         R3 0
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+8]
        8 GETUPVAL                         R5 0
        9 GETTABLE                         R4 R5 R1
       10 GETTABLEKS                       R3 R4 K1 ["HasSidechain"]
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
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K1 ["hasOutputPin"]
       14 GETTABLEN                        R2 R0 1
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+9]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K2 ["hasInputPin"]
       20 GETTABLEN                        R2 R0 2
       21 CALL                             R1 1 1
       22 JUMPIFNOT                        R1 ; [+3]
       23 GETTABLEN                        R1 R0 1
       24 GETTABLEN                        R2 R0 2
       25 RETURN                           R1 2
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K2 ["hasInputPin"]
       29 GETTABLEN                        R2 R0 1
       30 CALL                             R1 1 1
       31 JUMPIFNOT                        R1 ; [+9]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R1 R2 K1 ["hasOutputPin"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["hasOutputPin"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["hasInputPin"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 JUMPIF                           R2 ; [+2]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["findWire"]
       17 MOVE                             R3 R0
       18 MOVE                             R4 R1
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+1]
       21 RETURN                           R2 1
       22 GETIMPORT                        R3 K5 [Instance.new]
       24 LOADK                            R4 K6 ["Wire"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K7 ["rewire"]
       29 MOVE                             R5 R3
       30 MOVE                             R6 R0
       31 MOVE                             R7 R1
       32 CALL                             R4 3 -1
       33 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R1 K18 [{"AudioPlayer", "AudioDeviceInput", "AudioDeviceOutput", "AudioEmitter", "AudioListener", "AudioChorus", "AudioCompressor", "AudioDistortion", "AudioEcho", "AudioEqualizer", "AudioFader", "AudioFilter", "AudioFlanger", "AudioLimiter", "AudioPitchShifter", "AudioReverb", "AudioAnalyzer", "Wire"}]
        4 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K19 ["HasInput"]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
       11 SETTABLEKS                       R2 R1 K0 ["AudioPlayer"]
       13 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
       14 LOADB                            R3 0
       15 SETTABLEKS                       R3 R2 K19 ["HasInput"]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
       20 SETTABLEKS                       R2 R1 K1 ["AudioDeviceInput"]
       22 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K19 ["HasInput"]
       26 LOADB                            R3 0
       27 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
       29 SETTABLEKS                       R2 R1 K2 ["AudioDeviceOutput"]
       31 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
       32 LOADB                            R3 1
       33 SETTABLEKS                       R3 R2 K19 ["HasInput"]
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
       38 SETTABLEKS                       R2 R1 K3 ["AudioEmitter"]
       40 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
       41 LOADB                            R3 0
       42 SETTABLEKS                       R3 R2 K19 ["HasInput"]
       44 LOADB                            R3 1
       45 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
       47 SETTABLEKS                       R2 R1 K4 ["AudioListener"]
       49 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
       50 LOADB                            R3 1
       51 SETTABLEKS                       R3 R2 K19 ["HasInput"]
       53 LOADB                            R3 1
       54 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
       56 SETTABLEKS                       R2 R1 K5 ["AudioChorus"]
       58 DUPTABLE                         R2 K23 [{"HasInput", "HasOutput", "HasSidechain"}]
       59 LOADB                            R3 1
       60 SETTABLEKS                       R3 R2 K19 ["HasInput"]
       62 LOADB                            R3 1
       63 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
       65 LOADB                            R3 1
       66 SETTABLEKS                       R3 R2 K22 ["HasSidechain"]
       68 SETTABLEKS                       R2 R1 K6 ["AudioCompressor"]
       70 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
       71 LOADB                            R3 1
       72 SETTABLEKS                       R3 R2 K19 ["HasInput"]
       74 LOADB                            R3 1
       75 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
       77 SETTABLEKS                       R2 R1 K7 ["AudioDistortion"]
       79 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
       80 LOADB                            R3 1
       81 SETTABLEKS                       R3 R2 K19 ["HasInput"]
       83 LOADB                            R3 1
       84 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
       86 SETTABLEKS                       R2 R1 K8 ["AudioEcho"]
       88 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
       89 LOADB                            R3 1
       90 SETTABLEKS                       R3 R2 K19 ["HasInput"]
       92 LOADB                            R3 1
       93 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
       95 SETTABLEKS                       R2 R1 K9 ["AudioEqualizer"]
       97 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
       98 LOADB                            R3 1
       99 SETTABLEKS                       R3 R2 K19 ["HasInput"]
      101 LOADB                            R3 1
      102 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
      104 SETTABLEKS                       R2 R1 K10 ["AudioFader"]
      106 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
      107 LOADB                            R3 1
      108 SETTABLEKS                       R3 R2 K19 ["HasInput"]
      110 LOADB                            R3 1
      111 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
      113 SETTABLEKS                       R2 R1 K11 ["AudioFilter"]
      115 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
      116 LOADB                            R3 1
      117 SETTABLEKS                       R3 R2 K19 ["HasInput"]
      119 LOADB                            R3 1
      120 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
      122 SETTABLEKS                       R2 R1 K12 ["AudioFlanger"]
      124 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
      125 LOADB                            R3 1
      126 SETTABLEKS                       R3 R2 K19 ["HasInput"]
      128 LOADB                            R3 1
      129 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
      131 SETTABLEKS                       R2 R1 K13 ["AudioLimiter"]
      133 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
      134 LOADB                            R3 1
      135 SETTABLEKS                       R3 R2 K19 ["HasInput"]
      137 LOADB                            R3 1
      138 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
      140 SETTABLEKS                       R2 R1 K14 ["AudioPitchShifter"]
      142 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
      143 LOADB                            R3 1
      144 SETTABLEKS                       R3 R2 K19 ["HasInput"]
      146 LOADB                            R3 1
      147 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
      149 SETTABLEKS                       R2 R1 K15 ["AudioReverb"]
      151 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
      152 LOADB                            R3 1
      153 SETTABLEKS                       R3 R2 K19 ["HasInput"]
      155 LOADB                            R3 0
      156 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
      158 SETTABLEKS                       R2 R1 K16 ["AudioAnalyzer"]
      160 DUPTABLE                         R2 K21 [{"HasInput", "HasOutput"}]
      161 LOADB                            R3 0
      162 SETTABLEKS                       R3 R2 K19 ["HasInput"]
      164 LOADB                            R3 0
      165 SETTABLEKS                       R3 R2 K20 ["HasOutput"]
      167 SETTABLEKS                       R2 R1 K17 ["Wire"]
      169 DUPCLOSURE                       R2 K24 [PROTO_0]
      170 CAPTURE                          VAL R1
      171 SETTABLEKS                       R2 R0 K25 ["getAudioInstanceDefs"]
      173 DUPCLOSURE                       R2 K26 [PROTO_1]
      174 CAPTURE                          VAL R1
      175 SETTABLEKS                       R2 R0 K27 ["hasInputPin"]
      177 DUPCLOSURE                       R2 K28 [PROTO_2]
      178 CAPTURE                          VAL R1
      179 SETTABLEKS                       R2 R0 K29 ["hasOutputPin"]
      181 DUPCLOSURE                       R2 K30 [PROTO_3]
      182 CAPTURE                          VAL R1
      183 SETTABLEKS                       R2 R0 K31 ["hasSidechainPin"]
      185 DUPCLOSURE                       R2 K32 [PROTO_4]
      186 CAPTURE                          VAL R0
      187 SETTABLEKS                       R2 R0 K33 ["getWirableInstances"]
      189 DUPCLOSURE                       R2 K34 [PROTO_5]
      190 SETTABLEKS                       R2 R0 K35 ["findWire"]
      192 DUPCLOSURE                       R2 K36 [PROTO_6]
      193 SETTABLEKS                       R2 R0 K37 ["rewire"]
      195 DUPCLOSURE                       R2 K38 [PROTO_7]
      196 CAPTURE                          VAL R0
      197 SETTABLEKS                       R2 R0 K39 ["connectByWire"]
      199 RETURN                           R0 1
