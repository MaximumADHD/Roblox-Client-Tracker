PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 LENGTH                           R1 R0
        4 JUMPIFNOTEQKN                    R1 K1 [0] ; [+4]
        6 LOADK                            R1 K2 [{0, 0, 0}]
        7 LOADK                            R2 K2 [{0, 0, 0}]
        8 RETURN                           R1 2
        9 GETTABLEN                        R1 R0 1
       10 GETTABLEN                        R2 R0 1
       11 LOADN                            R5 2
       12 LENGTH                           R3 R0
       13 LOADN                            R4 1
       14 FORNPREP                         R3
       15 GETTABLE                         R6 R0 R5
       16 MOVE                             R9 R6
       17 NAMECALL                         R7 R1 K3 ["Min"]
       19 CALL                             R7 2 1
       20 MOVE                             R1 R7
       21 MOVE                             R9 R6
       22 NAMECALL                         R7 R2 K4 ["Max"]
       24 CALL                             R7 2 1
       25 MOVE                             R2 R7
       26 FORNLOOP                         R3
       27 RETURN                           R1 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["FOCUS_CALLBACK_PRIORITIES"]
       10 GETTABLEKS                       R2 R3 K2 ["Positions"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U3
       14 NAMECALL                         R0 R0 K3 ["AddFocusCallback"]
       16 CALL                             R0 3 1
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R0 R1 K1 ["current"]
        7 GETTABLEKS                       R4 R1 K1 ["current"]
        9 JUMPIFNOTEQKNIL                  R4 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K2 ["LUAU_ANALYZE_ERROR"]
       16 FASTCALL2                        ASSERT R3 R4 ; [+3]
       18 GETIMPORT                        R2 K4 [assert]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K5 ["useEffect"]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R4 0 1
       31 LENGTH                           R6 R0
       32 JUMPIFEQKN                       R6 K6 [0] ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 SETLIST                          R4 R5 1 [1]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R1 K12 ["Src"]
       24 GETTABLEKS                       R5 R6 K13 ["Util"]
       26 GETTABLEKS                       R4 R5 K14 ["Constants"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K15 [PROTO_3]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R0
       33 RETURN                           R4 1
