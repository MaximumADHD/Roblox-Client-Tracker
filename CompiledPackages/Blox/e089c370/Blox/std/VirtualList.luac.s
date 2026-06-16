PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["element"]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K1 ["alive"]
        5 GETTABLEKS                       R2 R1 K2 ["publish"]
        7 GETTABLEKS                       R3 R0 K0 ["element"]
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R0 K3 ["wrapper"]
       12 NAMECALL                         R2 R2 K4 ["Destroy"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R2 2
        1 JUMPIFNOTLT                      R2 R1 ; [+3]
        3 LOADK                            R2 K0 ["..."]
        4 RETURN                           R2 1
        5 FASTCALL1                        TYPE R0 ; [+3]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K2 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+24]
       12 LENGTH                           R3 R0
       13 LOADN                            R4 80
       14 JUMPIFNOTLT                      R4 R3 ; [+14]
       16 GETIMPORT                        R6 K5 [string.format]
       18 LOADK                            R7 K6 ["%q"]
       19 LOADN                            R10 1
       20 LOADN                            R11 80
       21 NAMECALL                         R8 R0 K7 ["sub"]
       23 CALL                             R8 3 -1
       24 CALL                             R6 -1 1
       25 MOVE                             R4 R6
       26 LOADK                            R5 K8 ["…"]
       27 CONCAT                           R3 R4 R5
       28 RETURN                           R3 1
       29 GETIMPORT                        R3 K5 [string.format]
       31 LOADK                            R4 K6 ["%q"]
       32 MOVE                             R5 R0
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1
       35 JUMPIFEQKS                       R2 K9 ["number"] ; [+3]
       37 JUMPIFNOTEQKS                    R2 K10 ["boolean"] ; [+7]
       39 FASTCALL1                        TOSTRING R0 ; [+3]
       40 MOVE                             R4 R0
       41 GETIMPORT                        R3 K12 [tostring]
       43 CALL                             R3 1 1
       44 RETURN                           R3 1
       45 JUMPIFNOTEQKS                    R2 K13 ["nil"] ; [+3]
       47 LOADK                            R3 K14 ["null"]
       48 RETURN                           R3 1
       49 JUMPIFNOTEQKS                    R2 K15 ["table"] ; [+105]
       51 NEWTABLE                         R3 0 0
       53 LENGTH                           R5 R0
       54 LOADN                            R6 0
       55 JUMPIFLT                         R6 R5 ; [+2]
       57 LOADB                            R4 0 +1
       58 LOADB                            R4 1
       59 JUMPIFNOT                        R4 ; [+43]
       60 GETIMPORT                        R5 K17 [ipairs]
       62 MOVE                             R6 R0
       63 CALL                             R5 1 3
       64 FORGPREP_INEXT                   R5
       65 LOADN                            R10 4
       66 JUMPIFNOTLT                      R10 R8 ; [+15]
       68 LOADK                            R13 K18 ["...+%*"]
       69 LENGTH                           R16 R0
       70 SUBK                             R15 R16 K19 [4]
       71 NAMECALL                         R13 R13 K4 ["format"]
       73 CALL                             R13 2 1
       74 MOVE                             R12 R13
       75 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       77 MOVE                             R11 R3
       78 GETIMPORT                        R10 K21 [table.insert]
       80 CALL                             R10 2 0
       81 JUMP                             ; [+11]
       82 MOVE                             R11 R3
       83 GETUPVAL                         R12 0
       84 MOVE                             R13 R9
       85 ADDK                             R14 R1 K22 [1]
       86 CALL                             R12 2 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R10 K21 [table.insert]
       90 CALL                             R10 -1 0
       91 FORGLOOP                         R5 2 [inext] ; [-27]
       93 LOADK                            R6 K23 ["["]
       94 GETIMPORT                        R9 K25 [table.concat]
       96 MOVE                             R10 R3
       97 LOADK                            R11 K26 [", "]
       98 CALL                             R9 2 1
       99 MOVE                             R7 R9
      100 LOADK                            R8 K27 ["]"]
      101 CONCAT                           R5 R6 R8
      102 RETURN                           R5 1
      103 LOADN                            R5 0
      104 MOVE                             R6 R0
      105 LOADNIL                          R7
      106 LOADNIL                          R8
      107 FORGPREP                         R6
      108 LOADN                            R11 6
      109 JUMPIFNOTLE                      R11 R5 ; [+9]
      111 FASTCALL2K                       TABLE_INSERT R3 K0 ; [+5]
      113 MOVE                             R12 R3
      114 LOADK                            R13 K0 ["..."]
      115 GETIMPORT                        R11 K21 [table.insert]
      117 CALL                             R11 2 0
      118 JUMP                             ; [+26]
      119 FASTCALL1                        TYPE R9 ; [+3]
      120 MOVE                             R12 R9
      121 GETIMPORT                        R11 K2 [type]
      123 CALL                             R11 1 1
      124 JUMPIFNOTEQKS                    R11 K3 ["string"] ; [+17]
      126 LOADK                            R14 K28 ["\"%*\": %*"]
      127 MOVE                             R16 R9
      128 GETUPVAL                         R17 0
      129 MOVE                             R18 R10
      130 ADDK                             R19 R1 K22 [1]
      131 CALL                             R17 2 1
      132 NAMECALL                         R14 R14 K4 ["format"]
      134 CALL                             R14 3 1
      135 MOVE                             R13 R14
      136 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
      138 MOVE                             R12 R3
      139 GETIMPORT                        R11 K21 [table.insert]
      141 CALL                             R11 2 0
      142 ADDK                             R5 R5 K22 [1]
      143 FORGLOOP                         R6 2 ; [-36]
      145 LOADK                            R7 K29 ["{"]
      146 GETIMPORT                        R10 K25 [table.concat]
      148 MOVE                             R11 R3
      149 LOADK                            R12 K26 [", "]
      150 CALL                             R10 2 1
      151 MOVE                             R8 R10
      152 LOADK                            R9 K30 ["}"]
      153 CONCAT                           R6 R7 R9
      154 RETURN                           R6 1
      155 LOADK                            R4 K31 ["<"]
      156 MOVE                             R5 R2
      157 LOADK                            R6 K32 [">"]
      158 CONCAT                           R3 R4 R6
      159 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PROFILE_VIRTUAL_LIST"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R1 K3 [os.clock]
        7 CALL                             R1 0 1
        8 SETTABLEKS                       R1 R0 K4 ["_lastScrollEventTime"]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K5 ["VLIST_THROTTLE_SCROLL"]
       13 JUMPIFNOT                        R0 ; [+24]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K6 ["CanvasPosition"]
       17 GETTABLEKS                       R0 R0 K7 ["Y"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K9 ["_lastItemSize"]
       22 ORK                              R1 R2 K8 [20]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K11 ["_lastPropagatedY"]
       26 ORK                              R4 R5 K10 [0]
       27 SUB                              R3 R0 R4
       28 FASTCALL1                        MATH_ABS R3 ; [+2]
       29 GETIMPORT                        R2 K14 [math.abs]
       31 CALL                             R2 1 1
       32 JUMPIFNOTLT                      R2 R1 ; [+2]
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 1
       36 SETTABLEKS                       R0 R2 K11 ["_lastPropagatedY"]
       38 GETUPVAL                         R0 3
       39 GETUPVAL                         R1 2
       40 GETTABLEKS                       R1 R1 K6 ["CanvasPosition"]
       42 GETTABLEKS                       R1 R1 K7 ["Y"]
       44 CALL                             R0 1 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R1 K1 ["Y"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["entries"]
       11 LOADNIL                          R1
       12 LOADNIL                          R2
       13 FORGPREP                         R0
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R6 R4 K2 ["element"]
       17 LOADB                            R7 0
       18 SETTABLEKS                       R7 R6 K3 ["alive"]
       20 GETTABLEKS                       R6 R5 K4 ["publish"]
       22 GETTABLEKS                       R7 R4 K2 ["element"]
       24 CALL                             R6 1 0
       25 GETTABLEKS                       R6 R4 K5 ["wrapper"]
       27 NAMECALL                         R6 R6 K6 ["Destroy"]
       29 CALL                             R6 1 0
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K1 ["entries"]
       33 LOADNIL                          R6
       34 SETTABLE                         R6 R5 R3
       35 FORGLOOP                         R0 2 ; [-22]
       37 GETUPVAL                         R0 2
       38 GETTABLEKS                       R0 R0 K7 ["pool"]
       40 LOADNIL                          R1
       41 LOADNIL                          R2
       42 FORGPREP                         R0
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R6 R4 K2 ["element"]
       46 LOADB                            R7 0
       47 SETTABLEKS                       R7 R6 K3 ["alive"]
       49 GETTABLEKS                       R6 R5 K4 ["publish"]
       51 GETTABLEKS                       R7 R4 K2 ["element"]
       53 CALL                             R6 1 0
       54 GETTABLEKS                       R6 R4 K5 ["wrapper"]
       56 NAMECALL                         R6 R6 K6 ["Destroy"]
       58 CALL                             R6 1 0
       59 FORGLOOP                         R0 2 ; [-17]
       61 GETIMPORT                        R0 K10 [table.clear]
       63 GETUPVAL                         R1 2
       64 GETTABLEKS                       R1 R1 K7 ["pool"]
       66 CALL                             R0 1 0
       67 GETUPVAL                         R0 2
       68 GETTABLEKS                       R0 R0 K11 ["cache"]
       70 LOADNIL                          R1
       71 LOADNIL                          R2
       72 FORGPREP                         R0
       73 GETUPVAL                         R5 3
       74 GETTABLEKS                       R6 R4 K2 ["element"]
       76 LOADB                            R7 0
       77 SETTABLEKS                       R7 R6 K3 ["alive"]
       79 GETTABLEKS                       R6 R5 K4 ["publish"]
       81 GETTABLEKS                       R7 R4 K2 ["element"]
       83 CALL                             R6 1 0
       84 GETTABLEKS                       R6 R4 K5 ["wrapper"]
       86 NAMECALL                         R6 R6 K6 ["Destroy"]
       88 CALL                             R6 1 0
       89 GETUPVAL                         R5 2
       90 GETTABLEKS                       R5 R5 K11 ["cache"]
       92 LOADNIL                          R6
       93 SETTABLE                         R6 R5 R3
       94 FORGLOOP                         R0 2 ; [-22]
       96 GETUPVAL                         R0 2
       97 GETTABLEKS                       R0 R0 K12 ["noneElement"]
       99 JUMPIFNOT                        R0 ; [+17]
      100 GETUPVAL                         R0 2
      101 GETTABLEKS                       R0 R0 K12 ["noneElement"]
      103 LOADB                            R1 0
      104 SETTABLEKS                       R1 R0 K3 ["alive"]
      106 GETUPVAL                         R0 3
      107 GETTABLEKS                       R0 R0 K4 ["publish"]
      109 GETUPVAL                         R1 2
      110 GETTABLEKS                       R1 R1 K12 ["noneElement"]
      112 CALL                             R0 1 0
      113 GETUPVAL                         R0 2
      114 LOADNIL                          R1
      115 SETTABLEKS                       R1 R0 K12 ["noneElement"]
      117 GETUPVAL                         R0 2
      118 GETTABLEKS                       R0 R0 K13 ["contentElement"]
      120 JUMPIFNOT                        R0 ; [+17]
      121 GETUPVAL                         R0 2
      122 GETTABLEKS                       R0 R0 K13 ["contentElement"]
      124 LOADB                            R1 0
      125 SETTABLEKS                       R1 R0 K3 ["alive"]
      127 GETUPVAL                         R0 3
      128 GETTABLEKS                       R0 R0 K4 ["publish"]
      130 GETUPVAL                         R1 2
      131 GETTABLEKS                       R1 R1 K13 ["contentElement"]
      133 CALL                             R0 1 0
      134 GETUPVAL                         R0 2
      135 LOADNIL                          R1
      136 SETTABLEKS                       R1 R0 K13 ["contentElement"]
      138 GETUPVAL                         R0 2
      139 GETTABLEKS                       R0 R0 K14 ["ownsScrollFrame"]
      141 JUMPIFNOT                        R0 ; [+14]
      142 GETUPVAL                         R0 2
      143 GETTABLEKS                       R0 R0 K15 ["scrollFrame"]
      145 JUMPIFNOT                        R0 ; [+10]
      146 GETUPVAL                         R0 2
      147 GETTABLEKS                       R0 R0 K15 ["scrollFrame"]
      149 NAMECALL                         R0 R0 K6 ["Destroy"]
      151 CALL                             R0 1 0
      152 GETUPVAL                         R0 2
      153 LOADNIL                          R1
      154 SETTABLEKS                       R1 R0 K15 ["scrollFrame"]
      156 GETUPVAL                         R0 2
      157 GETTABLEKS                       R0 R0 K16 ["_renderConn"]
      159 JUMPIFNOT                        R0 ; [+10]
      160 GETUPVAL                         R0 2
      161 GETTABLEKS                       R0 R0 K16 ["_renderConn"]
      163 NAMECALL                         R0 R0 K0 ["Disconnect"]
      165 CALL                             R0 1 0
      166 GETUPVAL                         R0 2
      167 LOADNIL                          R1
      168 SETTABLEKS                       R1 R0 K16 ["_renderConn"]
      170 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 RETURN                           R0 1

PROTO_6:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R2 0
        4 SUB                              R1 R0 R2
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 ADDK                             R2 R2 K3 [1]
        8 SETUPVAL                         R2 1
        9 GETUPVAL                         R2 2
       10 JUMPIFNOTLT                      R1 R2 ; [+2]
       12 SETUPVAL                         R1 2
       13 GETUPVAL                         R2 3
       14 JUMPIFNOTLT                      R2 R1 ; [+2]
       16 SETUPVAL                         R1 3
       17 LOADN                            R2 0
       18 GETUPVAL                         R3 4
       19 NAMECALL                         R3 R3 K4 ["GetChildren"]
       21 CALL                             R3 1 3
       22 FORGPREP                         R3
       23 LOADK                            R10 K5 ["Frame"]
       24 NAMECALL                         R8 R7 K6 ["IsA"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+5]
       28 GETTABLEKS                       R8 R7 K7 ["Name"]
       30 JUMPIFNOTEQKS                    R8 K8 ["VirtualListRow"] ; [+2]
       32 ADDK                             R2 R2 K3 [1]
       33 FORGLOOP                         R3 2 ; [-11]
       35 GETUPVAL                         R3 5
       36 GETTABLEKS                       R3 R3 K9 ["_effectRanSinceRender"]
       38 JUMPIF                           R3 ; [+20]
       39 LOADN                            R3 0
       40 JUMPIFNOTLT                      R3 R2 ; [+18]
       42 GETIMPORT                        R3 K11 [print]
       44 GETIMPORT                        R4 K14 [string.format]
       46 LOADK                            R5 K15 ["[VList:render] STALE-FRAME visibleRows=%d scrollY=%d"]
       47 MOVE                             R6 R2
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K16 ["CanvasPosition"]
       51 GETTABLEKS                       R8 R8 K17 ["Y"]
       53 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       54 GETIMPORT                        R7 K20 [math.floor]
       56 CALL                             R7 1 1
       57 CALL                             R4 3 -1
       58 CALL                             R3 -1 0
       59 GETUPVAL                         R3 5
       60 LOADB                            R4 0
       61 SETTABLEKS                       R4 R3 K9 ["_effectRanSinceRender"]
       63 GETUPVAL                         R4 6
       64 SUB                              R3 R0 R4
       65 LOADN                            R4 1
       66 JUMPIFNOTLE                      R4 R3 ; [+29]
       68 GETUPVAL                         R5 1
       69 DIV                              R4 R5 R3
       70 GETUPVAL                         R6 3
       71 LOADN                            R7 0
       72 JUMPIFNOTLT                      R7 R6 ; [+4]
       74 GETUPVAL                         R6 3
       75 DIVRK                            R5 R3 K6 ["IsA"]
       76 JUMP                             ; [+1]
       77 LOADN                            R5 0
       78 GETIMPORT                        R6 K11 [print]
       80 GETIMPORT                        R7 K14 [string.format]
       82 LOADK                            R8 K21 ["[VList:fps] avg=%.1f worst=%.1f frames=%d over=%.2fs"]
       83 MOVE                             R9 R4
       84 MOVE                             R10 R5
       85 GETUPVAL                         R11 1
       86 MOVE                             R12 R3
       87 CALL                             R7 5 -1
       88 CALL                             R6 -1 0
       89 LOADN                            R6 0
       90 SETUPVAL                         R6 1
       91 SETUPVAL                         R0 6
       92 LOADK                            R6 K22 [∞]
       93 SETUPVAL                         R6 2
       94 LOADN                            R6 0
       95 SETUPVAL                         R6 3
       96 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETIMPORT                        R0 K2 [os.clock]
        4 CALL                             R0 0 1
        5 JUMP                             ; [+1]
        6 LOADN                            R0 0
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+106]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R5 3
       11 GETUPVAL                         R7 4
       12 SUBK                             R6 R7 K3 [1]
       13 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       15 GETIMPORT                        R4 K6 [math.min]
       17 CALL                             R4 2 1
       18 MOVE                             R1 R4
       19 LOADN                            R2 1
       20 FORNPREP                         R1
       21 GETUPVAL                         R5 5
       22 GETTABLEKS                       R5 R5 K7 ["entries"]
       24 GETTABLE                         R4 R5 R3
       25 JUMPIFNOT                        R4 ; [+35]
       26 GETUPVAL                         R5 5
       27 GETTABLEKS                       R5 R5 K7 ["entries"]
       29 LOADNIL                          R6
       30 SETTABLE                         R6 R5 R3
       31 GETUPVAL                         R5 6
       32 ADDK                             R5 R5 K3 [1]
       33 SETUPVAL                         R5 6
       34 GETUPVAL                         R5 7
       35 JUMPIFNOTEQKS                    R5 K8 ["cache"] ; [+16]
       37 GETTABLEKS                       R5 R4 K9 ["wrapper"]
       39 LOADNIL                          R6
       40 SETTABLEKS                       R6 R5 K10 ["Parent"]
       42 GETIMPORT                        R5 K2 [os.clock]
       44 CALL                             R5 0 1
       45 SETTABLEKS                       R5 R4 K11 ["accessTime"]
       47 GETUPVAL                         R5 5
       48 GETTABLEKS                       R5 R5 K8 ["cache"]
       50 SETTABLE                         R4 R5 R3
       51 JUMP                             ; [+9]
       52 GETUPVAL                         R6 5
       53 GETTABLEKS                       R6 R6 K12 ["pool"]
       55 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       57 MOVE                             R7 R4
       58 GETIMPORT                        R5 K15 [table.insert]
       60 CALL                             R5 2 0
       61 FORNLOOP                         R1
       62 GETUPVAL                         R4 2
       63 GETUPVAL                         R6 8
       64 ADDK                             R5 R6 K3 [1]
       65 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       67 GETIMPORT                        R3 K17 [math.max]
       69 CALL                             R3 2 1
       70 GETUPVAL                         R1 3
       71 LOADN                            R2 1
       72 FORNPREP                         R1
       73 GETUPVAL                         R5 5
       74 GETTABLEKS                       R5 R5 K7 ["entries"]
       76 GETTABLE                         R4 R5 R3
       77 JUMPIFNOT                        R4 ; [+35]
       78 GETUPVAL                         R5 5
       79 GETTABLEKS                       R5 R5 K7 ["entries"]
       81 LOADNIL                          R6
       82 SETTABLE                         R6 R5 R3
       83 GETUPVAL                         R5 6
       84 ADDK                             R5 R5 K3 [1]
       85 SETUPVAL                         R5 6
       86 GETUPVAL                         R5 7
       87 JUMPIFNOTEQKS                    R5 K8 ["cache"] ; [+16]
       89 GETTABLEKS                       R5 R4 K9 ["wrapper"]
       91 LOADNIL                          R6
       92 SETTABLEKS                       R6 R5 K10 ["Parent"]
       94 GETIMPORT                        R5 K2 [os.clock]
       96 CALL                             R5 0 1
       97 SETTABLEKS                       R5 R4 K11 ["accessTime"]
       99 GETUPVAL                         R5 5
      100 GETTABLEKS                       R5 R5 K8 ["cache"]
      102 SETTABLE                         R4 R5 R3
      103 JUMP                             ; [+9]
      104 GETUPVAL                         R6 5
      105 GETTABLEKS                       R6 R6 K12 ["pool"]
      107 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
      109 MOVE                             R7 R4
      110 GETIMPORT                        R5 K15 [table.insert]
      112 CALL                             R5 2 0
      113 FORNLOOP                         R1
      114 JUMP                             ; [+102]
      115 GETUPVAL                         R1 7
      116 JUMPIFNOTEQKS                    R1 K18 ["none"] ; [+54]
      118 GETIMPORT                        R1 K2 [os.clock]
      120 CALL                             R1 0 1
      121 GETUPVAL                         R2 5
      122 GETTABLEKS                       R2 R2 K7 ["entries"]
      124 LOADNIL                          R3
      125 LOADNIL                          R4
      126 FORGPREP                         R2
      127 GETUPVAL                         R8 9
      128 GETTABLE                         R7 R8 R5
      129 JUMPIFNOT                        R7 ; [+2]
      130 SETTABLEKS                       R1 R6 K19 ["version"]
      132 FORGLOOP                         R2 2 ; [-6]
      134 GETUPVAL                         R2 5
      135 GETTABLEKS                       R2 R2 K7 ["entries"]
      137 LOADNIL                          R3
      138 LOADNIL                          R4
      139 FORGPREP                         R2
      140 GETTABLEKS                       R7 R6 K19 ["version"]
      142 JUMPIFEQ                         R7 R1 ; [+25]
      144 GETUPVAL                         R7 10
      145 GETTABLEKS                       R8 R6 K20 ["element"]
      147 LOADB                            R9 0
      148 SETTABLEKS                       R9 R8 K21 ["alive"]
      150 GETTABLEKS                       R8 R7 K22 ["publish"]
      152 GETTABLEKS                       R9 R6 K20 ["element"]
      154 CALL                             R8 1 0
      155 GETTABLEKS                       R8 R6 K9 ["wrapper"]
      157 NAMECALL                         R8 R8 K23 ["Destroy"]
      159 CALL                             R8 1 0
      160 GETUPVAL                         R7 5
      161 GETTABLEKS                       R7 R7 K7 ["entries"]
      163 LOADNIL                          R8
      164 SETTABLE                         R8 R7 R5
      165 GETUPVAL                         R7 6
      166 ADDK                             R7 R7 K3 [1]
      167 SETUPVAL                         R7 6
      168 FORGLOOP                         R2 2 ; [-29]
      170 JUMP                             ; [+46]
      171 GETUPVAL                         R1 5
      172 GETTABLEKS                       R1 R1 K7 ["entries"]
      174 LOADNIL                          R2
      175 LOADNIL                          R3
      176 FORGPREP                         R1
      177 GETUPVAL                         R7 9
      178 GETTABLE                         R6 R7 R4
      179 JUMPIF                           R6 ; [+35]
      180 GETUPVAL                         R6 5
      181 GETTABLEKS                       R6 R6 K7 ["entries"]
      183 LOADNIL                          R7
      184 SETTABLE                         R7 R6 R4
      185 GETUPVAL                         R6 6
      186 ADDK                             R6 R6 K3 [1]
      187 SETUPVAL                         R6 6
      188 GETUPVAL                         R6 7
      189 JUMPIFNOTEQKS                    R6 K8 ["cache"] ; [+16]
      191 GETTABLEKS                       R6 R5 K9 ["wrapper"]
      193 LOADNIL                          R7
      194 SETTABLEKS                       R7 R6 K10 ["Parent"]
      196 GETIMPORT                        R6 K2 [os.clock]
      198 CALL                             R6 0 1
      199 SETTABLEKS                       R6 R5 K11 ["accessTime"]
      201 GETUPVAL                         R6 5
      202 GETTABLEKS                       R6 R6 K8 ["cache"]
      204 SETTABLE                         R5 R6 R4
      205 JUMP                             ; [+9]
      206 GETUPVAL                         R7 5
      207 GETTABLEKS                       R7 R7 K12 ["pool"]
      209 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
      211 MOVE                             R8 R5
      212 GETIMPORT                        R6 K15 [table.insert]
      214 CALL                             R6 2 0
      215 FORGLOOP                         R1 2 ; [-39]
      217 GETUPVAL                         R1 0
      218 JUMPIFNOT                        R1 ; [+5]
      219 GETIMPORT                        R2 K2 [os.clock]
      221 CALL                             R2 0 1
      222 SUB                              R1 R2 R0
      223 SETUPVAL                         R1 11
      224 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 JUMPIFEQ                         R1 R2 ; [+5]
        6 GETUPVAL                         R3 3
        7 GETTABLE                         R2 R3 R1
        8 SETUPVAL                         R2 2
        9 SETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_9:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 JUMPIFEQ                         R0 R1 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["cache"]
        3 GETTABLE                         R3 R4 R0
        4 GETTABLEKS                       R3 R3 K1 ["accessTime"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["cache"]
        9 GETTABLE                         R4 R5 R1
       10 GETTABLEKS                       R4 R4 K1 ["accessTime"]
       12 JUMPIFLT                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_11:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["entries"]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R6 R5 K1 ["wrapper"]
        9 JUMPIFNOT                        R6 ; [+75]
       10 GETTABLEKS                       R7 R6 K2 ["Parent"]
       12 JUMPIFNOT                        R7 ; [+72]
       13 LOADNIL                          R7
       14 NAMECALL                         R8 R6 K3 ["GetChildren"]
       16 CALL                             R8 1 3
       17 FORGPREP                         R8
       18 LOADK                            R15 K4 ["GuiObject"]
       19 NAMECALL                         R13 R12 K5 ["IsA"]
       21 CALL                             R13 2 1
       22 JUMPIFNOT                        R13 ; [+2]
       23 MOVE                             R7 R12
       24 JUMP                             ; [+2]
       25 FORGLOOP                         R8 2 ; [-8]
       27 JUMPIFNOT                        R7 ; [+57]
       28 GETTABLEKS                       R8 R7 K6 ["AbsoluteSize"]
       30 GETTABLEKS                       R8 R8 K7 ["Y"]
       32 JUMPIFEQKN                       R8 K8 [0] ; [+52]
       34 GETUPVAL                         R10 1
       35 GETTABLE                         R9 R10 R4
       36 JUMPIF                           R9 ; [+3]
       37 GETUPVAL                         R9 2
       38 MOVE                             R10 R4
       39 CALL                             R9 1 1
       40 SUB                              R11 R8 R9
       41 FASTCALL1                        MATH_ABS R11 ; [+2]
       42 GETIMPORT                        R10 K11 [math.abs]
       44 CALL                             R10 1 1
       45 LOADN                            R11 2
       46 JUMPIFNOTLT                      R11 R10 ; [+38]
       48 GETUPVAL                         R12 3
       49 JUMPIFNOT                        R12 ; [+5]
       50 GETUPVAL                         R12 4
       51 GETUPVAL                         R13 5
       52 CALL                             R12 1 1
       53 GETTABLE                         R11 R12 R4
       54 JUMP                             ; [+2]
       55 GETUPVAL                         R12 6
       56 GETTABLE                         R11 R12 R4
       57 GETIMPORT                        R12 K13 [warn]
       59 LOADK                            R14 K14 ["[VList] Height mismatch idx=%*: predicted=%*, actual=%*, delta=%*\n  item=%*"]
       60 MOVE                             R16 R4
       61 MOVE                             R17 R9
       62 MOVE                             R18 R8
       63 MOVE                             R19 R10
       64 GETUPVAL                         R20 7
       65 MOVE                             R21 R11
       66 LOADN                            R22 0
       67 CALL                             R20 2 1
       68 NAMECALL                         R14 R14 K15 ["format"]
       70 CALL                             R14 6 1
       71 MOVE                             R13 R14
       72 CALL                             R12 1 0
       73 GETUPVAL                         R12 1
       74 SETTABLE                         R8 R12 R4
       75 GETIMPORT                        R12 K18 [UDim2.new]
       77 LOADN                            R13 1
       78 LOADN                            R14 0
       79 LOADN                            R15 0
       80 MOVE                             R16 R8
       81 CALL                             R12 4 1
       82 SETTABLEKS                       R12 R6 K19 ["Size"]
       84 LOADB                            R0 1
       85 FORGLOOP                         R1 2 ; [-79]
       87 JUMPIFNOT                        R0 ; [+58]
       88 LOADN                            R1 0
       89 LOADN                            R4 1
       90 GETUPVAL                         R2 8
       91 LOADN                            R3 1
       92 FORNPREP                         R2
       93 GETUPVAL                         R5 9
       94 SETTABLE                         R1 R5 R4
       95 GETUPVAL                         R6 1
       96 GETTABLE                         R5 R6 R4
       97 JUMPIF                           R5 ; [+3]
       98 GETUPVAL                         R5 2
       99 MOVE                             R6 R4
      100 CALL                             R5 1 1
      101 ADD                              R1 R1 R5
      102 GETUPVAL                         R5 8
      103 JUMPIFNOTLT                      R4 R5 ; [+3]
      105 GETUPVAL                         R5 10
      106 ADD                              R1 R1 R5
      107 FORNLOOP                         R2
      108 GETUPVAL                         R4 11
      109 ADD                              R3 R1 R4
      110 GETUPVAL                         R4 12
      111 ADD                              R2 R3 R4
      112 GETUPVAL                         R3 13
      113 GETIMPORT                        R4 K21 [UDim2.fromOffset]
      115 LOADN                            R5 0
      116 MOVE                             R6 R2
      117 CALL                             R4 2 1
      118 SETTABLEKS                       R4 R3 K22 ["CanvasSize"]
      120 GETUPVAL                         R3 0
      121 GETTABLEKS                       R3 R3 K0 ["entries"]
      123 LOADNIL                          R4
      124 LOADNIL                          R5
      125 FORGPREP                         R3
      126 GETTABLEKS                       R8 R7 K1 ["wrapper"]
      128 JUMPIFNOT                        R8 ; [+15]
      129 GETTABLEKS                       R8 R7 K1 ["wrapper"]
      131 GETTABLEKS                       R8 R8 K2 ["Parent"]
      133 JUMPIFNOT                        R8 ; [+10]
      134 GETTABLEKS                       R8 R7 K1 ["wrapper"]
      136 GETIMPORT                        R9 K21 [UDim2.fromOffset]
      138 LOADN                            R10 0
      139 GETUPVAL                         R12 9
      140 GETTABLE                         R11 R12 R6
      141 CALL                             R9 2 1
      142 SETTABLEKS                       R9 R8 K23 ["Position"]
      144 FORGLOOP                         R3 2 ; [-19]
      146 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R4 R1 K0 ["peek"]
        2 GETTABLEKS                       R5 R2 K1 ["initialized"]
        4 JUMPIF                           R5 ; [+245]
        5 LOADB                            R5 1
        6 SETTABLEKS                       R5 R2 K1 ["initialized"]
        8 NEWTABLE                         R5 0 0
       10 SETTABLEKS                       R5 R2 K2 ["entries"]
       12 NEWTABLE                         R5 0 0
       14 SETTABLEKS                       R5 R2 K3 ["pool"]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R2 K4 ["cache"]
       20 MOVE                             R5 R4
       21 GETTABLEKS                       R6 R0 K5 ["strategy"]
       23 CALL                             R5 1 1
       24 SETTABLEKS                       R5 R2 K5 ["strategy"]
       26 MOVE                             R5 R4
       27 GETTABLEKS                       R6 R0 K6 ["useParentScroll"]
       29 CALL                             R5 1 1
       30 NOT                              R6 R5
       31 SETTABLEKS                       R6 R2 K7 ["ownsScrollFrame"]
       33 LOADNIL                          R6
       34 JUMPIFNOT                        R5 ; [+3]
       35 GETTABLEKS                       R6 R1 K8 ["host"]
       37 JUMP                             ; [+67]
       38 GETIMPORT                        R7 K11 [Instance.new]
       40 LOADK                            R8 K12 ["ScrollingFrame"]
       41 CALL                             R7 1 1
       42 MOVE                             R6 R7
       43 LOADK                            R7 K13 ["VirtualListScroll"]
       44 SETTABLEKS                       R7 R6 K14 ["Name"]
       46 GETIMPORT                        R7 K16 [UDim2.new]
       48 LOADN                            R8 1
       49 LOADN                            R9 0
       50 LOADN                            R10 1
       51 LOADN                            R11 0
       52 CALL                             R7 4 1
       53 SETTABLEKS                       R7 R6 K17 ["Size"]
       55 GETIMPORT                        R7 K21 [Enum.ScrollingDirection.Y]
       57 SETTABLEKS                       R7 R6 K19 ["ScrollingDirection"]
       59 GETIMPORT                        R7 K24 [Enum.AutomaticSize.None]
       61 SETTABLEKS                       R7 R6 K25 ["AutomaticCanvasSize"]
       63 GETIMPORT                        R7 K16 [UDim2.new]
       65 LOADN                            R8 0
       66 LOADN                            R9 0
       67 LOADN                            R10 0
       68 LOADN                            R11 0
       69 CALL                             R7 4 1
       70 SETTABLEKS                       R7 R6 K26 ["CanvasSize"]
       72 LOADN                            R7 1
       73 SETTABLEKS                       R7 R6 K27 ["BackgroundTransparency"]
       75 LOADN                            R7 0
       76 SETTABLEKS                       R7 R6 K28 ["BorderSizePixel"]
       78 LOADK                            R7 K29 [0.5]
       79 SETTABLEKS                       R7 R6 K30 ["ScrollBarImageTransparency"]
       81 GETTABLEKS                       R7 R1 K8 ["host"]
       83 SETTABLEKS                       R7 R6 K31 ["Parent"]
       85 MOVE                             R7 R4
       86 GETTABLEKS                       R8 R0 K32 ["tags"]
       88 CALL                             R7 1 1
       89 JUMPIFNOT                        R7 ; [+15]
       90 JUMPIFEQKS                       R7 K33 [""] ; [+14]
       92 LOADK                            R10 K34 [" "]
       93 NAMECALL                         R8 R7 K35 ["split"]
       95 CALL                             R8 2 3
       96 FORGPREP                         R8
       97 JUMPIFEQKS                       R12 K33 [""] ; [+5]
       99 MOVE                             R15 R12
      100 NAMECALL                         R13 R6 K36 ["AddTag"]
      102 CALL                             R13 2 0
      103 FORGLOOP                         R8 2 ; [-7]
      105 SETTABLEKS                       R6 R2 K37 ["scrollFrame"]
      107 GETUPVAL                         R7 0
      108 GETTABLEKS                       R7 R7 K38 ["createSignal"]
      110 LOADN                            R8 0
      111 LOADNIL                          R9
      112 LOADK                            R10 K39 ["vlist-scrollY"]
      113 CALL                             R7 3 2
      114 GETUPVAL                         R9 0
      115 GETTABLEKS                       R9 R9 K38 ["createSignal"]
      117 GETTABLEKS                       R10 R6 K40 ["AbsoluteSize"]
      119 GETTABLEKS                       R10 R10 K20 ["Y"]
      121 LOADNIL                          R11
      122 LOADK                            R12 K41 ["vlist-viewportH"]
      123 CALL                             R9 3 2
      124 SETTABLEKS                       R7 R2 K42 ["getScrollY"]
      126 SETTABLEKS                       R9 R2 K43 ["getViewportH"]
      128 LOADK                            R13 K44 ["CanvasPosition"]
      129 NAMECALL                         R11 R6 K45 ["GetPropertyChangedSignal"]
      131 CALL                             R11 2 1
      132 NEWCLOSURE                       R13 P0
      133 CAPTURE                          UPVAL U1
      134 CAPTURE                          VAL R2
      135 CAPTURE                          REF R6
      136 CAPTURE                          VAL R8
      137 NAMECALL                         R11 R11 K46 ["Connect"]
      139 CALL                             R11 2 1
      140 LOADK                            R14 K40 ["AbsoluteSize"]
      141 NAMECALL                         R12 R6 K45 ["GetPropertyChangedSignal"]
      143 CALL                             R12 2 1
      144 NEWCLOSURE                       R14 P1
      145 CAPTURE                          VAL R10
      146 CAPTURE                          REF R6
      147 NAMECALL                         R12 R12 K46 ["Connect"]
      149 CALL                             R12 2 1
      150 JUMPIF                           R5 ; [+43]
      151 GETTABLEKS                       R13 R0 K47 ["Content"]
      153 MOVE                             R14 R3
      154 CALL                             R13 1 1
      155 JUMPIFNOT                        R13 ; [+38]
      156 GETTABLEKS                       R14 R13 K48 ["children"]
      158 JUMPIFNOT                        R14 ; [+35]
      159 GETTABLEKS                       R15 R13 K48 ["children"]
      161 LENGTH                           R14 R15
      162 LOADN                            R15 0
      163 JUMPIFNOTLT                      R15 R14 ; [+30]
      165 DUPTABLE                         R14 K53 [{"type", "templateAst", "templateId", "children", "params"}]
      166 LOADK                            R15 K54 ["Ref"]
      167 SETTABLEKS                       R15 R14 K49 ["type"]
      169 SETTABLEKS                       R13 R14 K50 ["templateAst"]
      171 LOADK                            R15 K55 ["/inner/content"]
      172 SETTABLEKS                       R15 R14 K51 ["templateId"]
      174 NEWTABLE                         R15 0 0
      176 SETTABLEKS                       R15 R14 K48 ["children"]
      178 NEWTABLE                         R15 0 0
      180 SETTABLEKS                       R15 R14 K52 ["params"]
      182 GETTABLEKS                       R15 R1 K56 ["createChild"]
      184 MOVE                             R16 R14
      185 LOADN                            R17 0
      186 MOVE                             R18 R6
      187 CALL                             R15 3 1
      188 SETTABLEKS                       R15 R2 K57 ["contentElement"]
      190 GETTABLEKS                       R16 R1 K58 ["publish"]
      192 MOVE                             R17 R15
      193 CALL                             R16 1 0
      194 GETTABLEKS                       R13 R1 K59 ["createEffect"]
      196 NEWCLOSURE                       R14 P2
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R1
      201 LOADK                            R15 K60 ["vlist-disposal"]
      202 CALL                             R13 2 0
      203 GETUPVAL                         R13 1
      204 GETTABLEKS                       R13 R13 K61 ["PROFILE_VIRTUAL_LIST"]
      206 JUMPIFNOT                        R13 ; [+42]
      207 LOADB                            R13 0
      208 SETTABLEKS                       R13 R2 K62 ["_effectRanSinceRender"]
      210 LOADN                            R13 0
      211 SETTABLEKS                       R13 R2 K63 ["_profileRunCount"]
      213 GETIMPORT                        R13 K66 [os.clock]
      215 CALL                             R13 0 1
      216 SETTABLEKS                       R13 R2 K67 ["_profileWindowStart"]
      218 LOADN                            R13 0
      219 GETIMPORT                        R14 K66 [os.clock]
      221 CALL                             R14 0 1
      222 LOADK                            R15 K68 [∞]
      223 LOADN                            R16 0
      224 GETIMPORT                        R17 K66 [os.clock]
      226 CALL                             R17 0 1
      227 GETIMPORT                        R18 K70 [game]
      229 LOADK                            R20 K71 ["RunService"]
      230 NAMECALL                         R18 R18 K72 ["GetService"]
      232 CALL                             R18 2 1
      233 GETTABLEKS                       R19 R18 K73 ["RenderStepped"]
      235 NEWCLOSURE                       R21 P3
      236 CAPTURE                          REF R17
      237 CAPTURE                          REF R13
      238 CAPTURE                          REF R15
      239 CAPTURE                          REF R16
      240 CAPTURE                          REF R6
      241 CAPTURE                          VAL R2
      242 CAPTURE                          REF R14
      243 NAMECALL                         R19 R19 K46 ["Connect"]
      245 CALL                             R19 2 1
      246 SETTABLEKS                       R19 R2 K74 ["_renderConn"]
      248 CLOSEUPVALS                      R13
      249 CLOSEUPVALS                      R6
      250 GETTABLEKS                       R5 R2 K37 ["scrollFrame"]
      252 GETTABLEKS                       R6 R2 K42 ["getScrollY"]
      254 GETTABLEKS                       R7 R2 K43 ["getViewportH"]
      256 GETTABLEKS                       R8 R2 K5 ["strategy"]
      258 MOVE                             R9 R4
      259 GETTABLEKS                       R10 R0 K75 ["itemSize"]
      261 CALL                             R9 1 1
      262 MOVE                             R10 R4
      263 GETTABLEKS                       R11 R0 K76 ["overscan"]
      265 CALL                             R10 1 1
      266 MOVE                             R11 R4
      267 GETTABLEKS                       R12 R0 K77 ["cacheSize"]
      269 CALL                             R11 1 1
      270 MOVE                             R12 R4
      271 GETTABLEKS                       R13 R0 K78 ["spacing"]
      273 CALL                             R12 1 1
      274 SETTABLEKS                       R9 R2 K79 ["_lastItemSize"]
      276 GETUPVAL                         R13 1
      277 GETTABLEKS                       R13 R13 K61 ["PROFILE_VIRTUAL_LIST"]
      279 LOADNIL                          R14
      280 LOADN                            R15 0
      281 LOADN                            R16 0
      282 LOADN                            R17 0
      283 LOADN                            R18 0
      284 LOADN                            R19 0
      285 LOADN                            R20 0
      286 JUMPIFNOT                        R13 ; [+7]
      287 GETIMPORT                        R21 K66 [os.clock]
      289 CALL                             R21 0 1
      290 MOVE                             R14 R21
      291 LOADB                            R21 1
      292 SETTABLEKS                       R21 R2 K62 ["_effectRanSinceRender"]
      294 GETUPVAL                         R21 1
      295 GETTABLEKS                       R21 R21 K80 ["VLIST_OVERSCAN_OVERRIDE"]
      297 JUMPIFNOT                        R21 ; [+3]
      298 GETUPVAL                         R21 1
      299 GETTABLEKS                       R10 R21 K80 ["VLIST_OVERSCAN_OVERRIDE"]
      301 GETTABLEKS                       R21 R0 K81 ["Each"]
      303 MOVE                             R22 R3
      304 CALL                             R21 1 1
      305 GETTABLEKS                       R22 R0 K23 ["None"]
      307 MOVE                             R23 R3
      308 CALL                             R22 1 1
      309 GETTABLEKS                       R23 R0 K82 ["items"]
      311 GETTABLEKS                       R24 R1 K83 ["isStore"]
      313 MOVE                             R25 R23
      314 CALL                             R24 1 1
      315 LOADNIL                          R25
      316 JUMPIFNOT                        R24 ; [+23]
      317 MOVE                             R26 R4
      318 MOVE                             R27 R23
      319 CALL                             R26 1 1
      320 MOVE                             R25 R26
      321 GETTABLEKS                       R26 R2 K84 ["getLength"]
      323 JUMPIF                           R26 ; [+3]
      324 GETTABLEKS                       R27 R1 K85 ["length"]
      326 GETTABLE                         R26 R23 R27
      327 SETTABLEKS                       R26 R2 K84 ["getLength"]
      329 GETTABLEKS                       R26 R2 K84 ["getLength"]
      331 FASTCALL1                        ASSERT R26 ; [+3]
      332 MOVE                             R28 R26
      333 GETIMPORT                        R27 K87 [assert]
      335 CALL                             R27 1 0
      336 MOVE                             R27 R26
      337 MOVE                             R28 R3
      338 CALL                             R27 1 0
      339 JUMP                             ; [+4]
      340 MOVE                             R26 R23
      341 MOVE                             R27 R3
      342 CALL                             R26 1 1
      343 MOVE                             R25 R26
      344 LENGTH                           R26 R25
      345 MOVE                             R27 R4
      346 GETTABLEKS                       R28 R0 K88 ["getHeight"]
      348 CALL                             R27 1 1
      349 JUMPIFNOT                        R27 ; [+2]
      350 LOADB                            R28 1
      351 JUMP                             ; [+1]
      352 LOADB                            R28 0
      353 GETTABLEKS                       R29 R0 K89 ["heightVersion"]
      355 MOVE                             R30 R3
      356 CALL                             R29 1 1
      357 GETTABLEKS                       R30 R2 K90 ["_lastHeightVersion"]
      359 JUMPIFEQ                         R29 R30 ; [+11]
      361 SETTABLEKS                       R29 R2 K90 ["_lastHeightVersion"]
      363 GETTABLEKS                       R30 R2 K91 ["heightCorrections"]
      365 JUMPIFNOT                        R30 ; [+5]
      366 GETIMPORT                        R30 K94 [table.clear]
      368 GETTABLEKS                       R31 R2 K91 ["heightCorrections"]
      370 CALL                             R30 1 0
      371 GETTABLEKS                       R30 R2 K95 ["lastKnownLength"]
      373 JUMPIFEQ                         R26 R30 ; [+14]
      375 LOADB                            R30 0
      376 SETTABLEKS                       R30 R2 K96 ["loadRowsExhausted"]
      378 SETTABLEKS                       R26 R2 K95 ["lastKnownLength"]
      380 GETTABLEKS                       R30 R2 K91 ["heightCorrections"]
      382 JUMPIFNOT                        R30 ; [+5]
      383 GETIMPORT                        R30 K94 [table.clear]
      385 GETTABLEKS                       R31 R2 K91 ["heightCorrections"]
      387 CALL                             R30 1 0
      388 LOADN                            R30 0
      389 LOADN                            R31 0
      390 LOADK                            R34 K97 ["UIPadding"]
      391 NAMECALL                         R32 R5 K98 ["FindFirstChildWhichIsA"]
      393 CALL                             R32 2 1
      394 JUMPIFNOT                        R32 ; [+8]
      395 GETTABLEKS                       R33 R32 K99 ["PaddingTop"]
      397 GETTABLEKS                       R30 R33 K100 ["Offset"]
      399 GETTABLEKS                       R33 R32 K101 ["PaddingBottom"]
      401 GETTABLEKS                       R31 R33 K100 ["Offset"]
      403 MOVE                             R33 R6
      404 MOVE                             R34 R3
      405 CALL                             R33 1 1
      406 MOVE                             R34 R7
      407 MOVE                             R35 R3
      408 CALL                             R34 1 1
      409 LOADNIL                          R35
      410 LOADNIL                          R36
      411 LOADNIL                          R37
      412 SUB                              R38 R33 R30
      413 ADD                              R39 R38 R34
      414 GETTABLEKS                       R40 R2 K102 ["rowOffsets"]
      416 JUMPIF                           R40 ; [+4]
      417 NEWTABLE                         R40 0 0
      419 SETTABLEKS                       R40 R2 K102 ["rowOffsets"]
      421 GETTABLEKS                       R41 R2 K91 ["heightCorrections"]
      423 JUMPIF                           R41 ; [+4]
      424 NEWTABLE                         R41 0 0
      426 SETTABLEKS                       R41 R2 K91 ["heightCorrections"]
      428 JUMPIFNOT                        R28 ; [+46]
      429 LOADN                            R42 0
      430 LOADB                            R43 0
      431 LOADN                            R35 1
      432 LOADN                            R36 0
      433 LOADN                            R46 1
      434 MOVE                             R44 R26
      435 LOADN                            R45 1
      436 FORNPREP                         R44
      437 SETTABLE                         R42 R40 R46
      438 GETTABLE                         R47 R41 R46
      439 JUMPIF                           R47 ; [+3]
      440 MOVE                             R47 R27
      441 MOVE                             R48 R46
      442 CALL                             R47 1 1
      443 JUMPIF                           R43 ; [+5]
      444 ADD                              R48 R42 R47
      445 JUMPIFNOTLT                      R38 R48 ; [+3]
      447 MOVE                             R35 R46
      448 LOADB                            R43 1
      449 JUMPIFNOTLT                      R42 R39 ; [+2]
      451 MOVE                             R36 R46
      452 ADD                              R42 R42 R47
      453 JUMPIFNOTLT                      R46 R26 ; [+2]
      455 ADD                              R42 R42 R12
      456 FORNLOOP                         R44
      457 MOVE                             R37 R42
      458 LOADN                            R45 1
      459 SUB                              R46 R35 R10
      460 FASTCALL2                        MATH_MAX R45 R46 ; [+3]
      462 GETIMPORT                        R44 K105 [math.max]
      464 CALL                             R44 2 1
      465 MOVE                             R35 R44
      466 ADD                              R46 R36 R10
      467 FASTCALL2                        MATH_MIN R26 R46 ; [+4]
      469 MOVE                             R45 R26
      470 GETIMPORT                        R44 K107 [math.min]
      472 CALL                             R44 2 1
      473 MOVE                             R36 R44
      474 JUMP                             ; [+37]
      475 ADD                              R42 R9 R12
      476 LOADN                            R43 0
      477 JUMPIFNOTLT                      R43 R26 ; [+6]
      479 MUL                              R43 R26 R9
      480 SUBK                             R45 R26 K108 [1]
      481 MUL                              R44 R45 R12
      482 ADD                              R37 R43 R44
      483 JUMP                             ; [+1]
      484 LOADN                            R37 0
      485 LOADN                            R44 1
      486 DIV                              R48 R38 R42
      487 FASTCALL1                        MATH_FLOOR R48 ; [+2]
      488 GETIMPORT                        R47 K110 [math.floor]
      490 CALL                             R47 1 1
      491 ADDK                             R46 R47 K108 [1]
      492 SUB                              R45 R46 R10
      493 FASTCALL2                        MATH_MAX R44 R45 ; [+3]
      495 GETIMPORT                        R43 K105 [math.max]
      497 CALL                             R43 2 1
      498 MOVE                             R35 R43
      499 DIV                              R47 R39 R42
      500 FASTCALL1                        MATH_CEIL R47 ; [+2]
      501 GETIMPORT                        R46 K112 [math.ceil]
      503 CALL                             R46 1 1
      504 ADD                              R45 R46 R10
      505 FASTCALL2                        MATH_MIN R26 R45 ; [+4]
      507 MOVE                             R44 R26
      508 GETIMPORT                        R43 K107 [math.min]
      510 CALL                             R43 2 1
      511 MOVE                             R36 R43
      512 ADD                              R43 R37 R30
      513 ADD                              R42 R43 R31
      514 GETTABLEKS                       R43 R2 K7 ["ownsScrollFrame"]
      516 JUMPIF                           R43 ; [+1]
      517 JUMPIFNOT                        R28 ; [+7]
      518 GETIMPORT                        R43 K114 [UDim2.fromOffset]
      520 LOADN                            R44 0
      521 MOVE                             R45 R42
      522 CALL                             R43 2 1
      523 SETTABLEKS                       R43 R5 K26 ["CanvasSize"]
      525 MOVE                             R43 R4
      526 GETTABLEKS                       R44 R0 K115 ["loadRows"]
      528 CALL                             R43 1 1
      529 JUMPIFNOT                        R43 ; [+21]
      530 GETTABLEKS                       R44 R2 K96 ["loadRowsExhausted"]
      532 JUMPIF                           R44 ; [+18]
      533 JUMPIFEQKN                       R26 K116 [0] ; [+2]
      535 LOADB                            R44 0 +1
      536 LOADB                            R44 1
      537 JUMPIF                           R44 ; [+6]
      538 ADD                              R45 R33 R34
      539 SUB                              R46 R42 R34
      540 JUMPIFLE                         R46 R45 ; [+2]
      542 LOADB                            R44 0 +1
      543 LOADB                            R44 1
      544 JUMPIFNOT                        R44 ; [+6]
      545 MOVE                             R45 R43
      546 CALL                             R45 0 1
      547 JUMPIF                           R45 ; [+3]
      548 LOADB                            R46 1
      549 SETTABLEKS                       R46 R2 K96 ["loadRowsExhausted"]
      551 JUMPIFNOT                        R22 ; [+55]
      552 GETTABLEKS                       R44 R22 K48 ["children"]
      554 JUMPIFNOT                        R44 ; [+52]
      555 JUMPIFNOTEQKN                    R26 K116 [0] ; [+35]
      557 GETTABLEKS                       R44 R2 K117 ["noneElement"]
      559 JUMPIF                           R44 ; [+47]
      560 DUPTABLE                         R44 K53 [{"type", "templateAst", "templateId", "children", "params"}]
      561 LOADK                            R45 K54 ["Ref"]
      562 SETTABLEKS                       R45 R44 K49 ["type"]
      564 SETTABLEKS                       R22 R44 K50 ["templateAst"]
      566 LOADK                            R45 K118 ["/inner/none"]
      567 SETTABLEKS                       R45 R44 K51 ["templateId"]
      569 NEWTABLE                         R45 0 0
      571 SETTABLEKS                       R45 R44 K48 ["children"]
      573 NEWTABLE                         R45 0 0
      575 SETTABLEKS                       R45 R44 K52 ["params"]
      577 GETTABLEKS                       R45 R1 K56 ["createChild"]
      579 MOVE                             R46 R44
      580 GETTABLEKS                       R47 R1 K119 ["childOrder"]
      582 MOVE                             R48 R5
      583 CALL                             R45 3 1
      584 SETTABLEKS                       R45 R2 K117 ["noneElement"]
      586 GETTABLEKS                       R46 R1 K58 ["publish"]
      588 MOVE                             R47 R45
      589 CALL                             R46 1 0
      590 JUMP                             ; [+16]
      591 GETTABLEKS                       R44 R2 K117 ["noneElement"]
      593 JUMPIFNOT                        R44 ; [+13]
      594 GETTABLEKS                       R44 R2 K117 ["noneElement"]
      596 LOADB                            R45 0
      597 SETTABLEKS                       R45 R44 K120 ["alive"]
      599 GETTABLEKS                       R44 R1 K58 ["publish"]
      601 GETTABLEKS                       R45 R2 K117 ["noneElement"]
      603 CALL                             R44 1 0
      604 LOADNIL                          R44
      605 SETTABLEKS                       R44 R2 K117 ["noneElement"]
      607 JUMPIFNOT                        R21 ; [+3]
      608 GETTABLEKS                       R44 R21 K48 ["children"]
      610 JUMPIF                           R44 ; [+2]
      611 CLOSEUPVALS                      R15
      612 RETURN                           R0 0
      613 GETTABLEKS                       R45 R21 K121 ["defaultParams"]
      615 GETTABLEN                        R44 R45 1
      616 JUMPIF                           R44 ; [+4]
      617 GETTABLEKS                       R44 R21 K121 ["defaultParams"]
      619 GETTABLEKS                       R44 R44 K122 ["key"]
      621 GETTABLEKS                       R46 R21 K121 ["defaultParams"]
      623 GETTABLEN                        R45 R46 2
      624 JUMPIF                           R45 ; [+4]
      625 GETTABLEKS                       R45 R21 K121 ["defaultParams"]
      627 GETTABLEKS                       R45 R45 K123 ["value"]
      629 LOADB                            R46 0
      630 JUMPIFEQKNIL                     R45 ; [+8]
      632 LOADB                            R46 0
      633 JUMPIFEQKS                       R45 K124 ["_"] ; [+5]
      635 JUMPIFNOTEQKS                    R45 K33 [""] ; [+2]
      637 LOADB                            R46 0 +1
      638 LOADB                            R46 1
      639 LOADB                            R47 0
      640 JUMPIFEQKNIL                     R44 ; [+8]
      642 LOADB                            R47 0
      643 JUMPIFEQKS                       R44 K124 ["_"] ; [+5]
      645 JUMPIFNOTEQKS                    R44 K33 [""] ; [+2]
      647 LOADB                            R47 0 +1
      648 LOADB                            R47 1
      649 JUMPIFNOTEQKS                    R8 K125 ["none"] ; [+2]
      651 LOADB                            R48 0 +1
      652 LOADB                            R48 1
      653 NEWTABLE                         R49 0 0
      655 MOVE                             R52 R35
      656 MOVE                             R50 R36
      657 LOADN                            R51 1
      658 FORNPREP                         R50
      659 LOADB                            R53 1
      660 SETTABLE                         R53 R49 R52
      661 FORNLOOP                         R50
      662 GETTABLEKS                       R50 R2 K126 ["_prevFirst"]
      664 GETTABLEKS                       R51 R2 K127 ["_prevLast"]
      666 SETTABLEKS                       R35 R2 K126 ["_prevFirst"]
      668 SETTABLEKS                       R36 R2 K127 ["_prevLast"]
      670 LOADB                            R52 0
      671 JUMPIFEQKNIL                     R50 ; [+14]
      673 LOADB                            R52 0
      674 JUMPIFEQKNIL                     R51 ; [+11]
      676 LOADB                            R52 0
      677 JUMPIFEQKS                       R8 K125 ["none"] ; [+8]
      679 LOADB                            R52 0
      680 JUMPIFNOTLE                      R35 R51 ; [+5]
      682 JUMPIFLE                         R50 R36 ; [+2]
      684 LOADB                            R52 0 +1
      685 LOADB                            R52 1
      686 NEWCLOSURE                       R53 P4
      687 CAPTURE                          VAL R13
      688 CAPTURE                          VAL R52
      689 CAPTURE                          VAL R50
      690 CAPTURE                          VAL R51
      691 CAPTURE                          REF R35
      692 CAPTURE                          VAL R2
      693 CAPTURE                          REF R15
      694 CAPTURE                          VAL R8
      695 CAPTURE                          REF R36
      696 CAPTURE                          VAL R49
      697 CAPTURE                          VAL R1
      698 CAPTURE                          REF R19
      699 GETUPVAL                         R54 1
      700 GETTABLEKS                       R54 R54 K128 ["VLIST_FILL_BEFORE_EVICT"]
      702 JUMPIF                           R54 ; [+2]
      703 MOVE                             R54 R53
      704 CALL                             R54 0 0
      705 GETUPVAL                         R54 1
      706 GETTABLEKS                       R54 R54 K129 ["VERBOSE_VIRTUAL_LIST"]
      708 JUMPIFNOT                        R13 ; [+4]
      709 GETIMPORT                        R55 K66 [os.clock]
      711 CALL                             R55 0 1
      712 JUMP                             ; [+1]
      713 LOADN                            R55 0
      714 MOVE                             R58 R35
      715 MOVE                             R56 R36
      716 LOADN                            R57 1
      717 FORNPREP                         R56
      718 GETTABLEKS                       R60 R2 K2 ["entries"]
      720 GETTABLE                         R59 R60 R58
      721 JUMPIFNOT                        R59 ; [+109]
      722 GETTABLEKS                       R60 R2 K2 ["entries"]
      724 GETTABLE                         R59 R60 R58
      725 JUMPIFNOT                        R48 ; [+16]
      726 GETTABLEKS                       R60 R59 K130 ["setItem"]
      728 JUMPIFNOT                        R60 ; [+5]
      729 JUMPIF                           R24 ; [+4]
      730 GETTABLEKS                       R60 R59 K130 ["setItem"]
      732 GETTABLE                         R61 R25 R58
      733 CALL                             R60 1 0
      734 GETTABLEKS                       R60 R59 K131 ["setIndex"]
      736 JUMPIFNOT                        R60 ; [+61]
      737 GETTABLEKS                       R60 R59 K131 ["setIndex"]
      739 MOVE                             R61 R58
      740 CALL                             R60 1 0
      741 JUMP                             ; [+56]
      742 JUMPIFNOT                        R46 ; [+26]
      743 JUMPIF                           R24 ; [+25]
      744 GETTABLEKS                       R60 R59 K132 ["_itemCursor"]
      746 GETTABLE                         R61 R25 R58
      747 JUMPIFEQ                         R60 R61 ; [+21]
      749 GETTABLEKS                       R60 R59 K133 ["element"]
      751 LOADB                            R61 0
      752 SETTABLEKS                       R61 R60 K120 ["alive"]
      754 GETTABLEKS                       R60 R1 K58 ["publish"]
      756 GETTABLEKS                       R61 R59 K133 ["element"]
      758 CALL                             R60 1 0
      759 GETTABLEKS                       R60 R59 K134 ["wrapper"]
      761 NAMECALL                         R60 R60 K135 ["Destroy"]
      763 CALL                             R60 1 0
      764 GETTABLEKS                       R60 R2 K2 ["entries"]
      766 LOADNIL                          R61
      767 SETTABLE                         R61 R60 R58
      768 JUMP                             ; [+29]
      769 JUMPIFNOT                        R28 ; [+439]
      770 GETTABLEKS                       R60 R59 K134 ["wrapper"]
      772 JUMPIFNOT                        R60 ; [+436]
      773 GETTABLEKS                       R60 R59 K134 ["wrapper"]
      775 GETIMPORT                        R61 K114 [UDim2.fromOffset]
      777 LOADN                            R62 0
      778 GETTABLE                         R63 R40 R58
      779 CALL                             R61 2 1
      780 SETTABLEKS                       R61 R60 K136 ["Position"]
      782 GETTABLEKS                       R60 R59 K134 ["wrapper"]
      784 GETIMPORT                        R61 K16 [UDim2.new]
      786 LOADN                            R62 1
      787 LOADN                            R63 0
      788 LOADN                            R64 0
      789 GETTABLE                         R65 R41 R58
      790 JUMPIF                           R65 ; [+3]
      791 MOVE                             R65 R27
      792 MOVE                             R66 R58
      793 CALL                             R65 1 1
      794 CALL                             R61 4 1
      795 SETTABLEKS                       R61 R60 K17 ["Size"]
      797 JUMP                             ; [+411]
      798 GETTABLEKS                       R61 R2 K2 ["entries"]
      800 GETTABLE                         R60 R61 R58
      801 JUMPIFNOT                        R60 ; [+29]
      802 JUMPIFNOT                        R28 ; [+406]
      803 GETTABLEKS                       R60 R59 K134 ["wrapper"]
      805 JUMPIFNOT                        R60 ; [+403]
      806 GETTABLEKS                       R60 R59 K134 ["wrapper"]
      808 GETIMPORT                        R61 K114 [UDim2.fromOffset]
      810 LOADN                            R62 0
      811 GETTABLE                         R63 R40 R58
      812 CALL                             R61 2 1
      813 SETTABLEKS                       R61 R60 K136 ["Position"]
      815 GETTABLEKS                       R60 R59 K134 ["wrapper"]
      817 GETIMPORT                        R61 K16 [UDim2.new]
      819 LOADN                            R62 1
      820 LOADN                            R63 0
      821 LOADN                            R64 0
      822 GETTABLE                         R65 R41 R58
      823 JUMPIF                           R65 ; [+3]
      824 MOVE                             R65 R27
      825 MOVE                             R66 R58
      826 CALL                             R65 1 1
      827 CALL                             R61 4 1
      828 SETTABLEKS                       R61 R60 K17 ["Size"]
      830 JUMP                             ; [+378]
      831 JUMPIFNOTEQKS                    R8 K4 ["cache"] ; [+75]
      833 GETTABLEKS                       R60 R2 K4 ["cache"]
      835 GETTABLE                         R59 R60 R58
      836 JUMPIFNOT                        R59 ; [+70]
      837 GETTABLEKS                       R60 R2 K4 ["cache"]
      839 LOADNIL                          R61
      840 SETTABLE                         R61 R60 R58
      841 GETTABLEKS                       R60 R59 K134 ["wrapper"]
      843 SETTABLEKS                       R5 R60 K31 ["Parent"]
      845 GETTABLEKS                       R60 R59 K134 ["wrapper"]
      847 GETIMPORT                        R61 K114 [UDim2.fromOffset]
      849 LOADN                            R62 0
      850 JUMPIFNOT                        R28 ; [+2]
      851 GETTABLE                         R63 R40 R58
      852 JUMP                             ; [+3]
      853 SUBK                             R64 R58 K108 [1]
      854 ADD                              R65 R9 R12
      855 MUL                              R63 R64 R65
      856 CALL                             R61 2 1
      857 SETTABLEKS                       R61 R60 K136 ["Position"]
      859 JUMPIFNOT                        R28 ; [+15]
      860 GETTABLEKS                       R60 R59 K134 ["wrapper"]
      862 GETIMPORT                        R61 K16 [UDim2.new]
      864 LOADN                            R62 1
      865 LOADN                            R63 0
      866 LOADN                            R64 0
      867 GETTABLE                         R65 R41 R58
      868 JUMPIF                           R65 ; [+3]
      869 MOVE                             R65 R27
      870 MOVE                             R66 R58
      871 CALL                             R65 1 1
      872 CALL                             R61 4 1
      873 SETTABLEKS                       R61 R60 K17 ["Size"]
      875 SETTABLEKS                       R58 R59 K137 ["index"]
      877 GETTABLEKS                       R60 R59 K130 ["setItem"]
      879 JUMPIFNOT                        R60 ; [+5]
      880 JUMPIF                           R24 ; [+4]
      881 GETTABLEKS                       R60 R59 K130 ["setItem"]
      883 GETTABLE                         R61 R25 R58
      884 CALL                             R60 1 0
      885 GETTABLEKS                       R60 R59 K131 ["setIndex"]
      887 JUMPIFNOT                        R60 ; [+4]
      888 GETTABLEKS                       R60 R59 K131 ["setIndex"]
      890 MOVE                             R61 R58
      891 CALL                             R60 1 0
      892 GETTABLEKS                       R60 R2 K2 ["entries"]
      894 SETTABLE                         R59 R60 R58
      895 ADDK                             R16 R16 K108 [1]
      896 JUMPIFNOT                        R54 ; [+312]
      897 GETIMPORT                        R60 K139 [print]
      899 LOADK                            R62 K140 ["[VList] cache-hit idx=%*"]
      900 MOVE                             R64 R58
      901 NAMECALL                         R62 R62 K141 ["format"]
      903 CALL                             R62 2 1
      904 MOVE                             R61 R62
      905 CALL                             R60 1 0
      906 JUMP                             ; [+302]
      907 JUMPIFNOT                        R48 ; [+114]
      908 GETIMPORT                        R59 K143 [table.remove]
      910 GETTABLEKS                       R60 R2 K3 ["pool"]
      912 CALL                             R59 1 1
      913 JUMPIFNOT                        R59 ; [+108]
      914 GETTABLEKS                       R60 R59 K137 ["index"]
      916 SETTABLEKS                       R58 R59 K137 ["index"]
      918 GETTABLEKS                       R61 R59 K134 ["wrapper"]
      920 SETTABLEKS                       R5 R61 K31 ["Parent"]
      922 GETTABLEKS                       R61 R59 K134 ["wrapper"]
      924 GETIMPORT                        R62 K114 [UDim2.fromOffset]
      926 LOADN                            R63 0
      927 JUMPIFNOT                        R28 ; [+2]
      928 GETTABLE                         R64 R40 R58
      929 JUMP                             ; [+3]
      930 SUBK                             R65 R58 K108 [1]
      931 ADD                              R66 R9 R12
      932 MUL                              R64 R65 R66
      933 CALL                             R62 2 1
      934 SETTABLEKS                       R62 R61 K136 ["Position"]
      936 JUMPIFNOT                        R28 ; [+15]
      937 GETTABLEKS                       R61 R59 K134 ["wrapper"]
      939 GETIMPORT                        R62 K16 [UDim2.new]
      941 LOADN                            R63 1
      942 LOADN                            R64 0
      943 LOADN                            R65 0
      944 GETTABLE                         R66 R41 R58
      945 JUMPIF                           R66 ; [+3]
      946 MOVE                             R66 R27
      947 MOVE                             R67 R58
      948 CALL                             R66 1 1
      949 CALL                             R62 4 1
      950 SETTABLEKS                       R62 R61 K17 ["Size"]
      952 GETTABLEKS                       R61 R2 K2 ["entries"]
      954 SETTABLE                         R59 R61 R58
      955 GETTABLEKS                       R61 R59 K131 ["setIndex"]
      957 JUMPIFNOT                        R61 ; [+4]
      958 GETTABLEKS                       R61 R59 K131 ["setIndex"]
      960 MOVE                             R62 R58
      961 CALL                             R61 1 0
      962 GETTABLEKS                       R61 R59 K130 ["setItem"]
      964 JUMPIFNOT                        R61 ; [+10]
      965 JUMPIFNOT                        R24 ; [+5]
      966 GETTABLEKS                       R61 R59 K130 ["setItem"]
      968 MOVE                             R62 R58
      969 CALL                             R61 1 0
      970 JUMP                             ; [+4]
      971 GETTABLEKS                       R61 R59 K130 ["setItem"]
      973 GETTABLE                         R62 R25 R58
      974 CALL                             R61 1 0
      975 ADDK                             R17 R17 K108 [1]
      976 JUMPIFNOT                        R54 ; [+232]
      977 JUMPIFNOT                        R24 ; [+9]
      978 MOVE                             R63 R4
      979 MOVE                             R64 R23
      980 CALL                             R63 1 1
      981 GETTABLE                         R62 R63 R58
      982 FASTCALL1                        TOSTRING R62 ; [+2]
      983 GETIMPORT                        R61 K145 [tostring]
      985 CALL                             R61 1 1
      986 JUMP                             ; [+5]
      987 GETTABLE                         R62 R25 R58
      988 FASTCALL1                        TOSTRING R62 ; [+2]
      989 GETIMPORT                        R61 K145 [tostring]
      991 CALL                             R61 1 1
      992 GETIMPORT                        R62 K139 [print]
      994 LOADK                            R64 K146 ["[VList] pool-recycle oldIdx=%* -> newIdx=%*, isStore=%*, expected=\"%*\""]
      995 MOVE                             R66 R60
      996 MOVE                             R67 R58
      997 FASTCALL1                        TOSTRING R24 ; [+3]
      998 MOVE                             R69 R24
      999 GETIMPORT                        R68 K145 [tostring]
     1001 CALL                             R68 1 1
     1002 LENGTH                           R70 R61
     1003 LOADN                            R71 40
     1004 JUMPIFNOTLT                      R71 R70 ; [+10]
     1006 LOADN                            R74 1
     1007 LOADN                            R75 40
     1008 NAMECALL                         R72 R61 K147 ["sub"]
     1010 CALL                             R72 3 1
     1011 MOVE                             R70 R72
     1012 LOADK                            R71 K148 ["..."]
     1013 CONCAT                           R69 R70 R71
     1014 JUMP                             ; [+1]
     1015 MOVE                             R69 R61
     1016 NAMECALL                         R64 R64 K141 ["format"]
     1018 CALL                             R64 5 1
     1019 MOVE                             R63 R64
     1020 CALL                             R62 1 0
     1021 JUMP                             ; [+187]
     1022 GETIMPORT                        R59 K11 [Instance.new]
     1024 LOADK                            R60 K149 ["Frame"]
     1025 CALL                             R59 1 1
     1026 LOADK                            R60 K150 ["VirtualListRow"]
     1027 SETTABLEKS                       R60 R59 K14 ["Name"]
     1029 LOADN                            R60 1
     1030 SETTABLEKS                       R60 R59 K27 ["BackgroundTransparency"]
     1032 LOADN                            R60 0
     1033 SETTABLEKS                       R60 R59 K28 ["BorderSizePixel"]
     1035 GETIMPORT                        R60 K114 [UDim2.fromOffset]
     1037 LOADN                            R61 0
     1038 JUMPIFNOT                        R28 ; [+2]
     1039 GETTABLE                         R62 R40 R58
     1040 JUMP                             ; [+3]
     1041 SUBK                             R63 R58 K108 [1]
     1042 ADD                              R64 R9 R12
     1043 MUL                              R62 R63 R64
     1044 CALL                             R60 2 1
     1045 SETTABLEKS                       R60 R59 K136 ["Position"]
     1047 GETIMPORT                        R60 K16 [UDim2.new]
     1049 LOADN                            R61 1
     1050 LOADN                            R62 0
     1051 LOADN                            R63 0
     1052 JUMPIFNOT                        R28 ; [+6]
     1053 GETTABLE                         R64 R41 R58
     1054 JUMPIF                           R64 ; [+5]
     1055 MOVE                             R64 R27
     1056 MOVE                             R65 R58
     1057 CALL                             R64 1 1
     1058 JUMP                             ; [+1]
     1059 MOVE                             R64 R9
     1060 CALL                             R60 4 1
     1061 SETTABLEKS                       R60 R59 K17 ["Size"]
     1063 SETTABLEKS                       R5 R59 K31 ["Parent"]
     1065 NEWTABLE                         R60 0 0
     1067 LOADNIL                          R61
     1068 LOADNIL                          R62
     1069 LOADNIL                          R63
     1070 LOADNIL                          R64
     1071 JUMPIFNOT                        R48 ; [+68]
     1072 JUMPIFNOT                        R46 ; [+50]
     1073 JUMPIFNOT                        R24 ; [+34]
     1074 GETUPVAL                         R65 0
     1075 GETTABLEKS                       R65 R65 K38 ["createSignal"]
     1077 MOVE                             R66 R58
     1078 LOADNIL                          R67
     1079 LOADK                            R69 K151 ["vlist-item-idx-%*"]
     1080 MOVE                             R71 R58
     1081 NAMECALL                         R69 R69 K141 ["format"]
     1083 CALL                             R69 2 1
     1084 MOVE                             R68 R69
     1085 CALL                             R65 3 2
     1086 MOVE                             R67 R58
     1087 GETTABLE                         R68 R23 R58
     1088 GETUPVAL                         R69 0
     1089 GETTABLEKS                       R69 R69 K152 ["createComputed"]
     1091 NEWCLOSURE                       R70 P5
     1092 CAPTURE                          VAL R65
     1093 CAPTURE                          REF R67
     1094 CAPTURE                          REF R68
     1095 CAPTURE                          VAL R23
     1096 DUPCLOSURE                       R71 K153 [PROTO_9]
     1097 LOADK                            R73 K154 ["vlist-store-item-%*"]
     1098 MOVE                             R75 R58
     1099 NAMECALL                         R73 R73 K141 ["format"]
     1101 CALL                             R73 2 1
     1102 MOVE                             R72 R73
     1103 CALL                             R69 3 1
     1104 MOVE                             R61 R69
     1105 MOVE                             R62 R66
     1106 CLOSEUPVALS                      R67
     1107 JUMP                             ; [+14]
     1108 GETUPVAL                         R65 0
     1109 GETTABLEKS                       R65 R65 K38 ["createSignal"]
     1111 GETTABLE                         R66 R25 R58
     1112 LOADNIL                          R67
     1113 LOADK                            R69 K155 ["vlist-item-%*"]
     1114 MOVE                             R71 R58
     1115 NAMECALL                         R69 R69 K141 ["format"]
     1117 CALL                             R69 2 1
     1118 MOVE                             R68 R69
     1119 CALL                             R65 3 2
     1120 MOVE                             R61 R65
     1121 MOVE                             R62 R66
     1122 SETTABLE                         R61 R60 R45
     1123 JUMPIFNOT                        R47 ; [+25]
     1124 GETUPVAL                         R65 0
     1125 GETTABLEKS                       R65 R65 K38 ["createSignal"]
     1127 MOVE                             R66 R58
     1128 LOADNIL                          R67
     1129 LOADK                            R69 K156 ["vlist-index-%*"]
     1130 MOVE                             R71 R58
     1131 NAMECALL                         R69 R69 K141 ["format"]
     1133 CALL                             R69 2 1
     1134 MOVE                             R68 R69
     1135 CALL                             R65 3 2
     1136 MOVE                             R63 R65
     1137 MOVE                             R64 R66
     1138 SETTABLE                         R63 R60 R44
     1139 JUMP                             ; [+9]
     1140 JUMPIFNOT                        R46 ; [+5]
     1141 JUMPIFNOT                        R24 ; [+2]
     1142 GETTABLE                         R61 R23 R58
     1143 JUMP                             ; [+1]
     1144 GETTABLE                         R61 R25 R58
     1145 SETTABLE                         R61 R60 R45
     1146 JUMPIFNOT                        R47 ; [+2]
     1147 MOVE                             R63 R58
     1148 SETTABLE                         R63 R60 R44
     1149 DUPTABLE                         R65 K53 [{"type", "templateAst", "templateId", "children", "params"}]
     1150 LOADK                            R66 K54 ["Ref"]
     1151 SETTABLEKS                       R66 R65 K49 ["type"]
     1153 SETTABLEKS                       R21 R65 K50 ["templateAst"]
     1155 LOADK                            R66 K157 ["/inner/each"]
     1156 SETTABLEKS                       R66 R65 K51 ["templateId"]
     1158 NEWTABLE                         R66 0 0
     1160 SETTABLEKS                       R66 R65 K48 ["children"]
     1162 SETTABLEKS                       R60 R65 K52 ["params"]
     1164 GETTABLEKS                       R66 R1 K56 ["createChild"]
     1166 MOVE                             R67 R65
     1167 MOVE                             R68 R58
     1168 MOVE                             R69 R59
     1169 CALL                             R66 3 1
     1170 GETTABLEKS                       R67 R1 K58 ["publish"]
     1172 MOVE                             R68 R66
     1173 CALL                             R67 1 0
     1174 GETTABLEKS                       R67 R2 K2 ["entries"]
     1176 DUPTABLE                         R68 K161 [{"wrapper", "element", "index", "version", "setItem", "setIndex", "_itemCursor", "_indexCursor", "accessTime"}]
     1177 SETTABLEKS                       R59 R68 K134 ["wrapper"]
     1179 SETTABLEKS                       R66 R68 K133 ["element"]
     1181 SETTABLEKS                       R58 R68 K137 ["index"]
     1183 LOADN                            R69 0
     1184 SETTABLEKS                       R69 R68 K158 ["version"]
     1186 SETTABLEKS                       R62 R68 K130 ["setItem"]
     1188 SETTABLEKS                       R64 R68 K131 ["setIndex"]
     1190 SETTABLEKS                       R61 R68 K132 ["_itemCursor"]
     1192 SETTABLEKS                       R63 R68 K159 ["_indexCursor"]
     1194 LOADN                            R69 0
     1195 SETTABLEKS                       R69 R68 K160 ["accessTime"]
     1197 SETTABLE                         R68 R67 R58
     1198 ADDK                             R18 R18 K108 [1]
     1199 JUMPIFNOT                        R54 ; [+9]
     1200 GETIMPORT                        R67 K139 [print]
     1202 LOADK                            R69 K162 ["[VList] create idx=%*"]
     1203 MOVE                             R71 R58
     1204 NAMECALL                         R69 R69 K141 ["format"]
     1206 CALL                             R69 2 1
     1207 MOVE                             R68 R69
     1208 CALL                             R67 1 0
     1209 FORNLOOP                         R56
     1210 JUMPIFNOT                        R13 ; [+4]
     1211 GETIMPORT                        R56 K66 [os.clock]
     1213 CALL                             R56 0 1
     1214 SUB                              R20 R56 R55
     1215 GETUPVAL                         R56 1
     1216 GETTABLEKS                       R56 R56 K128 ["VLIST_FILL_BEFORE_EVICT"]
     1218 JUMPIFNOT                        R56 ; [+2]
     1219 MOVE                             R56 R53
     1220 CALL                             R56 0 0
     1221 JUMPIFNOTEQKS                    R8 K4 ["cache"] ; [+69]
     1223 LOADN                            R56 0
     1224 GETTABLEKS                       R57 R2 K4 ["cache"]
     1226 LOADNIL                          R58
     1227 LOADNIL                          R59
     1228 FORGPREP                         R57
     1229 ADDK                             R56 R56 K108 [1]
     1230 FORGLOOP                         R57 1 ; [-2]
     1232 SUB                              R57 R56 R11
     1233 LOADN                            R58 0
     1234 JUMPIFNOTLT                      R58 R57 ; [+56]
     1236 NEWTABLE                         R58 0 0
     1238 GETTABLEKS                       R59 R2 K4 ["cache"]
     1240 LOADNIL                          R60
     1241 LOADNIL                          R61
     1242 FORGPREP                         R59
     1243 FASTCALL2                        TABLE_INSERT R58 R62 ; [+5]
     1245 MOVE                             R65 R58
     1246 MOVE                             R66 R62
     1247 GETIMPORT                        R64 K164 [table.insert]
     1249 CALL                             R64 2 0
     1250 FORGLOOP                         R59 1 ; [-8]
     1252 GETIMPORT                        R59 K166 [table.sort]
     1254 MOVE                             R60 R58
     1255 NEWCLOSURE                       R61 P7
     1256 CAPTURE                          VAL R2
     1257 CALL                             R59 2 0
     1258 LOADN                            R61 1
     1259 MOVE                             R59 R57
     1260 LOADN                            R60 1
     1261 FORNPREP                         R59
     1262 GETTABLE                         R62 R58 R61
     1263 GETTABLEKS                       R64 R2 K4 ["cache"]
     1265 GETTABLE                         R63 R64 R62
     1266 GETTABLEKS                       R64 R2 K4 ["cache"]
     1268 LOADNIL                          R65
     1269 SETTABLE                         R65 R64 R62
     1270 GETTABLEKS                       R65 R2 K3 ["pool"]
     1272 FASTCALL2                        TABLE_INSERT R65 R63 ; [+4]
     1274 MOVE                             R66 R63
     1275 GETIMPORT                        R64 K164 [table.insert]
     1277 CALL                             R64 2 0
     1278 JUMPIFNOT                        R54 ; [+11]
     1279 GETIMPORT                        R64 K139 [print]
     1281 LOADK                            R66 K167 ["[VList] lru-evict idx=%* -> pool (cacheCount=%*, cacheSize=%*)"]
     1282 MOVE                             R68 R62
     1283 MOVE                             R69 R56
     1284 MOVE                             R70 R11
     1285 NAMECALL                         R66 R66 K141 ["format"]
     1287 CALL                             R66 4 1
     1288 MOVE                             R65 R66
     1289 CALL                             R64 1 0
     1290 FORNLOOP                         R59
     1291 JUMPIFNOT                        R28 ; [+19]
     1292 GETIMPORT                        R56 K170 [task.delay]
     1294 LOADN                            R57 0
     1295 NEWCLOSURE                       R58 P8
     1296 CAPTURE                          VAL R2
     1297 CAPTURE                          REF R41
     1298 CAPTURE                          VAL R27
     1299 CAPTURE                          VAL R24
     1300 CAPTURE                          VAL R4
     1301 CAPTURE                          VAL R23
     1302 CAPTURE                          REF R25
     1303 CAPTURE                          UPVAL U2
     1304 CAPTURE                          VAL R26
     1305 CAPTURE                          REF R40
     1306 CAPTURE                          VAL R12
     1307 CAPTURE                          REF R30
     1308 CAPTURE                          REF R31
     1309 CAPTURE                          VAL R5
     1310 CALL                             R56 2 0
     1311 JUMPIFNOT                        R13 ; [+98]
     1312 GETIMPORT                        R56 K66 [os.clock]
     1314 CALL                             R56 0 1
     1315 SUB                              R57 R56 R14
     1316 GETTABLEKS                       R59 R2 K171 ["_lastScrollEventTime"]
     1318 JUMPIFNOT                        R59 ; [+9]
     1319 GETTABLEKS                       R59 R2 K171 ["_lastScrollEventTime"]
     1321 LOADN                            R60 0
     1322 JUMPIFNOTLT                      R60 R59 ; [+5]
     1324 GETTABLEKS                       R59 R2 K171 ["_lastScrollEventTime"]
     1326 SUB                              R58 R14 R59
     1327 JUMP                             ; [+1]
     1328 LOADN                            R58 255
     1329 LOADN                            R59 0
     1330 GETTABLEKS                       R60 R2 K2 ["entries"]
     1332 LOADNIL                          R61
     1333 LOADNIL                          R62
     1334 FORGPREP                         R60
     1335 ADDK                             R59 R59 K108 [1]
     1336 FORGLOOP                         R60 1 ; [-2]
     1338 LOADN                            R60 0
     1339 GETTABLEKS                       R61 R2 K4 ["cache"]
     1341 LOADNIL                          R62
     1342 LOADNIL                          R63
     1343 FORGPREP                         R61
     1344 ADDK                             R60 R60 K108 [1]
     1345 FORGLOOP                         R61 1 ; [-2]
     1347 GETTABLEKS                       R62 R2 K3 ["pool"]
     1349 LENGTH                           R61 R62
     1350 GETIMPORT                        R62 K139 [print]
     1352 GETIMPORT                        R63 K173 [string.format]
     1354 LOADK                            R64 K174 ["[VList:profile] total=%.3fms sched=%.3fms evict=%.3fms fill=%.3fms | evicted=%d cacheHit=%d poolHit=%d created=%d | range=[%d..%d] entries=%d cache=%d pool=%d scrollY=%d delta=%s"]
     1355 MULK                             R65 R57 K175 [1000]
     1356 MULK                             R66 R58 K175 [1000]
     1357 MULK                             R67 R19 K175 [1000]
     1358 MULK                             R68 R20 K175 [1000]
     1359 MOVE                             R69 R15
     1360 MOVE                             R70 R16
     1361 MOVE                             R71 R17
     1362 MOVE                             R72 R18
     1363 MOVE                             R73 R35
     1364 MOVE                             R74 R36
     1365 MOVE                             R75 R59
     1366 MOVE                             R76 R60
     1367 MOVE                             R77 R61
     1368 FASTCALL1                        MATH_FLOOR R33 ; [+3]
     1369 MOVE                             R79 R33
     1370 GETIMPORT                        R78 K110 [math.floor]
     1372 CALL                             R78 1 1
     1373 FASTCALL1                        TOSTRING R52 ; [+3]
     1374 MOVE                             R80 R52
     1375 GETIMPORT                        R79 K145 [tostring]
     1377 CALL                             R79 1 1
     1378 CALL                             R63 16 -1
     1379 CALL                             R62 -1 0
     1380 GETTABLEKS                       R64 R2 K63 ["_profileRunCount"]
     1382 ORK                              R63 R64 K116 [0]
     1383 ADDK                             R62 R63 K108 [1]
     1384 SETTABLEKS                       R62 R2 K63 ["_profileRunCount"]
     1386 GETIMPORT                        R62 K66 [os.clock]
     1388 CALL                             R62 0 1
     1389 GETTABLEKS                       R65 R2 K67 ["_profileWindowStart"]
     1391 OR                               R64 R65 R62
     1392 SUB                              R63 R62 R64
     1393 LOADN                            R64 1
     1394 JUMPIFNOTLE                      R64 R63 ; [+15]
     1396 GETIMPORT                        R63 K139 [print]
     1398 GETIMPORT                        R64 K173 [string.format]
     1400 LOADK                            R65 K176 ["[VList:profile] frequency=%d runs/sec"]
     1401 GETTABLEKS                       R66 R2 K63 ["_profileRunCount"]
     1403 CALL                             R64 2 -1
     1404 CALL                             R63 -1 0
     1405 LOADN                            R63 0
     1406 SETTABLEKS                       R63 R2 K63 ["_profileRunCount"]
     1408 SETTABLEKS                       R62 R2 K67 ["_profileWindowStart"]
     1410 CLOSEUPVALS                      R15
     1411 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["state"]
       16 GETTABLEKS                       R3 R3 K7 ["Signals"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Debug"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K9 [PROTO_0]
       25 DUPCLOSURE                       R5 K10 [PROTO_1]
       26 CAPTURE                          VAL R5
       27 DUPTABLE                         R6 K18 [{"type", "name", "defaultParams", "children", "controller", "analyze", "mountEffect"}]
       28 LOADK                            R7 K19 ["Template"]
       29 SETTABLEKS                       R7 R6 K11 ["type"]
       31 LOADK                            R7 K20 ["VirtualList"]
       32 SETTABLEKS                       R7 R6 K12 ["name"]
       34 DUPTABLE                         R7 K36 [{"items", "itemSize", "overscan", "strategy", "cacheSize", "keyBy", "tags", "useParentScroll", "spacing", "getHeight", "heightVersion", "loadRows", "Each", "None", "Content"}]
       35 NEWTABLE                         R8 0 0
       37 SETTABLEKS                       R8 R7 K21 ["items"]
       39 LOADN                            R8 20
       40 SETTABLEKS                       R8 R7 K22 ["itemSize"]
       42 LOADN                            R8 2
       43 SETTABLEKS                       R8 R7 K23 ["overscan"]
       45 LOADK                            R8 K37 ["none"]
       46 SETTABLEKS                       R8 R7 K24 ["strategy"]
       48 LOADN                            R8 200
       49 SETTABLEKS                       R8 R7 K25 ["cacheSize"]
       51 LOADB                            R8 0
       52 SETTABLEKS                       R8 R7 K26 ["keyBy"]
       54 LOADK                            R8 K38 [""]
       55 SETTABLEKS                       R8 R7 K27 ["tags"]
       57 LOADB                            R8 0
       58 SETTABLEKS                       R8 R7 K28 ["useParentScroll"]
       60 LOADN                            R8 0
       61 SETTABLEKS                       R8 R7 K29 ["spacing"]
       63 LOADB                            R8 0
       64 SETTABLEKS                       R8 R7 K30 ["getHeight"]
       66 LOADN                            R8 0
       67 SETTABLEKS                       R8 R7 K31 ["heightVersion"]
       69 LOADB                            R8 0
       70 SETTABLEKS                       R8 R7 K32 ["loadRows"]
       72 DUPTABLE                         R8 K39 [{"type", "name"}]
       73 LOADK                            R9 K19 ["Template"]
       74 SETTABLEKS                       R9 R8 K11 ["type"]
       76 LOADK                            R9 K33 ["Each"]
       77 SETTABLEKS                       R9 R8 K12 ["name"]
       79 SETTABLEKS                       R8 R7 K33 ["Each"]
       81 DUPTABLE                         R8 K39 [{"type", "name"}]
       82 LOADK                            R9 K19 ["Template"]
       83 SETTABLEKS                       R9 R8 K11 ["type"]
       85 LOADK                            R9 K34 ["None"]
       86 SETTABLEKS                       R9 R8 K12 ["name"]
       88 SETTABLEKS                       R8 R7 K34 ["None"]
       90 DUPTABLE                         R8 K39 [{"type", "name"}]
       91 LOADK                            R9 K19 ["Template"]
       92 SETTABLEKS                       R9 R8 K11 ["type"]
       94 LOADK                            R9 K35 ["Content"]
       95 SETTABLEKS                       R9 R8 K12 ["name"]
       97 SETTABLEKS                       R8 R7 K35 ["Content"]
       99 SETTABLEKS                       R7 R6 K13 ["defaultParams"]
      101 NEWTABLE                         R7 0 0
      103 SETTABLEKS                       R7 R6 K14 ["children"]
      105 LOADNIL                          R7
      106 SETTABLEKS                       R7 R6 K15 ["controller"]
      108 LOADNIL                          R7
      109 SETTABLEKS                       R7 R6 K16 ["analyze"]
      111 DUPCLOSURE                       R7 K40 [PROTO_12]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R5
      115 SETTABLEKS                       R7 R6 K17 ["mountEffect"]
      117 RETURN                           R6 1
