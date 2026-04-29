PROTO_0:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K2 ["Chalk"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"gutter", "marker", "message"}]
        1 GETTABLEKS                       R2 R0 K4 ["grey"]
        3 SETTABLEKS                       R2 R1 K0 ["gutter"]
        5 GETTABLEKS                       R3 R0 K5 ["red"]
        7 GETTABLEKS                       R2 R3 K6 ["bold"]
        9 SETTABLEKS                       R2 R1 K1 ["marker"]
       11 GETTABLEKS                       R3 R0 K5 ["red"]
       13 GETTABLEKS                       R2 R3 K6 ["bold"]
       15 SETTABLEKS                       R2 R1 K2 ["message"]
       17 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["assign"]
        3 NEWTABLE                         R4 0 0
        5 DUPTABLE                         R5 K3 [{"column", "line"}]
        6 LOADN                            R6 1
        7 SETTABLEKS                       R6 R5 K1 ["column"]
        9 LOADN                            R6 0
       10 SETTABLEKS                       R6 R5 K2 ["line"]
       12 GETTABLEKS                       R6 R0 K4 ["start"]
       14 CALL                             R3 3 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["assign"]
       18 NEWTABLE                         R5 0 0
       20 MOVE                             R6 R3
       21 GETTABLEKS                       R7 R0 K5 ["end"]
       23 CALL                             R4 3 1
       24 JUMPIFNOT                        R2 ; [+2]
       25 MOVE                             R5 R2
       26 JUMP                             ; [+2]
       27 NEWTABLE                         R5 0 0
       29 GETTABLEKS                       R8 R5 K6 ["linesAbove"]
       31 JUMPIFNOTEQKNIL                  R8 ; [+3]
       33 LOADN                            R6 2
       34 JUMP                             ; [+2]
       35 GETTABLEKS                       R6 R5 K6 ["linesAbove"]
       37 GETTABLEKS                       R8 R5 K7 ["linesBelow"]
       39 JUMPIFNOTEQKNIL                  R8 ; [+3]
       41 LOADN                            R7 3
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R7 R5 K7 ["linesBelow"]
       45 GETTABLEKS                       R8 R3 K2 ["line"]
       47 GETTABLEKS                       R9 R3 K1 ["column"]
       49 GETTABLEKS                       R10 R4 K2 ["line"]
       51 GETTABLEKS                       R11 R4 K1 ["column"]
       53 SUB                              R13 R8 R6
       54 FASTCALL2K                       MATH_MAX R13 K8 ; [+4]
       56 LOADK                            R14 K8 [1]
       57 GETIMPORT                        R12 K11 [math.max]
       59 CALL                             R12 2 1
       60 LENGTH                           R15 R1
       61 JUMPIFNOTEQKN                    R15 K12 [0] ; [+3]
       63 LOADN                            R14 1
       64 JUMP                             ; [+1]
       65 LENGTH                           R14 R1
       66 ADD                              R15 R10 R7
       67 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
       69 GETIMPORT                        R13 K14 [math.min]
       71 CALL                             R13 2 1
       72 JUMPIFNOTEQKN                    R8 K12 [0] ; [+2]
       74 LOADN                            R12 1
       75 JUMPIFNOTEQKN                    R10 K12 [0] ; [+7]
       77 LENGTH                           R14 R1
       78 JUMPIFNOTEQKN                    R14 K12 [0] ; [+3]
       80 LOADN                            R13 1
       81 JUMP                             ; [+1]
       82 LENGTH                           R13 R1
       83 SUB                              R14 R10 R8
       84 NEWTABLE                         R15 0 0
       86 LOADN                            R16 0
       87 JUMPIFNOTLT                      R16 R14 ; [+46]
       89 LOADN                            R18 0
       90 MOVE                             R16 R14
       91 LOADN                            R17 1
       92 FORNPREP                         R16
       93 ADD                              R19 R18 R8
       94 LOADN                            R20 1
       95 JUMPIFLT                         R20 R9 ; [+4]
       97 LOADB                            R20 1
       98 SETTABLE                         R20 R15 R19
       99 JUMP                             ; [+32]
      100 JUMPIFNOTEQKN                    R18 K12 [0] ; [+12]
      102 GETTABLE                         R21 R1 R19
      103 LENGTH                           R20 R21
      104 NEWTABLE                         R21 0 2
      106 MOVE                             R22 R9
      107 SUB                              R24 R20 R9
      108 ADDK                             R23 R24 K8 [1]
      109 SETLIST                          R21 R22 2 [1]
      111 SETTABLE                         R21 R15 R19
      112 JUMP                             ; [+19]
      113 JUMPIFNOTEQ                      R18 R14 ; [+9]
      115 NEWTABLE                         R20 0 2
      117 LOADN                            R21 1
      118 MOVE                             R22 R11
      119 SETLIST                          R20 R21 2 [1]
      121 SETTABLE                         R20 R15 R19
      122 JUMP                             ; [+9]
      123 GETTABLE                         R21 R1 R19
      124 LENGTH                           R20 R21
      125 NEWTABLE                         R21 0 2
      127 LOADN                            R22 1
      128 MOVE                             R23 R20
      129 SETLIST                          R21 R22 2 [1]
      131 SETTABLE                         R21 R15 R19
      132 FORNLOOP                         R16
      133 JUMP                             ; [+23]
      134 JUMPIFNOTEQ                      R9 R11 ; [+15]
      136 LOADN                            R16 1
      137 JUMPIFNOTLT                      R16 R9 ; [+9]
      139 NEWTABLE                         R16 0 2
      141 MOVE                             R17 R9
      142 LOADN                            R18 1
      143 SETLIST                          R16 R17 2 [1]
      145 SETTABLE                         R16 R15 R8
      146 JUMP                             ; [+10]
      147 LOADB                            R16 1
      148 SETTABLE                         R16 R15 R8
      149 JUMP                             ; [+7]
      150 NEWTABLE                         R16 0 2
      152 MOVE                             R17 R9
      153 SUB                              R18 R11 R9
      154 SETLIST                          R16 R17 2 [1]
      156 SETTABLE                         R16 R15 R8
      157 NEWTABLE                         R16 4 0
      159 SETTABLEKS                       R12 R16 K4 ["start"]
      161 SETTABLEKS                       R13 R16 K5 ["end"]
      163 SETTABLEKS                       R15 R16 K15 ["markerLines"]
      165 RETURN                           R16 1

