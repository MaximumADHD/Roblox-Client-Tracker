PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableAction"]
        3 LOADK                            R1 K1 ["FindPlaying"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["register"]
        9 GETIMPORT                        R1 K4 [plugin]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableAction"]
       15 LOADK                            R1 K5 ["Insert"]
       16 CALL                             R0 1 1
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K2 ["register"]
       21 GETIMPORT                        R1 K4 [plugin]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableAction"]
       27 LOADK                            R1 K6 ["InsertFrom"]
       28 CALL                             R0 1 1
       29 JUMPIFNOT                        R0 ; [+6]
       30 GETUPVAL                         R0 3
       31 GETTABLEKS                       R0 R0 K2 ["register"]
       33 GETIMPORT                        R1 K4 [plugin]
       35 CALL                             R0 1 0
       36 GETUPVAL                         R0 0
       37 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableAction"]
       39 LOADK                            R1 K7 ["MainVolume"]
       40 CALL                             R0 1 1
       41 JUMPIFNOT                        R0 ; [+6]
       42 GETUPVAL                         R0 4
       43 GETTABLEKS                       R0 R0 K2 ["register"]
       45 GETIMPORT                        R1 K4 [plugin]
       47 CALL                             R0 1 0
       48 GETUPVAL                         R0 0
       49 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableAction"]
       51 LOADK                            R1 K8 ["MigrateSounds"]
       52 CALL                             R0 1 1
       53 JUMPIFNOT                        R0 ; [+6]
       54 GETUPVAL                         R0 5
       55 GETTABLEKS                       R0 R0 K2 ["register"]
       57 GETIMPORT                        R1 K4 [plugin]
       59 CALL                             R0 1 0
       60 GETUPVAL                         R0 0
       61 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableAction"]
       63 LOADK                            R1 K9 ["Select"]
       64 CALL                             R0 1 1
       65 JUMPIFNOT                        R0 ; [+6]
       66 GETUPVAL                         R0 6
       67 GETTABLEKS                       R0 R0 K2 ["register"]
       69 GETIMPORT                        R1 K4 [plugin]
       71 CALL                             R0 1 0
       72 GETUPVAL                         R0 0
       73 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableAction"]
       75 LOADK                            R1 K10 ["StopPlaying"]
       76 CALL                             R0 1 1
       77 JUMPIFNOT                        R0 ; [+6]
       78 GETUPVAL                         R0 7
       79 GETTABLEKS                       R0 R0 K2 ["register"]
       81 GETIMPORT                        R1 K4 [plugin]
       83 CALL                             R0 1 0
       84 GETUPVAL                         R0 0
       85 GETTABLEKS                       R0 R0 K0 ["getFFlagEnableAction"]
       87 LOADK                            R1 K11 ["WireUp"]
       88 CALL                             R0 1 1
       89 JUMPIFNOT                        R0 ; [+6]
       90 GETUPVAL                         R0 8
       91 GETTABLEKS                       R0 R0 K2 ["register"]
       93 GETIMPORT                        R1 K4 [plugin]
       95 CALL                             R0 1 0
       96 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deregister"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["deregister"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["deregister"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K0 ["deregister"]
       15 CALL                             R0 0 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K0 ["deregister"]
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 5
       21 GETTABLEKS                       R0 R0 K0 ["deregister"]
       23 CALL                             R0 0 0
       24 GETUPVAL                         R0 6
       25 GETTABLEKS                       R0 R0 K0 ["deregister"]
       27 CALL                             R0 0 0
       28 GETUPVAL                         R0 7
       29 GETTABLEKS                       R0 R0 K0 ["deregister"]
       31 CALL                             R0 0 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AudioActions"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["AudioActions"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K13 ["Bin"]
       33 GETTABLEKS                       R3 R3 K14 ["Common"]
       35 GETTABLEKS                       R3 R3 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableAudioActions"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K7 [require]
       45 GETTABLEKS                       R4 R0 K11 ["Src"]
       47 GETTABLEKS                       R4 R4 K17 ["Util"]
       49 GETTABLEKS                       R4 R4 K18 ["LocalizationUtil"]
       51 CALL                             R3 1 1
       52 GETTABLEKS                       R4 R3 K19 ["createLocalization"]
       54 CALL                             R4 0 0
       55 GETIMPORT                        R4 K7 [require]
       57 GETTABLEKS                       R5 R0 K11 ["Src"]
       59 GETTABLEKS                       R5 R5 K20 ["Actions"]
       61 GETTABLEKS                       R5 R5 K21 ["FindPlaying"]
       63 CALL                             R4 1 1
       64 GETIMPORT                        R5 K7 [require]
       66 GETTABLEKS                       R6 R0 K11 ["Src"]
       68 GETTABLEKS                       R6 R6 K20 ["Actions"]
       70 GETTABLEKS                       R6 R6 K22 ["Insert"]
       72 CALL                             R5 1 1
       73 GETIMPORT                        R6 K7 [require]
       75 GETTABLEKS                       R7 R0 K11 ["Src"]
       77 GETTABLEKS                       R7 R7 K20 ["Actions"]
       79 GETTABLEKS                       R7 R7 K23 ["InsertFrom"]
       81 CALL                             R6 1 1
       82 GETIMPORT                        R7 K7 [require]
       84 GETTABLEKS                       R8 R0 K11 ["Src"]
       86 GETTABLEKS                       R8 R8 K20 ["Actions"]
       88 GETTABLEKS                       R8 R8 K24 ["MainVolume"]
       90 CALL                             R7 1 1
       91 GETIMPORT                        R8 K7 [require]
       93 GETTABLEKS                       R9 R0 K11 ["Src"]
       95 GETTABLEKS                       R9 R9 K20 ["Actions"]
       97 GETTABLEKS                       R9 R9 K25 ["MigrateSounds"]
       99 CALL                             R8 1 1
      100 GETIMPORT                        R9 K7 [require]
      102 GETTABLEKS                       R10 R0 K11 ["Src"]
      104 GETTABLEKS                       R10 R10 K20 ["Actions"]
      106 GETTABLEKS                       R10 R10 K26 ["Select"]
      108 CALL                             R9 1 1
      109 GETIMPORT                        R10 K7 [require]
      111 GETTABLEKS                       R11 R0 K11 ["Src"]
      113 GETTABLEKS                       R11 R11 K20 ["Actions"]
      115 GETTABLEKS                       R11 R11 K27 ["StopPlaying"]
      117 CALL                             R10 1 1
      118 GETIMPORT                        R11 K7 [require]
      120 GETTABLEKS                       R12 R0 K11 ["Src"]
      122 GETTABLEKS                       R12 R12 K20 ["Actions"]
      124 GETTABLEKS                       R12 R12 K28 ["WireUp"]
      126 CALL                             R11 1 1
      127 DUPCLOSURE                       R12 K29 [PROTO_0]
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R11
      137 DUPCLOSURE                       R13 K30 [PROTO_1]
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R11
      146 GETIMPORT                        R14 K1 [plugin]
      148 GETTABLEKS                       R14 R14 K31 ["MultipleDocumentInterfaceInstance"]
      150 GETTABLEKS                       R15 R14 K32 ["FocusedDataModelSession"]
      152 JUMPIFNOT                        R15 ; [+14]
      153 GETTABLEKS                       R16 R15 K33 ["CurrentDataModelTypeAboutToChange"]
      155 DUPCLOSURE                       R18 K34 [PROTO_2]
      156 CAPTURE                          VAL R13
      157 NAMECALL                         R16 R16 K35 ["Connect"]
      159 CALL                             R16 2 0
      160 GETTABLEKS                       R16 R15 K36 ["CurrentDataModelTypeChanged"]
      162 DUPCLOSURE                       R18 K37 [PROTO_3]
      163 CAPTURE                          VAL R12
      164 NAMECALL                         R16 R16 K35 ["Connect"]
      166 CALL                             R16 2 0
      167 MOVE                             R16 R12
      168 CALL                             R16 0 0
      169 GETIMPORT                        R16 K7 [require]
      171 GETTABLEKS                       R17 R0 K13 ["Bin"]
      173 GETTABLEKS                       R17 R17 K14 ["Common"]
      175 GETTABLEKS                       R17 R17 K38 ["pluginType"]
      177 CALL                             R16 1 1
      178 GETTABLEKS                       R17 R16 K39 ["get"]
      180 CALL                             R17 0 1
      181 GETTABLEKS                       R18 R16 K40 ["Asset"]
      183 JUMPIFEQ                         R17 R18 ; [+2]
      185 RETURN                           R0 0
      186 GETIMPORT                        R17 K7 [require]
      188 GETTABLEKS                       R18 R0 K13 ["Bin"]
      190 GETTABLEKS                       R18 R18 K14 ["Common"]
      192 GETTABLEKS                       R18 R18 K41 ["setup"]
      194 CALL                             R17 1 1
      195 GETIMPORT                        R18 K7 [require]
      197 GETTABLEKS                       R19 R0 K13 ["Bin"]
      199 GETTABLEKS                       R19 R19 K14 ["Common"]
      201 GETTABLEKS                       R19 R19 K42 ["setupMain"]
      203 CALL                             R18 1 1
      204 MOVE                             R19 R17
      205 GETIMPORT                        R20 K1 [plugin]
      207 MOVE                             R21 R18
      208 CALL                             R19 2 0
      209 RETURN                           R0 0
