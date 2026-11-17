PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [script]
        3 LOADK                            R3 K2 ["@self"]
        4 NAMECALL                         R0 R0 K3 ["ResolveModulePath"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_1:
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
       15 GETUPVAL                         R4 1
       16 JUMPIFNOT                        R4 ; [+7]
       17 GETUPVAL                         R4 2
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 NAMECALL                         R4 R4 K2 ["ResolveModulePath"]
       22 CALL                             R4 3 -1
       23 RETURN                           R4 -1
       24 LOADNIL                          R4
       25 MOVE                             R5 R0
       26 MOVE                             R6 R2
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 FORGPREP                         R6
       30 JUMPIFNOTEQKS                    R10 K3 [""] ; [+3]
       32 JUMPIFNOTEQKNIL                  R4 ; [+102]
       34 JUMPIF                           R4 ; [+6]
       35 JUMPIFNOTEQKS                    R10 K3 [""] ; [+5]
       37 GETIMPORT                        R11 K5 [error]
       39 LOADK                            R12 K6 ["paths beginning with '/' are not supported in sandboxed string requires"]
       40 CALL                             R11 1 0
       41 JUMPIFNOTEQ                      R5 R0 ; [+53]
       43 JUMPIFNOTEQKS                    R10 K7 ["@game"] ; [+5]
       45 GETIMPORT                        R5 K9 [game]
       47 MOVE                             R4 R10
       48 JUMP                             ; [+86]
       49 JUMPIFNOTEQKS                    R10 K10 ["@self"] ; [+3]
       51 MOVE                             R4 R10
       52 JUMP                             ; [+82]
       53 JUMPIFNOTEQKS                    R10 K11 ["."] ; [+16]
       55 GETTABLEKS                       R11 R5 K12 ["Parent"]
       57 JUMPIF                           R11 ; [+8]
       58 GETIMPORT                        R11 K5 [error]
       60 LOADK                            R12 K13 ["could not resolve path (no parent for %*)"]
       61 MOVE                             R14 R5
       62 NAMECALL                         R12 R12 K14 ["format"]
       64 CALL                             R12 2 1
       65 CALL                             R11 1 0
       66 GETTABLEKS                       R5 R5 K12 ["Parent"]
       68 MOVE                             R4 R10
       69 JUMP                             ; [+65]
       70 JUMPIFNOTEQKS                    R10 K15 [".."] ; [+24]
       72 GETTABLEKS                       R11 R5 K12 ["Parent"]
       74 JUMPIFNOT                        R11 ; [+5]
       75 GETTABLEKS                       R11 R5 K12 ["Parent"]
       77 GETTABLEKS                       R11 R11 K12 ["Parent"]
       79 JUMPIF                           R11 ; [+9]
       80 GETIMPORT                        R11 K5 [error]
       82 LOADK                            R12 K16 ["could not resolve path part \"%*\" relative to %*"]
       83 MOVE                             R14 R10
       84 MOVE                             R15 R5
       85 NAMECALL                         R12 R12 K14 ["format"]
       87 CALL                             R12 3 1
       88 CALL                             R11 1 0
       89 GETTABLEKS                       R11 R5 K12 ["Parent"]
       91 GETTABLEKS                       R5 R11 K12 ["Parent"]
       93 MOVE                             R4 R10
       94 JUMP                             ; [+40]
       95 JUMPIFNOTEQKS                    R10 K15 [".."] ; [+23]
       97 JUMPIFNOT                        R4 ; [+6]
       98 JUMPIFEQ                         R4 R10 ; [+5]
      100 GETIMPORT                        R11 K5 [error]
      102 LOADK                            R12 K17 ["paths including '..' after the beginning are not supported in sandboxed string requires"]
      103 CALL                             R11 1 0
      104 GETTABLEKS                       R11 R5 K12 ["Parent"]
      106 JUMPIF                           R11 ; [+9]
      107 GETIMPORT                        R11 K5 [error]
      109 LOADK                            R12 K16 ["could not resolve path part \"%*\" relative to %*"]
      110 MOVE                             R14 R10
      111 MOVE                             R15 R5
      112 NAMECALL                         R12 R12 K14 ["format"]
      114 CALL                             R12 3 1
      115 CALL                             R11 1 0
      116 GETTABLEKS                       R5 R5 K12 ["Parent"]
      118 JUMP                             ; [+15]
      119 MOVE                             R13 R10
      120 NAMECALL                         R11 R5 K18 ["FindFirstChild"]
      122 CALL                             R11 2 1
      123 JUMPIF                           R11 ; [+9]
      124 GETIMPORT                        R12 K5 [error]
      126 LOADK                            R13 K19 ["could not resolve an Instance named \"%*\" relative to %*"]
      127 MOVE                             R15 R10
      128 MOVE                             R16 R5
      129 NAMECALL                         R13 R13 K14 ["format"]
      131 CALL                             R13 3 1
      132 CALL                             R12 1 0
      133 MOVE                             R5 R11
      134 MOVE                             R4 R10
      135 FORGLOOP                         R6 2 ; [-106]
      137 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ScriptService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R2 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R1 K6 [pcall]
       12 CALL                             R1 1 1
       13 NEWTABLE                         R2 0 2
       15 LOADK                            R3 K7 ["@std"]
       16 LOADK                            R4 K8 ["@rbx"]
       17 SETLIST                          R2 R3 2 [1]
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 RETURN                           R3 1
