PROTO_0:
        0 NEWTABLE                         R5 0 0
        2 GETUPVAL                         R6 0
        3 CALL                             R6 0 3
        4 FORGPREP                         R6
        5 DUPTABLE                         R13 K3 [{"id", "isChecked", "text"}]
        6 LOADK                            R14 K4 ["filter.schema.%*"]
        7 MOVE                             R16 R10
        8 NAMECALL                         R14 R14 K5 ["format"]
       10 CALL                             R14 2 1
       11 SETTABLEKS                       R14 R13 K0 ["id"]
       13 GETTABLE                         R15 R4 R10
       14 JUMPIFNOTEQKB                    R15 FALSE ; [+2]
       16 LOADB                            R14 0 +1
       17 LOADB                            R14 1
       18 SETTABLEKS                       R14 R13 K1 ["isChecked"]
       20 LOADK                            R16 K6 ["Schema"]
       21 MOVE                             R17 R10
       22 NAMECALL                         R14 R0 K7 ["getText"]
       24 CALL                             R14 3 1
       25 SETTABLEKS                       R14 R13 K2 ["text"]
       27 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       29 MOVE                             R12 R5
       30 GETIMPORT                        R11 K10 [table.insert]
       32 CALL                             R11 2 0
       33 FORGLOOP                         R6 2 ; [-29]
       35 NEWTABLE                         R6 0 0
       37 MOVE                             R7 R1
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 FORGPREP                         R7
       41 MOVE                             R12 R2
       42 MOVE                             R13 R11
       43 CALL                             R12 1 1
       44 JUMPIFNOT                        R12 ; [+20]
       45 DUPTABLE                         R15 K3 [{"id", "isChecked", "text"}]
       46 SETTABLEKS                       R11 R15 K0 ["id"]
       48 GETTABLE                         R17 R3 R11
       49 JUMPIFNOTEQKB                    R17 FALSE ; [+2]
       51 LOADB                            R16 0 +1
       52 LOADB                            R16 1
       53 SETTABLEKS                       R16 R15 K1 ["isChecked"]
       55 GETTABLEKS                       R16 R12 K11 ["name"]
       57 SETTABLEKS                       R16 R15 K2 ["text"]
       59 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
       61 MOVE                             R14 R6
       62 GETIMPORT                        R13 K10 [table.insert]
       64 CALL                             R13 2 0
       65 FORGLOOP                         R7 2 ; [-25]
       67 NEWTABLE                         R7 0 2
       69 DUPTABLE                         R8 K13 [{"items"}]
       70 SETTABLEKS                       R5 R8 K12 ["items"]
       72 DUPTABLE                         R9 K13 [{"items"}]
       73 SETTABLEKS                       R6 R9 K12 ["items"]
       75 SETLIST                          R7 R8 2 [1]
       77 RETURN                           R7 1

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
