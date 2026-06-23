PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["source"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 LOADK                            R5 K1 ["Skill \"%*\" has unknown source \"%*\"."]
        9 GETTABLEKS                       R7 R0 K2 ["name"]
       11 GETTABLEKS                       R8 R0 K0 ["source"]
       13 NAMECALL                         R5 R5 K3 ["format"]
       15 CALL                             R5 3 1
       16 MOVE                             R4 R5
       17 FASTCALL2                        ASSERT R3 R4 ; [+3]
       19 GETIMPORT                        R2 K5 [assert]
       21 CALL                             R2 2 0
       22 GETTABLEKS                       R2 R0 K2 ["name"]
       24 SETTABLE                         R0 R1 R2
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K6 ["Changed"]
       28 NAMECALL                         R2 R2 K7 ["Fire"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["User"]
        4 GETTABLE                         R2 R3 R4
        5 GETTABLE                         R1 R2 R0
        6 JUMPIF                           R1 ; [+6]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["Roblox"]
       11 GETTABLE                         R2 R3 R4
       12 GETTABLE                         R1 R2 R0
       13 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 LOADK                            R6 K0 ["Skill \"%*\" has unknown source \"%*\"."]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R0
        9 NAMECALL                         R6 R6 K1 ["format"]
       11 CALL                             R6 3 1
       12 MOVE                             R5 R6
       13 FASTCALL2                        ASSERT R4 R5 ; [+3]
       15 GETIMPORT                        R3 K3 [assert]
       17 CALL                             R3 2 0
       18 GETTABLE                         R3 R2 R1
       19 RETURN                           R3 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["Roblox"]
        6 GETTABLE                         R1 R4 R5
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 SETTABLE                         R5 R0 R4
       11 FORGLOOP                         R1 2 ; [-2]
       13 GETUPVAL                         R4 0
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K1 ["User"]
       17 GETTABLE                         R1 R4 R5
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 FORGPREP                         R1
       21 SETTABLE                         R5 R0 R4
       22 FORGLOOP                         R1 2 ; [-2]
       24 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R4 0 +1
        7 LOADB                            R4 1
        8 LOADK                            R6 K0 ["Unknown source \"%*\"."]
        9 MOVE                             R8 R0
       10 NAMECALL                         R6 R6 K1 ["format"]
       12 CALL                             R6 2 1
       13 MOVE                             R5 R6
       14 FASTCALL2                        ASSERT R4 R5 ; [+3]
       16 GETIMPORT                        R3 K3 [assert]
       18 CALL                             R3 2 0
       19 MOVE                             R3 R2
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 SETTABLE                         R7 R1 R6
       24 FORGLOOP                         R3 2 ; [-2]
       26 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getAll"]
        5 CALL                             R1 0 3
        6 FORGPREP                         R1
        7 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R4
       11 GETIMPORT                        R6 K3 [table.insert]
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 2 ; [-8]
       16 RETURN                           R0 1

PROTO_6:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["Roblox"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLE                         R2 R0 R1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["User"]
       11 NEWTABLE                         R2 0 0
       13 SETTABLE                         R2 R0 R1
       14 SETUPVAL                         R0 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K2 ["Changed"]
       18 NAMECALL                         R0 R0 K3 ["Fire"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+11]
        4 GETUPVAL                         R1 0
        5 NEWTABLE                         R2 0 0
        7 SETTABLE                         R2 R1 R0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["Changed"]
       11 NAMECALL                         R1 R1 K1 ["Fire"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["SkillDefinition"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["Sources"]
       25 NEWTABLE                         R4 16 0
       27 NEWTABLE                         R5 2 0
       29 GETTABLEKS                       R6 R3 K10 ["Roblox"]
       31 NEWTABLE                         R7 0 0
       33 SETTABLE                         R7 R5 R6
       34 GETTABLEKS                       R6 R3 K11 ["User"]
       36 NEWTABLE                         R7 0 0
       38 SETTABLE                         R7 R5 R6
       39 GETTABLEKS                       R6 R1 K12 ["new"]
       41 CALL                             R6 0 1
       42 SETTABLEKS                       R6 R4 K13 ["Changed"]
       44 NEWCLOSURE                       R6 P0
       45 CAPTURE                          REF R5
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R6 R4 K14 ["register"]
       49 NEWCLOSURE                       R6 P1
       50 CAPTURE                          REF R5
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R6 R4 K15 ["get"]
       54 NEWCLOSURE                       R6 P2
       55 CAPTURE                          REF R5
       56 SETTABLEKS                       R6 R4 K16 ["getBySource"]
       58 NEWCLOSURE                       R6 P3
       59 CAPTURE                          REF R5
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R6 R4 K17 ["getAll"]
       63 NEWCLOSURE                       R6 P4
       64 CAPTURE                          REF R5
       65 SETTABLEKS                       R6 R4 K18 ["getAllBySource"]
       67 DUPCLOSURE                       R6 K19 [PROTO_5]
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R6 R4 K20 ["getNames"]
       71 NEWCLOSURE                       R6 P6
       72 CAPTURE                          REF R5
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 SETTABLEKS                       R6 R4 K21 ["clear"]
       77 NEWCLOSURE                       R6 P7
       78 CAPTURE                          REF R5
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R6 R4 K22 ["clearSource"]
       82 CLOSEUPVALS                      R5
       83 RETURN                           R4 1
