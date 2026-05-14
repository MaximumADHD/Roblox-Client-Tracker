PROTO_0:
        0 FASTCALL3                        STRING_SUB R0 R1 R1
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 MOVE                             R5 R1
        5 GETIMPORT                        R2 K2 [string.sub]
        7 CALL                             R2 3 1
        8 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R3 ; [+6]
        1 SUBK                             R4 R1 K0 [1]
        2 LOADN                            R5 1
        3 JUMPIFNOTLT                      R4 R5 ; [+3]
        5 LOADB                            R4 1
        6 RETURN                           R4 1
        7 SUBK                             R4 R1 K0 [1]
        8 LOADN                            R5 1
        9 JUMPIFNOTLE                      R5 R4 ; [+14]
       11 GETIMPORT                        R4 K3 [string.match]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["CharAt"]
       16 MOVE                             R6 R0
       17 SUBK                             R7 R1 K0 [1]
       18 CALL                             R5 2 1
       19 MOVE                             R6 R2
       20 CALL                             R4 2 1
       21 JUMPIFNOT                        R4 ; [+2]
       22 LOADB                            R4 1
       23 RETURN                           R4 1
       24 LOADB                            R4 0
       25 RETURN                           R4 1

PROTO_2:
        0 JUMPIFNOT                        R3 ; [+10]
        1 ADDK                             R4 R1 K0 [1]
        2 FASTCALL1                        STRING_LEN R0 ; [+3]
        3 MOVE                             R6 R0
        4 GETIMPORT                        R5 K3 [string.len]
        6 CALL                             R5 1 1
        7 JUMPIFNOTLT                      R5 R4 ; [+3]
        9 LOADB                            R4 1
       10 RETURN                           R4 1
       11 ADDK                             R4 R1 K0 [1]
       12 FASTCALL1                        STRING_LEN R0 ; [+3]
       13 MOVE                             R6 R0
       14 GETIMPORT                        R5 K3 [string.len]
       16 CALL                             R5 1 1
       17 JUMPIFNOTLE                      R4 R5 ; [+14]
       19 GETIMPORT                        R4 K5 [string.match]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K6 ["CharAt"]
       24 MOVE                             R6 R0
       25 ADDK                             R7 R1 K0 [1]
       26 CALL                             R5 2 1
       27 MOVE                             R6 R2
       28 CALL                             R4 2 1
       29 JUMPIFNOT                        R4 ; [+2]
       30 LOADB                            R4 1
       31 RETURN                           R4 1
       32 LOADB                            R4 0
       33 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["MatchBefore"]
        3 MOVE                             R8 R0
        4 MOVE                             R9 R1
        5 MOVE                             R10 R3
        6 MOVE                             R11 R5
        7 CALL                             R7 4 1
        8 JUMPIFNOT                        R7 ; [+9]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K1 ["MatchAfter"]
       12 MOVE                             R8 R0
       13 MOVE                             R9 R2
       14 MOVE                             R10 R4
       15 MOVE                             R11 R6
       16 CALL                             R7 4 -1
       17 RETURN                           R7 -1
       18 LOADB                            R7 0
       19 RETURN                           R7 1

PROTO_4:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["MatchBefore"]
        3 MOVE                             R8 R0
        4 MOVE                             R9 R1
        5 MOVE                             R10 R3
        6 MOVE                             R11 R5
        7 CALL                             R7 4 1
        8 JUMPIF                           R7 ; [+8]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K1 ["MatchAfter"]
       12 MOVE                             R8 R0
       13 MOVE                             R9 R2
       14 MOVE                             R10 R4
       15 MOVE                             R11 R6
       16 CALL                             R7 4 1
       17 RETURN                           R7 1

