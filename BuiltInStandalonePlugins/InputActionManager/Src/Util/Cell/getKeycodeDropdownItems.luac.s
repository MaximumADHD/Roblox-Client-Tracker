PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R4 0 1
        2 DUPTABLE                         R5 K3 [{"id", "text", "icon"}]
        3 GETIMPORT                        R6 K7 [Enum.KeyCode.Unknown]
        5 GETTABLEKS                       R6 R6 K8 ["Value"]
        7 SETTABLEKS                       R6 R5 K0 ["id"]
        9 LOADK                            R6 K9 ["None"]
       10 SETTABLEKS                       R6 R5 K1 ["text"]
       12 LOADK                            R6 K10 ["circle-question"]
       13 SETTABLEKS                       R6 R5 K2 ["icon"]
       15 SETLIST                          R4 R5 1 [1]
       17 GETTABLE                         R5 R3 R0
       18 JUMPIF                           R5 ; [+11]
       19 MOVE                             R6 R4
       20 GETIMPORT                        R8 K7 [Enum.KeyCode.Unknown]
       22 GETTABLEKS                       R8 R8 K8 ["Value"]
       24 JUMPIFNOTEQ                      R2 R8 ; [+3]
       26 LOADK                            R7 K10 ["circle-question"]
       27 RETURN                           R6 2
       28 LOADNIL                          R7
       29 RETURN                           R6 2
       30 LOADNIL                          R6
       31 MOVE                             R7 R5
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 FORGPREP                         R7
       35 GETTABLEKS                       R12 R1 K11 ["Name"]
       37 JUMPIFNOTEQ                      R10 R12 ; [+49]
       39 MOVE                             R12 R11
       40 LOADNIL                          R13
       41 LOADNIL                          R14
       42 FORGPREP                         R12
       43 GETIMPORT                        R17 K13 [xpcall]
       45 NEWCLOSURE                       R18 P0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R16
       48 DUPCLOSURE                       R19 K14 [PROTO_1]
       49 CALL                             R17 2 2
       50 DUPTABLE                         R21 K16 [{"icon", "id", "isChecked", "text"}]
       51 JUMPIFNOT                        R17 ; [+2]
       52 MOVE                             R22 R18
       53 JUMP                             ; [+1]
       54 LOADNIL                          R22
       55 SETTABLEKS                       R22 R21 K2 ["icon"]
       57 GETTABLEKS                       R22 R16 K8 ["Value"]
       59 SETTABLEKS                       R22 R21 K0 ["id"]
       61 GETTABLEKS                       R23 R16 K8 ["Value"]
       63 JUMPIFEQ                         R23 R2 ; [+2]
       65 LOADB                            R22 0 +1
       66 LOADB                            R22 1
       67 SETTABLEKS                       R22 R21 K15 ["isChecked"]
       69 GETTABLEKS                       R22 R16 K11 ["Name"]
       71 SETTABLEKS                       R22 R21 K1 ["text"]
       73 FASTCALL2                        TABLE_INSERT R4 R21 ; [+4]
       75 MOVE                             R20 R4
       76 GETIMPORT                        R19 K19 [table.insert]
       78 CALL                             R19 2 0
       79 GETTABLEKS                       R19 R16 K8 ["Value"]
       81 JUMPIFNOTEQ                      R19 R2 ; [+3]
       83 JUMPIFNOT                        R17 ; [+1]
       84 MOVE                             R6 R18
       85 FORGLOOP                         R12 2 ; [-43]
       87 FORGLOOP                         R7 2 ; [-53]
       89 MOVE                             R7 R4
       90 MOVE                             R8 R6
       91 RETURN                           R7 2

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
       14 GETTABLEKS                       R2 R1 K8 ["Utility"]
       16 GETTABLEKS                       R2 R2 K9 ["getBuilderIconForKeycode"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Types"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K12 [PROTO_2]
       26 CAPTURE                          VAL R2
       27 RETURN                           R4 1
