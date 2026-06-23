PROTO_0:
        0 JUMPIFEQKS                       R1 K0 ["Destroying"] ; [+3]
        2 JUMPIFNOTEQKS                    R1 K1 ["DescendantRemoving"] ; [+17]
        4 JUMPIFNOT                        R2 ; [+29]
        5 GETTABLEKS                       R3 R2 K2 ["Parent"]
        7 JUMPIFNOTEQKNIL                  R3 ; [+26]
        9 LOADK                            R5 K3 ["StyleSheet"]
       10 NAMECALL                         R3 R2 K4 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+20]
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R4 1
       16 MOVE                             R5 R2
       17 CALL                             R4 1 -1
       18 CALL                             R3 -1 0
       19 JUMP                             ; [+14]
       20 JUMPIFNOTEQKS                    R1 K5 ["PropertyChanged"] ; [+13]
       22 JUMPIFNOTEQKS                    R2 K6 ["Name"] ; [+11]
       24 LOADK                            R5 K3 ["StyleSheet"]
       25 NAMECALL                         R3 R0 K4 ["IsA"]
       27 CALL                             R3 2 1
       28 JUMPIFNOT                        R3 ; [+5]
       29 GETUPVAL                         R3 0
       30 GETUPVAL                         R4 1
       31 MOVE                             R5 R0
       32 CALL                             R4 1 -1
       33 CALL                             R3 -1 0
       34 GETUPVAL                         R3 0
       35 GETUPVAL                         R4 2
       36 LOADB                            R5 1
       37 CALL                             R4 1 -1
       38 CALL                             R3 -1 0
       39 RETURN                           R0 0

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
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K8 ["new"]
       32 GETUPVAL                         R2 1
       33 MOVE                             R3 R0
       34 NEWTABLE                         R4 0 3
       36 LOADK                            R5 K2 ["StyleSheet"]
       37 LOADK                            R6 K3 ["Folder"]
       38 LOADK                            R7 K7 ["StyleRule"]
       39 SETLIST                          R4 R5 3 [1]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K9 ["Source"]
       44 CALL                             R1 4 1
       45 NEWCLOSURE                       R2 P0
       46 CAPTURE                          REF R1
       47 CLOSEUPVALS                      R1
       48 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 GETUPVAL                         R3 3
        7 JUMPIF                           R3 ; [+12]
        8 GETUPVAL                         R3 4
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R5 0 1
       15 GETTABLEKS                       R6 R0 K0 ["IsDirty"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 5
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R5 0 1
       27 GETTABLEKS                       R6 R0 K1 ["Source"]
       29 SETLIST                          R5 R6 1 [1]
       31 CALL                             R3 2 0
       32 LOADNIL                          R3
       33 RETURN                           R3 1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"IsDirty", "Source"}]
        1 GETTABLEKS                       R2 R0 K3 ["Window"]
        3 GETTABLEKS                       R2 R2 K0 ["IsDirty"]
        5 SETTABLEKS                       R2 R1 K0 ["IsDirty"]
        7 GETTABLEKS                       R2 R0 K3 ["Window"]
        9 GETTABLEKS                       R2 R2 K1 ["Source"]
       11 SETTABLEKS                       R2 R1 K1 ["Source"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStyleEditorNewRuleRenameFix"]
       17 CALL                             R1 1 1
       18 CALL                             R1 0 1
       19 GETIMPORT                        R2 K4 [require]
       21 GETTABLEKS                       R3 R0 K8 ["Packages"]
       23 GETTABLEKS                       R3 R3 K9 ["RoactRodux"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K4 [require]
       28 GETTABLEKS                       R4 R0 K8 ["Packages"]
       30 GETTABLEKS                       R4 R4 K10 ["React"]
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R4 R3 K11 ["useEffect"]
       35 GETTABLEKS                       R5 R3 K12 ["useLayoutEffect"]
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R7 R0 K5 ["Src"]
       41 GETTABLEKS                       R7 R7 K13 ["Reducers"]
       43 GETTABLEKS                       R7 R7 K14 ["RootReducer"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R8 R0 K5 ["Src"]
       50 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       52 GETTABLEKS                       R8 R8 K16 ["useDispatch"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K4 [require]
       57 GETTABLEKS                       R9 R0 K5 ["Src"]
       59 GETTABLEKS                       R9 R9 K17 ["Util"]
       61 GETTABLEKS                       R9 R9 K18 ["TreeListener"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R9 R0 K5 ["Src"]
       66 GETTABLEKS                       R9 R9 K19 ["Actions"]
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R11 R9 K20 ["Window"]
       72 GETTABLEKS                       R11 R11 K21 ["SetIsDirty"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R11 R0 K5 ["Src"]
       77 GETTABLEKS                       R11 R11 K22 ["Thunks"]
       79 GETIMPORT                        R12 K4 [require]
       81 GETTABLEKS                       R13 R11 K23 ["StyleTree"]
       83 GETTABLEKS                       R13 R13 K24 ["UpdateStyleSheetReferences"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K4 [require]
       88 GETTABLEKS                       R14 R0 K5 ["Src"]
       90 GETTABLEKS                       R14 R14 K25 ["Types"]
       92 CALL                             R13 1 1
       93 DUPCLOSURE                       R14 K26 [PROTO_4]
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R8
      101 GETTABLEKS                       R15 R2 K27 ["connect"]
      103 DUPCLOSURE                       R16 K28 [PROTO_5]
      104 CALL                             R15 1 1
      105 MOVE                             R16 R14
      106 CALL                             R15 1 -1
      107 RETURN                           R15 -1
