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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+11]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+5]
       12 GETUPVAL                         R0 4
       13 GETTABLEKS                       R0 R0 K0 ["current"]
       15 JUMPIFNOT                        R0 ; [+22]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R1 2
       18 CALL                             R0 1 1
       19 GETUPVAL                         R1 5
       20 GETTABLEKS                       R1 R1 K0 ["current"]
       22 JUMPIFEQKNIL                     R1 ; [+8]
       24 GETUPVAL                         R1 6
       25 MOVE                             R2 R0
       26 GETUPVAL                         R3 5
       27 GETTABLEKS                       R3 R3 K0 ["current"]
       29 CALL                             R1 2 1
       30 JUMPIF                           R1 ; [+2]
       31 SETUPVAL                         R0 7
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 5
       34 GETTABLEKS                       R1 R1 K0 ["current"]
       36 SETUPVAL                         R1 7
       37 RETURN                           R0 0
       38 GETUPVAL                         R0 5
       39 GETTABLEKS                       R0 R0 K0 ["current"]
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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K0 ["current"]
       11 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       13 LOADK                            R2 K1 ["latestSelector"]
       14 GETIMPORT                        R0 K3 [assert]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K0 ["current"]
       20 GETUPVAL                         R1 0
       21 CALL                             R0 1 1
       22 GETUPVAL                         R1 3
       23 MOVE                             R2 R0
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R3 R3 K0 ["current"]
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
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R1 K1 [pcall]
        9 CALL                             R1 1 2
       10 JUMPIF                           R1 ; [+4]
       11 ORK                              R2 R2 K2 ["Error"]
       12 GETUPVAL                         R3 4
       13 SETTABLEKS                       R2 R3 K3 ["current"]
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETUPVAL                         R3 5
       17 LOADNIL                          R4
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

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
        7 GETUPVAL                         R1 6
        8 GETTABLEKS                       R1 R1 K0 ["changed"]
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K1 ["connect"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 6
       15 NAMECALL                         R2 R2 K2 ["getState"]
       17 CALL                             R2 1 1
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 FASTPCALL                        pcall 1 ; [+2]
       25 GETIMPORT                        R3 K4 [pcall]
       27 CALL                             R3 1 2
       28 JUMPIF                           R3 ; [+4]
       29 ORK                              R4 R4 K5 ["Error"]
       30 GETUPVAL                         R5 4
       31 SETTABLEKS                       R4 R5 K6 ["current"]
       33 JUMPIFNOT                        R4 ; [+3]
       34 GETUPVAL                         R5 5
       35 LOADNIL                          R6
       36 CALL                             R5 1 0
       37 NEWCLOSURE                       R2 P2
       38 CAPTURE                          VAL R1
       39 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useReducer"]
        3 DUPCLOSURE                       R4 K1 [PROTO_1]
        4 LOADN                            R5 0
        5 CALL                             R3 2 2
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["useRef"]
        9 LOADNIL                          R6
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K2 ["useRef"]
       14 LOADNIL                          R7
       15 CALL                             R6 1 1
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K2 ["useRef"]
       19 LOADNIL                          R8
       20 CALL                             R7 1 1
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K2 ["useRef"]
       24 LOADNIL                          R9
       25 CALL                             R8 1 1
       26 NAMECALL                         R9 R2 K3 ["getState"]
       28 CALL                             R9 1 1
       29 LOADNIL                          R10
       30 NEWCLOSURE                       R12 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R9
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R8
       37 CAPTURE                          VAL R1
       38 CAPTURE                          REF R10
       39 FASTPCALL                        pcall 1 ; [+2]
       40 GETIMPORT                        R11 K5 [pcall]
       42 CALL                             R11 1 2
       43 JUMPIF                           R11 ; [+23]
       44 GETTABLEKS                       R13 R5 K6 ["current"]
       46 JUMPIFNOT                        R13 ; [+16]
       47 GETIMPORT                        R13 K9 [string.format]
       49 LOADK                            R14 K10 ["%s\nThe error may be correlated with this previous error:\n%s\n\n"]
       50 FASTCALL1                        TOSTRING R12 ; [+3]
       51 MOVE                             R16 R12
       52 GETIMPORT                        R15 K12 [tostring]
       54 CALL                             R15 1 1
       55 GETTABLEKS                       R17 R5 K6 ["current"]
       57 FASTCALL1                        TOSTRING R17 ; [+2]
       58 GETIMPORT                        R16 K12 [tostring]
       60 CALL                             R16 1 1
       61 CALL                             R13 3 1
       62 MOVE                             R12 R13
       63 GETIMPORT                        R13 K14 [error]
       65 MOVE                             R14 R12
       66 CALL                             R13 1 0
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R13 R13 K15 ["useLayoutEffect"]
       70 NEWCLOSURE                       R14 P2
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 CAPTURE                          REF R10
       77 CAPTURE                          VAL R5
       78 CALL                             R13 1 0
       79 GETUPVAL                         R13 0
       80 GETTABLEKS                       R13 R13 K15 ["useLayoutEffect"]
       82 NEWCLOSURE                       R14 P3
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R2
       90 NEWTABLE                         R15 0 1
       92 MOVE                             R16 R2
       93 SETLIST                          R15 R16 1 [1]
       95 CALL                             R13 2 0
       96 CLOSEUPVALS                      R10
       97 RETURN                           R10 1

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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Hooks"]
       20 GETTABLEKS                       R3 R3 K10 ["useStore"]
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
