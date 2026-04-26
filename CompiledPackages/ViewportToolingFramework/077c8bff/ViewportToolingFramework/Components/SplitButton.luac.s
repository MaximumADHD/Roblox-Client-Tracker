PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R5 R1 K1 ["AbsolutePosition"]
        5 GETTABLEKS                       R4 R5 K0 ["X"]
        7 JUMPIFNOTLE                      R4 R3 ; [+39]
        9 LOADB                            R2 0
       10 GETTABLEKS                       R3 R0 K0 ["X"]
       12 GETTABLEKS                       R6 R1 K1 ["AbsolutePosition"]
       14 GETTABLEKS                       R5 R6 K0 ["X"]
       16 GETTABLEKS                       R7 R1 K2 ["AbsoluteSize"]
       18 GETTABLEKS                       R6 R7 K0 ["X"]
       20 ADD                              R4 R5 R6
       21 JUMPIFNOTLE                      R3 R4 ; [+25]
       23 LOADB                            R2 0
       24 GETTABLEKS                       R3 R0 K3 ["Y"]
       26 GETTABLEKS                       R5 R1 K1 ["AbsolutePosition"]
       28 GETTABLEKS                       R4 R5 K3 ["Y"]
       30 JUMPIFNOTLE                      R4 R3 ; [+16]
       32 GETTABLEKS                       R3 R0 K3 ["Y"]
       34 GETTABLEKS                       R6 R1 K1 ["AbsolutePosition"]
       36 GETTABLEKS                       R5 R6 K3 ["Y"]
       38 GETTABLEKS                       R7 R1 K2 ["AbsoluteSize"]
       40 GETTABLEKS                       R6 R7 K3 ["Y"]
       42 ADD                              R4 R5 R6
       43 JUMPIFLE                         R3 R4 ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Direction"]
        3 JUMPIFNOTEQKS                    R1 K1 ["Horizontal"] ; [+20]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R4 R0 K2 ["AbsolutePosition"]
        8 GETIMPORT                        R5 K5 [Vector2.new]
       10 LOADN                            R6 0
       11 GETTABLEKS                       R9 R0 K7 ["AbsoluteSize"]
       13 GETTABLEKS                       R8 R9 K8 ["Y"]
       15 ADDK                             R7 R8 K6 [10]
       16 CALL                             R5 2 1
       17 ADD                              R3 R4 R5
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K2 ["AbsolutePosition"]
       21 SUB                              R2 R3 R4
       22 CALL                             R1 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K0 ["Direction"]
       27 JUMPIFNOTEQKS                    R1 K9 ["Vertical"] ; [+20]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R4 R0 K2 ["AbsolutePosition"]
       32 GETIMPORT                        R5 K5 [Vector2.new]
       34 GETTABLEKS                       R8 R0 K7 ["AbsoluteSize"]
       36 GETTABLEKS                       R7 R8 K10 ["X"]
       38 ADDK                             R6 R7 K6 [10]
       39 LOADN                            R7 0
       40 CALL                             R5 2 1
       41 ADD                              R3 R4 R5
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R4 R5 K2 ["AbsolutePosition"]
       45 SUB                              R2 R3 R4
       46 CALL                             R1 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K0 ["Direction"]
       51 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K4 ["current"]
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
       28 GETTABLEKS                       R6 R1 K10 ["AbsolutePosition"]
       30 GETTABLEKS                       R5 R6 K9 ["X"]
       32 JUMPIFNOTLE                      R5 R4 ; [+39]
       34 LOADB                            R2 0
       35 GETTABLEKS                       R4 R3 K9 ["X"]
       37 GETTABLEKS                       R7 R1 K10 ["AbsolutePosition"]
       39 GETTABLEKS                       R6 R7 K9 ["X"]
       41 GETTABLEKS                       R8 R1 K11 ["AbsoluteSize"]
       43 GETTABLEKS                       R7 R8 K9 ["X"]
       45 ADD                              R5 R6 R7
       46 JUMPIFNOTLE                      R4 R5 ; [+25]
       48 LOADB                            R2 0
       49 GETTABLEKS                       R4 R3 K12 ["Y"]
       51 GETTABLEKS                       R6 R1 K10 ["AbsolutePosition"]
       53 GETTABLEKS                       R5 R6 K12 ["Y"]
       55 JUMPIFNOTLE                      R5 R4 ; [+16]
       57 GETTABLEKS                       R4 R3 K12 ["Y"]
       59 GETTABLEKS                       R7 R1 K10 ["AbsolutePosition"]
       61 GETTABLEKS                       R6 R7 K12 ["Y"]
       63 GETTABLEKS                       R8 R1 K11 ["AbsoluteSize"]
       65 GETTABLEKS                       R7 R8 K12 ["Y"]
       67 ADD                              R5 R6 R7
       68 JUMPIFLE                         R4 R5 ; [+2]
       70 LOADB                            R2 0 +1
       71 LOADB                            R2 1
       72 JUMPIFNOT                        R2 ; [+1]
       73 RETURN                           R0 0
       74 GETUPVAL                         R3 1
       75 GETTABLEKS                       R2 R3 K13 ["Close"]
       77 CALL                             R2 0 0
       78 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["InputBegan"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 SETTABLE                         R0 R1 R2
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["current"]
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
       19 GETTABLEKS                       R9 R5 K5 ["AbsolutePosition"]
       21 GETTABLEKS                       R8 R9 K4 ["X"]
       23 JUMPIFNOTLE                      R8 R7 ; [+39]
       25 LOADB                            R6 0
       26 GETTABLEKS                       R7 R0 K4 ["X"]
       28 GETTABLEKS                       R10 R5 K5 ["AbsolutePosition"]
       30 GETTABLEKS                       R9 R10 K4 ["X"]
       32 GETTABLEKS                       R11 R5 K6 ["AbsoluteSize"]
       34 GETTABLEKS                       R10 R11 K4 ["X"]
       36 ADD                              R8 R9 R10
       37 JUMPIFNOTLE                      R7 R8 ; [+25]
       39 LOADB                            R6 0
       40 GETTABLEKS                       R7 R0 K7 ["Y"]
       42 GETTABLEKS                       R9 R5 K5 ["AbsolutePosition"]
       44 GETTABLEKS                       R8 R9 K7 ["Y"]
       46 JUMPIFNOTLE                      R8 R7 ; [+16]
       48 GETTABLEKS                       R7 R0 K7 ["Y"]
       50 GETTABLEKS                       R10 R5 K5 ["AbsolutePosition"]
       52 GETTABLEKS                       R9 R10 K7 ["Y"]
       54 GETTABLEKS                       R11 R5 K6 ["AbsoluteSize"]
       56 GETTABLEKS                       R10 R11 K7 ["Y"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["InputChanged"]
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
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R1 R2 K7 ["current"]
       30 GETUPVAL                         R2 0
       31 CALL                             R1 1 0
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R1 R2 K8 ["Close"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["InputBegan"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          REF R0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R2 R2 K1 ["Connect"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K2 ["InputChanged"]
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          REF R0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          REF R1
       18 NAMECALL                         R3 R3 K1 ["Connect"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K3 ["InputEnded"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["Reference must have been mounted"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K0 ["current"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["useContext"]
       10 GETUPVAL                         R3 2
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 3
       13 CALL                             R3 0 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K3 ["useState"]
       17 LOADNIL                          R5
       18 CALL                             R4 1 2
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R8 0 2
       28 MOVE                             R9 R1
       29 GETTABLEKS                       R10 R2 K5 ["Direction"]
       31 SETLIST                          R8 R9 2 [1]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R8 4
       35 GETTABLEKS                       R7 R8 K6 ["new"]
       37 CALL                             R7 0 1
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R8 R9 K7 ["useRef"]
       41 LOADNIL                          R9
       42 CALL                             R8 1 1
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R9 R10 K8 ["useEffect"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R11 0 1
       52 GETTABLEKS                       R12 R0 K9 ["Close"]
       54 SETLIST                          R11 R12 1 [1]
       56 CALL                             R9 2 0
       57 NEWTABLE                         R9 0 0
       59 GETUPVAL                         R11 1
       60 GETTABLEKS                       R10 R11 K7 ["useRef"]
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
       82 LOADK                            R17 K15 ["Option%*"]
       83 MOVE                             R19 R14
       84 NAMECALL                         R17 R17 K16 ["format"]
       86 CALL                             R17 2 1
       87 MOVE                             R16 R17
       88 GETUPVAL                         R18 1
       89 GETTABLEKS                       R17 R18 K17 ["createElement"]
       91 LOADK                            R18 K18 ["Frame"]
       92 NEWTABLE                         R19 4 0
       94 SETTABLEKS                       R14 R19 K19 ["LayoutOrder"]
       96 NEWCLOSURE                       R20 P2
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R14
       99 SETTABLEKS                       R20 R19 K20 ["ref"]
      101 GETUPVAL                         R21 1
      102 GETTABLEKS                       R20 R21 K21 ["Tag"]
      104 LOADK                            R21 K22 ["X-Pad X-RowS X-Middle X-Fit X-Corner"]
      105 SETTABLE                         R21 R19 R20
      106 DUPTABLE                         R20 K25 [{"Icon", "Label"}]
      107 GETUPVAL                         R22 1
      108 GETTABLEKS                       R21 R22 K17 ["createElement"]
      110 LOADK                            R22 K18 ["Frame"]
      111 NEWTABLE                         R23 4 0
      113 NAMECALL                         R24 R7 K26 ["getNextOrder"]
      115 CALL                             R24 1 1
      116 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      118 GETIMPORT                        R24 K29 [UDim2.fromOffset]
      120 LOADN                            R25 24
      121 LOADN                            R26 24
      122 CALL                             R24 2 1
      123 SETTABLEKS                       R24 R23 K30 ["Size"]
      125 GETUPVAL                         R25 1
      126 GETTABLEKS                       R24 R25 K21 ["Tag"]
      128 LOADK                            R25 K31 ["VPF-X-Square"]
      129 SETTABLE                         R25 R23 R24
      130 DUPTABLE                         R24 K32 [{"Icon"}]
      131 GETUPVAL                         R26 1
      132 GETTABLEKS                       R25 R26 K17 ["createElement"]
      134 GETUPVAL                         R26 6
      135 DUPTABLE                         R27 K32 [{"Icon"}]
      136 GETTABLEKS                       R28 R15 K23 ["Icon"]
      138 SETTABLEKS                       R28 R27 K23 ["Icon"]
      140 CALL                             R25 2 1
      141 SETTABLEKS                       R25 R24 K23 ["Icon"]
      143 CALL                             R21 3 1
      144 SETTABLEKS                       R21 R20 K23 ["Icon"]
      146 GETUPVAL                         R22 1
      147 GETTABLEKS                       R21 R22 K17 ["createElement"]
      149 LOADK                            R22 K33 ["TextLabel"]
      150 NEWTABLE                         R23 4 0
      152 GETIMPORT                        R24 K37 [Enum.Font.BuilderSans]
      154 SETTABLEKS                       R24 R23 K35 ["Font"]
      156 NAMECALL                         R24 R7 K26 ["getNextOrder"]
      158 CALL                             R24 1 1
      159 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      161 GETTABLEKS                       R24 R15 K38 ["Text"]
      163 SETTABLEKS                       R24 R23 K38 ["Text"]
      165 GETUPVAL                         R25 1
      166 GETTABLEKS                       R24 R25 K21 ["Tag"]
      168 LOADK                            R25 K39 ["X-Fit"]
      169 SETTABLE                         R25 R23 R24
      170 CALL                             R21 2 1
      171 SETTABLEKS                       R21 R20 K24 ["Label"]
      173 CALL                             R17 3 1
      174 SETTABLE                         R17 R9 R16
      175 FORGLOOP                         R11 2 ; [-94]
      177 GETUPVAL                         R12 1
      178 GETTABLEKS                       R11 R12 K3 ["useState"]
      180 LOADNIL                          R12
      181 CALL                             R11 1 2
      182 NEWCLOSURE                       R13 P3
      183 CAPTURE                          VAL R10
      184 GETUPVAL                         R15 1
      185 GETTABLEKS                       R14 R15 K8 ["useEffect"]
      187 NEWCLOSURE                       R15 P4
      188 CAPTURE                          UPVAL U5
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R13
      191 NEWTABLE                         R16 0 0
      193 CALL                             R14 2 0
      194 GETUPVAL                         R15 1
      195 GETTABLEKS                       R14 R15 K7 ["useRef"]
      197 GETTABLEKS                       R15 R0 K40 ["OnClickOption"]
      199 CALL                             R14 1 1
      200 GETTABLEKS                       R15 R0 K40 ["OnClickOption"]
      202 SETTABLEKS                       R15 R14 K10 ["current"]
      204 GETTABLEKS                       R17 R14 K10 ["current"]
      206 JUMPIFNOTEQKNIL                  R17 ; [+2]
      208 LOADB                            R16 0 +1
      209 LOADB                            R16 1
      210 FASTCALL2K                       ASSERT R16 K11 ; [+4]
      212 LOADK                            R17 K11 ["Luau"]
      213 GETIMPORT                        R15 K13 [assert]
      215 CALL                             R15 2 0
      216 GETUPVAL                         R16 1
      217 GETTABLEKS                       R15 R16 K8 ["useEffect"]
      219 NEWCLOSURE                       R16 P5
      220 CAPTURE                          UPVAL U5
      221 CAPTURE                          VAL R13
      222 CAPTURE                          VAL R14
      223 CAPTURE                          VAL R0
      224 NEWTABLE                         R17 0 0
      226 CALL                             R15 2 0
      227 MOVE                             R15 R11
      228 JUMPIFNOT                        R15 ; [+3]
      229 GETTABLEKS                       R16 R10 K10 ["current"]
      231 GETTABLE                         R15 R16 R11
      232 GETUPVAL                         R17 4
      233 GETTABLEKS                       R16 R17 K6 ["new"]
      235 CALL                             R16 0 1
      236 GETUPVAL                         R18 1
      237 GETTABLEKS                       R17 R18 K7 ["useRef"]
      239 LOADNIL                          R18
      240 CALL                             R17 1 1
      241 GETUPVAL                         R19 1
      242 GETTABLEKS                       R18 R19 K8 ["useEffect"]
      244 NEWCLOSURE                       R19 P6
      245 CAPTURE                          VAL R17
      246 CAPTURE                          VAL R6
      247 NEWTABLE                         R20 0 0
      249 CALL                             R18 2 0
      250 GETUPVAL                         R19 1
      251 GETTABLEKS                       R18 R19 K17 ["createElement"]
      253 GETUPVAL                         R20 1
      254 GETTABLEKS                       R19 R20 K41 ["Fragment"]
      256 NEWTABLE                         R20 0 0
      258 DUPTABLE                         R21 K44 [{"Reference", "FlyoutMenu"}]
      259 GETUPVAL                         R23 1
      260 GETTABLEKS                       R22 R23 K17 ["createElement"]
      262 LOADK                            R23 K18 ["Frame"]
      263 NEWTABLE                         R24 4 0
      265 GETUPVAL                         R27 1
      266 GETTABLEKS                       R26 R27 K45 ["Change"]
      268 GETTABLEKS                       R25 R26 K46 ["AbsolutePosition"]
      270 SETTABLE                         R6 R24 R25
      271 GETUPVAL                         R27 1
      272 GETTABLEKS                       R26 R27 K45 ["Change"]
      274 GETTABLEKS                       R25 R26 K47 ["AbsoluteSize"]
      276 SETTABLE                         R6 R24 R25
      277 GETUPVAL                         R26 1
      278 GETTABLEKS                       R25 R26 K21 ["Tag"]
      280 LOADK                            R26 K48 ["X-Fill"]
      281 SETTABLE                         R26 R24 R25
      282 SETTABLEKS                       R17 R24 K20 ["ref"]
      284 CALL                             R22 2 1
      285 SETTABLEKS                       R22 R21 K42 ["Reference"]
      287 MOVE                             R22 R4
      288 JUMPIFNOT                        R22 ; [+130]
      289 GETUPVAL                         R23 7
      290 GETTABLEKS                       R22 R23 K49 ["createPortal"]
      292 GETUPVAL                         R24 1
      293 GETTABLEKS                       R23 R24 K17 ["createElement"]
      295 LOADK                            R24 K50 ["Folder"]
      296 NEWTABLE                         R25 0 0
      298 DUPTABLE                         R26 K53 [{"StyleLink", "Contents"}]
      299 GETUPVAL                         R28 1
      300 GETTABLEKS                       R27 R28 K17 ["createElement"]
      302 LOADK                            R28 K51 ["StyleLink"]
      303 DUPTABLE                         R29 K55 [{"StyleSheet"}]
      304 SETTABLEKS                       R3 R29 K54 ["StyleSheet"]
      306 CALL                             R27 2 1
      307 SETTABLEKS                       R27 R26 K51 ["StyleLink"]
      309 GETUPVAL                         R28 1
      310 GETTABLEKS                       R27 R28 K17 ["createElement"]
      312 LOADK                            R28 K56 ["TextButton"]
      313 NEWTABLE                         R29 8 0
      315 LOADN                            R30 0
      316 SETTABLEKS                       R30 R29 K57 ["BackgroundTransparency"]
      318 GETIMPORT                        R30 K29 [UDim2.fromOffset]
      320 GETTABLEKS                       R31 R4 K58 ["X"]
      322 GETTABLEKS                       R32 R4 K59 ["Y"]
      324 CALL                             R30 2 1
      325 SETTABLEKS                       R30 R29 K60 ["Position"]
      327 NAMECALL                         R30 R16 K26 ["getNextOrder"]
      329 CALL                             R30 1 1
      330 SETTABLEKS                       R30 R29 K61 ["ZIndex"]
      332 GETUPVAL                         R31 1
      333 GETTABLEKS                       R30 R31 K21 ["Tag"]
      335 LOADK                            R31 K62 ["X-Fit X-Stroke X-Corner VPF-X-MainBg"]
      336 SETTABLE                         R31 R29 R30
      337 SETTABLEKS                       R8 R29 K20 ["ref"]
      339 DUPTABLE                         R30 K64 [{"HoverBackground", "Options"}]
      340 MOVE                             R31 R15
      341 JUMPIFNOT                        R31 ; [+49]
      342 GETTABLEKS                       R31 R8 K10 ["current"]
      344 JUMPIFNOT                        R31 ; [+46]
      345 GETUPVAL                         R32 1
      346 GETTABLEKS                       R31 R32 K17 ["createElement"]
      348 LOADK                            R32 K18 ["Frame"]
      349 NEWTABLE                         R33 4 0
      351 GETIMPORT                        R34 K29 [UDim2.fromOffset]
      353 LOADN                            R35 0
      354 GETTABLEKS                       R38 R15 K46 ["AbsolutePosition"]
      356 GETTABLEKS                       R37 R38 K59 ["Y"]
      358 GETTABLEKS                       R40 R8 K10 ["current"]
      360 GETTABLEKS                       R39 R40 K46 ["AbsolutePosition"]
      362 GETTABLEKS                       R38 R39 K59 ["Y"]
      364 SUB                              R36 R37 R38
      365 CALL                             R34 2 1
      366 SETTABLEKS                       R34 R33 K60 ["Position"]
      368 GETIMPORT                        R34 K65 [UDim2.new]
      370 LOADN                            R35 1
      371 LOADN                            R36 0
      372 LOADN                            R37 0
      373 GETTABLEKS                       R39 R15 K47 ["AbsoluteSize"]
      375 GETTABLEKS                       R38 R39 K59 ["Y"]
      377 CALL                             R34 4 1
      378 SETTABLEKS                       R34 R33 K30 ["Size"]
      380 NAMECALL                         R34 R16 K26 ["getNextOrder"]
      382 CALL                             R34 1 1
      383 SETTABLEKS                       R34 R33 K61 ["ZIndex"]
      385 GETUPVAL                         R35 1
      386 GETTABLEKS                       R34 R35 K21 ["Tag"]
      388 LOADK                            R35 K66 ["X-Corner VPF-X-ContrastBg"]
      389 SETTABLE                         R35 R33 R34
      390 CALL                             R31 2 1
      391 SETTABLEKS                       R31 R30 K63 ["HoverBackground"]
      393 GETUPVAL                         R32 1
      394 GETTABLEKS                       R31 R32 K17 ["createElement"]
      396 LOADK                            R32 K18 ["Frame"]
      397 NEWTABLE                         R33 2 0
      399 NAMECALL                         R34 R16 K26 ["getNextOrder"]
      401 CALL                             R34 1 1
      402 SETTABLEKS                       R34 R33 K61 ["ZIndex"]
      404 GETUPVAL                         R35 1
      405 GETTABLEKS                       R34 R35 K21 ["Tag"]
      407 LOADK                            R35 K67 ["X-Fit X-Column"]
      408 SETTABLE                         R35 R33 R34
      409 MOVE                             R34 R9
      410 CALL                             R31 3 1
      411 SETTABLEKS                       R31 R30 K14 ["Options"]
      413 CALL                             R27 3 1
      414 SETTABLEKS                       R27 R26 K52 ["Contents"]
      416 CALL                             R23 3 1
      417 MOVE                             R24 R1
      418 CALL                             R22 2 1
      419 SETTABLEKS                       R22 R21 K43 ["FlyoutMenu"]
      421 CALL                             R18 3 -1
      422 RETURN                           R18 -1

PROTO_18:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["enable"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Position"]
        3 GETUPVAL                         R2 1
        4 LOADB                            R0 0
        5 GETTABLEKS                       R3 R1 K1 ["X"]
        7 GETTABLEKS                       R5 R2 K2 ["AbsolutePosition"]
        9 GETTABLEKS                       R4 R5 K1 ["X"]
       11 JUMPIFNOTLE                      R4 R3 ; [+39]
       13 LOADB                            R0 0
       14 GETTABLEKS                       R3 R1 K1 ["X"]
       16 GETTABLEKS                       R6 R2 K2 ["AbsolutePosition"]
       18 GETTABLEKS                       R5 R6 K1 ["X"]
       20 GETTABLEKS                       R7 R2 K3 ["AbsoluteSize"]
       22 GETTABLEKS                       R6 R7 K1 ["X"]
       24 ADD                              R4 R5 R6
       25 JUMPIFNOTLE                      R3 R4 ; [+25]
       27 LOADB                            R0 0
       28 GETTABLEKS                       R3 R1 K4 ["Y"]
       30 GETTABLEKS                       R5 R2 K2 ["AbsolutePosition"]
       32 GETTABLEKS                       R4 R5 K4 ["Y"]
       34 JUMPIFNOTLE                      R4 R3 ; [+16]
       36 GETTABLEKS                       R3 R1 K4 ["Y"]
       38 GETTABLEKS                       R6 R2 K2 ["AbsolutePosition"]
       40 GETTABLEKS                       R5 R6 K4 ["Y"]
       42 GETTABLEKS                       R7 R2 K3 ["AbsoluteSize"]
       44 GETTABLEKS                       R6 R7 K4 ["Y"]
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
       58 GETUPVAL                         R3 4
       59 GETTABLEKS                       R2 R3 K8 ["current"]
       61 GETTABLEKS                       R1 R2 K9 ["OnClick"]
       63 CALL                             R1 0 0
       64 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R5 R0 K4 ["AbsolutePosition"]
        9 GETTABLEKS                       R4 R5 K5 ["X"]
       11 GETTABLEKS                       R6 R0 K6 ["AbsoluteSize"]
       13 GETTABLEKS                       R5 R6 K5 ["X"]
       15 ADD                              R3 R4 R5
       16 GETTABLEKS                       R5 R1 K7 ["Position"]
       18 GETTABLEKS                       R4 R5 K5 ["X"]
       20 SUB                              R2 R3 R4
       21 LOADN                            R3 11
       22 JUMPIFNOTLE                      R2 R3 ; [+6]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K8 ["toggle"]
       27 CALL                             R3 0 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K9 ["enabled"]
       32 NOT                              R3 R4
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K10 ["disable"]
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
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["Item"]
        6 GETTABLEKS                       R2 R3 K1 ["Options"]
        8 GETTABLE                         R1 R2 R0
        9 GETTABLEKS                       R2 R1 K2 ["OnSelect"]
       11 JUMPIFEQKNIL                     R2 ; [+4]
       13 GETTABLEKS                       R2 R1 K2 ["OnSelect"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 GETTABLEKS                       R2 R0 K1 ["NextOrder"]
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["NextOrder"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["useState"]
       15 LOADN                            R3 1
       16 CALL                             R2 1 2
       17 GETTABLEKS                       R6 R0 K3 ["Item"]
       19 GETTABLEKS                       R5 R6 K4 ["Options"]
       21 GETTABLE                         R4 R5 R2
       22 JUMPIFNOTEQKNIL                  R4 ; [+10]
       24 GETIMPORT                        R5 K6 [error]
       26 LOADK                            R7 K7 ["Couldn't find option at index %*. Are you dynamically changing the options?"]
       27 MOVE                             R9 R2
       28 NAMECALL                         R7 R7 K8 ["format"]
       30 CALL                             R7 2 1
       31 MOVE                             R6 R7
       32 CALL                             R5 1 0
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K9 ["useRef"]
       36 MOVE                             R6 R4
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R4 R5 K10 ["current"]
       40 GETTABLEKS                       R8 R5 K10 ["current"]
       42 JUMPIFNOTEQKNIL                  R8 ; [+2]
       44 LOADB                            R7 0 +1
       45 LOADB                            R7 1
       46 FASTCALL2K                       ASSERT R7 K11 ; [+4]
       48 LOADK                            R8 K11 ["Luau"]
       49 GETIMPORT                        R6 K13 [assert]
       51 CALL                             R6 2 0
       52 GETUPVAL                         R6 1
       53 CALL                             R6 0 1
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R7 R8 K14 ["useCallback"]
       57 NEWCLOSURE                       R8 P0
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 NEWTABLE                         R9 0 1
       62 GETTABLEKS                       R10 R6 K15 ["enabled"]
       64 SETLIST                          R9 R10 1 [1]
       66 CALL                             R7 2 1
       67 GETUPVAL                         R9 2
       68 GETTABLEKS                       R8 R9 K16 ["new"]
       70 CALL                             R8 0 1
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R9 R10 K17 ["createElement"]
       74 LOADK                            R10 K18 ["TextButton"]
       75 NEWTABLE                         R11 4 0
       77 GETIMPORT                        R12 K22 [Enum.AutomaticSize.X]
       79 SETTABLEKS                       R12 R11 K20 ["AutomaticSize"]
       81 SETTABLEKS                       R1 R11 K23 ["LayoutOrder"]
       83 GETUPVAL                         R14 0
       84 GETTABLEKS                       R13 R14 K24 ["Event"]
       86 GETTABLEKS                       R12 R13 K25 ["InputBegan"]
       88 SETTABLE                         R7 R11 R12
       89 GETUPVAL                         R13 0
       90 GETTABLEKS                       R12 R13 K26 ["Tag"]
       92 GETUPVAL                         R15 3
       93 GETTABLEKS                       R14 R15 K27 ["Styling"]
       95 GETTABLEKS                       R13 R14 K28 ["joinTags"]
       97 LOADK                            R14 K29 ["VPF-Button"]
       98 GETTABLEKS                       R16 R6 K15 ["enabled"]
      100 JUMPIFNOT                        R16 ; [+2]
      101 LOADK                            R15 K30 ["VPF-Button--Selected"]
      102 JUMP                             ; [+1]
      103 LOADK                            R15 K31 ["VPF-Button--Unselected"]
      104 CALL                             R13 2 1
      105 SETTABLE                         R13 R11 R12
      106 DUPTABLE                         R12 K35 [{"Tooltip", "FlyoutMenu", "Inner"}]
      107 GETTABLEKS                       R14 R6 K15 ["enabled"]
      109 NOT                              R13 R14
      110 JUMPIFNOT                        R13 ; [+14]
      111 GETUPVAL                         R14 0
      112 GETTABLEKS                       R13 R14 K17 ["createElement"]
      114 GETUPVAL                         R14 4
      115 DUPTABLE                         R15 K38 [{"Title", "Description"}]
      116 GETTABLEKS                       R16 R4 K39 ["Text"]
      118 SETTABLEKS                       R16 R15 K36 ["Title"]
      120 GETTABLEKS                       R16 R4 K40 ["TooltipDescription"]
      122 SETTABLEKS                       R16 R15 K37 ["Description"]
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K32 ["Tooltip"]
      127 GETTABLEKS                       R13 R6 K15 ["enabled"]
      129 JUMPIFNOT                        R13 ; [+21]
      130 GETUPVAL                         R14 0
      131 GETTABLEKS                       R13 R14 K17 ["createElement"]
      133 GETUPVAL                         R14 5
      134 DUPTABLE                         R15 K43 [{"Options", "OnClickOption", "Close"}]
      135 GETTABLEKS                       R17 R0 K3 ["Item"]
      137 GETTABLEKS                       R16 R17 K4 ["Options"]
      139 SETTABLEKS                       R16 R15 K4 ["Options"]
      141 NEWCLOSURE                       R16 P1
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R0
      144 SETTABLEKS                       R16 R15 K41 ["OnClickOption"]
      146 GETTABLEKS                       R16 R6 K44 ["disable"]
      148 SETTABLEKS                       R16 R15 K42 ["Close"]
      150 CALL                             R13 2 1
      151 SETTABLEKS                       R13 R12 K33 ["FlyoutMenu"]
      153 GETUPVAL                         R14 0
      154 GETTABLEKS                       R13 R14 K17 ["createElement"]
      156 LOADK                            R14 K45 ["Frame"]
      157 NEWTABLE                         R15 1 0
      159 GETUPVAL                         R17 0
      160 GETTABLEKS                       R16 R17 K26 ["Tag"]
      162 LOADK                            R17 K46 ["X-Fill X-PadS X-Row"]
      163 SETTABLE                         R17 R15 R16
      164 DUPTABLE                         R16 K49 [{"Icon", "Arrow"}]
      165 GETUPVAL                         R18 0
      166 GETTABLEKS                       R17 R18 K17 ["createElement"]
      168 GETUPVAL                         R18 6
      169 DUPTABLE                         R19 K50 [{"LayoutOrder", "Icon"}]
      170 NAMECALL                         R20 R8 K51 ["getNextOrder"]
      172 CALL                             R20 1 1
      173 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      175 GETTABLEKS                       R20 R4 K47 ["Icon"]
      177 SETTABLEKS                       R20 R19 K47 ["Icon"]
      179 CALL                             R17 2 1
      180 SETTABLEKS                       R17 R16 K47 ["Icon"]
      182 GETUPVAL                         R18 0
      183 GETTABLEKS                       R17 R18 K17 ["createElement"]
      185 LOADK                            R18 K45 ["Frame"]
      186 DUPTABLE                         R19 K53 [{"LayoutOrder", "Size"}]
      187 NAMECALL                         R20 R8 K51 ["getNextOrder"]
      189 CALL                             R20 1 1
      190 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      192 GETIMPORT                        R20 K55 [UDim2.new]
      194 LOADN                            R21 0
      195 LOADN                            R22 6
      196 LOADN                            R23 1
      197 LOADN                            R24 0
      198 CALL                             R20 4 1
      199 SETTABLEKS                       R20 R19 K52 ["Size"]
      201 DUPTABLE                         R20 K57 [{"ArrowImage"}]
      202 GETUPVAL                         R22 0
      203 GETTABLEKS                       R21 R22 K17 ["createElement"]
      205 LOADK                            R22 K58 ["ImageLabel"]
      206 NEWTABLE                         R23 8 0
      208 GETIMPORT                        R24 K60 [Vector2.new]
      210 LOADK                            R25 K61 [0.5]
      211 LOADN                            R26 1
      212 CALL                             R24 2 1
      213 SETTABLEKS                       R24 R23 K62 ["AnchorPoint"]
      215 LOADK                            R24 K63 ["rbxasset://studio_svg_textures/Lua/ViewportToolingFramework/Light/Standard/flyoutArrow.png"]
      216 SETTABLEKS                       R24 R23 K64 ["Image"]
      218 GETIMPORT                        R24 K66 [UDim2.fromScale]
      220 LOADK                            R25 K61 [0.5]
      221 LOADN                            R26 1
      222 CALL                             R24 2 1
      223 SETTABLEKS                       R24 R23 K67 ["Position"]
      225 GETIMPORT                        R24 K69 [UDim2.fromOffset]
      227 LOADN                            R25 4
      228 LOADN                            R26 4
      229 CALL                             R24 2 1
      230 SETTABLEKS                       R24 R23 K52 ["Size"]
      232 GETUPVAL                         R25 0
      233 GETTABLEKS                       R24 R25 K26 ["Tag"]
      235 LOADK                            R25 K70 ["VPF-X-Primary"]
      236 SETTABLE                         R25 R23 R24
      237 CALL                             R21 2 1
      238 SETTABLEKS                       R21 R20 K56 ["ArrowImage"]
      240 CALL                             R17 3 1
      241 SETTABLEKS                       R17 R16 K48 ["Arrow"]
      243 CALL                             R13 3 1
      244 SETTABLEKS                       R13 R12 K34 ["Inner"]
      246 CALL                             R9 3 -1
      247 RETURN                           R9 -1

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
       15 GETTABLEKS                       R4 R1 K10 ["Components"]
       17 GETTABLEKS                       R3 R4 K11 ["Icon"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K12 ["Parent"]
       24 GETTABLEKS                       R4 R5 K13 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K12 ["Parent"]
       31 GETTABLEKS                       R5 R6 K14 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K12 ["Parent"]
       38 GETTABLEKS                       R6 R7 K15 ["ReactRoblox"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R1 K16 ["Util"]
       45 GETTABLEKS                       R7 R8 K17 ["ToolbarBaseContext"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R9 R1 K10 ["Components"]
       52 GETTABLEKS                       R8 R9 K18 ["Tooltip"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K19 ["Types"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R11 R1 K20 ["Hooks"]
       64 GETTABLEKS                       R10 R11 K21 ["useStyleSheet"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K9 [require]
       69 GETTABLEKS                       R12 R1 K20 ["Hooks"]
       71 GETTABLEKS                       R11 R12 K22 ["useToggleState"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R12 R3 K23 ["ContextServices"]
       76 GETTABLEKS                       R11 R12 K24 ["Focus"]
       78 GETTABLEKS                       R13 R3 K16 ["Util"]
       80 GETTABLEKS                       R12 R13 K25 ["LayoutOrderIterator"]
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