PROTO_3:
        0 MOVE                             R2 R1
        1 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 ADD                              R3 R4 R1
        2 SUBK                             R2 R3 K0 [1]
        3 LOADK                            R4 K1 [" %s"]
        4 FASTCALL1                        TOSTRING R2 ; [+3]
        5 MOVE                             R7 R2
        6 GETIMPORT                        R6 K3 [tostring]
        8 CALL                             R6 1 1
        9 NAMECALL                         R4 R4 K4 ["format"]
       11 CALL                             R4 2 1
       12 GETUPVAL                         R6 1
       13 MINUS                            R5 R6
       14 FASTCALL2                        STRING_SUB R4 R5 ; [+3]
       16 GETIMPORT                        R3 K7 [string.sub]
       18 CALL                             R3 2 1
       19 LOADK                            R4 K8 [" %s |"]
       20 MOVE                             R6 R3
       21 NAMECALL                         R4 R4 K4 ["format"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 2
       25 GETTABLE                         R5 R6 R2
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R7 R8 K9 ["toJSBoolean"]
       29 GETUPVAL                         R9 2
       30 ADDK                             R10 R2 K0 [1]
       31 GETTABLE                         R8 R9 R10
       32 CALL                             R7 1 1
       33 NOT                              R6 R7
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R7 R8 K9 ["toJSBoolean"]
       37 MOVE                             R8 R5
       38 CALL                             R7 1 1
       39 JUMPIFNOT                        R7 ; [+118]
       40 LOADK                            R7 K10 [""]
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R8 R9 K11 ["isArray"]
       44 MOVE                             R9 R5
       45 CALL                             R8 1 1
       46 JUMPIFNOT                        R8 ; [+81]
       47 LOADN                            R10 1
       48 GETTABLEN                        R13 R5 1
       49 SUBK                             R12 R13 K0 [1]
       50 FASTCALL2K                       MATH_MAX R12 K12 ; [+4]
       52 LOADK                            R13 K12 [0]
       53 GETIMPORT                        R11 K15 [math.max]
       55 CALL                             R11 2 1
       56 FASTCALL3                        STRING_SUB R0 R10 R11
       58 MOVE                             R9 R0
       59 GETIMPORT                        R8 K7 [string.sub]
       61 CALL                             R8 3 1
       62 LOADK                            R10 K16 ["[^\t]"]
       63 LOADK                            R11 K17 [" "]
       64 NAMECALL                         R8 R8 K18 ["gsub"]
       66 CALL                             R8 3 1
       67 GETTABLEN                        R10 R5 2
       68 LOADN                            R11 1
       69 JUMPIFNOTLT                      R11 R10 ; [+3]
       71 GETTABLEN                        R9 R5 2
       72 JUMP                             ; [+1]
       73 LOADN                            R9 1
       74 GETUPVAL                         R11 4
       75 GETTABLEKS                       R10 R11 K19 ["join"]
       77 NEWTABLE                         R11 0 5
       79 LOADK                            R12 K20 ["\n "]
       80 GETUPVAL                         R15 5
       81 GETTABLEKS                       R14 R15 K21 ["gutter"]
       83 NEWTABLE                         R16 0 1
       85 LOADK                            R19 K22 ["%d"]
       86 LOADK                            R20 K17 [" "]
       87 NAMECALL                         R17 R4 K18 ["gsub"]
       89 CALL                             R17 3 -1
       90 SETLIST                          R16 R17 -1 [1]
       92 GETTABLEN                        R15 R16 1
       93 MOVE                             R13 R15
       94 LOADK                            R14 K17 [" "]
       95 MOVE                             R15 R8
       96 GETUPVAL                         R18 5
       97 GETTABLEKS                       R17 R18 K23 ["marker"]
       99 LOADK                            R16 K24 ["^"]
      100 MOVE                             R18 R9
      101 NAMECALL                         R16 R16 K25 ["rep"]
      103 CALL                             R16 2 -1
      104 SETLIST                          R11 R12 -1 [1]
      106 LOADK                            R12 K10 [""]
      107 CALL                             R10 2 1
      108 MOVE                             R7 R10
      109 JUMPIFNOT                        R6 ; [+18]
      110 GETUPVAL                         R11 3
      111 GETTABLEKS                       R10 R11 K9 ["toJSBoolean"]
      113 GETUPVAL                         R12 6
      114 GETTABLEKS                       R11 R12 K26 ["message"]
      116 CALL                             R10 1 1
      117 JUMPIFNOT                        R10 ; [+10]
      118 MOVE                             R10 R7
      119 LOADK                            R11 K17 [" "]
      120 GETUPVAL                         R14 5
      121 GETTABLEKS                       R13 R14 K26 ["message"]
      123 GETUPVAL                         R15 6
      124 GETTABLEKS                       R14 R15 K26 ["message"]
      126 MOVE                             R12 R14
      127 CONCAT                           R7 R10 R12
      128 GETUPVAL                         R9 4
      129 GETTABLEKS                       R8 R9 K19 ["join"]
      131 NEWTABLE                         R9 0 4
      133 GETUPVAL                         R12 5
      134 GETTABLEKS                       R11 R12 K23 ["marker"]
      136 LOADK                            R10 K27 [">"]
      137 GETUPVAL                         R13 5
      138 GETTABLEKS                       R12 R13 K21 ["gutter"]
      140 MOVE                             R11 R4
      141 LENGTH                           R13 R0
      142 LOADN                            R14 0
      143 JUMPIFNOTLT                      R14 R13 ; [+7]
      145 LOADK                            R12 K1 [" %s"]
      146 MOVE                             R14 R0
      147 NAMECALL                         R12 R12 K4 ["format"]
      149 CALL                             R12 2 1
      150 JUMP                             ; [+1]
      151 LOADK                            R12 K10 [""]
      152 MOVE                             R13 R7
      153 SETLIST                          R9 R10 4 [1]
      155 LOADK                            R10 K10 [""]
      156 CALL                             R8 2 -1
      157 RETURN                           R8 -1
      158 LOADK                            R7 K28 [" %s%s"]
      159 GETUPVAL                         R11 5
      160 GETTABLEKS                       R10 R11 K21 ["gutter"]
      162 MOVE                             R9 R4
      163 LENGTH                           R11 R0
      164 LOADN                            R12 0
      165 JUMPIFNOTLT                      R12 R11 ; [+7]
      167 LOADK                            R10 K1 [" %s"]
      168 MOVE                             R12 R0
      169 NAMECALL                         R10 R10 K4 ["format"]
      171 CALL                             R10 2 1
      172 JUMP                             ; [+1]
      173 LOADK                            R10 K10 [""]
      174 NAMECALL                         R7 R7 K4 ["format"]
      176 CALL                             R7 3 -1
      177 RETURN                           R7 -1

PROTO_5:
        0 JUMPIFNOT                        R2 ; [+2]
        1 MOVE                             R3 R2
        2 JUMP                             ; [+2]
        3 NEWTABLE                         R3 0 0
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R3
        7 CALL                             R4 1 1
        8 DUPTABLE                         R5 K3 [{"gutter", "marker", "message"}]
        9 GETTABLEKS                       R6 R4 K4 ["grey"]
       11 SETTABLEKS                       R6 R5 K0 ["gutter"]
       13 GETTABLEKS                       R7 R4 K5 ["red"]
       15 GETTABLEKS                       R6 R7 K6 ["bold"]
       17 SETTABLEKS                       R6 R5 K1 ["marker"]
       19 GETTABLEKS                       R7 R4 K5 ["red"]
       21 GETTABLEKS                       R6 R7 K6 ["bold"]
       23 SETTABLEKS                       R6 R5 K2 ["message"]
       25 DUPCLOSURE                       R6 K7 [PROTO_3]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R7 R8 K8 ["split"]
       29 MOVE                             R8 R0
       30 GETUPVAL                         R9 2
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 3
       33 MOVE                             R9 R1
       34 MOVE                             R10 R7
       35 MOVE                             R11 R3
       36 CALL                             R8 3 1
       37 GETTABLEKS                       R9 R8 K9 ["start"]
       39 GETTABLEKS                       R10 R8 K10 ["end"]
       41 GETTABLEKS                       R11 R8 K11 ["markerLines"]
       43 GETUPVAL                         R14 4
       44 GETTABLEKS                       R13 R14 K12 ["toJSBoolean"]
       46 GETTABLEKS                       R14 R1 K9 ["start"]
       48 CALL                             R13 1 1
       49 JUMPIFNOT                        R13 ; [+13]
       50 GETTABLEKS                       R15 R1 K9 ["start"]
       52 GETTABLEKS                       R14 R15 K13 ["column"]
       54 FASTCALL1                        TYPEOF R14 ; [+2]
       55 GETIMPORT                        R13 K15 [typeof]
       57 CALL                             R13 1 1
       58 JUMPIFEQKS                       R13 K16 ["number"] ; [+2]
       60 LOADB                            R12 0 +1
       61 LOADB                            R12 1
       62 JUMP                             ; [+2]
       63 GETTABLEKS                       R12 R1 K9 ["start"]
       65 FASTCALL1                        TOSTRING R10 ; [+3]
       66 MOVE                             R15 R10
       67 GETIMPORT                        R14 K18 [tostring]
       69 CALL                             R14 1 1
       70 LENGTH                           R13 R14
       71 GETUPVAL                         R15 5
       72 GETTABLEKS                       R14 R15 K19 ["join"]
       74 GETUPVAL                         R16 5
       75 GETTABLEKS                       R15 R16 K20 ["map"]
       77 GETUPVAL                         R17 5
       78 GETTABLEKS                       R16 R17 K21 ["slice"]
       80 GETUPVAL                         R18 1
       81 GETTABLEKS                       R17 R18 K8 ["split"]
       83 MOVE                             R18 R0
       84 GETUPVAL                         R19 2
       85 MOVE                             R20 R10
       86 CALL                             R17 3 1
       87 MOVE                             R18 R9
       88 ADDK                             R19 R10 K22 [1]
       89 CALL                             R16 3 1
       90 NEWCLOSURE                       R17 P1
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R11
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R3
       98 CALL                             R15 2 1
       99 LOADK                            R16 K23 ["\n"]
      100 CALL                             R14 2 1
      101 GETUPVAL                         R16 4
      102 GETTABLEKS                       R15 R16 K12 ["toJSBoolean"]
      104 GETTABLEKS                       R16 R3 K2 ["message"]
      106 CALL                             R15 1 1
      107 JUMPIFNOT                        R15 ; [+18]
      108 JUMPIF                           R12 ; [+17]
      109 LOADK                            R15 K24 ["%s%s\n%s"]
      110 LOADK                            R17 K25 [" "]
      111 ADDK                             R19 R13 K22 [1]
      112 NAMECALL                         R17 R17 K26 ["rep"]
      114 CALL                             R17 2 1
      115 GETTABLEKS                       R19 R3 K2 ["message"]
      117 FASTCALL1                        TOSTRING R19 ; [+2]
      118 GETIMPORT                        R18 K18 [tostring]
      120 CALL                             R18 1 1
      121 MOVE                             R19 R14
      122 NAMECALL                         R15 R15 K27 ["format"]
      124 CALL                             R15 4 1
      125 MOVE                             R14 R15
      126 RETURN                           R14 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R3 ; [+3]
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 JUMPIF                           R4 ; [+19]
        6 LOADB                            R4 1
        7 SETUPVAL                         R4 0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K0 ["new"]
       11 LOADK                            R5 K1 ["Passing lineNumber and colNumber is deprecated to @babel/code-frame. Please use `codeFrameColumns`."]
       12 CALL                             R4 1 1
       13 LOADK                            R5 K2 ["DeprecationWarning"]
       14 SETTABLEKS                       R5 R4 K3 ["name"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K4 ["warn"]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K0 ["new"]
       22 LOADK                            R7 K1 ["Passing lineNumber and colNumber is deprecated to @babel/code-frame. Please use `codeFrameColumns`."]
       23 CALL                             R6 1 -1
       24 CALL                             R5 -1 0
       25 ORK                              R5 R2 K5 [1]
       26 FASTCALL2K                       MATH_MAX R5 K5 ; [+4]
       28 LOADK                            R6 K5 [1]
       29 GETIMPORT                        R4 K8 [math.max]
       31 CALL                             R4 2 1
       32 MOVE                             R2 R4
       33 DUPTABLE                         R4 K10 [{"start"}]
       34 DUPTABLE                         R5 K13 [{"column", "line"}]
       35 SETTABLEKS                       R2 R5 K11 ["column"]
       37 SETTABLEKS                       R1 R5 K12 ["line"]
       39 SETTABLEKS                       R5 R4 K9 ["start"]
       41 GETUPVAL                         R5 3
       42 MOVE                             R6 R0
       43 MOVE                             R7 R4
       44 MOVE                             R8 R3
       45 CALL                             R5 3 -1
       46 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       18 GETTABLEKS                       R4 R1 K8 ["Error"]
       20 GETTABLEKS                       R5 R1 K9 ["Object"]
       22 GETTABLEKS                       R6 R1 K10 ["String"]
       24 GETTABLEKS                       R7 R1 K11 ["console"]
       26 NEWTABLE                         R8 2 0
       28 DUPCLOSURE                       R9 K12 [PROTO_0]
       29 CAPTURE                          VAL R0
       30 LOADB                            R10 0
       31 DUPCLOSURE                       R11 K13 [PROTO_1]
       32 NEWTABLE                         R12 0 5
       34 LOADK                            R13 K14 ["\r\n"]
       35 LOADK                            R14 K15 ["\n"]
       36 LOADK                            R15 K16 ["\r"]
       37 LOADK                            R16 K17 ["�8"]
       38 LOADK                            R17 K18 ["�9"]
       39 SETLIST                          R12 R13 5 [1]
       41 DUPCLOSURE                       R13 K19 [PROTO_2]
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R14 K20 [PROTO_5]
       44 CAPTURE                          VAL R9
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R12
       47 CAPTURE                          VAL R13
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R14 R8 K21 ["codeFrameColumns"]
       52 NEWCLOSURE                       R15 P4
       53 CAPTURE                          REF R10
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R14
       57 SETTABLEKS                       R15 R8 K22 ["default"]
       59 CLOSEUPVALS                      R10
       60 RETURN                           R8 1
