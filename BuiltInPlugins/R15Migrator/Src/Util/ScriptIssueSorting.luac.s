PROTO_0:
        0 GETTABLEKS                       R5 R1 K0 ["scriptId"]
        2 JUMPIFNOT                        R5 ; [+9]
        3 GETTABLEKS                       R6 R1 K0 ["scriptId"]
        5 GETTABLE                         R5 R2 R6
        6 JUMPIF                           R5 ; [+5]
        7 GETTABLEKS                       R5 R1 K0 ["scriptId"]
        9 NEWTABLE                         R6 0 0
       11 SETTABLE                         R6 R2 R5
       12 GETTABLEKS                       R5 R1 K1 ["range"]
       14 JUMPIF                           R5 ; [+14]
       15 GETTABLEKS                       R5 R1 K0 ["scriptId"]
       17 GETTABLEKS                       R9 R1 K0 ["scriptId"]
       19 GETTABLE                         R8 R3 R9
       20 NAMECALL                         R6 R0 K2 ["sortDiagListForConversion"]
       22 CALL                             R6 2 1
       23 SETTABLE                         R6 R2 R5
       24 GETTABLEKS                       R5 R1 K0 ["scriptId"]
       26 LOADB                            R6 1
       27 SETTABLE                         R6 R4 R5
       28 RETURN                           R0 0
       29 GETTABLEKS                       R6 R1 K0 ["scriptId"]
       31 GETTABLE                         R5 R4 R6
       32 JUMPIF                           R5 ; [+10]
       33 GETTABLEKS                       R7 R1 K0 ["scriptId"]
       35 GETTABLE                         R6 R2 R7
       36 GETUPVAL                         R7 0
       37 MOVE                             R8 R1
       38 CALL                             R7 1 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R5 K5 [table.insert]
       42 CALL                             R5 -1 0
       43 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R5 R1
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 MOVE                             R12 R9
        9 MOVE                             R13 R3
       10 MOVE                             R14 R2
       11 MOVE                             R15 R4
       12 NAMECALL                         R10 R0 K0 ["addScriptIssue"]
       14 CALL                             R10 5 0
       15 FORGLOOP                         R5 2 ; [-8]
       17 MOVE                             R5 R3
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETTABLE                         R10 R4 R8
       22 JUMPIF                           R10 ; [+4]
       23 MOVE                             R12 R9
       24 NAMECALL                         R10 R0 K1 ["sortScriptItemsByRange"]
       26 CALL                             R10 2 0
       27 FORGLOOP                         R5 2 ; [-7]
       29 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["range"]
        2 GETTABLEKS                       R4 R1 K0 ["range"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.sort]
        2 MOVE                             R3 R1
        3 DUPCLOSURE                       R4 K3 [PROTO_2]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R1 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R3 R1 K0 ["Get"]
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 1
        9 MOVE                             R5 R2
       10 NAMECALL                         R3 R0 K1 ["sortScriptItemsByRange"]
       12 CALL                             R3 2 0
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["deepCopy"]
       18 NEWTABLE                         R3 4 0
       20 DUPCLOSURE                       R4 K10 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R3 K11 ["addScriptIssue"]
       24 DUPCLOSURE                       R4 K12 [PROTO_1]
       25 SETTABLEKS                       R4 R3 K13 ["sortSelectionForConversion"]
       27 DUPCLOSURE                       R4 K14 [PROTO_3]
       28 SETTABLEKS                       R4 R3 K15 ["sortScriptItemsByRange"]
       30 DUPCLOSURE                       R4 K16 [PROTO_4]
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R4 R3 K17 ["sortDiagListForConversion"]
       34 RETURN                           R3 1
