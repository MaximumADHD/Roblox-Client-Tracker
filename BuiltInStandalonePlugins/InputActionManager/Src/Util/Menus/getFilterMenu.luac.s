PROTO_0:
        0 NEWTABLE                         R5 0 0
        2 GETUPVAL                         R6 0
        3 CALL                             R6 0 3
        4 FORGPREP                         R6
        5 DUPTABLE                         R13 K3 [{"id", "isChecked", "text"}]
        6 LOADK                            R15 K4 ["filter.schema.%*"]
        7 MOVE                             R17 R10
        8 NAMECALL                         R15 R15 K5 ["format"]
       10 CALL                             R15 2 1
       11 MOVE                             R14 R15
       12 SETTABLEKS                       R14 R13 K0 ["id"]
       14 GETTABLE                         R15 R4 R10
       15 JUMPIFNOTEQKB                    R15 FALSE ; [+2]
       17 LOADB                            R14 0 +1
       18 LOADB                            R14 1
       19 SETTABLEKS                       R14 R13 K1 ["isChecked"]
       21 LOADK                            R16 K6 ["Schema"]
       22 MOVE                             R17 R10
       23 NAMECALL                         R14 R0 K7 ["getText"]
       25 CALL                             R14 3 1
       26 SETTABLEKS                       R14 R13 K2 ["text"]
       28 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       30 MOVE                             R12 R5
       31 GETIMPORT                        R11 K10 [table.insert]
       33 CALL                             R11 2 0
       34 FORGLOOP                         R6 2 ; [-30]
       36 NEWTABLE                         R6 0 0
       38 MOVE                             R7 R1
       39 LOADNIL                          R8
       40 LOADNIL                          R9
       41 FORGPREP                         R7
       42 MOVE                             R12 R2
       43 MOVE                             R13 R11
       44 CALL                             R12 1 1
       45 JUMPIFNOT                        R12 ; [+20]
       46 DUPTABLE                         R15 K3 [{"id", "isChecked", "text"}]
       47 SETTABLEKS                       R11 R15 K0 ["id"]
       49 GETTABLE                         R17 R3 R11
       50 JUMPIFNOTEQKB                    R17 FALSE ; [+2]
       52 LOADB                            R16 0 +1
       53 LOADB                            R16 1
       54 SETTABLEKS                       R16 R15 K1 ["isChecked"]
       56 GETTABLEKS                       R16 R12 K11 ["name"]
       58 SETTABLEKS                       R16 R15 K2 ["text"]
       60 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
       62 MOVE                             R14 R6
       63 GETIMPORT                        R13 K10 [table.insert]
       65 CALL                             R13 2 0
       66 FORGLOOP                         R7 2 ; [-25]
       68 NEWTABLE                         R7 0 2
       70 DUPTABLE                         R8 K13 [{"items"}]
       71 SETTABLEKS                       R5 R8 K12 ["items"]
       73 DUPTABLE                         R9 K13 [{"items"}]
       74 SETTABLEKS                       R6 R9 K12 ["items"]
       76 SETLIST                          R7 R8 2 [1]
       78 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["getSchemas"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
