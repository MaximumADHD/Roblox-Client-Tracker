PROTO_0:
        0 JUMPIFEQKS                       R1 K0 ["Destroying"] ; [+3]
        2 JUMPIFNOTEQKS                    R1 K1 ["DescendantRemoving"] ; [+34]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOT                        R3 ; [+16]
        6 JUMPIFNOT                        R2 ; [+44]
        7 GETTABLEKS                       R3 R2 K2 ["Parent"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+41]
       11 LOADK                            R5 K3 ["StyleSheet"]
       12 NAMECALL                         R3 R2 K4 ["IsA"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+35]
       16 GETUPVAL                         R3 1
       17 GETUPVAL                         R4 2
       18 MOVE                             R5 R2
       19 CALL                             R4 1 -1
       20 CALL                             R3 -1 0
       21 JUMP                             ; [+29]
       22 GETTABLEKS                       R3 R2 K2 ["Parent"]
       24 JUMPIFNOTEQKNIL                  R3 ; [+26]
       26 LOADK                            R5 K3 ["StyleSheet"]
       27 NAMECALL                         R3 R2 K4 ["IsA"]
       29 CALL                             R3 2 1
       30 JUMPIFNOT                        R3 ; [+20]
       31 GETUPVAL                         R3 1
       32 GETUPVAL                         R4 2
       33 MOVE                             R5 R2
       34 CALL                             R4 1 -1
       35 CALL                             R3 -1 0
       36 JUMP                             ; [+14]
       37 JUMPIFNOTEQKS                    R1 K5 ["PropertyChanged"] ; [+13]
       39 JUMPIFNOTEQKS                    R2 K6 ["Name"] ; [+11]
       41 LOADK                            R5 K3 ["StyleSheet"]
       42 NAMECALL                         R3 R0 K4 ["IsA"]
       44 CALL                             R3 2 1
       45 JUMPIFNOT                        R3 ; [+5]
       46 GETUPVAL                         R3 1
       47 GETUPVAL                         R4 2
       48 MOVE                             R5 R0
       49 CALL                             R4 1 -1
       50 CALL                             R3 -1 0
       51 GETUPVAL                         R3 1
       52 GETUPVAL                         R4 3
       53 LOADB                            R5 1
       54 CALL                             R4 1 -1
       55 CALL                             R3 -1 0
       56 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["IsDirty"]
        3 LOADN                            R1 0
        4 JUMPIFNOTLT                      R1 R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 LOADB                            R2 0
        9 CALL                             R1 1 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroyListener"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 4 0
        2 NEWTABLE                         R1 0 2
        4 LOADK                            R2 K0 ["Name"]
        5 LOADK                            R3 K1 ["Parent"]
        6 SETLIST                          R1 R2 2 [1]
        8 SETTABLEKS                       R1 R0 K2 ["StyleSheet"]
       10 NEWTABLE                         R1 0 2
       12 LOADK                            R2 K0 ["Name"]
       13 LOADK                            R3 K1 ["Parent"]
       14 SETLIST                          R1 R2 2 [1]
       16 SETTABLEKS                       R1 R0 K3 ["Folder"]
       18 NEWTABLE                         R1 0 5
       20 LOADK                            R2 K0 ["Name"]
       21 LOADK                            R3 K1 ["Parent"]
       22 LOADK                            R4 K4 ["Selector"]
       23 LOADK                            R5 K5 ["SelectorError"]
       24 LOADK                            R6 K6 ["Priority"]
       25 SETLIST                          R1 R2 5 [1]
       27 SETTABLEKS                       R1 R0 K7 ["StyleRule"]
       29 GETUPVAL                         R2 0
       30 JUMPIFNOT                        R2 ; [+18]
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R1 R1 K8 ["new"]
       34 LOADNIL                          R2
       35 GETUPVAL                         R3 2
       36 MOVE                             R4 R0
       37 NEWTABLE                         R5 0 3
       39 LOADK                            R6 K2 ["StyleSheet"]
       40 LOADK                            R7 K3 ["Folder"]
       41 LOADK                            R8 K7 ["StyleRule"]
       42 SETLIST                          R5 R6 3 [1]
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K9 ["Source"]
       47 CALL                             R1 5 1
       48 JUMP                             ; [+14]
       49 GETUPVAL                         R1 1
       50 GETTABLEKS                       R1 R1 K8 ["new"]
       52 GETUPVAL                         R2 4
       53 GETUPVAL                         R3 2
       54 MOVE                             R4 R0
       55 NEWTABLE                         R5 0 3
       57 LOADK                            R6 K2 ["StyleSheet"]
       58 LOADK                            R7 K3 ["Folder"]
       59 LOADK                            R8 K7 ["StyleRule"]
       60 SETLIST                          R5 R6 3 [1]
       62 CALL                             R1 4 1
       63 NEWCLOSURE                       R2 P0
       64 CAPTURE                          REF R1
       65 CLOSEUPVALS                      R1
       66 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 GETUPVAL                         R3 4
        8 JUMPIF                           R3 ; [+12]
        9 GETUPVAL                         R3 5
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R5 0 1
       16 GETTABLEKS                       R6 R0 K0 ["IsDirty"]
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 6
       22 NEWCLOSURE                       R4 P2
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U8
       28 NEWTABLE                         R5 0 1
       30 GETUPVAL                         R7 1
       31 JUMPIFNOT                        R7 ; [+3]
       32 GETTABLEKS                       R6 R0 K1 ["Source"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R6
       36 SETLIST                          R5 R6 1 [1]
       38 CALL                             R3 2 0
       39 LOADNIL                          R3
       40 RETURN                           R3 1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"IsDirty", "Source"}]
        1 GETTABLEKS                       R2 R0 K3 ["Window"]
        3 GETTABLEKS                       R2 R2 K0 ["IsDirty"]
        5 SETTABLEKS                       R2 R1 K0 ["IsDirty"]
        7 GETUPVAL                         R3 0
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETTABLEKS                       R2 R0 K3 ["Window"]
       11 GETTABLEKS                       R2 R2 K1 ["Source"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K1 ["Source"]
       17 RETURN                           R1 1

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
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Flags"]
       21 GETTABLEKS                       R3 R3 K11 ["getFFlagStyleEditorNewRuleRenameFix"]
       23 CALL                             R2 1 1
       24 CALL                             R2 0 1
       25 GETIMPORT                        R3 K8 [require]
       27 GETTABLEKS                       R4 R1 K9 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Flags"]
       31 GETTABLEKS                       R4 R4 K12 ["getFFlagStyleEditorPluginStyleSheets"]
       33 CALL                             R3 1 1
       34 CALL                             R3 0 1
       35 GETIMPORT                        R4 K8 [require]
       37 GETTABLEKS                       R5 R1 K13 ["Packages"]
       39 GETTABLEKS                       R5 R5 K14 ["RoactRodux"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K8 [require]
       44 GETTABLEKS                       R6 R1 K13 ["Packages"]
       46 GETTABLEKS                       R6 R6 K15 ["React"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R6 R5 K16 ["useEffect"]
       51 GETTABLEKS                       R7 R5 K17 ["useLayoutEffect"]
       53 GETIMPORT                        R8 K8 [require]
       55 GETTABLEKS                       R9 R1 K9 ["Src"]
       57 GETTABLEKS                       R9 R9 K18 ["Reducers"]
       59 GETTABLEKS                       R9 R9 K19 ["RootReducer"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K8 [require]
       64 GETTABLEKS                       R10 R1 K9 ["Src"]
       66 GETTABLEKS                       R10 R10 K20 ["Hooks"]
       68 GETTABLEKS                       R10 R10 K21 ["useDispatch"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K8 [require]
       73 GETTABLEKS                       R11 R1 K9 ["Src"]
       75 GETTABLEKS                       R11 R11 K22 ["Util"]
       77 GETTABLEKS                       R11 R11 K23 ["TreeListener"]
       79 CALL                             R10 1 1
       80 GETTABLEKS                       R11 R1 K9 ["Src"]
       82 GETTABLEKS                       R11 R11 K24 ["Actions"]
       84 GETIMPORT                        R12 K8 [require]
       86 GETTABLEKS                       R13 R11 K25 ["Window"]
       88 GETTABLEKS                       R13 R13 K26 ["SetIsDirty"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R1 K9 ["Src"]
       93 GETTABLEKS                       R13 R13 K27 ["Thunks"]
       95 GETIMPORT                        R14 K8 [require]
       97 GETTABLEKS                       R15 R13 K28 ["StyleTree"]
       99 GETTABLEKS                       R15 R15 K29 ["UpdateStyleSheetReferences"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K8 [require]
      104 GETTABLEKS                       R16 R1 K9 ["Src"]
      106 GETTABLEKS                       R16 R16 K30 ["Types"]
      108 CALL                             R15 1 1
      109 NEWTABLE                         R16 0 1
      111 MOVE                             R17 R0
      112 SETLIST                          R16 R17 1 [1]
      114 DUPCLOSURE                       R17 K31 [PROTO_4]
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R16
      124 GETTABLEKS                       R18 R4 K32 ["connect"]
      126 DUPCLOSURE                       R19 K33 [PROTO_5]
      127 CAPTURE                          VAL R3
      128 CALL                             R18 1 1
      129 MOVE                             R19 R17
      130 CALL                             R18 1 -1
      131 RETURN                           R18 -1
