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
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroyListener"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 GETUPVAL                         R3 3
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R5 0 1
       13 GETTABLEKS                       R6 R0 K0 ["Source"]
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 0
       18 LOADNIL                          R3
       19 RETURN                           R3 1

PROTO_4:
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
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["RoactRodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["useEffect"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R5 K10 ["Reducers"]
       31 GETTABLEKS                       R5 R5 K11 ["RootReducer"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R0 K9 ["Src"]
       38 GETTABLEKS                       R6 R6 K12 ["Hooks"]
       40 GETTABLEKS                       R6 R6 K13 ["useDispatch"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R0 K9 ["Src"]
       47 GETTABLEKS                       R7 R7 K14 ["Util"]
       49 GETTABLEKS                       R7 R7 K15 ["TreeListener"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R7 R0 K9 ["Src"]
       54 GETTABLEKS                       R7 R7 K16 ["Actions"]
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R7 K17 ["Window"]
       60 GETTABLEKS                       R9 R9 K18 ["SetIsDirty"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R0 K9 ["Src"]
       65 GETTABLEKS                       R9 R9 K19 ["Thunks"]
       67 GETIMPORT                        R10 K4 [require]
       69 GETTABLEKS                       R11 R9 K20 ["StyleTree"]
       71 GETTABLEKS                       R11 R11 K21 ["UpdateStyleSheetReferences"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K4 [require]
       76 GETTABLEKS                       R12 R0 K9 ["Src"]
       78 GETTABLEKS                       R12 R12 K22 ["Types"]
       80 CALL                             R11 1 1
       81 DUPCLOSURE                       R12 K23 [PROTO_3]
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R6
       87 GETTABLEKS                       R13 R1 K24 ["connect"]
       89 DUPCLOSURE                       R14 K25 [PROTO_4]
       90 CALL                             R13 1 1
       91 MOVE                             R14 R12
       92 CALL                             R13 1 -1
       93 RETURN                           R13 -1
