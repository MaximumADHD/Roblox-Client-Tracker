PROTO_0:
        0 JUMPIFNOTEQ                      R2 R0 ; [+3]
        2 MOVE                             R3 R1
        3 RETURN                           R3 1
        4 LOADNIL                          R3
        5 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R0
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 0
       17 RETURN                           R1 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+7]
        7 JUMPIFEQKNIL                     R2 ; [+6]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K0 ["OnFocusLost"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K1 ["Text"]
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Text"]
        3 CALL                             R1 1 2
        4 GETIMPORT                        R3 K3 [table.clone]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R1 R3 K0 ["Text"]
       10 GETUPVAL                         R4 1
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+11]
       13 GETTABLEKS                       R5 R0 K0 ["Text"]
       15 GETTABLEKS                       R6 R0 K4 ["ErrorText"]
       17 JUMPIFNOTEQ                      R1 R5 ; [+3]
       19 MOVE                             R4 R6
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 SETTABLEKS                       R4 R3 K4 ["ErrorText"]
       24 GETIMPORT                        R4 K8 [Enum.AutomaticSize.Y]
       26 SETTABLEKS                       R4 R3 K6 ["AutomaticSize"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R4 R3 K9 ["OnTextChanged"]
       32 NEWCLOSURE                       R4 P1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R4 R3 K10 ["OnFocusLost"]
       38 GETUPVAL                         R4 3
       39 GETUPVAL                         R5 4
       40 MOVE                             R6 R3
       41 CALL                             R4 2 -1
       42 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["OnTextChanged"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K0 ["OnTextChanged"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Text"]
        3 CALL                             R1 1 2
        4 GETIMPORT                        R3 K3 [table.clone]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R5 R0 K0 ["Text"]
       10 GETTABLEKS                       R6 R0 K4 ["ErrorText"]
       12 JUMPIFNOTEQ                      R1 R5 ; [+3]
       14 MOVE                             R4 R6
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 SETTABLEKS                       R4 R3 K4 ["ErrorText"]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R4 R3 K5 ["OnTextChanged"]
       24 GETUPVAL                         R4 1
       25 GETUPVAL                         R5 2
       26 MOVE                             R6 R3
       27 CALL                             R4 2 -1
       28 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 3
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R2 4
       13 MOVE                             R3 R0
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R2 5
       18 MOVE                             R3 R0
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["getFFlagAvatarSettingsRevertInvalidInput"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Flags"]
       36 GETTABLEKS                       R5 R5 K12 ["getFFlagAvatarSettingsValidateCustomBuildRange"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Util"]
       45 GETTABLEKS                       R6 R6 K14 ["isValidNumberInput"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R1 K15 ["UI"]
       50 GETTABLEKS                       R6 R6 K16 ["TextInput"]
       52 GETTABLEKS                       R7 R2 K17 ["createElement"]
       54 DUPCLOSURE                       R8 K18 [PROTO_0]
       55 DUPCLOSURE                       R9 K19 [PROTO_2]
       56 CAPTURE                          VAL R2
       57 DUPCLOSURE                       R10 K20 [PROTO_5]
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 DUPCLOSURE                       R11 K21 [PROTO_7]
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R6
       67 DUPCLOSURE                       R12 K22 [PROTO_8]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R6
       74 RETURN                           R12 1
