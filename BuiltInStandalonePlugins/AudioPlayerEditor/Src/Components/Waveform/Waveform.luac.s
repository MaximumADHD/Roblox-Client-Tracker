PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 GETUPVAL                         R1 0
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 FASTCALL2K                       TABLE_INSERT R0 K0 ; [+5]
        8 MOVE                             R5 R0
        9 LOADK                            R6 K0 [0]
       10 GETIMPORT                        R4 K3 [table.insert]
       12 CALL                             R4 2 0
       13 FORNLOOP                         R1
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"TimePosition", "HoveredPosition"}]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["TimePosition"]
        5 SETTABLEKS                       R2 R1 K0 ["TimePosition"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["HoveredPosition"]
       10 SETTABLEKS                       R2 R1 K1 ["HoveredPosition"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETTABLEKS                       R0 R0 K0 ["TimeLength"]
        6 LOADN                            R1 0
        7 JUMPIFNOTLE                      R0 R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K1 ["fetchWaveform"]
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R2 0
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["TimePosition"]
        3 JUMPIFNOTLT                      R1 R2 ; [+11]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R3 R0 K2 ["HoveredPosition"]
        8 ORK                              R2 R3 K1 [0]
        9 JUMPIFNOTLT                      R1 R2 ; [+3]
       11 GETUPVAL                         R1 1
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 2
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R3 R0 K2 ["HoveredPosition"]
       18 ORK                              R2 R3 K1 [0]
       19 JUMPIFNOTLT                      R1 R2 ; [+3]
       21 GETUPVAL                         R1 3
       22 RETURN                           R1 1
       23 GETUPVAL                         R1 4
       24 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TimeLength"]
        3 LOADN                            R1 0
        4 JUMPIFNOTLE                      R0 R1 ; [+4]
        6 NEWTABLE                         R0 0 0
        8 RETURN                           R0 1
        9 NEWTABLE                         R0 0 0
       11 GETUPVAL                         R2 1
       12 LENGTH                           R1 R2
       13 GETUPVAL                         R2 1
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 SUBK                             R9 R5 K1 [1]
       18 DIV                              R8 R9 R1
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K0 ["TimeLength"]
       22 MUL                              R7 R8 R9
       23 GETUPVAL                         R8 2
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R7
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 NAMECALL                         R8 R8 K2 ["map"]
       32 CALL                             R8 2 1
       33 FASTCALL1                        MATH_ABS R6 ; [+3]
       34 MOVE                             R11 R6
       35 GETIMPORT                        R10 K5 [math.abs]
       37 CALL                             R10 1 1
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R12 R12 K6 ["Volume"]
       41 ORK                              R11 R12 K1 [1]
       42 MUL                              R9 R10 R11
       43 LOADN                            R12 0
       44 LOADN                            R13 1
       45 FASTCALL3                        MATH_CLAMP R9 R12 R13
       47 MOVE                             R11 R9
       48 GETIMPORT                        R10 K8 [math.clamp]
       50 CALL                             R10 3 1
       51 MOVE                             R9 R10
       52 LOADK                            R11 K9 ["Bar "]
       53 MOVE                             R12 R5
       54 CONCAT                           R10 R11 R12
       55 GETUPVAL                         R11 7
       56 GETTABLEKS                       R11 R11 K10 ["createElement"]
       58 GETUPVAL                         R12 8
       59 DUPTABLE                         R13 K15 [{["Rect"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"]}]
       60 GETIMPORT                        R14 K17 [Rect.new]
       62 MOVE                             R15 R7
       63 MINUS                            R16 R9
       64 GETUPVAL                         R19 0
       65 GETTABLEKS                       R19 R19 K0 ["TimeLength"]
       67 DIV                              R18 R19 R1
       68 ADD                              R17 R7 R18
       69 MOVE                             R18 R9
       70 CALL                             R14 4 1
       71 SETTABLEKS                       R14 R13 K11 ["Rect"]
       73 SETTABLEKS                       R8 R13 K14 ["BackgroundColor3"]
       75 CALL                             R11 2 1
       76 SETTABLE                         R11 R0 R10
       77 FORGLOOP                         R2 2 ; [-61]
       79 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TimeLength"]
        3 LOADN                            R1 0
        4 JUMPIFNOTLE                      R0 R1 ; [+4]
        6 NEWTABLE                         R0 0 0
        8 RETURN                           R0 1
        9 NEWTABLE                         R0 0 4
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 3
       14 GETUPVAL                         R4 4
       15 SETLIST                          R0 R1 4 [1]
       17 NEWTABLE                         R1 0 5
       19 LOADN                            R2 0
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K2 ["HoveredPosition"]
       23 ORK                              R4 R5 K1 [0]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K3 ["TimePosition"]
       27 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       29 GETIMPORT                        R3 K6 [math.min]
       31 CALL                             R3 2 1
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K3 ["TimePosition"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K2 ["HoveredPosition"]
       38 ORK                              R6 R7 K1 [0]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K3 ["TimePosition"]
       42 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       44 GETIMPORT                        R5 K8 [math.max]
       46 CALL                             R5 2 1
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K0 ["TimeLength"]
       50 SETLIST                          R1 R2 5 [1]
       52 NEWTABLE                         R2 0 0
       54 LOADN                            R5 1
       55 LENGTH                           R3 R0
       56 LOADN                            R4 1
       57 FORNPREP                         R3
       58 GETTABLE                         R6 R1 R5
       59 ADDK                             R8 R5 K9 [1]
       60 GETTABLE                         R7 R1 R8
       61 JUMPIFLT                         R7 R6 ; [+22]
       63 LOADK                            R7 K10 ["Line "]
       64 MOVE                             R8 R5
       65 CONCAT                           R6 R7 R8
       66 GETUPVAL                         R7 5
       67 GETTABLEKS                       R7 R7 K11 ["createElement"]
       69 GETUPVAL                         R8 6
       70 DUPTABLE                         R9 K17 [{["Orientation"] = "Horizontal", ["Position"] = 0, ["OppositeAxisBounds"], ["Color3"]}]
       71 GETIMPORT                        R10 K20 [NumberRange.new]
       73 GETTABLE                         R11 R1 R5
       74 ADDK                             R13 R5 K9 [1]
       75 GETTABLE                         R12 R1 R13
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K15 ["OppositeAxisBounds"]
       79 GETTABLE                         R10 R0 R5
       80 SETTABLEKS                       R10 R9 K16 ["Color3"]
       82 CALL                             R7 2 1
       83 SETTABLE                         R7 R2 R6
       84 FORNLOOP                         R3
       85 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Color"]
        4 GETTABLEKS                       R2 R2 K1 ["System"]
        6 GETTABLEKS                       R2 R2 K2 ["Neutral"]
        8 GETTABLEKS                       R2 R2 K3 ["Color3"]
       10 GETTABLEKS                       R3 R1 K0 ["Color"]
       12 GETTABLEKS                       R3 R3 K1 ["System"]
       14 GETTABLEKS                       R3 R3 K4 ["Contrast"]
       16 GETTABLEKS                       R3 R3 K3 ["Color3"]
       18 GETTABLEKS                       R4 R1 K0 ["Color"]
       20 GETTABLEKS                       R4 R4 K5 ["ActionSoftEmphasis"]
       22 GETTABLEKS                       R4 R4 K6 ["Background"]
       24 GETTABLEKS                       R4 R4 K3 ["Color3"]
       26 GETTABLEKS                       R5 R1 K0 ["Color"]
       28 GETTABLEKS                       R5 R5 K7 ["ActionEmphasis"]
       30 GETTABLEKS                       R5 R5 K6 ["Background"]
       32 GETTABLEKS                       R5 R5 K3 ["Color3"]
       34 GETIMPORT                        R6 K9 [Color3.new]
       36 GETTABLEKS                       R8 R5 K10 ["R"]
       38 LOADN                            R9 1
       39 LOADK                            R10 K11 [0.3]
       40 FASTCALL                         MATH_LERP ; [+2]
       41 GETIMPORT                        R7 K14 [math.lerp]
       43 CALL                             R7 3 1
       44 GETTABLEKS                       R9 R5 K15 ["G"]
       46 LOADN                            R10 1
       47 LOADK                            R11 K11 [0.3]
       48 FASTCALL                         MATH_LERP ; [+2]
       49 GETIMPORT                        R8 K14 [math.lerp]
       51 CALL                             R8 3 1
       52 GETTABLEKS                       R10 R5 K16 ["B"]
       54 LOADN                            R11 1
       55 LOADK                            R12 K11 [0.3]
       56 FASTCALL                         MATH_LERP ; [+2]
       57 GETIMPORT                        R9 K14 [math.lerp]
       59 CALL                             R9 3 1
       60 CALL                             R6 3 1
       61 MOVE                             R4 R6
       62 GETTABLEKS                       R7 R0 K18 ["WaveformResolution"]
       64 ORK                              R6 R7 K17 [500]
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K19 ["useMemo"]
       68 NEWCLOSURE                       R8 P0
       69 CAPTURE                          VAL R6
       70 NEWTABLE                         R9 0 1
       72 GETTABLEKS                       R10 R0 K18 ["WaveformResolution"]
       74 SETLIST                          R9 R10 1 [1]
       76 CALL                             R7 2 1
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R8 R8 K20 ["useBinding"]
       80 DUPTABLE                         R9 K23 [{"TimePosition", "HoveredPosition"}]
       81 GETTABLEKS                       R10 R0 K21 ["TimePosition"]
       83 SETTABLEKS                       R10 R9 K21 ["TimePosition"]
       85 GETTABLEKS                       R10 R0 K22 ["HoveredPosition"]
       87 SETTABLEKS                       R10 R9 K22 ["HoveredPosition"]
       89 CALL                             R8 1 2
       90 GETUPVAL                         R10 1
       91 GETTABLEKS                       R10 R10 K24 ["useEffect"]
       93 NEWCLOSURE                       R11 P1
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R0
       96 NEWTABLE                         R12 0 2
       98 GETTABLEKS                       R13 R0 K21 ["TimePosition"]
      100 GETTABLEKS                       R14 R0 K22 ["HoveredPosition"]
      102 SETLIST                          R12 R13 2 [1]
      104 CALL                             R10 2 0
      105 GETUPVAL                         R10 1
      106 GETTABLEKS                       R10 R10 K25 ["useState"]
      108 NEWTABLE                         R11 0 0
      110 CALL                             R10 1 2
      111 GETUPVAL                         R12 1
      112 GETTABLEKS                       R12 R12 K24 ["useEffect"]
      114 NEWCLOSURE                       R13 P2
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U2
      119 CAPTURE                          VAL R6
      120 NEWTABLE                         R14 0 3
      122 MOVE                             R15 R7
      123 GETTABLEKS                       R16 R0 K26 ["AssetId"]
      125 GETTABLEKS                       R17 R0 K27 ["TimeLength"]
      127 SETLIST                          R14 R15 3 [1]
      129 CALL                             R12 2 0
      130 GETUPVAL                         R12 1
      131 GETTABLEKS                       R12 R12 K19 ["useMemo"]
      133 NEWCLOSURE                       R13 P3
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R5
      138 CAPTURE                          REF R4
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R2
      141 CAPTURE                          UPVAL U1
      142 CAPTURE                          UPVAL U3
      143 NEWTABLE                         R14 0 3
      145 MOVE                             R15 R10
      146 GETTABLEKS                       R16 R0 K27 ["TimeLength"]
      148 GETTABLEKS                       R17 R0 K28 ["Volume"]
      150 SETLIST                          R14 R15 3 [1]
      152 CALL                             R12 2 1
      153 GETUPVAL                         R13 1
      154 GETTABLEKS                       R13 R13 K19 ["useMemo"]
      156 NEWCLOSURE                       R14 P4
      157 CAPTURE                          VAL R0
      158 CAPTURE                          VAL R5
      159 CAPTURE                          REF R4
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R2
      162 CAPTURE                          UPVAL U1
      163 CAPTURE                          UPVAL U4
      164 NEWTABLE                         R15 0 3
      166 GETTABLEKS                       R16 R0 K27 ["TimeLength"]
      168 GETTABLEKS                       R17 R0 K21 ["TimePosition"]
      170 GETTABLEKS                       R18 R0 K22 ["HoveredPosition"]
      172 SETLIST                          R15 R16 3 [1]
      174 CALL                             R13 2 1
      175 GETUPVAL                         R14 1
      176 GETTABLEKS                       R14 R14 K29 ["createElement"]
      178 GETUPVAL                         R15 1
      179 GETTABLEKS                       R15 R15 K30 ["Fragment"]
      181 NEWTABLE                         R16 0 0
      183 GETUPVAL                         R17 5
      184 GETTABLEKS                       R17 R17 K31 ["join"]
      186 MOVE                             R18 R12
      187 MOVE                             R19 R13
      188 CALL                             R17 2 -1
      189 CALL                             R14 -1 -1
      190 CLOSEUPVALS                      R4
      191 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Hooks"]
       30 GETTABLEKS                       R4 R4 K11 ["useTokens"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R6 K12 ["Graphing"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K13 ["GridLine"]
       41 GETTABLEKS                       R7 R5 K14 ["Panel"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Util"]
       49 GETTABLEKS                       R9 R9 K17 ["PlayerUtil"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R0 K15 ["Src"]
       56 GETTABLEKS                       R10 R10 K18 ["Types"]
       58 CALL                             R9 1 1
       59 DUPCLOSURE                       R10 K19 [PROTO_6]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R1
       66 RETURN                           R10 1
