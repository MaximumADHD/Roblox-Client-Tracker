PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETIMPORT                        R7 K1 [pcall]
        8 GETIMPORT                        R8 K4 [BrickColor.new]
       10 MOVE                             R9 R6
       11 CALL                             R7 2 2
       12 JUMPIFNOT                        R7 ; [+9]
       13 JUMPIFNOT                        R8 ; [+8]
       14 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       16 MOVE                             R10 R1
       17 MOVE                             R11 R8
       18 GETIMPORT                        R9 K7 [table.insert]
       20 CALL                             R9 2 0
       21 JUMP                             ; [+9]
       22 GETIMPORT                        R9 K9 [warn]
       24 LOADK                            R11 K10 ["createBrickColorsFromIds: Failed to create BrickColor with ID %*"]
       25 MOVE                             R13 R6
       26 NAMECALL                         R11 R11 K11 ["format"]
       28 CALL                             R11 2 1
       29 MOVE                             R10 R11
       30 CALL                             R9 1 0
       31 FORGLOOP                         R2 2 ; [-26]
       33 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
