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
       59 DUPTABLE                         R13 K14 [{"Rect", "BackgroundTransparency", "BackgroundColor3"}]
       60 GETIMPORT                        R14 K16 [Rect.new]
       62 MOVE                             R15 R7
       63 MINUS                            R16 R9
       64 GETUPVAL                         R19 0
       65 GETTABLEKS                       R19 R19 K0 ["TimeLength"]
       67 DIV                              R18 R19 R1
       68 ADD                              R17 R7 R18
       69 MOVE                             R18 R9
       70 CALL                             R14 4 1
       71 SETTABLEKS                       R14 R13 K11 ["Rect"]
       73 LOADN                            R14 0
       74 SETTABLEKS                       R14 R13 K12 ["BackgroundTransparency"]
       76 SETTABLEKS                       R8 R13 K13 ["BackgroundColor3"]
       78 CALL                             R11 2 1
       79 SETTABLE                         R11 R0 R10
       80 FORGLOOP                         R2 2 ; [-64]
       82 RETURN                           R0 1

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
       61 JUMPIFLT                         R7 R6 ; [+28]
       63 LOADK                            R7 K10 ["Line "]
       64 MOVE                             R8 R5
       65 CONCAT                           R6 R7 R8
       66 GETUPVAL                         R7 5
       67 GETTABLEKS                       R7 R7 K11 ["createElement"]
       69 GETUPVAL                         R8 6
       70 DUPTABLE                         R9 K16 [{"Orientation", "Position", "OppositeAxisBounds", "Color3"}]
       71 LOADK                            R10 K17 ["Horizontal"]
       72 SETTABLEKS                       R10 R9 K12 ["Orientation"]
       74 LOADN                            R10 0
       75 SETTABLEKS                       R10 R9 K13 ["Position"]
       77 GETIMPORT                        R10 K20 [NumberRange.new]
       79 GETTABLE                         R11 R1 R5
       80 ADDK                             R13 R5 K9 [1]
       81 GETTABLE                         R12 R1 R13
       82 CALL                             R10 2 1
       83 SETTABLEKS                       R10 R9 K14 ["OppositeAxisBounds"]
       85 GETTABLE                         R10 R0 R5
       86 SETTABLEKS                       R10 R9 K15 ["Color3"]
       88 CALL                             R7 2 1
       89 SETTABLE                         R7 R2 R6
       90 FORNLOOP                         R3
       91 RETURN                           R2 1

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
       34 GETTABLEKS                       R7 R0 K9 ["WaveformResolution"]
       36 ORK                              R6 R7 K8 [500]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R6
       42 NEWTABLE                         R9 0 1
       44 GETTABLEKS                       R10 R0 K9 ["WaveformResolution"]
       46 SETLIST                          R9 R10 1 [1]
       48 CALL                             R7 2 1
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R8 R8 K11 ["useBinding"]
       52 DUPTABLE                         R9 K14 [{"TimePosition", "HoveredPosition"}]
       53 GETTABLEKS                       R10 R0 K12 ["TimePosition"]
       55 SETTABLEKS                       R10 R9 K12 ["TimePosition"]
       57 GETTABLEKS                       R10 R0 K13 ["HoveredPosition"]
       59 SETTABLEKS                       R10 R9 K13 ["HoveredPosition"]
       61 CALL                             R8 1 2
       62 GETUPVAL                         R10 1
       63 GETTABLEKS                       R10 R10 K15 ["useEffect"]
       65 NEWCLOSURE                       R11 P1
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R12 0 2
       70 GETTABLEKS                       R13 R0 K12 ["TimePosition"]
       72 GETTABLEKS                       R14 R0 K13 ["HoveredPosition"]
       74 SETLIST                          R12 R13 2 [1]
       76 CALL                             R10 2 0
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R10 R10 K16 ["useState"]
       80 NEWTABLE                         R11 0 0
       82 CALL                             R10 1 2
       83 GETUPVAL                         R12 1
       84 GETTABLEKS                       R12 R12 K15 ["useEffect"]
       86 NEWCLOSURE                       R13 P2
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          VAL R6
       92 NEWTABLE                         R14 0 3
       94 MOVE                             R15 R7
       95 GETTABLEKS                       R16 R0 K17 ["AssetId"]
       97 GETTABLEKS                       R17 R0 K18 ["TimeLength"]
       99 SETLIST                          R14 R15 3 [1]
      101 CALL                             R12 2 0
      102 GETUPVAL                         R12 1
      103 GETTABLEKS                       R12 R12 K10 ["useMemo"]
      105 NEWCLOSURE                       R13 P3
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R2
      113 CAPTURE                          UPVAL U1
      114 CAPTURE                          UPVAL U3
      115 NEWTABLE                         R14 0 3
      117 MOVE                             R15 R10
      118 GETTABLEKS                       R16 R0 K18 ["TimeLength"]
      120 GETTABLEKS                       R17 R0 K19 ["Volume"]
      122 SETLIST                          R14 R15 3 [1]
      124 CALL                             R12 2 1
      125 GETUPVAL                         R13 1
      126 GETTABLEKS                       R13 R13 K10 ["useMemo"]
      128 NEWCLOSURE                       R14 P4
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R2
      134 CAPTURE                          UPVAL U1
      135 CAPTURE                          UPVAL U4
      136 NEWTABLE                         R15 0 3
      138 GETTABLEKS                       R16 R0 K18 ["TimeLength"]
      140 GETTABLEKS                       R17 R0 K12 ["TimePosition"]
      142 GETTABLEKS                       R18 R0 K13 ["HoveredPosition"]
      144 SETLIST                          R15 R16 3 [1]
      146 CALL                             R13 2 1
      147 GETUPVAL                         R14 1
      148 GETTABLEKS                       R14 R14 K20 ["createElement"]
      150 GETUPVAL                         R15 1
      151 GETTABLEKS                       R15 R15 K21 ["Fragment"]
      153 NEWTABLE                         R16 0 0
      155 GETUPVAL                         R17 5
      156 GETTABLEKS                       R17 R17 K22 ["join"]
      158 MOVE                             R18 R12
      159 MOVE                             R19 R13
      160 CALL                             R17 2 -1
      161 CALL                             R14 -1 -1
      162 RETURN                           R14 -1

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
