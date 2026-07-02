PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 LOADN                            R1 4
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 LOADN                            R6 1
        7 LOADN                            R4 9
        8 LOADN                            R5 1
        9 FORNPREP                         R4
       10 LOADN                            R9 10
       11 POW                              R8 R9 R3
       12 MUL                              R7 R6 R8
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K0 ["getXMin"]
       16 CALL                             R8 0 1
       17 JUMPIFLT                         R7 R8 ; [+45]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K1 ["getXMax"]
       22 CALL                             R8 0 1
       23 JUMPIFLT                         R8 R7 ; [+39]
       25 LOADK                            R9 K2 ["GridLine_V_"]
       26 MOVE                             R10 R7
       27 CONCAT                           R8 R9 R10
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K3 ["createElement"]
       31 GETUPVAL                         R10 2
       32 DUPTABLE                         R11 K11 [{["Position"], ["PlotAbsoluteSize"], ["PlotFramePadding"] = 50, ["Orientation"] = "Vertical", ["IsMinor"]}]
       33 SETTABLEKS                       R7 R11 K4 ["Position"]
       35 GETUPVAL                         R12 3
       36 GETTABLEKS                       R12 R12 K5 ["PlotAbsoluteSize"]
       38 SETTABLEKS                       R12 R11 K5 ["PlotAbsoluteSize"]
       40 LOADB                            R13 1
       41 JUMPIFEQKN                       R6 K12 [1] ; [+16]
       43 LOADB                            R13 1
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R14 R14 K0 ["getXMin"]
       47 CALL                             R14 0 1
       48 JUMPIFEQ                         R7 R14 ; [+9]
       50 GETUPVAL                         R14 0
       51 GETTABLEKS                       R14 R14 K1 ["getXMax"]
       53 CALL                             R14 0 1
       54 JUMPIFEQ                         R7 R14 ; [+2]
       56 LOADB                            R13 0 +1
       57 LOADB                            R13 1
       58 NOT                              R12 R13
       59 SETTABLEKS                       R12 R11 K10 ["IsMinor"]
       61 CALL                             R9 2 1
       62 SETTABLE                         R9 R0 R8
       63 FORNLOOP                         R4
       64 FORNLOOP                         R1
       65 LOADK                            R2 K2 ["GridLine_V_"]
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K0 ["getXMin"]
       69 CALL                             R3 0 1
       70 CONCAT                           R1 R2 R3
       71 GETUPVAL                         R2 1
       72 GETTABLEKS                       R2 R2 K3 ["createElement"]
       74 GETUPVAL                         R3 2
       75 DUPTABLE                         R4 K13 [{["Position"], ["PlotAbsoluteSize"], ["PlotFramePadding"] = 50, ["Orientation"] = "Vertical"}]
       76 GETUPVAL                         R5 0
       77 GETTABLEKS                       R5 R5 K0 ["getXMin"]
       79 CALL                             R5 0 1
       80 SETTABLEKS                       R5 R4 K4 ["Position"]
       82 GETUPVAL                         R5 3
       83 GETTABLEKS                       R5 R5 K5 ["PlotAbsoluteSize"]
       85 SETTABLEKS                       R5 R4 K5 ["PlotAbsoluteSize"]
       87 CALL                             R2 2 1
       88 SETTABLE                         R2 R0 R1
       89 LOADK                            R2 K2 ["GridLine_V_"]
       90 GETUPVAL                         R3 0
       91 GETTABLEKS                       R3 R3 K1 ["getXMax"]
       93 CALL                             R3 0 1
       94 CONCAT                           R1 R2 R3
       95 GETUPVAL                         R2 1
       96 GETTABLEKS                       R2 R2 K3 ["createElement"]
       98 GETUPVAL                         R3 2
       99 DUPTABLE                         R4 K13 [{["Position"], ["PlotAbsoluteSize"], ["PlotFramePadding"] = 50, ["Orientation"] = "Vertical"}]
      100 GETUPVAL                         R5 0
      101 GETTABLEKS                       R5 R5 K1 ["getXMax"]
      103 CALL                             R5 0 1
      104 SETTABLEKS                       R5 R4 K4 ["Position"]
      106 GETUPVAL                         R5 3
      107 GETTABLEKS                       R5 R5 K5 ["PlotAbsoluteSize"]
      109 SETTABLEKS                       R5 R4 K5 ["PlotAbsoluteSize"]
      111 CALL                             R2 2 1
      112 SETTABLE                         R2 R0 R1
      113 NEWTABLE                         R1 0 0
      115 GETUPVAL                         R2 3
      116 GETTABLEKS                       R2 R2 K14 ["InstanceType"]
      118 GETUPVAL                         R3 4
      119 GETTABLEKS                       R3 R3 K15 ["EQUALIZER"]
      121 JUMPIFNOTEQ                      R2 R3 ; [+14]
      123 NEWTABLE                         R2 0 7
      125 LOADN                            R3 -80
      126 LOADN                            R4 -40
      127 LOADN                            R5 -20
      128 LOADN                            R6 -10
      129 LOADN                            R7 0
      130 LOADN                            R8 5
      131 LOADN                            R9 10
      132 SETLIST                          R2 R3 7 [1]
      134 MOVE                             R1 R2
      135 JUMP                             ; [+20]
      136 GETUPVAL                         R2 3
      137 GETTABLEKS                       R2 R2 K14 ["InstanceType"]
      139 GETUPVAL                         R3 4
      140 GETTABLEKS                       R3 R3 K16 ["FILTER"]
      142 JUMPIFNOTEQ                      R2 R3 ; [+13]
      144 NEWTABLE                         R2 0 7
      146 LOADN                            R3 -30
      147 LOADN                            R4 -20
      148 LOADN                            R5 -10
      149 LOADN                            R6 0
      150 LOADN                            R7 10
      151 LOADN                            R8 20
      152 LOADN                            R9 30
      153 SETLIST                          R2 R3 7 [1]
      155 MOVE                             R1 R2
      156 MOVE                             R2 R1
      157 LOADNIL                          R3
      158 LOADNIL                          R4
      159 FORGPREP                         R2
      160 LOADK                            R8 K17 ["GridLine_H_"]
      161 MOVE                             R9 R6
      162 CONCAT                           R7 R8 R9
      163 GETUPVAL                         R8 1
      164 GETTABLEKS                       R8 R8 K3 ["createElement"]
      166 GETUPVAL                         R9 2
      167 DUPTABLE                         R10 K19 [{["Position"], ["PlotAbsoluteSize"], ["PlotFramePadding"] = 50, ["Orientation"] = "Horizontal"}]
      168 SETTABLEKS                       R6 R10 K4 ["Position"]
      170 GETUPVAL                         R11 3
      171 GETTABLEKS                       R11 R11 K5 ["PlotAbsoluteSize"]
      173 SETTABLEKS                       R11 R10 K5 ["PlotAbsoluteSize"]
      175 CALL                             R8 2 1
      176 SETTABLE                         R8 R0 R7
      177 FORGLOOP                         R2 2 ; [-18]
      179 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 NEWTABLE                         R3 0 2
        9 GETTABLEKS                       R4 R0 K0 ["InstanceType"]
       11 GETTABLEKS                       R5 R0 K1 ["PlotAbsoluteSize"]
       13 SETLIST                          R3 R4 2 [1]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K2 ["createElement"]
       19 GETUPVAL                         R3 5
       20 DUPTABLE                         R4 K10 [{["Active"] = True, ["LayoutOrder"] = 1, ["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
       21 GETIMPORT                        R5 K13 [UDim2.new]
       23 LOADN                            R6 0
       24 LOADN                            R7 0
       25 LOADN                            R8 0
       26 LOADN                            R9 0
       27 CALL                             R5 4 1
       28 SETTABLEKS                       R5 R4 K7 ["Position"]
       30 GETIMPORT                        R5 K13 [UDim2.new]
       32 LOADN                            R6 1
       33 LOADN                            R7 0
       34 LOADN                            R8 1
       35 LOADN                            R9 0
       36 CALL                             R5 4 1
       37 SETTABLEKS                       R5 R4 K8 ["Size"]
       39 MOVE                             R5 R1
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AudioEqualizerEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useMemo"]
       20 GETIMPORT                        R4 K6 [require]
       22 GETTABLEKS                       R5 R1 K7 ["Packages"]
       24 GETTABLEKS                       R5 R5 K10 ["Framework"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K11 ["UI"]
       29 GETTABLEKS                       R5 R5 K12 ["Pane"]
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R1 K13 ["Src"]
       35 GETTABLEKS                       R7 R7 K14 ["Types"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K15 ["GridLine"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R1 K13 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Util"]
       49 GETTABLEKS                       R9 R9 K17 ["PlotUtil"]
       51 CALL                             R8 1 1
       52 DUPCLOSURE                       R9 K18 [PROTO_1]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 RETURN                           R9 1
