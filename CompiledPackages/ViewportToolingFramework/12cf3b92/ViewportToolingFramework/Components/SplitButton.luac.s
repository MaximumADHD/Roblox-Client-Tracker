PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R1 K1 ["AbsolutePosition"]
        5 GETTABLEKS                       R4 R4 K0 ["X"]
        7 JUMPIFNOTLE                      R4 R3 ; [+39]
        9 LOADB                            R2 0
       10 GETTABLEKS                       R3 R0 K0 ["X"]
       12 GETTABLEKS                       R5 R1 K1 ["AbsolutePosition"]
       14 GETTABLEKS                       R5 R5 K0 ["X"]
       16 GETTABLEKS                       R6 R1 K2 ["AbsoluteSize"]
       18 GETTABLEKS                       R6 R6 K0 ["X"]
       20 ADD                              R4 R5 R6
       21 JUMPIFNOTLE                      R3 R4 ; [+25]
       23 LOADB                            R2 0
       24 GETTABLEKS                       R3 R0 K3 ["Y"]
       26 GETTABLEKS                       R4 R1 K1 ["AbsolutePosition"]
       28 GETTABLEKS                       R4 R4 K3 ["Y"]
       30 JUMPIFNOTLE                      R4 R3 ; [+16]
       32 GETTABLEKS                       R3 R0 K3 ["Y"]
       34 GETTABLEKS                       R5 R1 K1 ["AbsolutePosition"]
       36 GETTABLEKS                       R5 R5 K3 ["Y"]
       38 GETTABLEKS                       R6 R1 K2 ["AbsoluteSize"]
       40 GETTABLEKS                       R6 R6 K3 ["Y"]
       42 ADD                              R4 R5 R6
       43 JUMPIFLE                         R3 R4 ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Direction"]
        3 JUMPIFNOTEQKS                    R1 K1 ["Horizontal"] ; [+20]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R4 R0 K2 ["AbsolutePosition"]
        8 GETIMPORT                        R5 K5 [Vector2.new]
       10 LOADN                            R6 0
       11 GETTABLEKS                       R8 R0 K7 ["AbsoluteSize"]
       13 GETTABLEKS                       R8 R8 K8 ["Y"]
       15 ADDK                             R7 R8 K6 [10]
       16 CALL                             R5 2 1
       17 ADD                              R3 R4 R5
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K2 ["AbsolutePosition"]
       21 SUB                              R2 R3 R4
       22 CALL                             R1 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["Direction"]
       27 JUMPIFNOTEQKS                    R1 K9 ["Vertical"] ; [+20]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R4 R0 K2 ["AbsolutePosition"]
       32 GETIMPORT                        R5 K5 [Vector2.new]
       34 GETTABLEKS                       R7 R0 K7 ["AbsoluteSize"]
       36 GETTABLEKS                       R7 R7 K10 ["X"]
       38 ADDK                             R6 R7 K6 [10]
       39 LOADN                            R7 0
       40 CALL                             R5 2 1
       41 ADD                              R3 R4 R5
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K2 ["AbsolutePosition"]
       45 SUB                              R2 R3 R4
       46 CALL                             R1 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K0 ["Direction"]
       51 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K4 ["current"]
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKNIL                  R1 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       19 LOADK                            R4 K5 ["Luau"]
       20 GETIMPORT                        R2 K7 [assert]
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R3 R0 K8 ["Position"]
       25 LOADB                            R2 0
       26 GETTABLEKS                       R4 R3 K9 ["X"]
       28 GETTABLEKS                       R5 R1 K10 ["AbsolutePosition"]
       30 GETTABLEKS                       R5 R5 K9 ["X"]
       32 JUMPIFNOTLE                      R5 R4 ; [+39]
       34 LOADB                            R2 0
       35 GETTABLEKS                       R4 R3 K9 ["X"]
       37 GETTABLEKS                       R6 R1 K10 ["AbsolutePosition"]
       39 GETTABLEKS                       R6 R6 K9 ["X"]
       41 GETTABLEKS                       R7 R1 K11 ["AbsoluteSize"]
       43 GETTABLEKS                       R7 R7 K9 ["X"]
       45 ADD                              R5 R6 R7
       46 JUMPIFNOTLE                      R4 R5 ; [+25]
       48 LOADB                            R2 0
       49 GETTABLEKS                       R4 R3 K12 ["Y"]
       51 GETTABLEKS                       R5 R1 K10 ["AbsolutePosition"]
       53 GETTABLEKS                       R5 R5 K12 ["Y"]
       55 JUMPIFNOTLE                      R5 R4 ; [+16]
       57 GETTABLEKS                       R4 R3 K12 ["Y"]
       59 GETTABLEKS                       R6 R1 K10 ["AbsolutePosition"]
       61 GETTABLEKS                       R6 R6 K12 ["Y"]
       63 GETTABLEKS                       R7 R1 K11 ["AbsoluteSize"]
       65 GETTABLEKS                       R7 R7 K12 ["Y"]
       67 ADD                              R5 R6 R7
       68 JUMPIFLE                         R4 R5 ; [+2]
       70 LOADB                            R2 0 +1
       71 LOADB                            R2 1
       72 JUMPIFNOT                        R2 ; [+1]
       73 RETURN                           R0 0
       74 GETUPVAL                         R2 1
       75 GETTABLEKS                       R2 R2 K13 ["Close"]
       77 CALL                             R2 0 0
       78 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InputBegan"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 SETTABLE                         R0 R1 R2
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 JUMPIFNOTEQKNIL                  R5 ; [+2]
        8 LOADB                            R7 0 +1
        9 LOADB                            R7 1
       10 FASTCALL2K                       ASSERT R7 K1 ; [+4]
       12 LOADK                            R8 K1 ["Luau"]
       13 GETIMPORT                        R6 K3 [assert]
       15 CALL                             R6 2 0
       16 LOADB                            R6 0
       17 GETTABLEKS                       R7 R0 K4 ["X"]
       19 GETTABLEKS                       R8 R5 K5 ["AbsolutePosition"]
       21 GETTABLEKS                       R8 R8 K4 ["X"]
       23 JUMPIFNOTLE                      R8 R7 ; [+39]
       25 LOADB                            R6 0
       26 GETTABLEKS                       R7 R0 K4 ["X"]
       28 GETTABLEKS                       R9 R5 K5 ["AbsolutePosition"]
       30 GETTABLEKS                       R9 R9 K4 ["X"]
       32 GETTABLEKS                       R10 R5 K6 ["AbsoluteSize"]
       34 GETTABLEKS                       R10 R10 K4 ["X"]
       36 ADD                              R8 R9 R10
       37 JUMPIFNOTLE                      R7 R8 ; [+25]
       39 LOADB                            R6 0
       40 GETTABLEKS                       R7 R0 K7 ["Y"]
       42 GETTABLEKS                       R8 R5 K5 ["AbsolutePosition"]
       44 GETTABLEKS                       R8 R8 K7 ["Y"]
       46 JUMPIFNOTLE                      R8 R7 ; [+16]
       48 GETTABLEKS                       R7 R0 K7 ["Y"]
       50 GETTABLEKS                       R9 R5 K5 ["AbsolutePosition"]
       52 GETTABLEKS                       R9 R9 K7 ["Y"]
       54 GETTABLEKS                       R10 R5 K6 ["AbsoluteSize"]
       56 GETTABLEKS                       R10 R10 K7 ["Y"]
       58 ADD                              R8 R9 R10
       59 JUMPIFLE                         R7 R8 ; [+2]
       61 LOADB                            R6 0 +1
       62 LOADB                            R6 1
       63 JUMPIFNOT                        R6 ; [+1]
       64 RETURN                           R4 1
       65 FORGLOOP                         R1 2 ; [-60]
       67 LOADNIL                          R1
       68 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R3 R0 K4 ["Position"]
       11 CALL                             R2 1 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InputChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R2 R0 K4 ["Position"]
       10 CALL                             R1 1 1
       11 SETUPVAL                         R1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R2 R0 K4 ["Position"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 0
       16 JUMPIFEQ                         R1 R2 ; [+3]
       18 LOADB                            R2 1
       19 SETUPVAL                         R2 2
       20 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 0
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       18 LOADK                            R3 K4 ["Luau"]
       19 GETIMPORT                        R1 K6 [assert]
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 1
       23 JUMPIFNOT                        R1 ; [+3]
       24 LOADB                            R1 0
       25 SETUPVAL                         R1 1
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K7 ["current"]
       30 GETUPVAL                         R2 0
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 3
       33 GETTABLEKS                       R1 R1 K8 ["Close"]
       35 CALL                             R1 0 0
       36 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_15:
        0 LOADNIL                          R0
        1 LOADB                            R1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["InputBegan"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          REF R0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R2 R2 K1 ["Connect"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["InputChanged"]
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          REF R0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          REF R1
       18 NAMECALL                         R3 R3 K1 ["Connect"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K3 ["InputEnded"]
       24 NEWCLOSURE                       R6 P2
       25 CAPTURE                          REF R0
       26 CAPTURE                          REF R1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 NAMECALL                         R4 R4 K1 ["Connect"]
       31 CALL                             R4 2 1
       32 NEWCLOSURE                       R5 P3
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CLOSEUPVALS                      R0
       37 RETURN                           R5 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["Reference must have been mounted"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["current"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useContext"]
       10 GETUPVAL                         R3 2
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 3
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K3 ["useState"]
       17 LOADNIL                          R5
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R8 0 2
       28 MOVE                             R9 R1
       29 GETTABLEKS                       R10 R2 K5 ["Direction"]
       31 SETLIST                          R8 R9 2 [1]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K6 ["new"]
       37 CALL                             R7 0 1
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K7 ["useRef"]
       41 LOADNIL                          R9
       42 CALL                             R8 1 1
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R11 0 1
       52 GETTABLEKS                       R12 R0 K9 ["Close"]
       54 SETLIST                          R11 R12 1 [1]
       56 CALL                             R9 2 0
       57 NEWTABLE                         R9 0 0
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R10 R10 K7 ["useRef"]
       62 NEWTABLE                         R11 0 0
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R13 R10 K10 ["current"]
       67 JUMPIFNOTEQKNIL                  R13 ; [+2]
       69 LOADB                            R12 0 +1
       70 LOADB                            R12 1
       71 FASTCALL2K                       ASSERT R12 K11 ; [+4]
       73 LOADK                            R13 K11 ["Luau"]
       74 GETIMPORT                        R11 K13 [assert]
       76 CALL                             R11 2 0
       77 GETTABLEKS                       R11 R0 K14 ["Options"]
       79 LOADNIL                          R12
       80 LOADNIL                          R13
       81 FORGPREP                         R11
       82 LOADK                            R16 K15 ["Option%*"]
       83 MOVE                             R18 R14
       84 NAMECALL                         R16 R16 K16 ["format"]
       86 CALL                             R16 2 1
       87 GETUPVAL                         R17 1
       88 GETTABLEKS                       R17 R17 K17 ["createElement"]
       90 LOADK                            R18 K18 ["Frame"]
       91 NEWTABLE                         R19 4 0
       93 SETTABLEKS                       R14 R19 K19 ["LayoutOrder"]
       95 NEWCLOSURE                       R20 P2
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R14
       98 SETTABLEKS                       R20 R19 K20 ["ref"]
      100 GETUPVAL                         R20 1
      101 GETTABLEKS                       R20 R20 K21 ["Tag"]
      103 LOADK                            R21 K22 ["X-Pad X-RowS X-Middle X-Fit X-Corner"]
      104 SETTABLE                         R21 R19 R20
      105 DUPTABLE                         R20 K25 [{"Icon", "Label"}]
      106 GETUPVAL                         R21 1
      107 GETTABLEKS                       R21 R21 K17 ["createElement"]
      109 LOADK                            R22 K18 ["Frame"]
      110 NEWTABLE                         R23 4 0
      112 NAMECALL                         R24 R7 K26 ["getNextOrder"]
      114 CALL                             R24 1 1
      115 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      117 GETIMPORT                        R24 K29 [UDim2.fromOffset]
      119 LOADN                            R25 24
      120 LOADN                            R26 24
      121 CALL                             R24 2 1
      122 SETTABLEKS                       R24 R23 K30 ["Size"]
      124 GETUPVAL                         R24 1
      125 GETTABLEKS                       R24 R24 K21 ["Tag"]
      127 LOADK                            R25 K31 ["VPF-X-Square"]
      128 SETTABLE                         R25 R23 R24
      129 DUPTABLE                         R24 K32 [{"Icon"}]
      130 GETUPVAL                         R25 1
      131 GETTABLEKS                       R25 R25 K17 ["createElement"]
      133 GETUPVAL                         R26 6
      134 DUPTABLE                         R27 K32 [{"Icon"}]
      135 GETTABLEKS                       R28 R15 K23 ["Icon"]
      137 SETTABLEKS                       R28 R27 K23 ["Icon"]
      139 CALL                             R25 2 1
      140 SETTABLEKS                       R25 R24 K23 ["Icon"]
      142 CALL                             R21 3 1
      143 SETTABLEKS                       R21 R20 K23 ["Icon"]
      145 GETUPVAL                         R21 1
      146 GETTABLEKS                       R21 R21 K17 ["createElement"]
      148 LOADK                            R22 K33 ["TextLabel"]
      149 NEWTABLE                         R23 4 0
      151 GETIMPORT                        R24 K37 [Enum.Font.BuilderSans]
      153 SETTABLEKS                       R24 R23 K35 ["Font"]
      155 NAMECALL                         R24 R7 K26 ["getNextOrder"]
      157 CALL                             R24 1 1
      158 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      160 GETTABLEKS                       R24 R15 K38 ["Text"]
      162 SETTABLEKS                       R24 R23 K38 ["Text"]
      164 GETUPVAL                         R24 1
      165 GETTABLEKS                       R24 R24 K21 ["Tag"]
      167 LOADK                            R25 K39 ["X-Fit"]
      168 SETTABLE                         R25 R23 R24
      169 CALL                             R21 2 1
      170 SETTABLEKS                       R21 R20 K24 ["Label"]
      172 CALL                             R17 3 1
      173 SETTABLE                         R17 R9 R16
      174 FORGLOOP                         R11 2 ; [-93]
      176 GETUPVAL                         R11 1
      177 GETTABLEKS                       R11 R11 K3 ["useState"]
      179 LOADNIL                          R12
      180 CALL                             R11 1 2
      181 NEWCLOSURE                       R13 P3
      182 CAPTURE                          VAL R10
      183 GETUPVAL                         R14 1
      184 GETTABLEKS                       R14 R14 K8 ["useEffect"]
      186 NEWCLOSURE                       R15 P4
      187 CAPTURE                          UPVAL U5
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R13
      190 NEWTABLE                         R16 0 0
      192 CALL                             R14 2 0
      193 GETUPVAL                         R14 1
      194 GETTABLEKS                       R14 R14 K7 ["useRef"]
      196 GETTABLEKS                       R15 R0 K40 ["OnClickOption"]
      198 CALL                             R14 1 1
      199 GETTABLEKS                       R15 R0 K40 ["OnClickOption"]
      201 SETTABLEKS                       R15 R14 K10 ["current"]
      203 GETTABLEKS                       R17 R14 K10 ["current"]
      205 JUMPIFNOTEQKNIL                  R17 ; [+2]
      207 LOADB                            R16 0 +1
      208 LOADB                            R16 1
      209 FASTCALL2K                       ASSERT R16 K11 ; [+4]
      211 LOADK                            R17 K11 ["Luau"]
      212 GETIMPORT                        R15 K13 [assert]
      214 CALL                             R15 2 0
      215 GETUPVAL                         R15 1
      216 GETTABLEKS                       R15 R15 K8 ["useEffect"]
      218 NEWCLOSURE                       R16 P5
      219 CAPTURE                          UPVAL U5
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R0
      223 NEWTABLE                         R17 0 0
      225 CALL                             R15 2 0
      226 MOVE                             R15 R11
      227 JUMPIFNOT                        R15 ; [+3]
      228 GETTABLEKS                       R16 R10 K10 ["current"]
      230 GETTABLE                         R15 R16 R11
      231 GETUPVAL                         R16 4
      232 GETTABLEKS                       R16 R16 K6 ["new"]
      234 CALL                             R16 0 1
      235 GETUPVAL                         R17 1
      236 GETTABLEKS                       R17 R17 K7 ["useRef"]
      238 LOADNIL                          R18
      239 CALL                             R17 1 1
      240 GETUPVAL                         R18 1
      241 GETTABLEKS                       R18 R18 K8 ["useEffect"]
      243 NEWCLOSURE                       R19 P6
      244 CAPTURE                          VAL R17
      245 CAPTURE                          VAL R6
      246 NEWTABLE                         R20 0 0
      248 CALL                             R18 2 0
      249 GETUPVAL                         R18 1
      250 GETTABLEKS                       R18 R18 K17 ["createElement"]
      252 GETUPVAL                         R19 1
      253 GETTABLEKS                       R19 R19 K41 ["Fragment"]
      255 NEWTABLE                         R20 0 0
      257 DUPTABLE                         R21 K44 [{"Reference", "FlyoutMenu"}]
      258 GETUPVAL                         R22 1
      259 GETTABLEKS                       R22 R22 K17 ["createElement"]
      261 LOADK                            R23 K18 ["Frame"]
      262 NEWTABLE                         R24 4 0
      264 GETUPVAL                         R25 1
      265 GETTABLEKS                       R25 R25 K45 ["Change"]
      267 GETTABLEKS                       R25 R25 K46 ["AbsolutePosition"]
      269 SETTABLE                         R6 R24 R25
      270 GETUPVAL                         R25 1
      271 GETTABLEKS                       R25 R25 K45 ["Change"]
      273 GETTABLEKS                       R25 R25 K47 ["AbsoluteSize"]
      275 SETTABLE                         R6 R24 R25
      276 GETUPVAL                         R25 1
      277 GETTABLEKS                       R25 R25 K21 ["Tag"]
      279 LOADK                            R26 K48 ["X-Fill"]
      280 SETTABLE                         R26 R24 R25
      281 SETTABLEKS                       R17 R24 K20 ["ref"]
      283 CALL                             R22 2 1
      284 SETTABLEKS                       R22 R21 K42 ["Reference"]
      286 MOVE                             R22 R4
      287 JUMPIFNOT                        R22 ; [+130]
      288 GETUPVAL                         R22 7
      289 GETTABLEKS                       R22 R22 K49 ["createPortal"]
      291 GETUPVAL                         R23 1
      292 GETTABLEKS                       R23 R23 K17 ["createElement"]
      294 LOADK                            R24 K50 ["Folder"]
      295 NEWTABLE                         R25 0 0
      297 DUPTABLE                         R26 K53 [{"StyleLink", "Contents"}]
      298 GETUPVAL                         R27 1
      299 GETTABLEKS                       R27 R27 K17 ["createElement"]
      301 LOADK                            R28 K51 ["StyleLink"]
      302 DUPTABLE                         R29 K55 [{"StyleSheet"}]
      303 SETTABLEKS                       R3 R29 K54 ["StyleSheet"]
      305 CALL                             R27 2 1
      306 SETTABLEKS                       R27 R26 K51 ["StyleLink"]
      308 GETUPVAL                         R27 1
      309 GETTABLEKS                       R27 R27 K17 ["createElement"]
      311 LOADK                            R28 K56 ["TextButton"]
      312 NEWTABLE                         R29 8 0
      314 LOADN                            R30 0
      315 SETTABLEKS                       R30 R29 K57 ["BackgroundTransparency"]
      317 GETIMPORT                        R30 K29 [UDim2.fromOffset]
      319 GETTABLEKS                       R31 R4 K58 ["X"]
      321 GETTABLEKS                       R32 R4 K59 ["Y"]
      323 CALL                             R30 2 1
      324 SETTABLEKS                       R30 R29 K60 ["Position"]
      326 NAMECALL                         R30 R16 K26 ["getNextOrder"]
      328 CALL                             R30 1 1
      329 SETTABLEKS                       R30 R29 K61 ["ZIndex"]
      331 GETUPVAL                         R30 1
      332 GETTABLEKS                       R30 R30 K21 ["Tag"]
      334 LOADK                            R31 K62 ["X-Fit X-Stroke X-Corner VPF-X-MainBg"]
      335 SETTABLE                         R31 R29 R30
      336 SETTABLEKS                       R8 R29 K20 ["ref"]
      338 DUPTABLE                         R30 K64 [{"HoverBackground", "Options"}]
      339 MOVE                             R31 R15
      340 JUMPIFNOT                        R31 ; [+49]
      341 GETTABLEKS                       R31 R8 K10 ["current"]
      343 JUMPIFNOT                        R31 ; [+46]
      344 GETUPVAL                         R31 1
      345 GETTABLEKS                       R31 R31 K17 ["createElement"]
      347 LOADK                            R32 K18 ["Frame"]
      348 NEWTABLE                         R33 4 0
      350 GETIMPORT                        R34 K29 [UDim2.fromOffset]
      352 LOADN                            R35 0
      353 GETTABLEKS                       R37 R15 K46 ["AbsolutePosition"]
      355 GETTABLEKS                       R37 R37 K59 ["Y"]
      357 GETTABLEKS                       R38 R8 K10 ["current"]
      359 GETTABLEKS                       R38 R38 K46 ["AbsolutePosition"]
      361 GETTABLEKS                       R38 R38 K59 ["Y"]
      363 SUB                              R36 R37 R38
      364 CALL                             R34 2 1
      365 SETTABLEKS                       R34 R33 K60 ["Position"]
      367 GETIMPORT                        R34 K65 [UDim2.new]
      369 LOADN                            R35 1
      370 LOADN                            R36 0
      371 LOADN                            R37 0
      372 GETTABLEKS                       R38 R15 K47 ["AbsoluteSize"]
      374 GETTABLEKS                       R38 R38 K59 ["Y"]
      376 CALL                             R34 4 1
      377 SETTABLEKS                       R34 R33 K30 ["Size"]
      379 NAMECALL                         R34 R16 K26 ["getNextOrder"]
      381 CALL                             R34 1 1
      382 SETTABLEKS                       R34 R33 K61 ["ZIndex"]
      384 GETUPVAL                         R34 1
      385 GETTABLEKS                       R34 R34 K21 ["Tag"]
      387 LOADK                            R35 K66 ["X-Corner VPF-X-ContrastBg"]
      388 SETTABLE                         R35 R33 R34
      389 CALL                             R31 2 1
      390 SETTABLEKS                       R31 R30 K63 ["HoverBackground"]
      392 GETUPVAL                         R31 1
      393 GETTABLEKS                       R31 R31 K17 ["createElement"]
      395 LOADK                            R32 K18 ["Frame"]
      396 NEWTABLE                         R33 2 0
      398 NAMECALL                         R34 R16 K26 ["getNextOrder"]
      400 CALL                             R34 1 1
      401 SETTABLEKS                       R34 R33 K61 ["ZIndex"]
      403 GETUPVAL                         R34 1
      404 GETTABLEKS                       R34 R34 K21 ["Tag"]
      406 LOADK                            R35 K67 ["X-Fit X-Column"]
      407 SETTABLE                         R35 R33 R34
      408 MOVE                             R34 R9
      409 CALL                             R31 3 1
      410 SETTABLEKS                       R31 R30 K14 ["Options"]
      412 CALL                             R27 3 1
      413 SETTABLEKS                       R27 R26 K52 ["Contents"]
      415 CALL                             R23 3 1
      416 MOVE                             R24 R1
      417 CALL                             R22 2 1
      418 SETTABLEKS                       R22 R21 K43 ["FlyoutMenu"]
      420 CALL                             R18 3 -1
      421 RETURN                           R18 -1

PROTO_18:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["enable"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Position"]
        3 GETUPVAL                         R2 1
        4 LOADB                            R0 0
        5 GETTABLEKS                       R3 R1 K1 ["X"]
        7 GETTABLEKS                       R4 R2 K2 ["AbsolutePosition"]
        9 GETTABLEKS                       R4 R4 K1 ["X"]
       11 JUMPIFNOTLE                      R4 R3 ; [+39]
       13 LOADB                            R0 0
       14 GETTABLEKS                       R3 R1 K1 ["X"]
       16 GETTABLEKS                       R5 R2 K2 ["AbsolutePosition"]
       18 GETTABLEKS                       R5 R5 K1 ["X"]
       20 GETTABLEKS                       R6 R2 K3 ["AbsoluteSize"]
       22 GETTABLEKS                       R6 R6 K1 ["X"]
       24 ADD                              R4 R5 R6
       25 JUMPIFNOTLE                      R3 R4 ; [+25]
       27 LOADB                            R0 0
       28 GETTABLEKS                       R3 R1 K4 ["Y"]
       30 GETTABLEKS                       R4 R2 K2 ["AbsolutePosition"]
       32 GETTABLEKS                       R4 R4 K4 ["Y"]
       34 JUMPIFNOTLE                      R4 R3 ; [+16]
       36 GETTABLEKS                       R3 R1 K4 ["Y"]
       38 GETTABLEKS                       R5 R2 K2 ["AbsolutePosition"]
       40 GETTABLEKS                       R5 R5 K4 ["Y"]
       42 GETTABLEKS                       R6 R2 K3 ["AbsoluteSize"]
       44 GETTABLEKS                       R6 R6 K4 ["Y"]
       46 ADD                              R4 R5 R6
       47 JUMPIFLE                         R3 R4 ; [+2]
       49 LOADB                            R0 0 +1
       50 LOADB                            R0 1
       51 GETIMPORT                        R1 K7 [task.cancel]
       53 GETUPVAL                         R2 2
       54 CALL                             R1 1 0
       55 JUMPIFNOT                        R0 ; [+8]
       56 GETUPVAL                         R1 3
       57 JUMPIFNOT                        R1 ; [+6]
       58 GETUPVAL                         R1 4
       59 GETTABLEKS                       R1 R1 K8 ["current"]
       61 GETTABLEKS                       R1 R1 K9 ["OnClick"]
       63 CALL                             R1 0 0
       64 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R4 R0 K4 ["AbsolutePosition"]
        9 GETTABLEKS                       R4 R4 K5 ["X"]
       11 GETTABLEKS                       R5 R0 K6 ["AbsoluteSize"]
       13 GETTABLEKS                       R5 R5 K5 ["X"]
       15 ADD                              R3 R4 R5
       16 GETTABLEKS                       R4 R1 K7 ["Position"]
       18 GETTABLEKS                       R4 R4 K5 ["X"]
       20 SUB                              R2 R3 R4
       21 LOADN                            R3 11
       22 JUMPIFNOTLE                      R2 R3 ; [+6]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K8 ["toggle"]
       27 CALL                             R3 0 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K9 ["enabled"]
       32 NOT                              R3 R4
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K10 ["disable"]
       36 CALL                             R4 0 0
       37 GETIMPORT                        R4 K13 [task.delay]
       39 LOADK                            R5 K14 [0.4]
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          REF R3
       42 CAPTURE                          UPVAL U0
       43 CALL                             R4 2 1
       44 LOADK                            R7 K15 ["UserInputState"]
       45 NAMECALL                         R5 R1 K16 ["GetPropertyChangedSignal"]
       47 CALL                             R5 2 1
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R4
       52 CAPTURE                          REF R3
       53 CAPTURE                          UPVAL U1
       54 NAMECALL                         R5 R5 K17 ["Once"]
       56 CALL                             R5 2 0
       57 CLOSEUPVALS                      R3
       58 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Item"]
        6 GETTABLEKS                       R2 R2 K1 ["Options"]
        8 GETTABLE                         R1 R2 R0
        9 GETTABLEKS                       R2 R1 K2 ["OnSelect"]
       11 JUMPIFEQKNIL                     R2 ; [+4]
       13 GETTABLEKS                       R2 R1 K2 ["OnSelect"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 GETTABLEKS                       R2 R0 K1 ["NextOrder"]
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["NextOrder"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["useState"]
       15 LOADN                            R3 1
       16 CALL                             R2 1 2
       17 GETTABLEKS                       R5 R0 K3 ["Item"]
       19 GETTABLEKS                       R5 R5 K4 ["Options"]
       21 GETTABLE                         R4 R5 R2
       22 JUMPIFNOTEQKNIL                  R4 ; [+9]
       24 GETIMPORT                        R5 K6 [error]
       26 LOADK                            R6 K7 ["Couldn't find option at index %*. Are you dynamically changing the options?"]
       27 MOVE                             R8 R2
       28 NAMECALL                         R6 R6 K8 ["format"]
       30 CALL                             R6 2 1
       31 CALL                             R5 1 0
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K9 ["useRef"]
       35 MOVE                             R6 R4
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R4 R5 K10 ["current"]
       39 GETTABLEKS                       R8 R5 K10 ["current"]
       41 JUMPIFNOTEQKNIL                  R8 ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 FASTCALL2K                       ASSERT R7 K11 ; [+4]
       47 LOADK                            R8 K11 ["Luau"]
       48 GETIMPORT                        R6 K13 [assert]
       50 CALL                             R6 2 0
       51 GETUPVAL                         R6 1
       52 CALL                             R6 0 1
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K14 ["useCallback"]
       56 NEWCLOSURE                       R8 P0
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 NEWTABLE                         R9 0 1
       61 GETTABLEKS                       R10 R6 K15 ["enabled"]
       63 SETLIST                          R9 R10 1 [1]
       65 CALL                             R7 2 1
       66 GETUPVAL                         R8 2
       67 GETTABLEKS                       R8 R8 K16 ["new"]
       69 CALL                             R8 0 1
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K17 ["createElement"]
       73 LOADK                            R10 K18 ["TextButton"]
       74 NEWTABLE                         R11 4 0
       76 GETIMPORT                        R12 K22 [Enum.AutomaticSize.X]
       78 SETTABLEKS                       R12 R11 K20 ["AutomaticSize"]
       80 SETTABLEKS                       R1 R11 K23 ["LayoutOrder"]
       82 GETUPVAL                         R12 0
       83 GETTABLEKS                       R12 R12 K24 ["Event"]
       85 GETTABLEKS                       R12 R12 K25 ["InputBegan"]
       87 SETTABLE                         R7 R11 R12
       88 GETUPVAL                         R12 0
       89 GETTABLEKS                       R12 R12 K26 ["Tag"]
       91 GETUPVAL                         R13 3
       92 GETTABLEKS                       R13 R13 K27 ["Styling"]
       94 GETTABLEKS                       R13 R13 K28 ["joinTags"]
       96 LOADK                            R14 K29 ["VPF-Button"]
       97 GETTABLEKS                       R16 R6 K15 ["enabled"]
       99 JUMPIFNOT                        R16 ; [+2]
      100 LOADK                            R15 K30 ["VPF-Button--Selected"]
      101 JUMP                             ; [+1]
      102 LOADK                            R15 K31 ["VPF-Button--Unselected"]
      103 CALL                             R13 2 1
      104 SETTABLE                         R13 R11 R12
      105 DUPTABLE                         R12 K35 [{"Tooltip", "FlyoutMenu", "Inner"}]
      106 GETTABLEKS                       R14 R6 K15 ["enabled"]
      108 NOT                              R13 R14
      109 JUMPIFNOT                        R13 ; [+14]
      110 GETUPVAL                         R13 0
      111 GETTABLEKS                       R13 R13 K17 ["createElement"]
      113 GETUPVAL                         R14 4
      114 DUPTABLE                         R15 K38 [{"Title", "Description"}]
      115 GETTABLEKS                       R16 R4 K39 ["Text"]
      117 SETTABLEKS                       R16 R15 K36 ["Title"]
      119 GETTABLEKS                       R16 R4 K40 ["TooltipDescription"]
      121 SETTABLEKS                       R16 R15 K37 ["Description"]
      123 CALL                             R13 2 1
      124 SETTABLEKS                       R13 R12 K32 ["Tooltip"]
      126 GETTABLEKS                       R13 R6 K15 ["enabled"]
      128 JUMPIFNOT                        R13 ; [+21]
      129 GETUPVAL                         R13 0
      130 GETTABLEKS                       R13 R13 K17 ["createElement"]
      132 GETUPVAL                         R14 5
      133 DUPTABLE                         R15 K43 [{"Options", "OnClickOption", "Close"}]
      134 GETTABLEKS                       R16 R0 K3 ["Item"]
      136 GETTABLEKS                       R16 R16 K4 ["Options"]
      138 SETTABLEKS                       R16 R15 K4 ["Options"]
      140 NEWCLOSURE                       R16 P1
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R0
      143 SETTABLEKS                       R16 R15 K41 ["OnClickOption"]
      145 GETTABLEKS                       R16 R6 K44 ["disable"]
      147 SETTABLEKS                       R16 R15 K42 ["Close"]
      149 CALL                             R13 2 1
      150 SETTABLEKS                       R13 R12 K33 ["FlyoutMenu"]
      152 GETUPVAL                         R13 0
      153 GETTABLEKS                       R13 R13 K17 ["createElement"]
      155 LOADK                            R14 K45 ["Frame"]
      156 NEWTABLE                         R15 1 0
      158 GETUPVAL                         R16 0
      159 GETTABLEKS                       R16 R16 K26 ["Tag"]
      161 LOADK                            R17 K46 ["X-Fill X-PadS X-Row"]
      162 SETTABLE                         R17 R15 R16
      163 DUPTABLE                         R16 K49 [{"Icon", "Arrow"}]
      164 GETUPVAL                         R17 0
      165 GETTABLEKS                       R17 R17 K17 ["createElement"]
      167 GETUPVAL                         R18 6
      168 DUPTABLE                         R19 K50 [{"LayoutOrder", "Icon"}]
      169 NAMECALL                         R20 R8 K51 ["getNextOrder"]
      171 CALL                             R20 1 1
      172 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      174 GETTABLEKS                       R20 R4 K47 ["Icon"]
      176 SETTABLEKS                       R20 R19 K47 ["Icon"]
      178 CALL                             R17 2 1
      179 SETTABLEKS                       R17 R16 K47 ["Icon"]
      181 GETUPVAL                         R17 0
      182 GETTABLEKS                       R17 R17 K17 ["createElement"]
      184 LOADK                            R18 K45 ["Frame"]
      185 DUPTABLE                         R19 K53 [{"LayoutOrder", "Size"}]
      186 NAMECALL                         R20 R8 K51 ["getNextOrder"]
      188 CALL                             R20 1 1
      189 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      191 GETIMPORT                        R20 K55 [UDim2.new]
      193 LOADN                            R21 0
      194 LOADN                            R22 6
      195 LOADN                            R23 1
      196 LOADN                            R24 0
      197 CALL                             R20 4 1
      198 SETTABLEKS                       R20 R19 K52 ["Size"]
      200 DUPTABLE                         R20 K57 [{"ArrowImage"}]
      201 GETUPVAL                         R21 0
      202 GETTABLEKS                       R21 R21 K17 ["createElement"]
      204 LOADK                            R22 K58 ["ImageLabel"]
      205 NEWTABLE                         R23 8 0
      207 GETIMPORT                        R24 K60 [Vector2.new]
      209 LOADK                            R25 K61 [0.5]
      210 LOADN                            R26 1
      211 CALL                             R24 2 1
      212 SETTABLEKS                       R24 R23 K62 ["AnchorPoint"]
      214 LOADK                            R24 K63 ["rbxasset://studio_svg_textures/Lua/ViewportToolingFramework/Light/Standard/flyoutArrow.png"]
      215 SETTABLEKS                       R24 R23 K64 ["Image"]
      217 GETIMPORT                        R24 K66 [UDim2.fromScale]
      219 LOADK                            R25 K61 [0.5]
      220 LOADN                            R26 1
      221 CALL                             R24 2 1
      222 SETTABLEKS                       R24 R23 K67 ["Position"]
      224 GETIMPORT                        R24 K69 [UDim2.fromOffset]
      226 LOADN                            R25 4
      227 LOADN                            R26 4
      228 CALL                             R24 2 1
      229 SETTABLEKS                       R24 R23 K52 ["Size"]
      231 GETUPVAL                         R24 0
      232 GETTABLEKS                       R24 R24 K26 ["Tag"]
      234 LOADK                            R25 K70 ["VPF-X-Primary"]
      235 SETTABLE                         R25 R23 R24
      236 CALL                             R21 2 1
      237 SETTABLEKS                       R21 R20 K56 ["ArrowImage"]
      239 CALL                             R17 3 1
      240 SETTABLEKS                       R17 R16 K48 ["Arrow"]
      242 CALL                             R13 3 1
      243 SETTABLEKS                       R13 R12 K34 ["Inner"]
      245 CALL                             R9 3 -1
      246 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ViewportToolingFramework"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["Icon"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Parent"]
       31 GETTABLEKS                       R5 R5 K14 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K12 ["Parent"]
       38 GETTABLEKS                       R6 R6 K15 ["ReactRoblox"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K16 ["Util"]
       45 GETTABLEKS                       R7 R7 K17 ["ToolbarBaseContext"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K10 ["Components"]
       52 GETTABLEKS                       R8 R8 K18 ["Tooltip"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K19 ["Types"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R10 R1 K20 ["Hooks"]
       64 GETTABLEKS                       R10 R10 K21 ["useStyleSheet"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K9 [require]
       69 GETTABLEKS                       R11 R1 K20 ["Hooks"]
       71 GETTABLEKS                       R11 R11 K22 ["useToggleState"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R11 R3 K23 ["ContextServices"]
       76 GETTABLEKS                       R11 R11 K24 ["Focus"]
       78 GETTABLEKS                       R12 R3 K16 ["Util"]
       80 GETTABLEKS                       R12 R12 K25 ["LayoutOrderIterator"]
       82 DUPCLOSURE                       R13 K26 [PROTO_0]
       83 DUPCLOSURE                       R14 K27 [PROTO_17]
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R5
       92 DUPCLOSURE                       R15 K28 [PROTO_22]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R2
      100 RETURN                           R15 1
