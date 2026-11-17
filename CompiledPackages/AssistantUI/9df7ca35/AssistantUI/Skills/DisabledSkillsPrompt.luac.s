PROTO_0:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["source"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["Roblox"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+31]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R3 R0 K2 ["name"]
       11 LOADN                            R4 1
       12 LOADN                            R5 4
       13 FASTCALL                         STRING_SUB ; [+2]
       14 GETIMPORT                        R2 K5 [string.sub]
       16 CALL                             R2 3 1
       17 JUMPIFNOTEQKS                    R2 K6 ["rbx-"] ; [+20]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K7 ["getBySource"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K8 ["User"]
       25 GETTABLEKS                       R5 R0 K2 ["name"]
       27 FASTCALL2K                       STRING_SUB R5 K9 ; [+4]
       29 LOADK                            R6 K9 [5]
       30 GETIMPORT                        R4 K5 [string.sub]
       32 CALL                             R4 2 1
       33 CALL                             R2 2 1
       34 JUMPIFNOTEQKNIL                  R2 ; [+2]
       36 LOADB                            R1 0 +1
       37 LOADB                            R1 1
       38 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R1 ; [+40]
        8 LOADB                            R3 0
        9 GETTABLEKS                       R4 R1 K1 ["source"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["Roblox"]
       14 JUMPIFNOTEQ                      R4 R5 ; [+31]
       16 LOADB                            R3 0
       17 GETTABLEKS                       R5 R1 K3 ["name"]
       19 LOADN                            R6 1
       20 LOADN                            R7 4
       21 FASTCALL                         STRING_SUB ; [+2]
       22 GETIMPORT                        R4 K6 [string.sub]
       24 CALL                             R4 3 1
       25 JUMPIFNOTEQKS                    R4 K7 ["rbx-"] ; [+20]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K8 ["getBySource"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K9 ["User"]
       33 GETTABLEKS                       R7 R1 K3 ["name"]
       35 FASTCALL2K                       STRING_SUB R7 K10 ; [+4]
       37 LOADK                            R8 K10 [5]
       38 GETIMPORT                        R6 K6 [string.sub]
       40 CALL                             R6 2 1
       41 CALL                             R4 2 1
       42 JUMPIFNOTEQKNIL                  R4 ; [+2]
       44 LOADB                            R3 0 +1
       45 LOADB                            R3 1
       46 NOT                              R2 R3
       47 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getAll"]
        5 CALL                             R1 0 3
        6 FORGPREP                         R1
        7 LOADB                            R6 0
        8 GETTABLEKS                       R7 R5 K1 ["source"]
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R8 R8 K2 ["Roblox"]
       13 JUMPIFNOTEQ                      R7 R8 ; [+31]
       15 LOADB                            R6 0
       16 GETTABLEKS                       R8 R5 K3 ["name"]
       18 LOADN                            R9 1
       19 LOADN                            R10 4
       20 FASTCALL                         STRING_SUB ; [+2]
       21 GETIMPORT                        R7 K6 [string.sub]
       23 CALL                             R7 3 1
       24 JUMPIFNOTEQKS                    R7 K7 ["rbx-"] ; [+20]
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K8 ["getBySource"]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K9 ["User"]
       32 GETTABLEKS                       R10 R5 K3 ["name"]
       34 FASTCALL2K                       STRING_SUB R10 K10 ; [+4]
       36 LOADK                            R11 K10 [5]
       37 GETIMPORT                        R9 K6 [string.sub]
       39 CALL                             R9 2 1
       40 CALL                             R7 2 1
       41 JUMPIFNOTEQKNIL                  R7 ; [+2]
       43 LOADB                            R6 0 +1
       44 LOADB                            R6 1
       45 JUMPIF                           R6 ; [+25]
       46 GETTABLEKS                       R7 R5 K1 ["source"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K9 ["User"]
       51 JUMPIFNOTEQ                      R7 R8 ; [+3]
       53 LOADK                            R6 K11 ["Local"]
       54 JUMP                             ; [+1]
       55 LOADK                            R6 K2 ["Roblox"]
       56 LOADK                            R9 K12 ["  <skill>\n    <name>%*</name>\n    <source>%*</source>\n    <description>%*</description>\n  </skill>"]
       57 GETTABLEKS                       R11 R5 K3 ["name"]
       59 MOVE                             R12 R6
       60 GETTABLEKS                       R13 R5 K13 ["description"]
       62 NAMECALL                         R9 R9 K14 ["format"]
       64 CALL                             R9 4 1
       65 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       67 MOVE                             R8 R0
       68 GETIMPORT                        R7 K17 [table.insert]
       70 CALL                             R7 2 0
       71 FORGLOOP                         R1 2 ; [-65]
       73 LENGTH                           R1 R0
       74 JUMPIFNOTEQKN                    R1 K18 [0] ; [+3]
       76 LOADNIL                          R1
       77 RETURN                           R1 1
       78 GETIMPORT                        R1 K20 [table.sort]
       80 MOVE                             R2 R0
       81 CALL                             R1 1 0
       82 LOADK                            R1 K21 ["<disabled_skills>\n%*\n</disabled_skills>\n\nThe user has turned these skills off, so their content can't be loaded. If one would help with the task, tell the user which skill and ask them to turn it on in the Assistant settings under Skills. Don't try to load it until they do."]
       83 GETIMPORT                        R3 K23 [table.concat]
       85 MOVE                             R4 R0
       86 LOADK                            R5 K24 ["\n"]
       87 CALL                             R3 2 1
       88 NAMECALL                         R1 R1 K14 ["format"]
       90 CALL                             R1 2 1
       91 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["DisabledSkillsStore"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["SkillDefinition"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["SkillRegistry"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R1 K8 ["Sources"]
       30 NEWTABLE                         R4 2 0
       32 DUPCLOSURE                       R5 K9 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 DUPCLOSURE                       R6 K10 [PROTO_1]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R6 R4 K11 ["isUserDisabled"]
       41 DUPCLOSURE                       R6 K12 [PROTO_2]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R6 R4 K13 ["buildSection"]
       47 RETURN                           R4 1
