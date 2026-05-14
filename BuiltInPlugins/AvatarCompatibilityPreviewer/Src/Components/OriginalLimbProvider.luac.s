PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 NAMECALL                         R5 R4 K1 ["Disconnect"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 GETIMPORT                        R0 K4 [table.clear]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["current"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["current"]
       11 GETUPVAL                         R1 1
       12 LOADNIL                          R2
       13 SETTABLE                         R2 R0 R1
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETTABLEKS                       R2 R0 K1 ["Destroying"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R2 R2 K2 ["Connect"]
       10 CALL                             R2 2 1
       11 SETTABLE                         R2 R1 R0
       12 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K2 [{"isLimbOriginal", "markLimbAsOriginal"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["isLimbOriginal"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["markLimbAsOriginal"]
        9 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R4 R1 K1 ["current"]
        8 JUMPIFNOTEQKNIL                  R4 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       14 LOADK                            R4 K2 ["Luau"]
       15 GETIMPORT                        R2 K4 [assert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K5 ["useEffect"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R4 0 0
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K6 ["useMemo"]
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          VAL R1
       31 NEWTABLE                         R4 0 0
       33 CALL                             R2 2 1
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K7 ["createElement"]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K8 ["Provider"]
       40 DUPTABLE                         R5 K10 [{"value"}]
       41 SETTABLEKS                       R2 R5 K9 ["value"]
       43 GETTABLEKS                       R6 R0 K11 ["children"]
       45 CALL                             R3 3 -1
       46 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["OriginalLimbContext"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_6]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
