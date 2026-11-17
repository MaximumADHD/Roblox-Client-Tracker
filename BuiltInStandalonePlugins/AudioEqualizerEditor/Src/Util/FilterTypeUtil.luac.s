PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["Value"]
        6 JUMPIFNOTEQ                      R6 R0 ; [+4]
        8 GETTABLEKS                       R6 R5 K1 ["Id"]
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-8]
       13 LOADB                            R2 0
       14 FASTCALL1                        ASSERT R2 ; [+2]
       15 GETIMPORT                        R1 K3 [assert]
       17 CALL                             R1 1 0
       18 LOADK                            R1 K4 [""]
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["Id"]
        6 JUMPIFNOTEQ                      R6 R0 ; [+4]
        8 GETTABLEKS                       R6 R5 K1 ["Value"]
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-8]
       13 LOADB                            R2 0
       14 FASTCALL1                        ASSERT R2 ; [+2]
       15 GETIMPORT                        R1 K3 [assert]
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K7 [Enum.AudioFilterType.Peak]
       20 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.AudioFilterType.Peak]
        3 JUMPIFEQ                         R0 R2 ; [+12]
        5 LOADB                            R1 1
        6 GETIMPORT                        R2 K5 [Enum.AudioFilterType.LowShelf]
        8 JUMPIFEQ                         R0 R2 ; [+7]
       10 GETIMPORT                        R2 K7 [Enum.AudioFilterType.HighShelf]
       12 JUMPIFEQ                         R0 R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R1 0
        1 GETIMPORT                        R2 K3 [Enum.AudioFilterType.LowShelf]
        3 JUMPIFEQ                         R0 R2 ; [+12]
        5 LOADB                            R1 0
        6 GETIMPORT                        R2 K5 [Enum.AudioFilterType.HighShelf]
        8 JUMPIFEQ                         R0 R2 ; [+7]
       10 GETIMPORT                        R2 K7 [Enum.AudioFilterType.Lowpass6dB]
       12 JUMPIFNOTEQ                      R0 R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADK                            R8 K0 ["Label"]
        5 LOADK                            R10 K1 ["FilterType_"]
        6 GETTABLEKS                       R11 R5 K2 ["Id"]
        8 CONCAT                           R9 R10 R11
        9 NAMECALL                         R6 R0 K3 ["getText"]
       11 CALL                             R6 3 1
       12 SETTABLEKS                       R6 R5 K0 ["Label"]
       14 FORGLOOP                         R1 2 ; [-11]
       16 GETUPVAL                         R1 0
       17 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADK                            R9 K0 ["Label"]
        5 LOADK                            R11 K1 ["FilterType_"]
        6 GETTABLEKS                       R12 R6 K2 ["Id"]
        8 CONCAT                           R10 R11 R12
        9 NAMECALL                         R7 R0 K3 ["getText"]
       11 CALL                             R7 3 1
       12 SETTABLEKS                       R7 R6 K4 ["Text"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R7 R6 K5 ["OnItemClicked"]
       18 FORGLOOP                         R2 2 ; [-15]
       20 GETUPVAL                         R2 0
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioEqualizerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 NEWTABLE                         R3 0 12
       18 DUPTABLE                         R4 K11 [{["Id"] = "Peak", ["Value"]}]
       19 GETIMPORT                        R5 K14 [Enum.AudioFilterType.Peak]
       21 SETTABLEKS                       R5 R4 K10 ["Value"]
       23 DUPTABLE                         R5 K16 [{["Id"] = "LowShelf", ["Value"]}]
       24 GETIMPORT                        R6 K17 [Enum.AudioFilterType.LowShelf]
       26 SETTABLEKS                       R6 R5 K10 ["Value"]
       28 DUPTABLE                         R6 K19 [{["Id"] = "HighShelf", ["Value"]}]
       29 GETIMPORT                        R7 K20 [Enum.AudioFilterType.HighShelf]
       31 SETTABLEKS                       R7 R6 K10 ["Value"]
       33 DUPTABLE                         R7 K22 [{["Id"] = "Lowpass6dB", ["Value"]}]
       34 GETIMPORT                        R8 K23 [Enum.AudioFilterType.Lowpass6dB]
       36 SETTABLEKS                       R8 R7 K10 ["Value"]
       38 DUPTABLE                         R8 K25 [{["Id"] = "Lowpass12dB", ["Value"]}]
       39 GETIMPORT                        R9 K26 [Enum.AudioFilterType.Lowpass12dB]
       41 SETTABLEKS                       R9 R8 K10 ["Value"]
       43 DUPTABLE                         R9 K28 [{["Id"] = "Lowpass24dB", ["Value"]}]
       44 GETIMPORT                        R10 K29 [Enum.AudioFilterType.Lowpass24dB]
       46 SETTABLEKS                       R10 R9 K10 ["Value"]
       48 DUPTABLE                         R10 K31 [{["Id"] = "Lowpass48dB", ["Value"]}]
       49 GETIMPORT                        R11 K32 [Enum.AudioFilterType.Lowpass48dB]
       51 SETTABLEKS                       R11 R10 K10 ["Value"]
       53 DUPTABLE                         R11 K34 [{["Id"] = "Highpass12dB", ["Value"]}]
       54 GETIMPORT                        R12 K35 [Enum.AudioFilterType.Highpass12dB]
       56 SETTABLEKS                       R12 R11 K10 ["Value"]
       58 DUPTABLE                         R12 K37 [{["Id"] = "Highpass24dB", ["Value"]}]
       59 GETIMPORT                        R13 K38 [Enum.AudioFilterType.Highpass24dB]
       61 SETTABLEKS                       R13 R12 K10 ["Value"]
       63 DUPTABLE                         R13 K40 [{["Id"] = "Highpass48dB", ["Value"]}]
       64 GETIMPORT                        R14 K41 [Enum.AudioFilterType.Highpass48dB]
       66 SETTABLEKS                       R14 R13 K10 ["Value"]
       68 DUPTABLE                         R14 K43 [{["Id"] = "Bandpass", ["Value"]}]
       69 GETIMPORT                        R15 K44 [Enum.AudioFilterType.Bandpass]
       71 SETTABLEKS                       R15 R14 K10 ["Value"]
       73 DUPTABLE                         R15 K46 [{["Id"] = "Notch", ["Value"]}]
       74 GETIMPORT                        R16 K47 [Enum.AudioFilterType.Notch]
       76 SETTABLEKS                       R16 R15 K10 ["Value"]
       78 SETLIST                          R3 R4 12 [1]
       80 GETIMPORT                        R4 K50 [table.clone]
       82 MOVE                             R5 R3
       83 CALL                             R4 1 1
       84 GETIMPORT                        R5 K50 [table.clone]
       86 MOVE                             R6 R3
       87 CALL                             R5 1 1
       88 DUPCLOSURE                       R6 K51 [PROTO_0]
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R6 R2 K52 ["filterTypeToId"]
       92 DUPCLOSURE                       R6 K53 [PROTO_1]
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R6 R2 K54 ["idToFilterType"]
       96 DUPCLOSURE                       R6 K55 [PROTO_2]
       97 SETTABLEKS                       R6 R2 K56 ["hasGain"]
       99 DUPCLOSURE                       R6 K57 [PROTO_3]
      100 SETTABLEKS                       R6 R2 K58 ["hasQ"]
      102 DUPCLOSURE                       R6 K59 [PROTO_4]
      103 CAPTURE                          VAL R4
      104 SETTABLEKS                       R6 R2 K60 ["getDropdownItems"]
      106 DUPCLOSURE                       R6 K61 [PROTO_6]
      107 CAPTURE                          VAL R5
      108 SETTABLEKS                       R6 R2 K62 ["getContextMenuItems"]
      110 RETURN                           R2 1
