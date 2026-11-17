PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["text"]
        2 GETTABLEKS                       R4 R1 K0 ["text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R4 0 1
        2 DUPTABLE                         R5 K5 [{[1], ["text"] = "None", ["icon"] = "circle-question"}]
        3 GETIMPORT                        R6 K9 [Enum.KeyCode.Unknown]
        5 GETTABLEKS                       R6 R6 K10 ["Value"]
        7 SETTABLEKS                       R6 R5 K0 ["id"]
        9 SETLIST                          R4 R5 1 [1]
       11 GETTABLE                         R5 R3 R0
       12 JUMPIF                           R5 ; [+11]
       13 MOVE                             R6 R4
       14 GETIMPORT                        R8 K9 [Enum.KeyCode.Unknown]
       16 GETTABLEKS                       R8 R8 K10 ["Value"]
       18 JUMPIFNOTEQ                      R2 R8 ; [+3]
       20 LOADK                            R7 K4 ["circle-question"]
       21 RETURN                           R6 2
       22 LOADNIL                          R7
       23 RETURN                           R6 2
       24 LOADNIL                          R6
       25 MOVE                             R7 R5
       26 LOADNIL                          R8
       27 LOADNIL                          R9
       28 FORGPREP                         R7
       29 GETTABLEKS                       R12 R1 K11 ["Name"]
       31 JUMPIFNOTEQ                      R10 R12 ; [+53]
       33 MOVE                             R12 R11
       34 LOADNIL                          R13
       35 LOADNIL                          R14
       36 FORGPREP                         R12
       37 NEWCLOSURE                       R18 P0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R16
       40 DUPCLOSURE                       R19 K12 [PROTO_1]
       41 FASTPCALL                        xpcall 2 ; [+2]
       42 GETIMPORT                        R17 K14 [xpcall]
       44 CALL                             R17 2 2
       45 GETUPVAL                         R20 1
       46 GETTABLE                         R19 R20 R16
       47 JUMPIF                           R19 ; [+2]
       48 GETTABLEKS                       R19 R16 K11 ["Name"]
       50 DUPTABLE                         R22 K16 [{"icon", "id", "isChecked", "text"}]
       51 JUMPIFNOT                        R17 ; [+2]
       52 MOVE                             R23 R18
       53 JUMP                             ; [+1]
       54 LOADNIL                          R23
       55 SETTABLEKS                       R23 R22 K3 ["icon"]
       57 GETTABLEKS                       R23 R16 K10 ["Value"]
       59 SETTABLEKS                       R23 R22 K0 ["id"]
       61 GETTABLEKS                       R24 R16 K10 ["Value"]
       63 JUMPIFEQ                         R24 R2 ; [+2]
       65 LOADB                            R23 0 +1
       66 LOADB                            R23 1
       67 SETTABLEKS                       R23 R22 K15 ["isChecked"]
       69 SETTABLEKS                       R19 R22 K1 ["text"]
       71 FASTCALL2                        TABLE_INSERT R4 R22 ; [+4]
       73 MOVE                             R21 R4
       74 GETIMPORT                        R20 K19 [table.insert]
       76 CALL                             R20 2 0
       77 GETTABLEKS                       R20 R16 K10 ["Value"]
       79 JUMPIFNOTEQ                      R20 R2 ; [+3]
       81 JUMPIFNOT                        R17 ; [+1]
       82 MOVE                             R6 R18
       83 FORGLOOP                         R12 2 ; [-47]
       85 FORGLOOP                         R7 2 ; [-57]
       87 GETIMPORT                        R7 K21 [table.sort]
       89 MOVE                             R8 R4
       90 DUPCLOSURE                       R9 K22 [PROTO_2]
       91 CALL                             R7 2 0
       92 MOVE                             R7 R4
       93 MOVE                             R8 R6
       94 RETURN                           R7 2

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
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 GETTABLEKS                       R3 R3 K11 ["KeycodeStrings"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K12 ["Utility"]
       27 GETTABLEKS                       R3 R3 K13 ["getBuilderIconForKeycode"]
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R0 K8 ["Src"]
       33 GETTABLEKS                       R5 R5 K14 ["Types"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K15 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 RETURN                           R5 1
