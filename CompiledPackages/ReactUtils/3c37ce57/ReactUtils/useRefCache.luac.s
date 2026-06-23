PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 SETTABLE                         R2 R3 R1
        6 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R1 K0 ["{"]
        1 GETIMPORT                        R2 K2 [pairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 LOADK                            R7 K3 ["%s\n\t%s -> %s"]
        7 MOVE                             R9 R1
        8 FASTCALL1                        TOSTRING R5 ; [+3]
        9 MOVE                             R11 R5
       10 GETIMPORT                        R10 K5 [tostring]
       12 CALL                             R10 1 1
       13 FASTCALL1                        TOSTRING R6 ; [+3]
       14 MOVE                             R12 R6
       15 GETIMPORT                        R11 K5 [tostring]
       17 CALL                             R11 1 1
       18 NAMECALL                         R7 R7 K6 ["format"]
       20 CALL                             R7 4 1
       21 MOVE                             R1 R7
       22 FORGLOOP                         R2 2 ; [-17]
       24 MOVE                             R3 R1
       25 LOADK                            R4 K7 ["\n}"]
       26 CONCAT                           R2 R3 R4
       27 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useRef"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K1 ["current"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+20]
        9 NEWTABLE                         R1 0 0
       11 DUPTABLE                         R4 K4 [{"__index", "__tostring"}]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R5 R4 K2 ["__index"]
       17 DUPCLOSURE                       R5 K5 [PROTO_1]
       18 SETTABLEKS                       R5 R4 K3 ["__tostring"]
       20 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K7 [setmetatable]
       25 CALL                             R2 2 0
       26 SETTABLEKS                       R1 R0 K1 ["current"]
       28 GETTABLEKS                       R1 R0 K1 ["current"]
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_2]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
