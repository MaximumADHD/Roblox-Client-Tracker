PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["Instance"] ; [+10]
        7 LOADK                            R2 K3 ["Instance[%*]"]
        8 NAMECALL                         R4 R0 K4 ["GetDebugId"]
       10 CALL                             R4 1 1
       11 NAMECALL                         R2 R2 K5 ["format"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 RETURN                           R1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K7 [tostring]
       20 CALL                             R1 1 1
       21 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 DUPCLOSURE                       R3 K0 [PROTO_0]
        9 CALL                             R1 2 1
       10 GETIMPORT                        R2 K3 [table.concat]
       12 MOVE                             R3 R1
       13 LOADK                            R4 K4 ["/"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 OR                               R1 R2 R0
        3 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOTEQKB                    R0 TRUE ; [+3]
        2 MOVE                             R2 R1
        3 RETURN                           R2 1
        4 LOADNIL                          R2
        5 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_4]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+2]
        1 JUMPIFNOT                        R2 ; [+1]
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 NAMECALL                         R4 R0 K0 ["migrateItemState"]
        9 CALL                             R4 4 0
       10 GETTABLEKS                       R4 R2 K1 ["Children"]
       12 GETTABLEKS                       R5 R3 K1 ["Children"]
       14 JUMPIFNOT                        R4 ; [+1]
       15 JUMPIF                           R5 ; [+1]
       16 RETURN                           R0 0
       17 MOVE                             R6 R4
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 MOVE                             R11 R5
       22 LOADNIL                          R12
       23 LOADNIL                          R13
       24 FORGPREP                         R11
       25 GETTABLEKS                       R17 R15 K2 ["Instance"]
       27 GETTABLEKS                       R18 R10 K2 ["Instance"]
       29 JUMPIFEQ                         R17 R18 ; [+2]
       31 LOADB                            R16 0 +1
       32 LOADB                            R16 1
       33 GETTABLEKS                       R19 R10 K3 ["Name"]
       35 GETTABLEKS                       R18 R19 K4 ["Value"]
       37 GETTABLEKS                       R20 R15 K3 ["Name"]
       39 GETTABLEKS                       R19 R20 K4 ["Value"]
       41 JUMPIFEQ                         R18 R19 ; [+2]
       43 LOADB                            R17 0 +1
       44 LOADB                            R17 1
       45 JUMPIFNOT                        R16 ; [+14]
       46 GETTABLEKS                       R18 R15 K2 ["Instance"]
       48 JUMPIFNOTEQKNIL                  R18 ; [+2]
       50 JUMPIFNOT                        R17 ; [+9]
       51 GETUPVAL                         R19 0
       52 GETTABLEKS                       R18 R19 K5 ["updateItems"]
       54 MOVE                             R19 R0
       55 MOVE                             R20 R1
       56 MOVE                             R21 R10
       57 MOVE                             R22 R15
       58 CALL                             R18 4 0
       59 JUMP                             ; [+2]
       60 FORGLOOP                         R11 2 ; [-36]
       62 FORGLOOP                         R6 2 ; [-42]
       64 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["mapOne"]
       18 GETTABLEKS                       R3 R1 K8 ["map"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R6 R0 K9 ["Src"]
       24 GETTABLEKS                       R5 R6 K10 ["Types"]
       26 CALL                             R4 1 1
       27 NEWTABLE                         R5 8 0
       29 DUPCLOSURE                       R6 K11 [PROTO_1]
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R6 R5 K12 ["createItemId"]
       33 DUPCLOSURE                       R6 K13 [PROTO_2]
       34 SETTABLEKS                       R6 R5 K14 ["getRowChildren"]
       36 DUPCLOSURE                       R6 K15 [PROTO_3]
       37 SETTABLEKS                       R6 R5 K16 ["getTableRowId"]
       39 DUPCLOSURE                       R6 K17 [PROTO_5]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R6 R5 K18 ["getOneSelectedItem"]
       43 DUPCLOSURE                       R6 K19 [PROTO_6]
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R6 R5 K20 ["updateItems"]
       47 RETURN                           R5 1
