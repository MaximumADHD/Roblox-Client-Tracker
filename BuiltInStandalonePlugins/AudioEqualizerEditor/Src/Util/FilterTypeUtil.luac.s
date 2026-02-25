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
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 NEWTABLE                         R3 0 12
       18 DUPTABLE                         R4 K10 [{"Id", "Value"}]
       19 LOADK                            R5 K11 ["Peak"]
       20 SETTABLEKS                       R5 R4 K8 ["Id"]
       22 GETIMPORT                        R5 K14 [Enum.AudioFilterType.Peak]
       24 SETTABLEKS                       R5 R4 K9 ["Value"]
       26 DUPTABLE                         R5 K10 [{"Id", "Value"}]
       27 LOADK                            R6 K15 ["LowShelf"]
       28 SETTABLEKS                       R6 R5 K8 ["Id"]
       30 GETIMPORT                        R6 K16 [Enum.AudioFilterType.LowShelf]
       32 SETTABLEKS                       R6 R5 K9 ["Value"]
       34 DUPTABLE                         R6 K10 [{"Id", "Value"}]
       35 LOADK                            R7 K17 ["HighShelf"]
       36 SETTABLEKS                       R7 R6 K8 ["Id"]
       38 GETIMPORT                        R7 K18 [Enum.AudioFilterType.HighShelf]
       40 SETTABLEKS                       R7 R6 K9 ["Value"]
       42 DUPTABLE                         R7 K10 [{"Id", "Value"}]
       43 LOADK                            R8 K19 ["Lowpass6dB"]
       44 SETTABLEKS                       R8 R7 K8 ["Id"]
       46 GETIMPORT                        R8 K20 [Enum.AudioFilterType.Lowpass6dB]
       48 SETTABLEKS                       R8 R7 K9 ["Value"]
       50 DUPTABLE                         R8 K10 [{"Id", "Value"}]
       51 LOADK                            R9 K21 ["Lowpass12dB"]
       52 SETTABLEKS                       R9 R8 K8 ["Id"]
       54 GETIMPORT                        R9 K22 [Enum.AudioFilterType.Lowpass12dB]
       56 SETTABLEKS                       R9 R8 K9 ["Value"]
       58 DUPTABLE                         R9 K10 [{"Id", "Value"}]
       59 LOADK                            R10 K23 ["Lowpass24dB"]
       60 SETTABLEKS                       R10 R9 K8 ["Id"]
       62 GETIMPORT                        R10 K24 [Enum.AudioFilterType.Lowpass24dB]
       64 SETTABLEKS                       R10 R9 K9 ["Value"]
       66 DUPTABLE                         R10 K10 [{"Id", "Value"}]
       67 LOADK                            R11 K25 ["Lowpass48dB"]
       68 SETTABLEKS                       R11 R10 K8 ["Id"]
       70 GETIMPORT                        R11 K26 [Enum.AudioFilterType.Lowpass48dB]
       72 SETTABLEKS                       R11 R10 K9 ["Value"]
       74 DUPTABLE                         R11 K10 [{"Id", "Value"}]
       75 LOADK                            R12 K27 ["Highpass12dB"]
       76 SETTABLEKS                       R12 R11 K8 ["Id"]
       78 GETIMPORT                        R12 K28 [Enum.AudioFilterType.Highpass12dB]
       80 SETTABLEKS                       R12 R11 K9 ["Value"]
       82 DUPTABLE                         R12 K10 [{"Id", "Value"}]
       83 LOADK                            R13 K29 ["Highpass24dB"]
       84 SETTABLEKS                       R13 R12 K8 ["Id"]
       86 GETIMPORT                        R13 K30 [Enum.AudioFilterType.Highpass24dB]
       88 SETTABLEKS                       R13 R12 K9 ["Value"]
       90 DUPTABLE                         R13 K10 [{"Id", "Value"}]
       91 LOADK                            R14 K31 ["Highpass48dB"]
       92 SETTABLEKS                       R14 R13 K8 ["Id"]
       94 GETIMPORT                        R14 K32 [Enum.AudioFilterType.Highpass48dB]
       96 SETTABLEKS                       R14 R13 K9 ["Value"]
       98 DUPTABLE                         R14 K10 [{"Id", "Value"}]
       99 LOADK                            R15 K33 ["Bandpass"]
      100 SETTABLEKS                       R15 R14 K8 ["Id"]
      102 GETIMPORT                        R15 K34 [Enum.AudioFilterType.Bandpass]
      104 SETTABLEKS                       R15 R14 K9 ["Value"]
      106 DUPTABLE                         R15 K10 [{"Id", "Value"}]
      107 LOADK                            R16 K35 ["Notch"]
      108 SETTABLEKS                       R16 R15 K8 ["Id"]
      110 GETIMPORT                        R16 K36 [Enum.AudioFilterType.Notch]
      112 SETTABLEKS                       R16 R15 K9 ["Value"]
      114 SETLIST                          R3 R4 12 [1]
      116 GETIMPORT                        R4 K39 [table.clone]
      118 MOVE                             R5 R3
      119 CALL                             R4 1 1
      120 GETIMPORT                        R5 K39 [table.clone]
      122 MOVE                             R6 R3
      123 CALL                             R5 1 1
      124 DUPCLOSURE                       R6 K40 [PROTO_0]
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R6 R2 K41 ["filterTypeToId"]
      128 DUPCLOSURE                       R6 K42 [PROTO_1]
      129 CAPTURE                          VAL R3
      130 SETTABLEKS                       R6 R2 K43 ["idToFilterType"]
      132 DUPCLOSURE                       R6 K44 [PROTO_2]
      133 SETTABLEKS                       R6 R2 K45 ["hasGain"]
      135 DUPCLOSURE                       R6 K46 [PROTO_3]
      136 SETTABLEKS                       R6 R2 K47 ["hasQ"]
      138 DUPCLOSURE                       R6 K48 [PROTO_4]
      139 CAPTURE                          VAL R4
      140 SETTABLEKS                       R6 R2 K49 ["getDropdownItems"]
      142 DUPCLOSURE                       R6 K50 [PROTO_6]
      143 CAPTURE                          VAL R5
      144 SETTABLEKS                       R6 R2 K51 ["getContextMenuItems"]
      146 RETURN                           R2 1
