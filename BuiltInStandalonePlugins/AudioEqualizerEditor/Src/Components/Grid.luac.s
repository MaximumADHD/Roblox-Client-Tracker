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
       17 JUMPIFLT                         R7 R8 ; [+51]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K1 ["getXMax"]
       22 CALL                             R8 0 1
       23 JUMPIFLT                         R8 R7 ; [+45]
       25 LOADK                            R9 K2 ["GridLine_V_"]
       26 MOVE                             R10 R7
       27 CONCAT                           R8 R9 R10
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K3 ["createElement"]
       31 GETUPVAL                         R10 2
       32 DUPTABLE                         R11 K9 [{"Position", "PlotAbsoluteSize", "PlotFramePadding", "Orientation", "IsMinor"}]
       33 SETTABLEKS                       R7 R11 K4 ["Position"]
       35 GETUPVAL                         R12 3
       36 GETTABLEKS                       R12 R12 K5 ["PlotAbsoluteSize"]
       38 SETTABLEKS                       R12 R11 K5 ["PlotAbsoluteSize"]
       40 LOADN                            R12 50
       41 SETTABLEKS                       R12 R11 K6 ["PlotFramePadding"]
       43 LOADK                            R12 K10 ["Vertical"]
       44 SETTABLEKS                       R12 R11 K7 ["Orientation"]
       46 LOADB                            R13 1
       47 JUMPIFEQKN                       R6 K11 [1] ; [+16]
       49 LOADB                            R13 1
       50 GETUPVAL                         R14 0
       51 GETTABLEKS                       R14 R14 K0 ["getXMin"]
       53 CALL                             R14 0 1
       54 JUMPIFEQ                         R7 R14 ; [+9]
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R14 R14 K1 ["getXMax"]
       59 CALL                             R14 0 1
       60 JUMPIFEQ                         R7 R14 ; [+2]
       62 LOADB                            R13 0 +1
       63 LOADB                            R13 1
       64 NOT                              R12 R13
       65 SETTABLEKS                       R12 R11 K8 ["IsMinor"]
       67 CALL                             R9 2 1
       68 SETTABLE                         R9 R0 R8
       69 FORNLOOP                         R4
       70 FORNLOOP                         R1
       71 LOADK                            R2 K2 ["GridLine_V_"]
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K0 ["getXMin"]
       75 CALL                             R3 0 1
       76 CONCAT                           R1 R2 R3
       77 GETUPVAL                         R2 1
       78 GETTABLEKS                       R2 R2 K3 ["createElement"]
       80 GETUPVAL                         R3 2
       81 DUPTABLE                         R4 K12 [{"Position", "PlotAbsoluteSize", "PlotFramePadding", "Orientation"}]
       82 GETUPVAL                         R5 0
       83 GETTABLEKS                       R5 R5 K0 ["getXMin"]
       85 CALL                             R5 0 1
       86 SETTABLEKS                       R5 R4 K4 ["Position"]
       88 GETUPVAL                         R5 3
       89 GETTABLEKS                       R5 R5 K5 ["PlotAbsoluteSize"]
       91 SETTABLEKS                       R5 R4 K5 ["PlotAbsoluteSize"]
       93 LOADN                            R5 50
       94 SETTABLEKS                       R5 R4 K6 ["PlotFramePadding"]
       96 LOADK                            R5 K10 ["Vertical"]
       97 SETTABLEKS                       R5 R4 K7 ["Orientation"]
       99 CALL                             R2 2 1
      100 SETTABLE                         R2 R0 R1
      101 LOADK                            R2 K2 ["GridLine_V_"]
      102 GETUPVAL                         R3 0
      103 GETTABLEKS                       R3 R3 K1 ["getXMax"]
      105 CALL                             R3 0 1
      106 CONCAT                           R1 R2 R3
      107 GETUPVAL                         R2 1
      108 GETTABLEKS                       R2 R2 K3 ["createElement"]
      110 GETUPVAL                         R3 2
      111 DUPTABLE                         R4 K12 [{"Position", "PlotAbsoluteSize", "PlotFramePadding", "Orientation"}]
      112 GETUPVAL                         R5 0
      113 GETTABLEKS                       R5 R5 K1 ["getXMax"]
      115 CALL                             R5 0 1
      116 SETTABLEKS                       R5 R4 K4 ["Position"]
      118 GETUPVAL                         R5 3
      119 GETTABLEKS                       R5 R5 K5 ["PlotAbsoluteSize"]
      121 SETTABLEKS                       R5 R4 K5 ["PlotAbsoluteSize"]
      123 LOADN                            R5 50
      124 SETTABLEKS                       R5 R4 K6 ["PlotFramePadding"]
      126 LOADK                            R5 K10 ["Vertical"]
      127 SETTABLEKS                       R5 R4 K7 ["Orientation"]
      129 CALL                             R2 2 1
      130 SETTABLE                         R2 R0 R1
      131 NEWTABLE                         R1 0 0
      133 GETUPVAL                         R2 3
      134 GETTABLEKS                       R2 R2 K13 ["InstanceType"]
      136 GETUPVAL                         R3 4
      137 GETTABLEKS                       R3 R3 K14 ["EQUALIZER"]
      139 JUMPIFNOTEQ                      R2 R3 ; [+14]
      141 NEWTABLE                         R2 0 7
      143 LOADN                            R3 176
      144 LOADN                            R4 216
      145 LOADN                            R5 236
      146 LOADN                            R6 246
      147 LOADN                            R7 0
      148 LOADN                            R8 5
      149 LOADN                            R9 10
      150 SETLIST                          R2 R3 7 [1]
      152 MOVE                             R1 R2
      153 JUMP                             ; [+20]
      154 GETUPVAL                         R2 3
      155 GETTABLEKS                       R2 R2 K13 ["InstanceType"]
      157 GETUPVAL                         R3 4
      158 GETTABLEKS                       R3 R3 K15 ["FILTER"]
      160 JUMPIFNOTEQ                      R2 R3 ; [+13]
      162 NEWTABLE                         R2 0 7
      164 LOADN                            R3 226
      165 LOADN                            R4 236
      166 LOADN                            R5 246
      167 LOADN                            R6 0
      168 LOADN                            R7 10
      169 LOADN                            R8 20
      170 LOADN                            R9 30
      171 SETLIST                          R2 R3 7 [1]
      173 MOVE                             R1 R2
      174 MOVE                             R2 R1
      175 LOADNIL                          R3
      176 LOADNIL                          R4
      177 FORGPREP                         R2
      178 LOADK                            R8 K16 ["GridLine_H_"]
      179 MOVE                             R9 R6
      180 CONCAT                           R7 R8 R9
      181 GETUPVAL                         R8 1
      182 GETTABLEKS                       R8 R8 K3 ["createElement"]
      184 GETUPVAL                         R9 2
      185 DUPTABLE                         R10 K12 [{"Position", "PlotAbsoluteSize", "PlotFramePadding", "Orientation"}]
      186 SETTABLEKS                       R6 R10 K4 ["Position"]
      188 GETUPVAL                         R11 3
      189 GETTABLEKS                       R11 R11 K5 ["PlotAbsoluteSize"]
      191 SETTABLEKS                       R11 R10 K5 ["PlotAbsoluteSize"]
      193 LOADN                            R11 50
      194 SETTABLEKS                       R11 R10 K6 ["PlotFramePadding"]
      196 LOADK                            R11 K17 ["Horizontal"]
      197 SETTABLEKS                       R11 R10 K7 ["Orientation"]
      199 CALL                             R8 2 1
      200 SETTABLE                         R8 R0 R7
      201 FORGLOOP                         R2 2 ; [-24]
      203 RETURN                           R0 1

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
       20 DUPTABLE                         R4 K8 [{"Active", "LayoutOrder", "Position", "Size", "BackgroundTransparency"}]
       21 LOADB                            R5 1
       22 SETTABLEKS                       R5 R4 K3 ["Active"]
       24 LOADN                            R5 1
       25 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       27 GETIMPORT                        R5 K11 [UDim2.new]
       29 LOADN                            R6 0
       30 LOADN                            R7 0
       31 LOADN                            R8 0
       32 LOADN                            R9 0
       33 CALL                             R5 4 1
       34 SETTABLEKS                       R5 R4 K5 ["Position"]
       36 GETIMPORT                        R5 K11 [UDim2.new]
       38 LOADN                            R6 1
       39 LOADN                            R7 0
       40 LOADN                            R8 1
       41 LOADN                            R9 0
       42 CALL                             R5 4 1
       43 SETTABLEKS                       R5 R4 K6 ["Size"]
       45 LOADN                            R5 1
       46 SETTABLEKS                       R5 R4 K7 ["BackgroundTransparency"]
       48 MOVE                             R5 R1
       49 CALL                             R2 3 -1
       50 RETURN                           R2 -1

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
