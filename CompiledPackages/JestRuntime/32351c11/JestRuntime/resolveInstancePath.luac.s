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
       23 JUMPIFNOTEQKNIL                  R4 ; [+102]
       25 JUMPIF                           R4 ; [+6]
       26 JUMPIFNOTEQKS                    R10 K2 [""] ; [+5]
       28 GETIMPORT                        R11 K4 [error]
       30 LOADK                            R12 K5 ["paths beginning with '/' are not supported in sandboxed string requires"]
       31 CALL                             R11 1 0
       32 JUMPIFNOTEQ                      R5 R0 ; [+53]
       34 JUMPIFNOTEQKS                    R10 K6 ["@game"] ; [+5]
       36 GETIMPORT                        R5 K8 [game]
       38 MOVE                             R4 R10
       39 JUMP                             ; [+86]
       40 JUMPIFNOTEQKS                    R10 K9 ["@self"] ; [+3]
       42 MOVE                             R4 R10
       43 JUMP                             ; [+82]
       44 JUMPIFNOTEQKS                    R10 K10 ["."] ; [+16]
       46 GETTABLEKS                       R11 R5 K11 ["Parent"]
       48 JUMPIF                           R11 ; [+8]
       49 GETIMPORT                        R11 K4 [error]
       51 LOADK                            R12 K12 ["could not resolve path (no parent for %*)"]
       52 MOVE                             R14 R5
       53 NAMECALL                         R12 R12 K13 ["format"]
       55 CALL                             R12 2 1
       56 CALL                             R11 1 0
       57 GETTABLEKS                       R5 R5 K11 ["Parent"]
       59 MOVE                             R4 R10
       60 JUMP                             ; [+65]
       61 JUMPIFNOTEQKS                    R10 K14 [".."] ; [+24]
       63 GETTABLEKS                       R11 R5 K11 ["Parent"]
       65 JUMPIFNOT                        R11 ; [+5]
       66 GETTABLEKS                       R11 R5 K11 ["Parent"]
       68 GETTABLEKS                       R11 R11 K11 ["Parent"]
       70 JUMPIF                           R11 ; [+9]
       71 GETIMPORT                        R11 K4 [error]
       73 LOADK                            R12 K15 ["could not resolve path part \"%*\" relative to %*"]
       74 MOVE                             R14 R10
       75 MOVE                             R15 R5
       76 NAMECALL                         R12 R12 K13 ["format"]
       78 CALL                             R12 3 1
       79 CALL                             R11 1 0
       80 GETTABLEKS                       R11 R5 K11 ["Parent"]
       82 GETTABLEKS                       R5 R11 K11 ["Parent"]
       84 MOVE                             R4 R10
       85 JUMP                             ; [+40]
       86 JUMPIFNOTEQKS                    R10 K14 [".."] ; [+23]
       88 JUMPIFNOT                        R4 ; [+6]
       89 JUMPIFEQ                         R4 R10 ; [+5]
       91 GETIMPORT                        R11 K4 [error]
       93 LOADK                            R12 K16 ["paths including '..' after the beginning are not supported in sandboxed string requires"]
       94 CALL                             R11 1 0
       95 GETTABLEKS                       R11 R5 K11 ["Parent"]
       97 JUMPIF                           R11 ; [+9]
       98 GETIMPORT                        R11 K4 [error]
      100 LOADK                            R12 K15 ["could not resolve path part \"%*\" relative to %*"]
      101 MOVE                             R14 R10
      102 MOVE                             R15 R5
      103 NAMECALL                         R12 R12 K13 ["format"]
      105 CALL                             R12 3 1
      106 CALL                             R11 1 0
      107 GETTABLEKS                       R5 R5 K11 ["Parent"]
      109 JUMP                             ; [+15]
      110 MOVE                             R13 R10
      111 NAMECALL                         R11 R5 K17 ["FindFirstChild"]
      113 CALL                             R11 2 1
      114 JUMPIF                           R11 ; [+9]
      115 GETIMPORT                        R12 K4 [error]
      117 LOADK                            R13 K18 ["could not resolve an Instance named \"%*\" relative to %*"]
      118 MOVE                             R15 R10
      119 MOVE                             R16 R5
      120 NAMECALL                         R13 R13 K13 ["format"]
      122 CALL                             R13 3 1
      123 CALL                             R12 1 0
      124 MOVE                             R5 R11
      125 MOVE                             R4 R10
      126 FORGLOOP                         R6 2 ; [-106]
      128 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 2
        3 LOADK                            R1 K0 ["@std"]
        4 LOADK                            R2 K1 ["@rbx"]
        5 SETLIST                          R0 R1 2 [1]
        7 DUPCLOSURE                       R1 K2 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
