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
       75 DIVRK                            R5 K3 [1] R6
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
        4 JUMPIF                           R5 ; [+239]
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
      150 JUMPIF                           R5 ; [+37]
      151 GETTABLEKS                       R13 R0 K47 ["Content"]
      153 MOVE                             R14 R3
      154 CALL                             R13 1 1
      155 JUMPIFNOT                        R13 ; [+32]
      156 GETTABLEKS                       R14 R13 K48 ["children"]
      158 JUMPIFNOT                        R14 ; [+29]
      159 GETTABLEKS                       R15 R13 K48 ["children"]
      161 LENGTH                           R14 R15
      162 LOADN                            R15 0
      163 JUMPIFNOTLT                      R15 R14 ; [+24]
      165 DUPTABLE                         R14 K55 [{["type"] = "Ref", ["templateAst"], ["templateId"] = "/inner/content", ["children"], ["params"]}]
      166 SETTABLEKS                       R13 R14 K51 ["templateAst"]
      168 NEWTABLE                         R15 0 0
      170 SETTABLEKS                       R15 R14 K48 ["children"]
      172 NEWTABLE                         R15 0 0
      174 SETTABLEKS                       R15 R14 K54 ["params"]
      176 GETTABLEKS                       R15 R1 K56 ["createChild"]
      178 MOVE                             R16 R14
      179 LOADN                            R17 0
      180 MOVE                             R18 R6
      181 CALL                             R15 3 1
      182 SETTABLEKS                       R15 R2 K57 ["contentElement"]
      184 GETTABLEKS                       R16 R1 K58 ["publish"]
      186 MOVE                             R17 R15
      187 CALL                             R16 1 0
      188 GETTABLEKS                       R13 R1 K59 ["createEffect"]
      190 NEWCLOSURE                       R14 P2
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R1
      195 LOADK                            R15 K60 ["vlist-disposal"]
      196 CALL                             R13 2 0
      197 GETUPVAL                         R13 1
      198 GETTABLEKS                       R13 R13 K61 ["PROFILE_VIRTUAL_LIST"]
      200 JUMPIFNOT                        R13 ; [+42]
      201 LOADB                            R13 0
      202 SETTABLEKS                       R13 R2 K62 ["_effectRanSinceRender"]
      204 LOADN                            R13 0
      205 SETTABLEKS                       R13 R2 K63 ["_profileRunCount"]
      207 GETIMPORT                        R13 K66 [os.clock]
      209 CALL                             R13 0 1
      210 SETTABLEKS                       R13 R2 K67 ["_profileWindowStart"]
      212 LOADN                            R13 0
      213 GETIMPORT                        R14 K66 [os.clock]
      215 CALL                             R14 0 1
      216 LOADK                            R15 K68 [∞]
      217 LOADN                            R16 0
      218 GETIMPORT                        R17 K66 [os.clock]
      220 CALL                             R17 0 1
      221 GETIMPORT                        R18 K70 [game]
      223 LOADK                            R20 K71 ["RunService"]
      224 NAMECALL                         R18 R18 K72 ["GetService"]
      226 CALL                             R18 2 1
      227 GETTABLEKS                       R19 R18 K73 ["RenderStepped"]
      229 NEWCLOSURE                       R21 P3
      230 CAPTURE                          REF R17
      231 CAPTURE                          REF R13
      232 CAPTURE                          REF R15
      233 CAPTURE                          REF R16
      234 CAPTURE                          REF R6
      235 CAPTURE                          VAL R2
      236 CAPTURE                          REF R14
      237 NAMECALL                         R19 R19 K46 ["Connect"]
      239 CALL                             R19 2 1
      240 SETTABLEKS                       R19 R2 K74 ["_renderConn"]
      242 CLOSEUPVALS                      R13
      243 CLOSEUPVALS                      R6
      244 GETTABLEKS                       R5 R2 K37 ["scrollFrame"]
      246 GETTABLEKS                       R6 R2 K42 ["getScrollY"]
      248 GETTABLEKS                       R7 R2 K43 ["getViewportH"]
      250 GETTABLEKS                       R8 R2 K5 ["strategy"]
      252 MOVE                             R9 R4
      253 GETTABLEKS                       R10 R0 K75 ["itemSize"]
      255 CALL                             R9 1 1
      256 MOVE                             R10 R4
      257 GETTABLEKS                       R11 R0 K76 ["overscan"]
      259 CALL                             R10 1 1
      260 MOVE                             R11 R4
      261 GETTABLEKS                       R12 R0 K77 ["cacheSize"]
      263 CALL                             R11 1 1
      264 MOVE                             R12 R4
      265 GETTABLEKS                       R13 R0 K78 ["spacing"]
      267 CALL                             R12 1 1
      268 SETTABLEKS                       R9 R2 K79 ["_lastItemSize"]
      270 GETUPVAL                         R13 1
      271 GETTABLEKS                       R13 R13 K61 ["PROFILE_VIRTUAL_LIST"]
      273 LOADNIL                          R14
      274 LOADN                            R15 0
      275 LOADN                            R16 0
      276 LOADN                            R17 0
      277 LOADN                            R18 0
      278 LOADN                            R19 0
      279 LOADN                            R20 0
      280 JUMPIFNOT                        R13 ; [+7]
      281 GETIMPORT                        R21 K66 [os.clock]
      283 CALL                             R21 0 1
      284 MOVE                             R14 R21
      285 LOADB                            R21 1
      286 SETTABLEKS                       R21 R2 K62 ["_effectRanSinceRender"]
      288 GETUPVAL                         R21 1
      289 GETTABLEKS                       R21 R21 K80 ["VLIST_OVERSCAN_OVERRIDE"]
      291 JUMPIFNOT                        R21 ; [+3]
      292 GETUPVAL                         R21 1
      293 GETTABLEKS                       R10 R21 K80 ["VLIST_OVERSCAN_OVERRIDE"]
      295 GETTABLEKS                       R21 R0 K81 ["Each"]
      297 MOVE                             R22 R3
      298 CALL                             R21 1 1
      299 GETTABLEKS                       R22 R0 K23 ["None"]
      301 MOVE                             R23 R3
      302 CALL                             R22 1 1
      303 GETTABLEKS                       R23 R0 K82 ["items"]
      305 GETTABLEKS                       R24 R1 K83 ["isStore"]
      307 MOVE                             R25 R23
      308 CALL                             R24 1 1
      309 LOADNIL                          R25
      310 JUMPIFNOT                        R24 ; [+23]
      311 MOVE                             R26 R4
      312 MOVE                             R27 R23
      313 CALL                             R26 1 1
      314 MOVE                             R25 R26
      315 GETTABLEKS                       R26 R2 K84 ["getLength"]
      317 JUMPIF                           R26 ; [+3]
      318 GETTABLEKS                       R27 R1 K85 ["length"]
      320 GETTABLE                         R26 R23 R27
      321 SETTABLEKS                       R26 R2 K84 ["getLength"]
      323 GETTABLEKS                       R26 R2 K84 ["getLength"]
      325 FASTCALL1                        ASSERT R26 ; [+3]
      326 MOVE                             R28 R26
      327 GETIMPORT                        R27 K87 [assert]
      329 CALL                             R27 1 0
      330 MOVE                             R27 R26
      331 MOVE                             R28 R3
      332 CALL                             R27 1 0
      333 JUMP                             ; [+4]
      334 MOVE                             R26 R23
      335 MOVE                             R27 R3
      336 CALL                             R26 1 1
      337 MOVE                             R25 R26
      338 LENGTH                           R26 R25
      339 MOVE                             R27 R4
      340 GETTABLEKS                       R28 R0 K88 ["getHeight"]
      342 CALL                             R27 1 1
      343 JUMPIFNOT                        R27 ; [+2]
      344 LOADB                            R28 1
      345 JUMP                             ; [+1]
      346 LOADB                            R28 0
      347 GETTABLEKS                       R29 R0 K89 ["heightVersion"]
      349 MOVE                             R30 R3
      350 CALL                             R29 1 1
      351 GETTABLEKS                       R30 R2 K90 ["_lastHeightVersion"]
      353 JUMPIFEQ                         R29 R30 ; [+11]
      355 SETTABLEKS                       R29 R2 K90 ["_lastHeightVersion"]
      357 GETTABLEKS                       R30 R2 K91 ["heightCorrections"]
      359 JUMPIFNOT                        R30 ; [+5]
      360 GETIMPORT                        R30 K94 [table.clear]
      362 GETTABLEKS                       R31 R2 K91 ["heightCorrections"]
      364 CALL                             R30 1 0
      365 GETTABLEKS                       R30 R2 K95 ["lastKnownLength"]
      367 JUMPIFEQ                         R26 R30 ; [+14]
      369 LOADB                            R30 0
      370 SETTABLEKS                       R30 R2 K96 ["loadRowsExhausted"]
      372 SETTABLEKS                       R26 R2 K95 ["lastKnownLength"]
      374 GETTABLEKS                       R30 R2 K91 ["heightCorrections"]
      376 JUMPIFNOT                        R30 ; [+5]
      377 GETIMPORT                        R30 K94 [table.clear]
      379 GETTABLEKS                       R31 R2 K91 ["heightCorrections"]
      381 CALL                             R30 1 0
      382 LOADN                            R30 0
      383 LOADN                            R31 0
      384 LOADK                            R34 K97 ["UIPadding"]
      385 NAMECALL                         R32 R5 K98 ["FindFirstChildWhichIsA"]
      387 CALL                             R32 2 1
      388 JUMPIFNOT                        R32 ; [+8]
      389 GETTABLEKS                       R33 R32 K99 ["PaddingTop"]
      391 GETTABLEKS                       R30 R33 K100 ["Offset"]
      393 GETTABLEKS                       R33 R32 K101 ["PaddingBottom"]
      395 GETTABLEKS                       R31 R33 K100 ["Offset"]
      397 MOVE                             R33 R6
      398 MOVE                             R34 R3
      399 CALL                             R33 1 1
      400 MOVE                             R34 R7
      401 MOVE                             R35 R3
      402 CALL                             R34 1 1
      403 LOADNIL                          R35
      404 LOADNIL                          R36
      405 LOADNIL                          R37
      406 SUB                              R38 R33 R30
      407 ADD                              R39 R38 R34
      408 GETTABLEKS                       R40 R2 K102 ["rowOffsets"]
      410 JUMPIF                           R40 ; [+4]
      411 NEWTABLE                         R40 0 0
      413 SETTABLEKS                       R40 R2 K102 ["rowOffsets"]
      415 GETTABLEKS                       R41 R2 K91 ["heightCorrections"]
      417 JUMPIF                           R41 ; [+4]
      418 NEWTABLE                         R41 0 0
      420 SETTABLEKS                       R41 R2 K91 ["heightCorrections"]
      422 JUMPIFNOT                        R28 ; [+46]
      423 LOADN                            R42 0
      424 LOADB                            R43 0
      425 LOADN                            R35 1
      426 LOADN                            R36 0
      427 LOADN                            R46 1
      428 MOVE                             R44 R26
      429 LOADN                            R45 1
      430 FORNPREP                         R44
      431 SETTABLE                         R42 R40 R46
      432 GETTABLE                         R47 R41 R46
      433 JUMPIF                           R47 ; [+3]
      434 MOVE                             R47 R27
      435 MOVE                             R48 R46
      436 CALL                             R47 1 1
      437 JUMPIF                           R43 ; [+5]
      438 ADD                              R48 R42 R47
      439 JUMPIFNOTLT                      R38 R48 ; [+3]
      441 MOVE                             R35 R46
      442 LOADB                            R43 1
      443 JUMPIFNOTLT                      R42 R39 ; [+2]
      445 MOVE                             R36 R46
      446 ADD                              R42 R42 R47
      447 JUMPIFNOTLT                      R46 R26 ; [+2]
      449 ADD                              R42 R42 R12
      450 FORNLOOP                         R44
      451 MOVE                             R37 R42
      452 LOADN                            R45 1
      453 SUB                              R46 R35 R10
      454 FASTCALL2                        MATH_MAX R45 R46 ; [+3]
      456 GETIMPORT                        R44 K105 [math.max]
      458 CALL                             R44 2 1
      459 MOVE                             R35 R44
      460 ADD                              R46 R36 R10
      461 FASTCALL2                        MATH_MIN R26 R46 ; [+4]
      463 MOVE                             R45 R26
      464 GETIMPORT                        R44 K107 [math.min]
      466 CALL                             R44 2 1
      467 MOVE                             R36 R44
      468 JUMP                             ; [+37]
      469 ADD                              R42 R9 R12
      470 LOADN                            R43 0
      471 JUMPIFNOTLT                      R43 R26 ; [+6]
      473 MUL                              R43 R26 R9
      474 SUBK                             R45 R26 K108 [1]
      475 MUL                              R44 R45 R12
      476 ADD                              R37 R43 R44
      477 JUMP                             ; [+1]
      478 LOADN                            R37 0
      479 LOADN                            R44 1
      480 DIV                              R48 R38 R42
      481 FASTCALL1                        MATH_FLOOR R48 ; [+2]
      482 GETIMPORT                        R47 K110 [math.floor]
      484 CALL                             R47 1 1
      485 ADDK                             R46 R47 K108 [1]
      486 SUB                              R45 R46 R10
      487 FASTCALL2                        MATH_MAX R44 R45 ; [+3]
      489 GETIMPORT                        R43 K105 [math.max]
      491 CALL                             R43 2 1
      492 MOVE                             R35 R43
      493 DIV                              R47 R39 R42
      494 FASTCALL1                        MATH_CEIL R47 ; [+2]
      495 GETIMPORT                        R46 K112 [math.ceil]
      497 CALL                             R46 1 1
      498 ADD                              R45 R46 R10
      499 FASTCALL2                        MATH_MIN R26 R45 ; [+4]
      501 MOVE                             R44 R26
      502 GETIMPORT                        R43 K107 [math.min]
      504 CALL                             R43 2 1
      505 MOVE                             R36 R43
      506 ADD                              R43 R37 R30
      507 ADD                              R42 R43 R31
      508 GETTABLEKS                       R43 R2 K7 ["ownsScrollFrame"]
      510 JUMPIF                           R43 ; [+1]
      511 JUMPIFNOT                        R28 ; [+7]
      512 GETIMPORT                        R43 K114 [UDim2.fromOffset]
      514 LOADN                            R44 0
      515 MOVE                             R45 R42
      516 CALL                             R43 2 1
      517 SETTABLEKS                       R43 R5 K26 ["CanvasSize"]
      519 MOVE                             R43 R4
      520 GETTABLEKS                       R44 R0 K115 ["loadRows"]
      522 CALL                             R43 1 1
      523 JUMPIFNOT                        R43 ; [+21]
      524 GETTABLEKS                       R44 R2 K96 ["loadRowsExhausted"]
      526 JUMPIF                           R44 ; [+18]
      527 JUMPIFEQKN                       R26 K116 [0] ; [+2]
      529 LOADB                            R44 0 +1
      530 LOADB                            R44 1
      531 JUMPIF                           R44 ; [+6]
      532 ADD                              R45 R33 R34
      533 SUB                              R46 R42 R34
      534 JUMPIFLE                         R46 R45 ; [+2]
      536 LOADB                            R44 0 +1
      537 LOADB                            R44 1
      538 JUMPIFNOT                        R44 ; [+6]
      539 MOVE                             R45 R43
      540 CALL                             R45 0 1
      541 JUMPIF                           R45 ; [+3]
      542 LOADB                            R46 1
      543 SETTABLEKS                       R46 R2 K96 ["loadRowsExhausted"]
      545 JUMPIFNOT                        R22 ; [+49]
      546 GETTABLEKS                       R44 R22 K48 ["children"]
      548 JUMPIFNOT                        R44 ; [+46]
      549 JUMPIFNOTEQKN                    R26 K116 [0] ; [+29]
      551 GETTABLEKS                       R44 R2 K117 ["noneElement"]
      553 JUMPIF                           R44 ; [+41]
      554 DUPTABLE                         R44 K119 [{["type"] = "Ref", ["templateAst"], ["templateId"] = "/inner/none", ["children"], ["params"]}]
      555 SETTABLEKS                       R22 R44 K51 ["templateAst"]
      557 NEWTABLE                         R45 0 0
      559 SETTABLEKS                       R45 R44 K48 ["children"]
      561 NEWTABLE                         R45 0 0
      563 SETTABLEKS                       R45 R44 K54 ["params"]
      565 GETTABLEKS                       R45 R1 K56 ["createChild"]
      567 MOVE                             R46 R44
      568 GETTABLEKS                       R47 R1 K120 ["childOrder"]
      570 MOVE                             R48 R5
      571 CALL                             R45 3 1
      572 SETTABLEKS                       R45 R2 K117 ["noneElement"]
      574 GETTABLEKS                       R46 R1 K58 ["publish"]
      576 MOVE                             R47 R45
      577 CALL                             R46 1 0
      578 JUMP                             ; [+16]
      579 GETTABLEKS                       R44 R2 K117 ["noneElement"]
      581 JUMPIFNOT                        R44 ; [+13]
      582 GETTABLEKS                       R44 R2 K117 ["noneElement"]
      584 LOADB                            R45 0
      585 SETTABLEKS                       R45 R44 K121 ["alive"]
      587 GETTABLEKS                       R44 R1 K58 ["publish"]
      589 GETTABLEKS                       R45 R2 K117 ["noneElement"]
      591 CALL                             R44 1 0
      592 LOADNIL                          R44
      593 SETTABLEKS                       R44 R2 K117 ["noneElement"]
      595 JUMPIFNOT                        R21 ; [+3]
      596 GETTABLEKS                       R44 R21 K48 ["children"]
      598 JUMPIF                           R44 ; [+2]
      599 CLOSEUPVALS                      R15
      600 RETURN                           R0 0
      601 GETTABLEKS                       R45 R21 K122 ["defaultParams"]
      603 GETTABLEN                        R44 R45 1
      604 JUMPIF                           R44 ; [+4]
      605 GETTABLEKS                       R44 R21 K122 ["defaultParams"]
      607 GETTABLEKS                       R44 R44 K123 ["key"]
      609 GETTABLEKS                       R46 R21 K122 ["defaultParams"]
      611 GETTABLEN                        R45 R46 2
      612 JUMPIF                           R45 ; [+4]
      613 GETTABLEKS                       R45 R21 K122 ["defaultParams"]
      615 GETTABLEKS                       R45 R45 K124 ["value"]
      617 LOADB                            R46 0
      618 JUMPIFEQKNIL                     R45 ; [+8]
      620 LOADB                            R46 0
      621 JUMPIFEQKS                       R45 K125 ["_"] ; [+5]
      623 JUMPIFNOTEQKS                    R45 K33 [""] ; [+2]
      625 LOADB                            R46 0 +1
      626 LOADB                            R46 1
      627 LOADB                            R47 0
      628 JUMPIFEQKNIL                     R44 ; [+8]
      630 LOADB                            R47 0
      631 JUMPIFEQKS                       R44 K125 ["_"] ; [+5]
      633 JUMPIFNOTEQKS                    R44 K33 [""] ; [+2]
      635 LOADB                            R47 0 +1
      636 LOADB                            R47 1
      637 JUMPIFNOTEQKS                    R8 K126 ["none"] ; [+2]
      639 LOADB                            R48 0 +1
      640 LOADB                            R48 1
      641 NEWTABLE                         R49 0 0
      643 MOVE                             R52 R35
      644 MOVE                             R50 R36
      645 LOADN                            R51 1
      646 FORNPREP                         R50
      647 LOADB                            R53 1
      648 SETTABLE                         R53 R49 R52
      649 FORNLOOP                         R50
      650 GETTABLEKS                       R50 R2 K127 ["_prevFirst"]
      652 GETTABLEKS                       R51 R2 K128 ["_prevLast"]
      654 SETTABLEKS                       R35 R2 K127 ["_prevFirst"]
      656 SETTABLEKS                       R36 R2 K128 ["_prevLast"]
      658 LOADB                            R52 0
      659 JUMPIFEQKNIL                     R50 ; [+14]
      661 LOADB                            R52 0
      662 JUMPIFEQKNIL                     R51 ; [+11]
      664 LOADB                            R52 0
      665 JUMPIFEQKS                       R8 K126 ["none"] ; [+8]
      667 LOADB                            R52 0
      668 JUMPIFNOTLE                      R35 R51 ; [+5]
      670 JUMPIFLE                         R50 R36 ; [+2]
      672 LOADB                            R52 0 +1
      673 LOADB                            R52 1
      674 NEWCLOSURE                       R53 P4
      675 CAPTURE                          VAL R13
      676 CAPTURE                          VAL R52
      677 CAPTURE                          VAL R50
      678 CAPTURE                          VAL R51
      679 CAPTURE                          REF R35
      680 CAPTURE                          VAL R2
      681 CAPTURE                          REF R15
      682 CAPTURE                          VAL R8
      683 CAPTURE                          REF R36
      684 CAPTURE                          VAL R49
      685 CAPTURE                          VAL R1
      686 CAPTURE                          REF R19
      687 GETUPVAL                         R54 1
      688 GETTABLEKS                       R54 R54 K129 ["VLIST_FILL_BEFORE_EVICT"]
      690 JUMPIF                           R54 ; [+2]
      691 MOVE                             R54 R53
      692 CALL                             R54 0 0
      693 GETUPVAL                         R54 1
      694 GETTABLEKS                       R54 R54 K130 ["VERBOSE_VIRTUAL_LIST"]
      696 JUMPIFNOT                        R13 ; [+4]
      697 GETIMPORT                        R55 K66 [os.clock]
      699 CALL                             R55 0 1
      700 JUMP                             ; [+1]
      701 LOADN                            R55 0
      702 MOVE                             R58 R35
      703 MOVE                             R56 R36
      704 LOADN                            R57 1
      705 FORNPREP                         R56
      706 GETTABLEKS                       R60 R2 K2 ["entries"]
      708 GETTABLE                         R59 R60 R58
      709 JUMPIFNOT                        R59 ; [+109]
      710 GETTABLEKS                       R60 R2 K2 ["entries"]
      712 GETTABLE                         R59 R60 R58
      713 JUMPIFNOT                        R48 ; [+16]
      714 GETTABLEKS                       R60 R59 K131 ["setItem"]
      716 JUMPIFNOT                        R60 ; [+5]
      717 JUMPIF                           R24 ; [+4]
      718 GETTABLEKS                       R60 R59 K131 ["setItem"]
      720 GETTABLE                         R61 R25 R58
      721 CALL                             R60 1 0
      722 GETTABLEKS                       R60 R59 K132 ["setIndex"]
      724 JUMPIFNOT                        R60 ; [+61]
      725 GETTABLEKS                       R60 R59 K132 ["setIndex"]
      727 MOVE                             R61 R58
      728 CALL                             R60 1 0
      729 JUMP                             ; [+56]
      730 JUMPIFNOT                        R46 ; [+26]
      731 JUMPIF                           R24 ; [+25]
      732 GETTABLEKS                       R60 R59 K133 ["_itemCursor"]
      734 GETTABLE                         R61 R25 R58
      735 JUMPIFEQ                         R60 R61 ; [+21]
      737 GETTABLEKS                       R60 R59 K134 ["element"]
      739 LOADB                            R61 0
      740 SETTABLEKS                       R61 R60 K121 ["alive"]
      742 GETTABLEKS                       R60 R1 K58 ["publish"]
      744 GETTABLEKS                       R61 R59 K134 ["element"]
      746 CALL                             R60 1 0
      747 GETTABLEKS                       R60 R59 K135 ["wrapper"]
      749 NAMECALL                         R60 R60 K136 ["Destroy"]
      751 CALL                             R60 1 0
      752 GETTABLEKS                       R60 R2 K2 ["entries"]
      754 LOADNIL                          R61
      755 SETTABLE                         R61 R60 R58
      756 JUMP                             ; [+29]
      757 JUMPIFNOT                        R28 ; [+427]
      758 GETTABLEKS                       R60 R59 K135 ["wrapper"]
      760 JUMPIFNOT                        R60 ; [+424]
      761 GETTABLEKS                       R60 R59 K135 ["wrapper"]
      763 GETIMPORT                        R61 K114 [UDim2.fromOffset]
      765 LOADN                            R62 0
      766 GETTABLE                         R63 R40 R58
      767 CALL                             R61 2 1
      768 SETTABLEKS                       R61 R60 K137 ["Position"]
      770 GETTABLEKS                       R60 R59 K135 ["wrapper"]
      772 GETIMPORT                        R61 K16 [UDim2.new]
      774 LOADN                            R62 1
      775 LOADN                            R63 0
      776 LOADN                            R64 0
      777 GETTABLE                         R65 R41 R58
      778 JUMPIF                           R65 ; [+3]
      779 MOVE                             R65 R27
      780 MOVE                             R66 R58
      781 CALL                             R65 1 1
      782 CALL                             R61 4 1
      783 SETTABLEKS                       R61 R60 K17 ["Size"]
      785 JUMP                             ; [+399]
      786 GETTABLEKS                       R61 R2 K2 ["entries"]
      788 GETTABLE                         R60 R61 R58
      789 JUMPIFNOT                        R60 ; [+29]
      790 JUMPIFNOT                        R28 ; [+394]
      791 GETTABLEKS                       R60 R59 K135 ["wrapper"]
      793 JUMPIFNOT                        R60 ; [+391]
      794 GETTABLEKS                       R60 R59 K135 ["wrapper"]
      796 GETIMPORT                        R61 K114 [UDim2.fromOffset]
      798 LOADN                            R62 0
      799 GETTABLE                         R63 R40 R58
      800 CALL                             R61 2 1
      801 SETTABLEKS                       R61 R60 K137 ["Position"]
      803 GETTABLEKS                       R60 R59 K135 ["wrapper"]
      805 GETIMPORT                        R61 K16 [UDim2.new]
      807 LOADN                            R62 1
      808 LOADN                            R63 0
      809 LOADN                            R64 0
      810 GETTABLE                         R65 R41 R58
      811 JUMPIF                           R65 ; [+3]
      812 MOVE                             R65 R27
      813 MOVE                             R66 R58
      814 CALL                             R65 1 1
      815 CALL                             R61 4 1
      816 SETTABLEKS                       R61 R60 K17 ["Size"]
      818 JUMP                             ; [+366]
      819 JUMPIFNOTEQKS                    R8 K4 ["cache"] ; [+75]
      821 GETTABLEKS                       R60 R2 K4 ["cache"]
      823 GETTABLE                         R59 R60 R58
      824 JUMPIFNOT                        R59 ; [+70]
      825 GETTABLEKS                       R60 R2 K4 ["cache"]
      827 LOADNIL                          R61
      828 SETTABLE                         R61 R60 R58
      829 GETTABLEKS                       R60 R59 K135 ["wrapper"]
      831 SETTABLEKS                       R5 R60 K31 ["Parent"]
      833 GETTABLEKS                       R60 R59 K135 ["wrapper"]
      835 GETIMPORT                        R61 K114 [UDim2.fromOffset]
      837 LOADN                            R62 0
      838 JUMPIFNOT                        R28 ; [+2]
      839 GETTABLE                         R63 R40 R58
      840 JUMP                             ; [+3]
      841 SUBK                             R64 R58 K108 [1]
      842 ADD                              R65 R9 R12
      843 MUL                              R63 R64 R65
      844 CALL                             R61 2 1
      845 SETTABLEKS                       R61 R60 K137 ["Position"]
      847 JUMPIFNOT                        R28 ; [+15]
      848 GETTABLEKS                       R60 R59 K135 ["wrapper"]
      850 GETIMPORT                        R61 K16 [UDim2.new]
      852 LOADN                            R62 1
      853 LOADN                            R63 0
      854 LOADN                            R64 0
      855 GETTABLE                         R65 R41 R58
      856 JUMPIF                           R65 ; [+3]
      857 MOVE                             R65 R27
      858 MOVE                             R66 R58
      859 CALL                             R65 1 1
      860 CALL                             R61 4 1
      861 SETTABLEKS                       R61 R60 K17 ["Size"]
      863 SETTABLEKS                       R58 R59 K138 ["index"]
      865 GETTABLEKS                       R60 R59 K131 ["setItem"]
      867 JUMPIFNOT                        R60 ; [+5]
      868 JUMPIF                           R24 ; [+4]
      869 GETTABLEKS                       R60 R59 K131 ["setItem"]
      871 GETTABLE                         R61 R25 R58
      872 CALL                             R60 1 0
      873 GETTABLEKS                       R60 R59 K132 ["setIndex"]
      875 JUMPIFNOT                        R60 ; [+4]
      876 GETTABLEKS                       R60 R59 K132 ["setIndex"]
      878 MOVE                             R61 R58
      879 CALL                             R60 1 0
      880 GETTABLEKS                       R60 R2 K2 ["entries"]
      882 SETTABLE                         R59 R60 R58
      883 ADDK                             R16 R16 K108 [1]
      884 JUMPIFNOT                        R54 ; [+300]
      885 GETIMPORT                        R60 K140 [print]
      887 LOADK                            R62 K141 ["[VList] cache-hit idx=%*"]
      888 MOVE                             R64 R58
      889 NAMECALL                         R62 R62 K142 ["format"]
      891 CALL                             R62 2 1
      892 MOVE                             R61 R62
      893 CALL                             R60 1 0
      894 JUMP                             ; [+290]
      895 JUMPIFNOT                        R48 ; [+114]
      896 GETIMPORT                        R59 K144 [table.remove]
      898 GETTABLEKS                       R60 R2 K3 ["pool"]
      900 CALL                             R59 1 1
      901 JUMPIFNOT                        R59 ; [+108]
      902 GETTABLEKS                       R60 R59 K138 ["index"]
      904 SETTABLEKS                       R58 R59 K138 ["index"]
      906 GETTABLEKS                       R61 R59 K135 ["wrapper"]
      908 SETTABLEKS                       R5 R61 K31 ["Parent"]
      910 GETTABLEKS                       R61 R59 K135 ["wrapper"]
      912 GETIMPORT                        R62 K114 [UDim2.fromOffset]
      914 LOADN                            R63 0
      915 JUMPIFNOT                        R28 ; [+2]
      916 GETTABLE                         R64 R40 R58
      917 JUMP                             ; [+3]
      918 SUBK                             R65 R58 K108 [1]
      919 ADD                              R66 R9 R12
      920 MUL                              R64 R65 R66
      921 CALL                             R62 2 1
      922 SETTABLEKS                       R62 R61 K137 ["Position"]
      924 JUMPIFNOT                        R28 ; [+15]
      925 GETTABLEKS                       R61 R59 K135 ["wrapper"]
      927 GETIMPORT                        R62 K16 [UDim2.new]
      929 LOADN                            R63 1
      930 LOADN                            R64 0
      931 LOADN                            R65 0
      932 GETTABLE                         R66 R41 R58
      933 JUMPIF                           R66 ; [+3]
      934 MOVE                             R66 R27
      935 MOVE                             R67 R58
      936 CALL                             R66 1 1
      937 CALL                             R62 4 1
      938 SETTABLEKS                       R62 R61 K17 ["Size"]
      940 GETTABLEKS                       R61 R2 K2 ["entries"]
      942 SETTABLE                         R59 R61 R58
      943 GETTABLEKS                       R61 R59 K132 ["setIndex"]
      945 JUMPIFNOT                        R61 ; [+4]
      946 GETTABLEKS                       R61 R59 K132 ["setIndex"]
      948 MOVE                             R62 R58
      949 CALL                             R61 1 0
      950 GETTABLEKS                       R61 R59 K131 ["setItem"]
      952 JUMPIFNOT                        R61 ; [+10]
      953 JUMPIFNOT                        R24 ; [+5]
      954 GETTABLEKS                       R61 R59 K131 ["setItem"]
      956 MOVE                             R62 R58
      957 CALL                             R61 1 0
      958 JUMP                             ; [+4]
      959 GETTABLEKS                       R61 R59 K131 ["setItem"]
      961 GETTABLE                         R62 R25 R58
      962 CALL                             R61 1 0
      963 ADDK                             R17 R17 K108 [1]
      964 JUMPIFNOT                        R54 ; [+220]
      965 JUMPIFNOT                        R24 ; [+9]
      966 MOVE                             R63 R4
      967 MOVE                             R64 R23
      968 CALL                             R63 1 1
      969 GETTABLE                         R62 R63 R58
      970 FASTCALL1                        TOSTRING R62 ; [+2]
      971 GETIMPORT                        R61 K146 [tostring]
      973 CALL                             R61 1 1
      974 JUMP                             ; [+5]
      975 GETTABLE                         R62 R25 R58
      976 FASTCALL1                        TOSTRING R62 ; [+2]
      977 GETIMPORT                        R61 K146 [tostring]
      979 CALL                             R61 1 1
      980 GETIMPORT                        R62 K140 [print]
      982 LOADK                            R64 K147 ["[VList] pool-recycle oldIdx=%* -> newIdx=%*, isStore=%*, expected=\"%*\""]
      983 MOVE                             R66 R60
      984 MOVE                             R67 R58
      985 FASTCALL1                        TOSTRING R24 ; [+3]
      986 MOVE                             R69 R24
      987 GETIMPORT                        R68 K146 [tostring]
      989 CALL                             R68 1 1
      990 LENGTH                           R70 R61
      991 LOADN                            R71 40
      992 JUMPIFNOTLT                      R71 R70 ; [+10]
      994 LOADN                            R74 1
      995 LOADN                            R75 40
      996 NAMECALL                         R72 R61 K148 ["sub"]
      998 CALL                             R72 3 1
      999 MOVE                             R70 R72
     1000 LOADK                            R71 K149 ["..."]
     1001 CONCAT                           R69 R70 R71
     1002 JUMP                             ; [+1]
     1003 MOVE                             R69 R61
     1004 NAMECALL                         R64 R64 K142 ["format"]
     1006 CALL                             R64 5 1
     1007 MOVE                             R63 R64
     1008 CALL                             R62 1 0
     1009 JUMP                             ; [+175]
     1010 GETIMPORT                        R59 K11 [Instance.new]
     1012 LOADK                            R60 K150 ["Frame"]
     1013 CALL                             R59 1 1
     1014 LOADK                            R60 K151 ["VirtualListRow"]
     1015 SETTABLEKS                       R60 R59 K14 ["Name"]
     1017 LOADN                            R60 1
     1018 SETTABLEKS                       R60 R59 K27 ["BackgroundTransparency"]
     1020 LOADN                            R60 0
     1021 SETTABLEKS                       R60 R59 K28 ["BorderSizePixel"]
     1023 GETIMPORT                        R60 K114 [UDim2.fromOffset]
     1025 LOADN                            R61 0
     1026 JUMPIFNOT                        R28 ; [+2]
     1027 GETTABLE                         R62 R40 R58
     1028 JUMP                             ; [+3]
     1029 SUBK                             R63 R58 K108 [1]
     1030 ADD                              R64 R9 R12
     1031 MUL                              R62 R63 R64
     1032 CALL                             R60 2 1
     1033 SETTABLEKS                       R60 R59 K137 ["Position"]
     1035 GETIMPORT                        R60 K16 [UDim2.new]
     1037 LOADN                            R61 1
     1038 LOADN                            R62 0
     1039 LOADN                            R63 0
     1040 JUMPIFNOT                        R28 ; [+6]
     1041 GETTABLE                         R64 R41 R58
     1042 JUMPIF                           R64 ; [+5]
     1043 MOVE                             R64 R27
     1044 MOVE                             R65 R58
     1045 CALL                             R64 1 1
     1046 JUMP                             ; [+1]
     1047 MOVE                             R64 R9
     1048 CALL                             R60 4 1
     1049 SETTABLEKS                       R60 R59 K17 ["Size"]
     1051 SETTABLEKS                       R5 R59 K31 ["Parent"]
     1053 NEWTABLE                         R60 0 0
     1055 LOADNIL                          R61
     1056 LOADNIL                          R62
     1057 LOADNIL                          R63
     1058 LOADNIL                          R64
     1059 JUMPIFNOT                        R48 ; [+68]
     1060 JUMPIFNOT                        R46 ; [+50]
     1061 JUMPIFNOT                        R24 ; [+34]
     1062 GETUPVAL                         R65 0
     1063 GETTABLEKS                       R65 R65 K38 ["createSignal"]
     1065 MOVE                             R66 R58
     1066 LOADNIL                          R67
     1067 LOADK                            R69 K152 ["vlist-item-idx-%*"]
     1068 MOVE                             R71 R58
     1069 NAMECALL                         R69 R69 K142 ["format"]
     1071 CALL                             R69 2 1
     1072 MOVE                             R68 R69
     1073 CALL                             R65 3 2
     1074 MOVE                             R67 R58
     1075 GETTABLE                         R68 R23 R58
     1076 GETUPVAL                         R69 0
     1077 GETTABLEKS                       R69 R69 K153 ["createComputed"]
     1079 NEWCLOSURE                       R70 P5
     1080 CAPTURE                          VAL R65
     1081 CAPTURE                          REF R67
     1082 CAPTURE                          REF R68
     1083 CAPTURE                          VAL R23
     1084 DUPCLOSURE                       R71 K154 [PROTO_9]
     1085 LOADK                            R73 K155 ["vlist-store-item-%*"]
     1086 MOVE                             R75 R58
     1087 NAMECALL                         R73 R73 K142 ["format"]
     1089 CALL                             R73 2 1
     1090 MOVE                             R72 R73
     1091 CALL                             R69 3 1
     1092 MOVE                             R61 R69
     1093 MOVE                             R62 R66
     1094 CLOSEUPVALS                      R67
     1095 JUMP                             ; [+14]
     1096 GETUPVAL                         R65 0
     1097 GETTABLEKS                       R65 R65 K38 ["createSignal"]
     1099 GETTABLE                         R66 R25 R58
     1100 LOADNIL                          R67
     1101 LOADK                            R69 K156 ["vlist-item-%*"]
     1102 MOVE                             R71 R58
     1103 NAMECALL                         R69 R69 K142 ["format"]
     1105 CALL                             R69 2 1
     1106 MOVE                             R68 R69
     1107 CALL                             R65 3 2
     1108 MOVE                             R61 R65
     1109 MOVE                             R62 R66
     1110 SETTABLE                         R61 R60 R45
     1111 JUMPIFNOT                        R47 ; [+25]
     1112 GETUPVAL                         R65 0
     1113 GETTABLEKS                       R65 R65 K38 ["createSignal"]
     1115 MOVE                             R66 R58
     1116 LOADNIL                          R67
     1117 LOADK                            R69 K157 ["vlist-index-%*"]
     1118 MOVE                             R71 R58
     1119 NAMECALL                         R69 R69 K142 ["format"]
     1121 CALL                             R69 2 1
     1122 MOVE                             R68 R69
     1123 CALL                             R65 3 2
     1124 MOVE                             R63 R65
     1125 MOVE                             R64 R66
     1126 SETTABLE                         R63 R60 R44
     1127 JUMP                             ; [+9]
     1128 JUMPIFNOT                        R46 ; [+5]
     1129 JUMPIFNOT                        R24 ; [+2]
     1130 GETTABLE                         R61 R23 R58
     1131 JUMP                             ; [+1]
     1132 GETTABLE                         R61 R25 R58
     1133 SETTABLE                         R61 R60 R45
     1134 JUMPIFNOT                        R47 ; [+2]
     1135 MOVE                             R63 R58
     1136 SETTABLE                         R63 R60 R44
     1137 DUPTABLE                         R65 K159 [{["type"] = "Ref", ["templateAst"], ["templateId"] = "/inner/each", ["children"], ["params"]}]
     1138 SETTABLEKS                       R21 R65 K51 ["templateAst"]
     1140 NEWTABLE                         R66 0 0
     1142 SETTABLEKS                       R66 R65 K48 ["children"]
     1144 SETTABLEKS                       R60 R65 K54 ["params"]
     1146 GETTABLEKS                       R66 R1 K56 ["createChild"]
     1148 MOVE                             R67 R65
     1149 MOVE                             R68 R58
     1150 MOVE                             R69 R59
     1151 CALL                             R66 3 1
     1152 GETTABLEKS                       R67 R1 K58 ["publish"]
     1154 MOVE                             R68 R66
     1155 CALL                             R67 1 0
     1156 GETTABLEKS                       R67 R2 K2 ["entries"]
     1158 DUPTABLE                         R68 K163 [{["wrapper"], ["element"], ["index"], ["version"] = 0, ["setItem"], ["setIndex"], ["_itemCursor"], ["_indexCursor"], ["accessTime"] = 0}]
     1159 SETTABLEKS                       R59 R68 K135 ["wrapper"]
     1161 SETTABLEKS                       R66 R68 K134 ["element"]
     1163 SETTABLEKS                       R58 R68 K138 ["index"]
     1165 SETTABLEKS                       R62 R68 K131 ["setItem"]
     1167 SETTABLEKS                       R64 R68 K132 ["setIndex"]
     1169 SETTABLEKS                       R61 R68 K133 ["_itemCursor"]
     1171 SETTABLEKS                       R63 R68 K161 ["_indexCursor"]
     1173 SETTABLE                         R68 R67 R58
     1174 ADDK                             R18 R18 K108 [1]
     1175 JUMPIFNOT                        R54 ; [+9]
     1176 GETIMPORT                        R67 K140 [print]
     1178 LOADK                            R69 K164 ["[VList] create idx=%*"]
     1179 MOVE                             R71 R58
     1180 NAMECALL                         R69 R69 K142 ["format"]
     1182 CALL                             R69 2 1
     1183 MOVE                             R68 R69
     1184 CALL                             R67 1 0
     1185 FORNLOOP                         R56
     1186 JUMPIFNOT                        R13 ; [+4]
     1187 GETIMPORT                        R56 K66 [os.clock]
     1189 CALL                             R56 0 1
     1190 SUB                              R20 R56 R55
     1191 GETUPVAL                         R56 1
     1192 GETTABLEKS                       R56 R56 K129 ["VLIST_FILL_BEFORE_EVICT"]
     1194 JUMPIFNOT                        R56 ; [+2]
     1195 MOVE                             R56 R53
     1196 CALL                             R56 0 0
     1197 JUMPIFNOTEQKS                    R8 K4 ["cache"] ; [+69]
     1199 LOADN                            R56 0
     1200 GETTABLEKS                       R57 R2 K4 ["cache"]
     1202 LOADNIL                          R58
     1203 LOADNIL                          R59
     1204 FORGPREP                         R57
     1205 ADDK                             R56 R56 K108 [1]
     1206 FORGLOOP                         R57 1 ; [-2]
     1208 SUB                              R57 R56 R11
     1209 LOADN                            R58 0
     1210 JUMPIFNOTLT                      R58 R57 ; [+56]
     1212 NEWTABLE                         R58 0 0
     1214 GETTABLEKS                       R59 R2 K4 ["cache"]
     1216 LOADNIL                          R60
     1217 LOADNIL                          R61
     1218 FORGPREP                         R59
     1219 FASTCALL2                        TABLE_INSERT R58 R62 ; [+5]
     1221 MOVE                             R65 R58
     1222 MOVE                             R66 R62
     1223 GETIMPORT                        R64 K166 [table.insert]
     1225 CALL                             R64 2 0
     1226 FORGLOOP                         R59 1 ; [-8]
     1228 GETIMPORT                        R59 K168 [table.sort]
     1230 MOVE                             R60 R58
     1231 NEWCLOSURE                       R61 P7
     1232 CAPTURE                          VAL R2
     1233 CALL                             R59 2 0
     1234 LOADN                            R61 1
     1235 MOVE                             R59 R57
     1236 LOADN                            R60 1
     1237 FORNPREP                         R59
     1238 GETTABLE                         R62 R58 R61
     1239 GETTABLEKS                       R64 R2 K4 ["cache"]
     1241 GETTABLE                         R63 R64 R62
     1242 GETTABLEKS                       R64 R2 K4 ["cache"]
     1244 LOADNIL                          R65
     1245 SETTABLE                         R65 R64 R62
     1246 GETTABLEKS                       R65 R2 K3 ["pool"]
     1248 FASTCALL2                        TABLE_INSERT R65 R63 ; [+4]
     1250 MOVE                             R66 R63
     1251 GETIMPORT                        R64 K166 [table.insert]
     1253 CALL                             R64 2 0
     1254 JUMPIFNOT                        R54 ; [+11]
     1255 GETIMPORT                        R64 K140 [print]
     1257 LOADK                            R66 K169 ["[VList] lru-evict idx=%* -> pool (cacheCount=%*, cacheSize=%*)"]
     1258 MOVE                             R68 R62
     1259 MOVE                             R69 R56
     1260 MOVE                             R70 R11
     1261 NAMECALL                         R66 R66 K142 ["format"]
     1263 CALL                             R66 4 1
     1264 MOVE                             R65 R66
     1265 CALL                             R64 1 0
     1266 FORNLOOP                         R59
     1267 JUMPIFNOT                        R28 ; [+19]
     1268 GETIMPORT                        R56 K172 [task.delay]
     1270 LOADN                            R57 0
     1271 NEWCLOSURE                       R58 P8
     1272 CAPTURE                          VAL R2
     1273 CAPTURE                          REF R41
     1274 CAPTURE                          VAL R27
     1275 CAPTURE                          VAL R24
     1276 CAPTURE                          VAL R4
     1277 CAPTURE                          VAL R23
     1278 CAPTURE                          REF R25
     1279 CAPTURE                          UPVAL U2
     1280 CAPTURE                          VAL R26
     1281 CAPTURE                          REF R40
     1282 CAPTURE                          VAL R12
     1283 CAPTURE                          REF R30
     1284 CAPTURE                          REF R31
     1285 CAPTURE                          VAL R5
     1286 CALL                             R56 2 0
     1287 JUMPIFNOT                        R13 ; [+98]
     1288 GETIMPORT                        R56 K66 [os.clock]
     1290 CALL                             R56 0 1
     1291 SUB                              R57 R56 R14
     1292 GETTABLEKS                       R59 R2 K173 ["_lastScrollEventTime"]
     1294 JUMPIFNOT                        R59 ; [+9]
     1295 GETTABLEKS                       R59 R2 K173 ["_lastScrollEventTime"]
     1297 LOADN                            R60 0
     1298 JUMPIFNOTLT                      R60 R59 ; [+5]
     1300 GETTABLEKS                       R59 R2 K173 ["_lastScrollEventTime"]
     1302 SUB                              R58 R14 R59
     1303 JUMP                             ; [+1]
     1304 LOADN                            R58 -1
     1305 LOADN                            R59 0
     1306 GETTABLEKS                       R60 R2 K2 ["entries"]
     1308 LOADNIL                          R61
     1309 LOADNIL                          R62
     1310 FORGPREP                         R60
     1311 ADDK                             R59 R59 K108 [1]
     1312 FORGLOOP                         R60 1 ; [-2]
     1314 LOADN                            R60 0
     1315 GETTABLEKS                       R61 R2 K4 ["cache"]
     1317 LOADNIL                          R62
     1318 LOADNIL                          R63
     1319 FORGPREP                         R61
     1320 ADDK                             R60 R60 K108 [1]
     1321 FORGLOOP                         R61 1 ; [-2]
     1323 GETTABLEKS                       R62 R2 K3 ["pool"]
     1325 LENGTH                           R61 R62
     1326 GETIMPORT                        R62 K140 [print]
     1328 GETIMPORT                        R63 K175 [string.format]
     1330 LOADK                            R64 K176 ["[VList:profile] total=%.3fms sched=%.3fms evict=%.3fms fill=%.3fms | evicted=%d cacheHit=%d poolHit=%d created=%d | range=[%d..%d] entries=%d cache=%d pool=%d scrollY=%d delta=%s"]
     1331 MULK                             R65 R57 K177 [1000]
     1332 MULK                             R66 R58 K177 [1000]
     1333 MULK                             R67 R19 K177 [1000]
     1334 MULK                             R68 R20 K177 [1000]
     1335 MOVE                             R69 R15
     1336 MOVE                             R70 R16
     1337 MOVE                             R71 R17
     1338 MOVE                             R72 R18
     1339 MOVE                             R73 R35
     1340 MOVE                             R74 R36
     1341 MOVE                             R75 R59
     1342 MOVE                             R76 R60
     1343 MOVE                             R77 R61
     1344 FASTCALL1                        MATH_FLOOR R33 ; [+3]
     1345 MOVE                             R79 R33
     1346 GETIMPORT                        R78 K110 [math.floor]
     1348 CALL                             R78 1 1
     1349 FASTCALL1                        TOSTRING R52 ; [+3]
     1350 MOVE                             R80 R52
     1351 GETIMPORT                        R79 K146 [tostring]
     1353 CALL                             R79 1 1
     1354 CALL                             R63 16 -1
     1355 CALL                             R62 -1 0
     1356 GETTABLEKS                       R64 R2 K63 ["_profileRunCount"]
     1358 ORK                              R63 R64 K116 [0]
     1359 ADDK                             R62 R63 K108 [1]
     1360 SETTABLEKS                       R62 R2 K63 ["_profileRunCount"]
     1362 GETIMPORT                        R62 K66 [os.clock]
     1364 CALL                             R62 0 1
     1365 GETTABLEKS                       R65 R2 K67 ["_profileWindowStart"]
     1367 OR                               R64 R65 R62
     1368 SUB                              R63 R62 R64
     1369 LOADN                            R64 1
     1370 JUMPIFNOTLE                      R64 R63 ; [+15]
     1372 GETIMPORT                        R63 K140 [print]
     1374 GETIMPORT                        R64 K175 [string.format]
     1376 LOADK                            R65 K178 ["[VList:profile] frequency=%d runs/sec"]
     1377 GETTABLEKS                       R66 R2 K63 ["_profileRunCount"]
     1379 CALL                             R64 2 -1
     1380 CALL                             R63 -1 0
     1381 LOADN                            R63 0
     1382 SETTABLEKS                       R63 R2 K63 ["_profileRunCount"]
     1384 SETTABLEKS                       R62 R2 K67 ["_profileWindowStart"]
     1386 CLOSEUPVALS                      R15
     1387 RETURN                           R0 0

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
       27 DUPTABLE                         R6 K21 [{["type"] = "Template", ["name"] = "VirtualList", ["defaultParams"], ["children"], ["controller"] = , ["analyze"] = , ["mountEffect"]}]
       28 DUPTABLE                         R7 K44 [{["items"], ["itemSize"] = 20, ["overscan"] = 2, ["strategy"] = "none", ["cacheSize"] = 200, ["keyBy"] = False, ["tags"] = "", ["useParentScroll"] = False, ["spacing"] = 0, ["getHeight"] = False, ["heightVersion"] = 0, ["loadRows"] = False, ["Each"], ["None"], ["Content"]}]
       29 NEWTABLE                         R8 0 0
       31 SETTABLEKS                       R8 R7 K22 ["items"]
       33 DUPTABLE                         R8 K45 [{["type"] = "Template", ["name"] = "Each"}]
       34 SETTABLEKS                       R8 R7 K41 ["Each"]
       36 DUPTABLE                         R8 K46 [{["type"] = "Template", ["name"] = "None"}]
       37 SETTABLEKS                       R8 R7 K42 ["None"]
       39 DUPTABLE                         R8 K47 [{["type"] = "Template", ["name"] = "Content"}]
       40 SETTABLEKS                       R8 R7 K43 ["Content"]
       42 SETTABLEKS                       R7 R6 K15 ["defaultParams"]
       44 NEWTABLE                         R7 0 0
       46 SETTABLEKS                       R7 R6 K16 ["children"]
       48 DUPCLOSURE                       R7 K48 [PROTO_12]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R7 R6 K20 ["mountEffect"]
       54 RETURN                           R6 1
