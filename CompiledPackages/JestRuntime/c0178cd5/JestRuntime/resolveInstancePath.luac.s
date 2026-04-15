PROTO_0:
        0 LOADK                            R4 K0 ["/"]
        1 NAMECALL                         R2 R1 K1 ["split"]
        3 CALL                             R2 2 1
        4 GETTABLEN                        R3 R2 1
        5 GETUPVAL                         R4 0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 JUMPIFNOTEQ                      R3 R8 ; [+3]
       11 LOADNIL                          R9
       12 RETURN                           R9 1
       13 FORGLOOP                         R4 2 ; [-5]
       15 LOADNIL                          R4
       16 MOVE                             R5 R0
       17 MOVE                             R6 R2
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 JUMPIFNOTEQKS                    R10 K2 [""] ; [+3]
       23 JUMPIFNOTEQKNIL                  R4 ; [+106]
       25 JUMPIF                           R4 ; [+6]
       26 JUMPIFNOTEQKS                    R10 K2 [""] ; [+5]
       28 GETIMPORT                        R11 K4 [error]
       30 LOADK                            R12 K5 ["paths beginning with '/' are not supported in sandboxed string requires"]
       31 CALL                             R11 1 0
       32 JUMPIFNOTEQ                      R5 R0 ; [+55]
       34 JUMPIFNOTEQKS                    R10 K6 ["@game"] ; [+5]
       36 GETIMPORT                        R5 K8 [game]
       38 MOVE                             R4 R10
       39 JUMP                             ; [+90]
       40 JUMPIFNOTEQKS                    R10 K9 ["@self"] ; [+3]
       42 MOVE                             R4 R10
       43 JUMP                             ; [+86]
       44 JUMPIFNOTEQKS                    R10 K10 ["."] ; [+17]
       46 GETTABLEKS                       R11 R5 K11 ["Parent"]
       48 JUMPIF                           R11 ; [+9]
       49 GETIMPORT                        R11 K4 [error]
       51 LOADK                            R13 K12 ["could not resolve path (no parent for %*)"]
       52 MOVE                             R15 R5
       53 NAMECALL                         R13 R13 K13 ["format"]
       55 CALL                             R13 2 1
       56 MOVE                             R12 R13
       57 CALL                             R11 1 0
       58 GETTABLEKS                       R5 R5 K11 ["Parent"]
       60 MOVE                             R4 R10
       61 JUMP                             ; [+68]
       62 JUMPIFNOTEQKS                    R10 K14 [".."] ; [+25]
       64 GETTABLEKS                       R11 R5 K11 ["Parent"]
       66 JUMPIFNOT                        R11 ; [+5]
       67 GETTABLEKS                       R12 R5 K11 ["Parent"]
       69 GETTABLEKS                       R11 R12 K11 ["Parent"]
       71 JUMPIF                           R11 ; [+10]
       72 GETIMPORT                        R11 K4 [error]
       74 LOADK                            R13 K15 ["could not resolve path part \"%*\" relative to %*"]
       75 MOVE                             R15 R10
       76 MOVE                             R16 R5
       77 NAMECALL                         R13 R13 K13 ["format"]
       79 CALL                             R13 3 1
       80 MOVE                             R12 R13
       81 CALL                             R11 1 0
       82 GETTABLEKS                       R11 R5 K11 ["Parent"]
       84 GETTABLEKS                       R5 R11 K11 ["Parent"]
       86 MOVE                             R4 R10
       87 JUMP                             ; [+42]
       88 JUMPIFNOTEQKS                    R10 K14 [".."] ; [+24]
       90 JUMPIFNOT                        R4 ; [+6]
       91 JUMPIFEQ                         R4 R10 ; [+5]
       93 GETIMPORT                        R11 K4 [error]
       95 LOADK                            R12 K16 ["paths including '..' after the beginning are not supported in sandboxed string requires"]
       96 CALL                             R11 1 0
       97 GETTABLEKS                       R11 R5 K11 ["Parent"]
       99 JUMPIF                           R11 ; [+10]
      100 GETIMPORT                        R11 K4 [error]
      102 LOADK                            R13 K15 ["could not resolve path part \"%*\" relative to %*"]
      103 MOVE                             R15 R10
      104 MOVE                             R16 R5
      105 NAMECALL                         R13 R13 K13 ["format"]
      107 CALL                             R13 3 1
      108 MOVE                             R12 R13
      109 CALL                             R11 1 0
      110 GETTABLEKS                       R5 R5 K11 ["Parent"]
      112 JUMP                             ; [+16]
      113 MOVE                             R13 R10
      114 NAMECALL                         R11 R5 K17 ["FindFirstChild"]
      116 CALL                             R11 2 1
      117 JUMPIF                           R11 ; [+10]
      118 GETIMPORT                        R12 K4 [error]
      120 LOADK                            R14 K18 ["could not resolve an Instance named \"%*\" relative to %*"]
      121 MOVE                             R16 R10
      122 MOVE                             R17 R5
      123 NAMECALL                         R14 R14 K13 ["format"]
      125 CALL                             R14 3 1
      126 MOVE                             R13 R14
      127 CALL                             R12 1 0
      128 MOVE                             R5 R11
      129 MOVE                             R4 R10
      130 FORGLOOP                         R6 2 ; [-110]
      132 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 2
        3 LOADK                            R1 K0 ["@std"]
        4 LOADK                            R2 K1 ["@rbx"]
        5 SETLIST                          R0 R1 2 [1]
        7 DUPCLOSURE                       R1 K2 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
