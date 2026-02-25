PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [ipairs]
        4 GETTABLEKS                       R5 R0 K2 ["CategoryNames"]
        6 CALL                             R4 1 3
        7 FORGPREP_INEXT                   R4
        8 GETTABLEKS                       R10 R0 K3 ["Categories"]
       10 GETTABLE                         R9 R10 R8
       11 GETTABLEKS                       R11 R9 K4 ["Builtin"]
       13 JUMPIFNOT                        R11 ; [+6]
       14 LOADK                            R12 K3 ["Categories"]
       15 MOVE                             R13 R8
       16 NAMECALL                         R10 R2 K5 ["getText"]
       18 CALL                             R10 3 1
       19 JUMP                             ; [+1]
       20 MOVE                             R10 R8
       21 GETUPVAL                         R11 0
       22 MOVE                             R12 R1
       23 CALL                             R11 1 1
       24 FASTCALL2                        TABLE_INSERT R11 R8 ; [+5]
       26 MOVE                             R13 R11
       27 MOVE                             R14 R8
       28 GETIMPORT                        R12 K8 [table.insert]
       30 CALL                             R12 2 0
       31 GETTABLEKS                       R13 R9 K2 ["CategoryNames"]
       33 LENGTH                           R12 R13
       34 LOADN                            R13 0
       35 JUMPIFNOTLT                      R13 R12 ; [+20]
       37 DUPTABLE                         R14 K12 [{"children", "path", "text"}]
       38 GETUPVAL                         R15 1
       39 MOVE                             R16 R9
       40 MOVE                             R17 R11
       41 MOVE                             R18 R2
       42 CALL                             R15 3 1
       43 SETTABLEKS                       R15 R14 K9 ["children"]
       45 SETTABLEKS                       R11 R14 K10 ["path"]
       47 SETTABLEKS                       R10 R14 K11 ["text"]
       49 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       51 MOVE                             R13 R3
       52 GETIMPORT                        R12 K8 [table.insert]
       54 CALL                             R12 2 0
       55 JUMP                             ; [+11]
       56 DUPTABLE                         R14 K13 [{"path", "text"}]
       57 SETTABLEKS                       R11 R14 K10 ["path"]
       59 SETTABLEKS                       R10 R14 K11 ["text"]
       61 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       63 MOVE                             R13 R3
       64 GETIMPORT                        R12 K8 [table.insert]
       66 CALL                             R12 2 0
       67 FORGLOOP                         R4 2 [inext] ; [-60]
       69 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 1
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R0 K5 ["Src"]
       18 GETTABLEKS                       R2 R3 K7 ["Util"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K8 ["CopyPath"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K9 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 DUPCLOSURE                       R5 K10 [PROTO_1]
       29 CAPTURE                          VAL R4
       30 RETURN                           R5 1
