PROTO_0:
        0 LOADK                            R3 K0 ["\n---\n"]
        1 LOADN                            R4 4
        2 LOADB                            R5 1
        3 NAMECALL                         R1 R0 K1 ["find"]
        5 CALL                             R1 4 2
        6 JUMPIFNOT                        R1 ; [+4]
        7 JUMPIFNOT                        R2 ; [+3]
        8 MOVE                             R3 R1
        9 ADDK                             R4 R2 K2 [1]
       10 RETURN                           R3 2
       11 LENGTH                           R3 R0
       12 LOADN                            R4 7
       13 JUMPIFNOTLE                      R4 R3 ; [+13]
       15 LOADN                            R5 -4
       16 NAMECALL                         R3 R0 K3 ["sub"]
       18 CALL                             R3 2 1
       19 JUMPIFNOTEQKS                    R3 K4 ["\n---"] ; [+7]
       21 LENGTH                           R5 R0
       22 SUBK                             R4 R5 K5 [4]
       23 ADDK                             R3 R4 K2 [1]
       24 LENGTH                           R5 R0
       25 ADDK                             R4 R5 K2 [1]
       26 RETURN                           R3 2
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 RETURN                           R3 2

PROTO_1:
        0 LOADK                            R3 K0 ["\r"]
        1 LOADN                            R4 1
        2 LOADB                            R5 1
        3 NAMECALL                         R1 R0 K1 ["find"]
        5 CALL                             R1 4 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 LOADK                            R3 K2 ["\r\n"]
        8 LOADK                            R4 K3 ["\n"]
        9 NAMECALL                         R1 R0 K4 ["gsub"]
       11 CALL                             R1 3 1
       12 MOVE                             R0 R1
       13 LOADN                            R3 1
       14 LOADN                            R4 4
       15 NAMECALL                         R1 R0 K5 ["sub"]
       17 CALL                             R1 3 1
       18 JUMPIFEQKS                       R1 K6 ["---\n"] ; [+4]
       20 LOADNIL                          R1
       21 LOADK                            R2 K7 ["Missing opening frontmatter delimiter (expected file to start with '---\\n')"]
       22 RETURN                           R1 2
       23 LOADK                            R6 K8 ["\n---\n"]
       24 LOADN                            R7 4
       25 LOADB                            R8 1
       26 NAMECALL                         R4 R0 K1 ["find"]
       28 CALL                             R4 4 2
       29 JUMPIFNOT                        R4 ; [+4]
       30 JUMPIFNOT                        R5 ; [+3]
       31 MOVE                             R1 R4
       32 ADDK                             R2 R5 K9 [1]
       33 JUMP                             ; [+18]
       34 LENGTH                           R6 R0
       35 LOADN                            R7 7
       36 JUMPIFNOTLE                      R7 R6 ; [+13]
       38 LOADN                            R8 -4
       39 NAMECALL                         R6 R0 K5 ["sub"]
       41 CALL                             R6 2 1
       42 JUMPIFNOTEQKS                    R6 K10 ["\n---"] ; [+7]
       44 LENGTH                           R7 R0
       45 SUBK                             R6 R7 K11 [4]
       46 ADDK                             R1 R6 K9 [1]
       47 LENGTH                           R6 R0
       48 ADDK                             R2 R6 K9 [1]
       49 JUMP                             ; [+2]
       50 LOADNIL                          R1
       51 LOADNIL                          R2
       52 JUMPIFEQKNIL                     R1 ; [+3]
       54 JUMPIFNOTEQKNIL                  R2 ; [+4]
       56 LOADNIL                          R3
       57 LOADK                            R4 K12 ["Missing closing frontmatter delimiter"]
       58 RETURN                           R3 2
       59 LOADN                            R5 5
       60 SUBK                             R6 R1 K9 [1]
       61 NAMECALL                         R3 R0 K5 ["sub"]
       63 CALL                             R3 3 1
       64 LENGTH                           R5 R0
       65 JUMPIFNOTLE                      R2 R5 ; [+6]
       67 MOVE                             R6 R2
       68 NAMECALL                         R4 R0 K5 ["sub"]
       70 CALL                             R4 2 1
       71 JUMP                             ; [+1]
       72 LOADK                            R4 K13 [""]
       73 LOADNIL                          R5
       74 LOADNIL                          R6
       75 LOADNIL                          R7
       76 NEWTABLE                         R8 0 0
       78 LOADK                            R11 K14 ["[^\n]+"]
       79 NAMECALL                         R9 R3 K15 ["gmatch"]
       81 CALL                             R9 2 3
       82 FORGPREP                         R9
       83 LOADK                            R16 K16 ["%S"]
       84 NAMECALL                         R14 R12 K17 ["match"]
       86 CALL                             R14 2 1
       87 JUMPIFNOT                        R14 ; [+42]
       88 LOADK                            R16 K18 ["^%s*([%w_%-]+)%s*:%s*(.-)%s*$"]
       89 NAMECALL                         R14 R12 K17 ["match"]
       91 CALL                             R14 2 2
       92 JUMPIFEQKNIL                     R14 ; [+3]
       94 JUMPIFNOTEQKNIL                  R15 ; [+8]
       96 LOADNIL                          R16
       97 LOADK                            R17 K19 ["Invalid frontmatter line: \"%*\""]
       98 MOVE                             R19 R12
       99 NAMECALL                         R17 R17 K20 ["format"]
      101 CALL                             R17 2 1
      102 RETURN                           R16 2
      103 JUMPIFNOTEQKS                    R14 K21 ["name"] ; [+3]
      105 MOVE                             R5 R15
      106 JUMP                             ; [+23]
      107 JUMPIFNOTEQKS                    R14 K22 ["description"] ; [+3]
      109 MOVE                             R6 R15
      110 JUMP                             ; [+19]
      111 JUMPIFNOTEQKS                    R14 K23 ["enabled"] ; [+17]
      113 JUMPIFNOTEQKS                    R15 K24 ["true"] ; [+3]
      115 LOADB                            R7 1
      116 JUMP                             ; [+13]
      117 JUMPIFNOTEQKS                    R15 K25 ["false"] ; [+3]
      119 LOADB                            R7 0
      120 JUMP                             ; [+9]
      121 LOADNIL                          R16
      122 LOADK                            R17 K26 ["Invalid value for 'enabled': \"%*\" (expected 'true' or 'false')"]
      123 MOVE                             R19 R15
      124 NAMECALL                         R17 R17 K20 ["format"]
      126 CALL                             R17 2 1
      127 RETURN                           R16 2
      128 JUMP                             ; [+1]
      129 SETTABLE                         R15 R8 R14
      130 FORGLOOP                         R9 1 ; [-48]
      132 JUMPIFEQKNIL                     R5 ; [+3]
      134 JUMPIFNOTEQKS                    R5 K13 [""] ; [+4]
      136 LOADNIL                          R9
      137 LOADK                            R10 K27 ["Missing required field: name"]
      138 RETURN                           R9 2
      139 JUMPIFEQKNIL                     R6 ; [+3]
      141 JUMPIFNOTEQKS                    R6 K13 [""] ; [+4]
      143 LOADNIL                          R9
      144 LOADK                            R10 K28 ["Missing required field: description"]
      145 RETURN                           R9 2
      146 DUPTABLE                         R9 K32 [{"frontmatter", "extras", "body"}]
      147 DUPTABLE                         R10 K33 [{"name", "description", "enabled"}]
      148 SETTABLEKS                       R5 R10 K21 ["name"]
      150 SETTABLEKS                       R6 R10 K22 ["description"]
      152 SETTABLEKS                       R7 R10 K23 ["enabled"]
      154 SETTABLEKS                       R10 R9 K29 ["frontmatter"]
      156 SETTABLEKS                       R8 R9 K30 ["extras"]
      158 SETTABLEKS                       R4 R9 K31 ["body"]
      160 RETURN                           R9 1

