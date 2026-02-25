PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["_innerRegEx"]
        2 FASTCALL1                        TOSTRING R2 ; [+2]
        3 GETIMPORT                        R1 K2 [tostring]
        5 CALL                             R1 1 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_innerRegEx"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["match"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 NAMECALL                         R3 R2 K2 ["span"]
       11 CALL                             R3 1 1
       12 NAMECALL                         R4 R2 K3 ["grouparr"]
       14 CALL                             R4 1 1
       15 NEWTABLE                         R5 0 1
       17 LOADN                            R7 0
       18 GETTABLE                         R6 R4 R7
       19 SETLIST                          R5 R6 1 [1]
       21 LOADN                            R8 1
       22 GETTABLEKS                       R6 R4 K4 ["n"]
       24 LOADN                            R7 1
       25 FORNPREP                         R6
       26 ADDK                             R9 R8 K5 [1]
       27 GETTABLE                         R10 R4 R8
       28 SETTABLE                         R10 R5 R9
       29 FORNLOOP                         R6
       30 GETTABLEKS                       R7 R4 K4 ["n"]
       32 ADDK                             R6 R7 K5 [1]
       33 SETTABLEKS                       R6 R5 K4 ["n"]
       35 SETTABLEKS                       R3 R5 K6 ["index"]
       37 SETTABLEKS                       R1 R5 K7 ["input"]
       39 RETURN                           R5 1

PROTO_2:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["exec"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 ORK                              R2 R2 K0 [""]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K1 ["new"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 1
        7 DUPTABLE                         R4 K7 [{"source", "ignoreCase", "global", "multiline", "_innerRegEx"}]
        8 SETTABLEKS                       R1 R4 K2 ["source"]
       10 LOADK                            R8 K8 ["i"]
       11 NAMECALL                         R6 R2 K9 ["find"]
       13 CALL                             R6 2 1
       14 JUMPIFNOTEQKNIL                  R6 ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 SETTABLEKS                       R5 R4 K3 ["ignoreCase"]
       20 LOADK                            R8 K10 ["g"]
       21 NAMECALL                         R6 R2 K9 ["find"]
       23 CALL                             R6 2 1
       24 JUMPIFNOTEQKNIL                  R6 ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 SETTABLEKS                       R5 R4 K4 ["global"]
       30 LOADK                            R8 K11 ["m"]
       31 NAMECALL                         R6 R2 K9 ["find"]
       33 CALL                             R6 2 1
       34 JUMPIFNOTEQKNIL                  R6 ; [+2]
       36 LOADB                            R5 0 +1
       37 LOADB                            R5 1
       38 SETTABLEKS                       R5 R4 K5 ["multiline"]
       40 SETTABLEKS                       R3 R4 K6 ["_innerRegEx"]
       42 GETUPVAL                         R7 1
       43 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K13 [setmetatable]
       48 CALL                             R5 2 1
       49 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["RegEx"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 2 0
       12 DUPTABLE                         R2 K8 [{"__index", "__tostring"}]
       13 SETTABLEKS                       R1 R2 K6 ["__index"]
       15 DUPCLOSURE                       R3 K9 [PROTO_0]
       16 SETTABLEKS                       R3 R2 K7 ["__tostring"]
       18 DUPCLOSURE                       R3 K10 [PROTO_1]
       19 SETTABLEKS                       R3 R1 K11 ["exec"]
       21 DUPCLOSURE                       R3 K12 [PROTO_2]
       22 SETTABLEKS                       R3 R1 K13 ["test"]
       24 DUPCLOSURE                       R3 K14 [PROTO_3]
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 DUPTABLE                         R6 K16 [{"__call"}]
       28 SETTABLEKS                       R3 R6 K15 ["__call"]
       30 FASTCALL2                        SETMETATABLE R1 R6 ; [+4]
       32 MOVE                             R5 R1
       33 GETIMPORT                        R4 K18 [setmetatable]
       35 CALL                             R4 2 1
       36 RETURN                           R4 1
