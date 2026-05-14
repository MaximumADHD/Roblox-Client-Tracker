PROTO_0:
        0 DUPTABLE                         R5 K4 [{"startLine", "startCharacter", "endLine", "endCharacter"}]
        1 SETTABLEKS                       R0 R5 K0 ["startLine"]
        3 SETTABLEKS                       R1 R5 K1 ["startCharacter"]
        5 SETTABLEKS                       R2 R5 K2 ["endLine"]
        7 SETTABLEKS                       R3 R5 K3 ["endCharacter"]
        9 GETUPVAL                         R6 0
       10 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       12 GETIMPORT                        R4 K6 [setmetatable]
       14 CALL                             R4 2 1
       15 RETURN                           R4 1

PROTO_1:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["startLine"]
        3 GETTABLEKS                       R4 R1 K0 ["startLine"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+23]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["startCharacter"]
       10 GETTABLEKS                       R4 R1 K1 ["startCharacter"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+16]
       14 LOADB                            R2 0
       15 GETTABLEKS                       R3 R0 K2 ["endLine"]
       17 GETTABLEKS                       R4 R1 K2 ["endLine"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+9]
       21 GETTABLEKS                       R3 R0 K3 ["endCharacter"]
       23 GETTABLEKS                       R4 R1 K3 ["endCharacter"]
       25 JUMPIFEQ                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["startLine"]
        2 GETTABLEKS                       R3 R1 K0 ["startLine"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K1 ["startCharacter"]
        8 GETTABLEKS                       R4 R1 K1 ["startCharacter"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K0 ["startLine"]
       17 GETTABLEKS                       R4 R1 K0 ["startLine"]
       19 JUMPIFLT                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["__eq"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+4]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K1 ["__lt"]
        8 CALL                             R2 2 1
        9 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["StartKey"]
        6 GETTABLE                         R2 R0 R3
        7 GETTABLEKS                       R2 R2 K2 ["line"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["StartKey"]
       12 GETTABLE                         R3 R0 R4
       13 GETTABLEKS                       R3 R3 K3 ["character"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K4 ["EndKey"]
       18 GETTABLE                         R4 R0 R5
       19 GETTABLEKS                       R4 R4 K2 ["line"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K4 ["EndKey"]
       24 GETTABLE                         R5 R0 R6
       25 GETTABLEKS                       R5 R5 K3 ["character"]
       27 CALL                             R1 4 -1
       28 RETURN                           R1 -1

PROTO_5:
        0 LOADB                            R3 1
        1 GETTABLEKS                       R4 R1 K0 ["endLine"]
        3 GETTABLEKS                       R5 R0 K1 ["startLine"]
        5 JUMPIFLT                         R4 R5 ; [+36]
        7 GETTABLEKS                       R4 R1 K0 ["endLine"]
        9 GETTABLEKS                       R5 R0 K1 ["startLine"]
       11 JUMPIFNOTEQ                      R4 R5 ; [+8]
       13 LOADB                            R3 1
       14 GETTABLEKS                       R4 R1 K2 ["endCharacter"]
       16 GETTABLEKS                       R5 R0 K3 ["startCharacter"]
       18 JUMPIFLT                         R4 R5 ; [+23]
       20 LOADB                            R3 1
       21 GETTABLEKS                       R4 R1 K1 ["startLine"]
       23 GETTABLEKS                       R5 R0 K0 ["endLine"]
       25 JUMPIFLT                         R5 R4 ; [+16]
       27 LOADB                            R3 0
       28 GETTABLEKS                       R4 R1 K1 ["startLine"]
       30 GETTABLEKS                       R5 R0 K0 ["endLine"]
       32 JUMPIFNOTEQ                      R4 R5 ; [+9]
       34 GETTABLEKS                       R4 R1 K3 ["startCharacter"]
       36 GETTABLEKS                       R5 R0 K2 ["endCharacter"]
       38 JUMPIFLT                         R5 R4 ; [+2]
       40 LOADB                            R3 0 +1
       41 LOADB                            R3 1
       42 NOT                              R2 R3
       43 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["StartKey"]
        5 DUPTABLE                         R3 K3 [{"line", "character"}]
        6 GETTABLEKS                       R4 R0 K4 ["startLine"]
        8 SETTABLEKS                       R4 R3 K1 ["line"]
       10 GETTABLEKS                       R4 R0 K5 ["startCharacter"]
       12 SETTABLEKS                       R4 R3 K2 ["character"]
       14 SETTABLE                         R3 R1 R2
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K6 ["EndKey"]
       18 DUPTABLE                         R3 K3 [{"line", "character"}]
       19 GETTABLEKS                       R4 R0 K7 ["endLine"]
       21 SETTABLEKS                       R4 R3 K1 ["line"]
       23 GETTABLEKS                       R4 R0 K8 ["endCharacter"]
       25 SETTABLEKS                       R4 R3 K2 ["character"]
       27 SETTABLE                         R3 R1 R2
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETTABLEKS                       R1 R1 K6 ["ScriptAnalysis"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Constants"]
       17 CALL                             R2 1 1
       18 NEWTABLE                         R3 8 0
       20 SETTABLEKS                       R3 R3 K10 ["__index"]
       22 DUPCLOSURE                       R4 K11 [PROTO_0]
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R4 R3 K12 ["new"]
       26 DUPCLOSURE                       R4 K13 [PROTO_1]
       27 SETTABLEKS                       R4 R3 K14 ["__eq"]
       29 DUPCLOSURE                       R4 K15 [PROTO_2]
       30 SETTABLEKS                       R4 R3 K16 ["__lt"]
       32 DUPCLOSURE                       R4 K17 [PROTO_3]
       33 SETTABLEKS                       R4 R3 K18 ["__le"]
       35 DUPCLOSURE                       R4 K19 [PROTO_4]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R4 R3 K20 ["fromLinter"]
       40 DUPCLOSURE                       R4 K21 [PROTO_5]
       41 SETTABLEKS                       R4 R3 K22 ["Overlaps"]
       43 DUPCLOSURE                       R4 K23 [PROTO_6]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R4 R3 K24 ["GetDataForLinter"]
       47 RETURN                           R3 1
