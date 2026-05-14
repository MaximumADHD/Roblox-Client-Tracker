PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetDescendants"]
        3 CALL                             R0 1 1
        4 LOADN                            R1 0
        5 MOVE                             R2 R0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 LOADK                            R9 K1 ["StyleSheet"]
       10 NAMECALL                         R7 R6 K2 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+1]
       14 ADDK                             R1 R1 K3 [1]
       15 FORGLOOP                         R2 2 ; [-7]
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 JUMPIFNOTLT                      R1 R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 LOADK                            R2 K0 ["Main"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 LOADK                            R2 K1 ["Onboarding"]
       11 CALL                             R1 1 -1
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_5:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R3 K0 ["StyleSheet"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 0
        6 DUPCLOSURE                       R2 K2 [PROTO_5]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 SUBK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R3 K0 ["StyleSheet"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 0
        6 DUPCLOSURE                       R2 K2 [PROTO_7]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["add"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["WindowFocused"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 NAMECALL                         R1 R1 K2 ["Connect"]
       11 CALL                             R1 2 -1
       12 CALL                             R0 -1 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["add"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K3 ["WindowFocusReleased"]
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U4
       22 NAMECALL                         R1 R1 K2 ["Connect"]
       24 CALL                             R1 2 -1
       25 CALL                             R0 -1 0
       26 GETUPVAL                         R0 0
       27 GETTABLEKS                       R0 R0 K0 ["add"]
       29 GETUPVAL                         R1 5
       30 GETTABLEKS                       R1 R1 K4 ["DescendantAdded"]
       32 NEWCLOSURE                       R3 P2
       33 CAPTURE                          UPVAL U6
       34 NAMECALL                         R1 R1 K2 ["Connect"]
       36 CALL                             R1 2 -1
       37 CALL                             R0 -1 0
       38 GETUPVAL                         R0 0
       39 GETTABLEKS                       R0 R0 K0 ["add"]
       41 GETUPVAL                         R1 5
       42 GETTABLEKS                       R1 R1 K5 ["DescendantRemoving"]
       44 NEWCLOSURE                       R3 P3
       45 CAPTURE                          UPVAL U6
       46 NAMECALL                         R1 R1 K2 ["Connect"]
       48 CALL                             R1 2 -1
       49 CALL                             R0 -1 0
       50 GETUPVAL                         R0 6
       51 GETUPVAL                         R1 7
       52 CALL                             R0 1 0
       53 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 LOADN                            R4 0
        6 CALL                             R3 1 2
        7 GETUPVAL                         R5 2
        8 LOADB                            R6 0
        9 CALL                             R5 1 2
       10 GETUPVAL                         R7 3
       11 CALL                             R7 0 1
       12 GETTABLEKS                       R8 R7 K0 ["Focus"]
       14 NAMECALL                         R8 R8 K1 ["get"]
       16 CALL                             R8 1 1
       17 GETUPVAL                         R10 4
       18 GETTABLEKS                       R11 R0 K2 ["RootRoute"]
       20 GETTABLE                         R9 R10 R11
       21 JUMPIFNOTEQKNIL                  R9 ; [+11]
       23 GETIMPORT                        R10 K4 [warn]
       25 LOADK                            R12 K5 ["route '%*' expected to map to valid component"]
       26 GETTABLEKS                       R14 R0 K2 ["RootRoute"]
       28 NAMECALL                         R12 R12 K6 ["format"]
       30 CALL                             R12 2 1
       31 MOVE                             R11 R12
       32 CALL                             R10 1 0
       33 GETUPVAL                         R10 5
       34 NEWCLOSURE                       R11 P0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R6
       37 NEWTABLE                         R12 0 1
       39 MOVE                             R13 R3
       40 SETLIST                          R12 R13 1 [1]
       42 CALL                             R10 2 0
       43 GETUPVAL                         R10 5
       44 NEWCLOSURE                       R11 P1
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U6
       48 NEWTABLE                         R12 0 1
       50 MOVE                             R13 R5
       51 SETLIST                          R12 R13 1 [1]
       53 CALL                             R10 2 0
       54 GETUPVAL                         R10 5
       55 NEWCLOSURE                       R11 P2
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          VAL R4
       63 CAPTURE                          UPVAL U10
       64 NEWTABLE                         R12 0 0
       66 CALL                             R10 2 0
       67 GETUPVAL                         R10 11
       68 GETTABLEKS                       R10 R10 K7 ["createElement"]
       70 GETUPVAL                         R11 12
       71 NEWTABLE                         R12 1 0
       73 GETUPVAL                         R13 11
       74 GETTABLEKS                       R13 R13 K8 ["Tag"]
       76 LOADK                            R14 K9 ["PositionCenter X-Fill"]
       77 SETTABLE                         R14 R12 R13
       78 DUPTABLE                         R13 K13 [{"AppContent", "AssetListener", "StyleTreeListener"}]
       79 GETUPVAL                         R14 11
       80 GETTABLEKS                       R14 R14 K7 ["createElement"]
       82 MOVE                             R15 R9
       83 CALL                             R14 1 1
       84 SETTABLEKS                       R14 R13 K10 ["AppContent"]
       86 GETUPVAL                         R14 11
       87 GETTABLEKS                       R14 R14 K7 ["createElement"]
       89 GETUPVAL                         R15 13
       90 CALL                             R14 1 1
       91 SETTABLEKS                       R14 R13 K11 ["AssetListener"]
       93 GETUPVAL                         R14 11
       94 GETTABLEKS                       R14 R14 K7 ["createElement"]
       96 GETUPVAL                         R15 14
       97 CALL                             R14 1 1
       98 SETTABLEKS                       R14 R13 K12 ["StyleTreeListener"]
      100 CALL                             R10 3 -1
      101 RETURN                           R10 -1

PROTO_11:
        0 DUPTABLE                         R1 K1 [{"RootRoute"}]
        1 GETTABLEKS                       R2 R0 K2 ["Window"]
        3 GETTABLEKS                       R2 R2 K0 ["RootRoute"]
        5 SETTABLEKS                       R2 R1 K0 ["RootRoute"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["RoactRodux"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["React"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["useEffect"]
       31 GETTABLEKS                       R5 R3 K13 ["useState"]
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R7 R1 K9 ["Packages"]
       37 GETTABLEKS                       R7 R7 K14 ["Framework"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R6 K15 ["UI"]
       42 GETTABLEKS                       R7 R7 K16 ["Pane"]
       44 GETTABLEKS                       R8 R1 K17 ["Src"]
       46 GETTABLEKS                       R8 R8 K18 ["Thunks"]
       48 GETIMPORT                        R9 K8 [require]
       50 GETTABLEKS                       R10 R8 K19 ["Telemetry"]
       52 GETTABLEKS                       R10 R10 K20 ["TrackPluginFocused"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K8 [require]
       57 GETTABLEKS                       R11 R8 K19 ["Telemetry"]
       59 GETTABLEKS                       R11 R11 K21 ["TrackPluginUnfocused"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K8 [require]
       64 GETTABLEKS                       R12 R1 K17 ["Src"]
       66 GETTABLEKS                       R12 R12 K22 ["Components"]
       68 GETTABLEKS                       R12 R12 K23 ["AssetListener"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K8 [require]
       73 GETTABLEKS                       R13 R1 K17 ["Src"]
       75 GETTABLEKS                       R13 R13 K22 ["Components"]
       77 GETTABLEKS                       R13 R13 K24 ["MainPage"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K8 [require]
       82 GETTABLEKS                       R14 R1 K17 ["Src"]
       84 GETTABLEKS                       R14 R14 K22 ["Components"]
       86 GETTABLEKS                       R14 R14 K25 ["OnboardingPage"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K8 [require]
       91 GETTABLEKS                       R15 R1 K17 ["Src"]
       93 GETTABLEKS                       R15 R15 K22 ["Components"]
       95 GETTABLEKS                       R15 R15 K26 ["StyleTreeListener"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K8 [require]
      100 GETTABLEKS                       R16 R1 K17 ["Src"]
      102 GETTABLEKS                       R16 R16 K27 ["Hooks"]
      104 GETTABLEKS                       R16 R16 K28 ["useFrameworkContext"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K8 [require]
      109 GETTABLEKS                       R17 R1 K17 ["Src"]
      111 GETTABLEKS                       R17 R17 K27 ["Hooks"]
      113 GETTABLEKS                       R17 R17 K29 ["useSignalConnectionList"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K8 [require]
      118 GETTABLEKS                       R18 R1 K17 ["Src"]
      120 GETTABLEKS                       R18 R18 K27 ["Hooks"]
      122 GETTABLEKS                       R18 R18 K30 ["useDispatch"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K8 [require]
      127 GETTABLEKS                       R19 R1 K17 ["Src"]
      129 GETTABLEKS                       R19 R19 K31 ["Actions"]
      131 GETTABLEKS                       R19 R19 K32 ["Window"]
      133 GETTABLEKS                       R19 R19 K33 ["SetRootRoute"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K8 [require]
      138 GETTABLEKS                       R20 R1 K17 ["Src"]
      140 GETTABLEKS                       R20 R20 K34 ["Reducers"]
      142 GETTABLEKS                       R20 R20 K35 ["RootReducer"]
      144 CALL                             R19 1 1
      145 NEWTABLE                         R20 2 0
      147 SETTABLEKS                       R12 R20 K36 ["Main"]
      149 SETTABLEKS                       R13 R20 K37 ["Onboarding"]
      151 DUPCLOSURE                       R21 K38 [PROTO_0]
      152 CAPTURE                          VAL R0
      153 DUPCLOSURE                       R22 K39 [PROTO_10]
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R14
      169 GETTABLEKS                       R23 R2 K40 ["connect"]
      171 DUPCLOSURE                       R24 K41 [PROTO_11]
      172 CALL                             R23 1 1
      173 MOVE                             R24 R22
      174 CALL                             R23 1 -1
      175 RETURN                           R23 -1