PROTO_2:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["---"]
        3 SETLIST                          R1 R2 1 [1]
        5 LOADK                            R4 K1 ["name: %*"]
        6 GETTABLEKS                       R6 R0 K2 ["frontmatter"]
        8 GETTABLEKS                       R6 R6 K3 ["name"]
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 2 1
       13 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K7 [table.insert]
       18 CALL                             R2 2 0
       19 LOADK                            R4 K8 ["description: %*"]
       20 GETTABLEKS                       R6 R0 K2 ["frontmatter"]
       22 GETTABLEKS                       R6 R6 K9 ["description"]
       24 NAMECALL                         R4 R4 K4 ["format"]
       26 CALL                             R4 2 1
       27 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       29 MOVE                             R3 R1
       30 GETIMPORT                        R2 K7 [table.insert]
       32 CALL                             R2 2 0
       33 GETTABLEKS                       R2 R0 K2 ["frontmatter"]
       35 GETTABLEKS                       R2 R2 K10 ["enabled"]
       37 JUMPIFEQKNIL                     R2 ; [+19]
       39 LOADK                            R4 K11 ["enabled: %*"]
       40 GETTABLEKS                       R7 R0 K2 ["frontmatter"]
       42 GETTABLEKS                       R7 R7 K10 ["enabled"]
       44 FASTCALL1                        TOSTRING R7 ; [+2]
       45 GETIMPORT                        R6 K13 [tostring]
       47 CALL                             R6 1 1
       48 NAMECALL                         R4 R4 K4 ["format"]
       50 CALL                             R4 2 1
       51 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       53 MOVE                             R3 R1
       54 GETIMPORT                        R2 K7 [table.insert]
       56 CALL                             R2 2 0
       57 GETTABLEKS                       R2 R0 K14 ["extras"]
       59 LOADNIL                          R3
       60 LOADNIL                          R4
       61 FORGPREP                         R2
       62 LOADK                            R9 K15 ["%*: %*"]
       63 MOVE                             R11 R5
       64 MOVE                             R12 R6
       65 NAMECALL                         R9 R9 K4 ["format"]
       67 CALL                             R9 3 1
       68 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       70 MOVE                             R8 R1
       71 GETIMPORT                        R7 K7 [table.insert]
       73 CALL                             R7 2 0
       74 FORGLOOP                         R2 2 ; [-13]
       76 FASTCALL2K                       TABLE_INSERT R1 K0 ; [+5]
       78 MOVE                             R3 R1
       79 LOADK                            R4 K0 ["---"]
       80 GETIMPORT                        R2 K7 [table.insert]
       82 CALL                             R2 2 0
       83 GETIMPORT                        R3 K17 [table.concat]
       85 MOVE                             R4 R1
       86 LOADK                            R5 K18 ["\n"]
       87 CALL                             R3 2 1
       88 LOADK                            R4 K18 ["\n"]
       89 GETTABLEKS                       R5 R0 K19 ["body"]
       91 CONCAT                           R2 R3 R5
       92 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R0 K2 ["parse"]
        7 DUPCLOSURE                       R2 K3 [PROTO_2]
        8 SETTABLEKS                       R2 R0 K4 ["serialize"]
       10 RETURN                           R0 1
