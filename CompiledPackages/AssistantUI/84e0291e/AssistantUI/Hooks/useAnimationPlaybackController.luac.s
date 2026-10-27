PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+18]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["toolUseId"]
        6 JUMPIFEQKNIL                     R1 ; [+13]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["setIsPlaying"]
       11 DUPTABLE                         R2 K3 [{"toolUseId", "isPlaying"}]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K0 ["toolUseId"]
       15 SETTABLEKS                       R3 R2 K0 ["toolUseId"]
       17 SETTABLEKS                       R0 R2 K2 ["isPlaying"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R3 0
        1 GETUPVAL                         R4 0
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["current"]
       11 JUMPIFNOT                        R2 ; [+3]
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 3
       16 JUMPIFEQKNIL                     R2 ; [+18]
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R2 R2 K4 ["toolUseId"]
       21 JUMPIFEQKNIL                     R2 ; [+13]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K5 ["setCurrentTime"]
       26 DUPTABLE                         R3 K7 [{"toolUseId", "currentTime"}]
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K4 ["toolUseId"]
       30 SETTABLEKS                       R4 R3 K4 ["toolUseId"]
       32 SETTABLEKS                       R1 R3 K6 ["currentTime"]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disabled"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K1 ["current"]
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R1 4
       13 SETTABLEKS                       R1 R0 K1 ["current"]
       15 GETUPVAL                         R0 4
       16 JUMPIFNOT                        R0 ; [+3]
       17 GETUPVAL                         R0 5
       18 LOADB                            R1 0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["disabled"]
       11 NOT                              R0 R1
       12 JUMPIFNOT                        R0 ; [+1]
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 4
       15 CALL                             R1 0 0
       16 JUMPIFNOT                        R0 ; [+3]
       17 GETUPVAL                         R1 5
       18 LOADB                            R2 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disabled"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+2]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+2]
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 CALL                             R1 0 0
       13 GETUPVAL                         R1 3
       14 LOADB                            R2 0
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K1 ["onHidden"]
       19 JUMPIFEQKNIL                     R1 ; [+5]
       21 GETUPVAL                         R1 4
       22 GETTABLEKS                       R1 R1 K1 ["onHidden"]
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R3 R0 K2 ["toolUseId"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 3
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 LOADB                            R4 0
       15 JUMPIFEQKNIL                     R2 ; [+3]
       17 GETTABLEKS                       R4 R2 K3 ["available"]
       19 LOADB                            R5 0
       20 JUMPIFEQKNIL                     R2 ; [+3]
       22 GETTABLEKS                       R5 R2 K4 ["isPlaying"]
       24 JUMPIFNOT                        R4 ; [+5]
       25 JUMPIFEQKNIL                     R2 ; [+4]
       27 GETTABLEKS                       R6 R2 K5 ["duration"]
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R6 R0 K5 ["duration"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K6 ["useRef"]
       35 LOADB                            R8 0
       36 CALL                             R7 1 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K6 ["useRef"]
       40 LOADB                            R9 0
       41 CALL                             R8 1 1
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K7 ["useState"]
       45 LOADNIL                          R10
       46 CALL                             R9 1 2
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       50 NEWCLOSURE                       R12 P0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R13 0 2
       55 MOVE                             R14 R1
       56 GETTABLEKS                       R15 R0 K2 ["toolUseId"]
       58 SETLIST                          R13 R14 2 [1]
       60 CALL                             R11 2 1
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K8 ["useCallback"]
       64 NEWCLOSURE                       R13 P1
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R14 0 3
       72 MOVE                             R15 R1
       73 GETTABLEKS                       R16 R0 K2 ["toolUseId"]
       75 MOVE                             R17 R6
       76 SETLIST                          R14 R15 3 [1]
       78 CALL                             R12 2 1
       79 GETUPVAL                         R13 0
       80 GETTABLEKS                       R13 R13 K8 ["useCallback"]
       82 NEWCLOSURE                       R14 P2
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R5
       85 NEWTABLE                         R15 0 2
       87 MOVE                             R16 R5
       88 MOVE                             R17 R11
       89 SETLIST                          R15 R16 2 [1]
       91 CALL                             R13 2 1
       92 GETUPVAL                         R14 0
       93 GETTABLEKS                       R14 R14 K8 ["useCallback"]
       95 NEWCLOSURE                       R15 P3
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R10
       99 NEWTABLE                         R16 0 0
      101 CALL                             R14 2 1
      102 GETUPVAL                         R15 0
      103 GETTABLEKS                       R15 R15 K8 ["useCallback"]
      105 NEWCLOSURE                       R16 P4
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R11
      112 NEWTABLE                         R17 0 4
      114 GETTABLEKS                       R18 R0 K9 ["disabled"]
      116 MOVE                             R19 R4
      117 MOVE                             R20 R5
      118 MOVE                             R21 R11
      119 SETLIST                          R17 R18 4 [1]
      121 CALL                             R15 2 1
      122 GETUPVAL                         R16 0
      123 GETTABLEKS                       R16 R16 K8 ["useCallback"]
      125 NEWCLOSURE                       R17 P5
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R0
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R11
      132 NEWTABLE                         R18 0 4
      134 MOVE                             R19 R14
      135 GETTABLEKS                       R20 R0 K9 ["disabled"]
      137 MOVE                             R21 R4
      138 MOVE                             R22 R11
      139 SETLIST                          R18 R19 4 [1]
      141 CALL                             R16 2 1
      142 GETUPVAL                         R17 0
      143 GETTABLEKS                       R17 R17 K10 ["useEffect"]
      145 NEWCLOSURE                       R18 P6
      146 CAPTURE                          VAL R14
      147 NEWTABLE                         R19 0 3
      149 GETTABLEKS                       R20 R0 K2 ["toolUseId"]
      151 MOVE                             R21 R1
      152 MOVE                             R22 R14
      153 SETLIST                          R19 R20 3 [1]
      155 CALL                             R17 2 0
      156 GETUPVAL                         R17 0
      157 GETTABLEKS                       R17 R17 K10 ["useEffect"]
      159 NEWCLOSURE                       R18 P7
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R14
      163 NEWTABLE                         R19 0 3
      165 GETTABLEKS                       R20 R0 K9 ["disabled"]
      167 MOVE                             R21 R4
      168 MOVE                             R22 R14
      169 SETLIST                          R19 R20 3 [1]
      171 CALL                             R17 2 0
      172 GETUPVAL                         R17 0
      173 GETTABLEKS                       R17 R17 K0 ["useContext"]
      175 GETUPVAL                         R18 4
      176 GETTABLEKS                       R18 R18 K1 ["Context"]
      178 CALL                             R17 1 1
      179 GETTABLEKS                       R17 R17 K11 ["isVisible"]
      181 GETUPVAL                         R18 0
      182 GETTABLEKS                       R18 R18 K6 ["useRef"]
      184 MOVE                             R19 R17
      185 CALL                             R18 1 1
      186 GETUPVAL                         R19 0
      187 GETTABLEKS                       R19 R19 K10 ["useEffect"]
      189 NEWCLOSURE                       R20 P8
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R0
      195 NEWTABLE                         R21 0 4
      197 MOVE                             R22 R17
      198 MOVE                             R23 R14
      199 MOVE                             R24 R11
      200 GETTABLEKS                       R25 R0 K12 ["onHidden"]
      202 SETLIST                          R21 R22 4 [1]
      204 CALL                             R19 2 0
      205 DUPTABLE                         R19 K19 [{"available", "isPlaying", "currentTime", "duration", "setPlaying", "seek", "togglePlaying", "beginScrub", "endScrub"}]
      206 SETTABLEKS                       R4 R19 K3 ["available"]
      208 SETTABLEKS                       R5 R19 K4 ["isPlaying"]
      210 JUMPIFEQKNIL                     R9 ; [+3]
      212 MOVE                             R20 R9
      213 JUMP                             ; [+1]
      214 MOVE                             R20 R3
      215 SETTABLEKS                       R20 R19 K13 ["currentTime"]
      217 SETTABLEKS                       R6 R19 K5 ["duration"]
      219 SETTABLEKS                       R11 R19 K14 ["setPlaying"]
      221 SETTABLEKS                       R12 R19 K15 ["seek"]
      223 SETTABLEKS                       R13 R19 K16 ["togglePlaying"]
      225 SETTABLEKS                       R15 R19 K17 ["beginScrub"]
      227 SETTABLEKS                       R16 R19 K18 ["endScrub"]
      229 RETURN                           R19 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R3 K9 ["Actions"]
       17 GETTABLEKS                       R3 R3 K10 ["AnimationGenActionsContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K11 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K7 ["Components"]
       29 GETTABLEKS                       R5 R5 K8 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K12 ["WidgetVisibilityContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Hooks"]
       38 GETTABLEKS                       R6 R6 K14 ["useAnimationPlaybackState"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K13 ["Hooks"]
       45 GETTABLEKS                       R7 R7 K15 ["usePlayedCurrentTime"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K16 [PROTO_9]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R4
       54 RETURN                           R7 1
