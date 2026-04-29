PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["pathStringForSorting"]
        2 GETTABLEKS                       R4 R1 K0 ["pathStringForSorting"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 LOADNIL                          R2
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R4 R1
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+6]
        8 DUPTABLE                         R3 K4 [{"testNamePattern"}]
        9 SETTABLEKS                       R1 R3 K3 ["testNamePattern"]
       11 MOVE                             R2 R3
       12 JUMP                             ; [+1]
       13 MOVE                             R2 R1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K5 ["new"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K8 [table.sort]
       21 MOVE                             R5 R0
       22 DUPCLOSURE                       R6 K9 [PROTO_0]
       23 CALL                             R4 2 0
       24 GETIMPORT                        R4 K11 [ipairs]
       26 MOVE                             R5 R0
       27 CALL                             R4 1 3
       28 FORGPREP_INEXT                   R4
       29 GETTABLEKS                       R11 R8 K12 ["path"]
       31 GETTABLEKS                       R12 R8 K13 ["method"]
       33 GETTABLEKS                       R13 R8 K14 ["instance"]
       35 NAMECALL                         R9 R3 K15 ["addRoot"]
       37 CALL                             R9 4 0
       38 FORGLOOP                         R4 2 [inext] ; [-10]
       40 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["TestPlan"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 1 0
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K7 ["createPlan"]
       16 RETURN                           R1 1
