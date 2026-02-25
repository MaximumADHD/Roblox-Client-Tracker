PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Label"]
        2 GETTABLEKS                       R4 R1 K0 ["Label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+2]
        4 RETURN                           R2 1
        5 GETUPVAL                         R4 0
        6 JUMPIFNOT                        R4 ; [+6]
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R4 R1 K0 ["lower"]
       10 CALL                             R4 1 -1
       11 CALL                             R3 -1 1
       12 JUMP                             ; [+3]
       13 NAMECALL                         R3 R1 K0 ["lower"]
       15 CALL                             R3 1 1
       16 MOVE                             R4 R0
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 NAMECALL                         R9 R8 K0 ["lower"]
       22 CALL                             R9 1 1
       23 MOVE                             R11 R3
       24 NAMECALL                         R9 R9 K1 ["match"]
       26 CALL                             R9 2 1
       27 JUMPIFNOT                        R9 ; [+14]
       28 DUPTABLE                         R9 K5 [{"Id", "Label", "Value"}]
       29 SETTABLEKS                       R8 R9 K2 ["Id"]
       31 SETTABLEKS                       R8 R9 K3 ["Label"]
       33 SETTABLEKS                       R8 R9 K4 ["Value"]
       35 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       37 MOVE                             R11 R2
       38 MOVE                             R12 R9
       39 GETIMPORT                        R10 K8 [table.insert]
       41 CALL                             R10 2 0
       42 FORGLOOP                         R4 2 ; [-23]
       44 GETIMPORT                        R4 K10 [table.sort]
       46 MOVE                             R5 R2
       47 DUPCLOSURE                       R6 K11 [PROTO_0]
       48 CALL                             R4 2 0
       49 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["escapeStringPattern"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R4 K8 ["Types"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K5 ["Src"]
       29 GETTABLEKS                       R5 R6 K9 ["Flags"]
       31 GETTABLEKS                       R4 R5 K10 ["getFFlagStyleEditorFixAutocompleteMatchError"]
       33 CALL                             R3 1 1
       34 CALL                             R3 0 1
       35 DUPCLOSURE                       R4 K11 [PROTO_1]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 RETURN                           R4 1
