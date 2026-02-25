PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["id"]
        6 JUMPIFNOTEQ                      R7 R1 ; [+2]
        8 RETURN                           R5 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFEQKNIL                     R1 ; [+20]
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R0 R3
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R2
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R9 R8 K0 ["id"]
       13 JUMPIFNOTEQ                      R9 R3 ; [+3]
       15 MOVE                             R1 R7
       16 JUMP                             ; [+3]
       17 FORGLOOP                         R4 2 ; [-7]
       19 LOADNIL                          R1
       20 JUMPIFEQKNIL                     R1 ; [+2]
       22 RETURN                           R0 1
       23 GETIMPORT                        R1 K3 [table.clone]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 1
       27 MOVE                             R0 R1
       28 GETUPVAL                         R1 0
       29 GETUPVAL                         R4 0
       30 GETTABLE                         R3 R0 R4
       31 JUMPIFNOT                        R3 ; [+6]
       32 GETIMPORT                        R2 K3 [table.clone]
       34 GETUPVAL                         R4 0
       35 GETTABLE                         R3 R0 R4
       36 CALL                             R2 1 1
       37 JUMP                             ; [+2]
       38 NEWTABLE                         R2 0 0
       40 SETTABLE                         R2 R0 R1
       41 GETUPVAL                         R3 0
       42 GETTABLE                         R2 R0 R3
       43 GETIMPORT                        R3 K5 [table.freeze]
       45 DUPTABLE                         R4 K9 [{"id", "message", "title", "errorType"}]
       46 GETUPVAL                         R5 1
       47 SETTABLEKS                       R5 R4 K0 ["id"]
       49 GETUPVAL                         R5 2
       50 SETTABLEKS                       R5 R4 K6 ["message"]
       52 GETUPVAL                         R5 3
       53 SETTABLEKS                       R5 R4 K7 ["title"]
       55 GETUPVAL                         R5 4
       56 SETTABLEKS                       R5 R4 K8 ["errorType"]
       58 CALL                             R3 1 -1
       59 FASTCALL                         TABLE_INSERT ; [+2]
       60 GETIMPORT                        R1 K11 [table.insert]
       62 CALL                             R1 -1 0
       63 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 NEWCLOSURE                       R6 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R3
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R4
        7 CALL                             R5 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R0 R3
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R2
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R9 R8 K0 ["id"]
       13 JUMPIFNOTEQ                      R9 R3 ; [+3]
       15 MOVE                             R1 R7
       16 JUMP                             ; [+3]
       17 FORGLOOP                         R4 2 ; [-7]
       19 LOADNIL                          R1
       20 JUMPIF                           R1 ; [+1]
       21 RETURN                           R0 1
       22 GETIMPORT                        R2 K3 [table.clone]
       24 MOVE                             R3 R0
       25 CALL                             R2 1 1
       26 MOVE                             R0 R2
       27 GETUPVAL                         R4 0
       28 GETTABLE                         R3 R0 R4
       29 LENGTH                           R2 R3
       30 JUMPIFNOTEQKN                    R2 K4 [1] ; [+5]
       32 GETUPVAL                         R2 0
       33 LOADNIL                          R3
       34 SETTABLE                         R3 R0 R2
       35 RETURN                           R0 1
       36 GETUPVAL                         R2 0
       37 GETIMPORT                        R3 K3 [table.clone]
       39 GETUPVAL                         R5 0
       40 GETTABLE                         R4 R0 R5
       41 CALL                             R3 1 1
       42 SETTABLE                         R3 R0 R2
       43 GETIMPORT                        R2 K6 [table.remove]
       45 GETUPVAL                         R4 0
       46 GETTABLE                         R3 R0 R4
       47 MOVE                             R4 R1
       48 CALL                             R2 2 0
       49 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R0 R4
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        8 LOADK                            R3 K0 ["Popping error from mesh that doesn't have one"]
        9 GETIMPORT                        R1 K2 [assert]
       11 CALL                             R1 2 0
       12 GETIMPORT                        R1 K5 [table.clone]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 MOVE                             R0 R1
       17 GETUPVAL                         R3 0
       18 GETTABLE                         R2 R0 R3
       19 LENGTH                           R1 R2
       20 JUMPIFNOTEQKN                    R1 K6 [1] ; [+5]
       22 GETUPVAL                         R1 0
       23 LOADNIL                          R2
       24 SETTABLE                         R2 R0 R1
       25 RETURN                           R0 1
       26 GETUPVAL                         R1 0
       27 GETIMPORT                        R2 K5 [table.clone]
       29 GETUPVAL                         R4 0
       30 GETTABLE                         R3 R0 R4
       31 CALL                             R2 1 1
       32 SETTABLE                         R2 R0 R1
       33 GETIMPORT                        R1 K8 [table.remove]
       35 GETUPVAL                         R3 0
       36 GETTABLE                         R2 R0 R3
       37 LOADN                            R3 1
       38 CALL                             R1 2 0
       39 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R0
        5 GETTABLEN                        R1 R2 1
        6 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 2
        6 DUPCLOSURE                       R2 K1 [PROTO_0]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R5 0 0
       14 CALL                             R3 2 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       18 NEWCLOSURE                       R5 P2
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R6 0 0
       22 CALL                             R4 2 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       26 NEWCLOSURE                       R6 P3
       27 CAPTURE                          VAL R1
       28 NEWTABLE                         R7 0 0
       30 CALL                             R5 2 1
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       34 NEWCLOSURE                       R7 P4
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R8 0 1
       38 MOVE                             R9 R0
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 1
       42 DUPTABLE                         R7 K7 [{"addError", "popError", "removeErrorById", "getTopError"}]
       43 SETTABLEKS                       R3 R7 K3 ["addError"]
       45 SETTABLEKS                       R5 R7 K4 ["popError"]
       47 SETTABLEKS                       R4 R7 K5 ["removeErrorById"]
       49 SETTABLEKS                       R6 R7 K6 ["getTopError"]
       51 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_8]
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
