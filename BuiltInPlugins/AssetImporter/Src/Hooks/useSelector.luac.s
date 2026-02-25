PROTO_0:
        0 JUMPIFEQ                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_1:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["current"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+11]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K0 ["current"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+5]
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R0 R1 K0 ["current"]
       15 JUMPIFNOT                        R0 ; [+22]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R1 2
       18 CALL                             R0 1 1
       19 GETUPVAL                         R2 5
       20 GETTABLEKS                       R1 R2 K0 ["current"]
       22 JUMPIFEQKNIL                     R1 ; [+8]
       24 GETUPVAL                         R1 6
       25 MOVE                             R2 R0
       26 GETUPVAL                         R4 5
       27 GETTABLEKS                       R3 R4 K0 ["current"]
       29 CALL                             R1 2 1
       30 JUMPIF                           R1 ; [+2]
       31 SETUPVAL                         R0 7
       32 RETURN                           R0 0
       33 GETUPVAL                         R2 5
       34 GETTABLEKS                       R1 R2 K0 ["current"]
       36 SETUPVAL                         R1 7
       37 RETURN                           R0 0
       38 GETUPVAL                         R1 5
       39 GETTABLEKS                       R0 R1 K0 ["current"]
       41 SETUPVAL                         R0 7
       42 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 4
        9 GETUPVAL                         R1 5
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 GETUPVAL                         R0 6
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K0 ["current"]
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["current"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K0 ["current"]
       11 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       13 LOADK                            R2 K1 ["latestSelector"]
       14 GETIMPORT                        R0 K3 [assert]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R0 R1 K0 ["current"]
       20 GETUPVAL                         R1 0
       21 CALL                             R0 1 1
       22 GETUPVAL                         R1 3
       23 MOVE                             R2 R0
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R3 R4 K0 ["current"]
       27 CALL                             R1 2 1
       28 JUMPIFNOT                        R1 ; [+2]
       29 LOADB                            R1 0
       30 RETURN                           R1 1
       31 GETUPVAL                         R1 4
       32 SETTABLEKS                       R0 R1 K0 ["current"]
       34 GETUPVAL                         R1 1
       35 GETUPVAL                         R2 0
       36 SETTABLEKS                       R2 R1 K0 ["current"]
       38 LOADB                            R1 1
       39 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 2
        9 JUMPIF                           R1 ; [+4]
       10 ORK                              R2 R2 K2 ["Error"]
       11 GETUPVAL                         R3 4
       12 SETTABLEKS                       R2 R3 K3 ["current"]
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETUPVAL                         R3 5
       16 LOADNIL                          R4
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 GETUPVAL                         R2 6
        8 GETTABLEKS                       R1 R2 K0 ["changed"]
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K1 ["connect"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 6
       15 NAMECALL                         R2 R2 K2 ["getState"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [pcall]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CALL                             R3 1 2
       27 JUMPIF                           R3 ; [+4]
       28 ORK                              R4 R4 K5 ["Error"]
       29 GETUPVAL                         R5 4
       30 SETTABLEKS                       R4 R5 K6 ["current"]
       32 JUMPIFNOT                        R4 ; [+3]
       33 GETUPVAL                         R5 5
       34 LOADNIL                          R6
       35 CALL                             R5 1 0
       36 NEWCLOSURE                       R2 P2
       37 CAPTURE                          VAL R1
       38 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useReducer"]
        3 DUPCLOSURE                       R4 K1 [PROTO_1]
        4 LOADN                            R5 0
        5 CALL                             R3 2 2
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K2 ["useRef"]
        9 LOADNIL                          R6
       10 CALL                             R5 1 1
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K2 ["useRef"]
       14 LOADNIL                          R7
       15 CALL                             R6 1 1
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K2 ["useRef"]
       19 LOADNIL                          R8
       20 CALL                             R7 1 1
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K2 ["useRef"]
       24 LOADNIL                          R9
       25 CALL                             R8 1 1
       26 NAMECALL                         R9 R2 K3 ["getState"]
       28 CALL                             R9 1 1
       29 LOADNIL                          R10
       30 GETIMPORT                        R11 K5 [pcall]
       32 NEWCLOSURE                       R12 P1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R9
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R8
       39 CAPTURE                          VAL R1
       40 CAPTURE                          REF R10
       41 CALL                             R11 1 2
       42 JUMPIF                           R11 ; [+23]
       43 GETTABLEKS                       R13 R5 K6 ["current"]
       45 JUMPIFNOT                        R13 ; [+16]
       46 GETIMPORT                        R13 K9 [string.format]
       48 LOADK                            R14 K10 ["%s\nThe error may be correlated with this previous error:\n%s\n\n"]
       49 FASTCALL1                        TOSTRING R12 ; [+3]
       50 MOVE                             R16 R12
       51 GETIMPORT                        R15 K12 [tostring]
       53 CALL                             R15 1 1
       54 GETTABLEKS                       R17 R5 K6 ["current"]
       56 FASTCALL1                        TOSTRING R17 ; [+2]
       57 GETIMPORT                        R16 K12 [tostring]
       59 CALL                             R16 1 1
       60 CALL                             R13 3 1
       61 MOVE                             R12 R13
       62 GETIMPORT                        R13 K14 [error]
       64 MOVE                             R14 R12
       65 CALL                             R13 1 0
       66 GETUPVAL                         R14 0
       67 GETTABLEKS                       R13 R14 K15 ["useLayoutEffect"]
       69 NEWCLOSURE                       R14 P2
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R8
       75 CAPTURE                          REF R10
       76 CAPTURE                          VAL R5
       77 CALL                             R13 1 0
       78 GETUPVAL                         R14 0
       79 GETTABLEKS                       R13 R14 K15 ["useLayoutEffect"]
       81 NEWCLOSURE                       R14 P3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R2
       89 NEWTABLE                         R15 0 1
       91 MOVE                             R16 R2
       92 SETLIST                          R15 R16 1 [1]
       94 CALL                             R13 2 0
       95 CLOSEUPVALS                      R10
       96 RETURN                           R10 1

PROTO_9:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 GETGLOBAL                        R4 K0 ["useSelectorWithStore"]
        7 MOVE                             R5 R0
        8 MOVE                             R6 R2
        9 MOVE                             R7 R3
       10 CALL                             R4 3 1
       11 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Hooks"]
       20 GETTABLEKS                       R3 R4 K10 ["useStore"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 DUPCLOSURE                       R4 K12 [PROTO_8]
       25 CAPTURE                          VAL R1
       26 SETGLOBAL                        R4 K13 ["useSelectorWithStore"]
       28 DUPCLOSURE                       R4 K14 [PROTO_9]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 SETGLOBAL                        R4 K15 ["useSelector"]
       33 GETGLOBAL                        R4 K15 ["useSelector"]
       35 RETURN                           R4 1