PROTO_5:
        0 LOADN                            R3 1
        1 FASTCALL1                        STRING_LEN R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K2 [string.len]
        5 CALL                             R4 1 1
        6 MOVE                             R1 R4
        7 LOADN                            R2 1
        8 FORNPREP                         R1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["CharAt"]
       12 MOVE                             R5 R0
       13 MOVE                             R6 R3
       14 CALL                             R4 2 1
       15 JUMPIFEQKS                       R4 K4 [" "] ; [+10]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K3 ["CharAt"]
       20 MOVE                             R5 R0
       21 MOVE                             R6 R3
       22 CALL                             R4 2 1
       23 JUMPIFEQKS                       R4 K5 ["\t"] ; [+2]
       25 RETURN                           R3 1
       26 FORNLOOP                         R1
       27 LOADNIL                          R1
       28 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%s"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 LOADN                            R2 1
        1 LOADK                            R5 K0 ["([^\r\n]*)([\r\n]*)"]
        2 NAMECALL                         R3 R0 K1 ["gmatch"]
        4 CALL                             R3 2 3
        5 FORGPREP                         R3
        6 MOVE                             R8 R1
        7 MOVE                             R9 R6
        8 MOVE                             R10 R2
        9 CALL                             R8 2 0
       10 LOADK                            R11 K2 ["\n+"]
       11 LOADK                            R12 K3 ["\0%0\0"]
       12 NAMECALL                         R9 R7 K4 ["gsub"]
       14 CALL                             R9 3 1
       15 LOADK                            R11 K5 [".%z."]
       16 LOADK                            R12 K6 ["."]
       17 NAMECALL                         R9 R9 K4 ["gsub"]
       19 CALL                             R9 3 1
       20 LOADK                            R11 K7 ["%z"]
       21 LOADK                            R12 K8 [""]
       22 NAMECALL                         R9 R9 K4 ["gsub"]
       24 CALL                             R9 3 1
       25 LENGTH                           R8 R9
       26 ADD                              R2 R2 R8
       27 FORGLOOP                         R3 2 ; [-22]
       29 RETURN                           R0 0

PROTO_8:
        0 ORK                              R3 R2 K0 [1]
        1 LENGTH                           R4 R0
        2 NEWTABLE                         R5 0 0
        4 JUMPIFNOTLE                      R3 R4 ; [+35]
        6 MOVE                             R8 R1
        7 MOVE                             R9 R3
        8 LOADB                            R10 1
        9 NAMECALL                         R6 R0 K1 ["find"]
       11 CALL                             R6 4 2
       12 JUMPIFNOT                        R6 ; [+27]
       13 SUBK                             R10 R6 K0 [1]
       14 SUBK                             R11 R6 K0 [1]
       15 NAMECALL                         R8 R0 K2 ["sub"]
       17 CALL                             R8 3 1
       18 ADDK                             R11 R7 K0 [1]
       19 ADDK                             R12 R7 K0 [1]
       20 NAMECALL                         R9 R0 K2 ["sub"]
       22 CALL                             R9 3 1
       23 JUMPIFEQKN                       R6 K0 [1] ; [+5]
       25 JUMPIFEQKS                       R8 K3 [" "] ; [+3]
       27 JUMPIFNOTEQKS                    R8 K4 ["\t"] ; [+8]
       29 JUMPIFEQ                         R7 R4 ; [+5]
       31 JUMPIFEQKS                       R9 K3 [" "] ; [+3]
       33 JUMPIFNOTEQKS                    R9 K4 ["\t"] ; [+2]
       35 RETURN                           R6 2
       36 ADDK                             R3 R7 K0 [1]
       37 JUMP                             ; [+1]
       38 RETURN                           R0 0
       39 JUMPBACK                         ; [-36]
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["CharAt"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["MatchBefore"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["MatchAfter"]
       14 DUPCLOSURE                       R1 K6 [PROTO_3]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["MatchBeforeAndAfter"]
       18 DUPCLOSURE                       R1 K8 [PROTO_4]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K9 ["MatchBeforeOrAfter"]
       22 DUPCLOSURE                       R1 K10 [PROTO_5]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K11 ["SkipLeadingWhitespace"]
       26 DUPCLOSURE                       R1 K12 [PROTO_6]
       27 SETTABLEKS                       R1 R0 K13 ["RemoveWhitespace"]
       29 DUPCLOSURE                       R1 K14 [PROTO_7]
       30 SETTABLEKS                       R1 R0 K15 ["ForEachLine"]
       32 DUPCLOSURE                       R1 K16 [PROTO_8]
       33 SETTABLEKS                       R1 R0 K17 ["FindFirstWholeWord"]
       35 RETURN                           R0 1
