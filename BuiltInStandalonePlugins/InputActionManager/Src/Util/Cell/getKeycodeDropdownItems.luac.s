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
       31 JUMPIFNOTEQ                      R10 R12 ; [+57]
       33 MOVE                             R12 R11
       34 LOADNIL                          R13
       35 LOADNIL                          R14
       36 FORGPREP                         R12
       37 GETIMPORT                        R17 K13 [xpcall]
       39 NEWCLOSURE                       R18 P0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R16
       42 DUPCLOSURE                       R19 K14 [PROTO_1]
       43 CALL                             R17 2 2
       44 GETTABLEKS                       R19 R16 K11 ["Name"]
       46 GETUPVAL                         R20 1
       47 CALL                             R20 0 1
       48 JUMPIFNOT                        R20 ; [+5]
       49 GETUPVAL                         R20 2
       50 GETTABLE                         R19 R20 R16
       51 JUMPIF                           R19 ; [+2]
       52 GETTABLEKS                       R19 R16 K11 ["Name"]
       54 DUPTABLE                         R22 K16 [{"icon", "id", "isChecked", "text"}]
       55 JUMPIFNOT                        R17 ; [+2]
       56 MOVE                             R23 R18
       57 JUMP                             ; [+1]
       58 LOADNIL                          R23
       59 SETTABLEKS                       R23 R22 K3 ["icon"]
       61 GETTABLEKS                       R23 R16 K10 ["Value"]
       63 SETTABLEKS                       R23 R22 K0 ["id"]
       65 GETTABLEKS                       R24 R16 K10 ["Value"]
       67 JUMPIFEQ                         R24 R2 ; [+2]
       69 LOADB                            R23 0 +1
       70 LOADB                            R23 1
       71 SETTABLEKS                       R23 R22 K15 ["isChecked"]
       73 SETTABLEKS                       R19 R22 K1 ["text"]
       75 FASTCALL2                        TABLE_INSERT R4 R22 ; [+4]
       77 MOVE                             R21 R4
       78 GETIMPORT                        R20 K19 [table.insert]
       80 CALL                             R20 2 0
       81 GETTABLEKS                       R20 R16 K10 ["Value"]
       83 JUMPIFNOTEQ                      R20 R2 ; [+3]
       85 JUMPIFNOT                        R17 ; [+1]
       86 MOVE                             R6 R18
       87 FORGLOOP                         R12 2 ; [-51]
       89 FORGLOOP                         R7 2 ; [-61]
       91 GETUPVAL                         R7 1
       92 CALL                             R7 0 1
       93 JUMPIFNOT                        R7 ; [+5]
       94 GETIMPORT                        R7 K21 [table.sort]
       96 MOVE                             R8 R4
       97 DUPCLOSURE                       R9 K22 [PROTO_2]
       98 CALL                             R7 2 0
       99 MOVE                             R7 R4
      100 MOVE                             R8 R6
      101 RETURN                           R7 2

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
       36 GETTABLEKS                       R5 R0 K8 ["Src"]
       38 GETTABLEKS                       R5 R5 K15 ["Flags"]
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R5 K16 ["getFFlagIAMDropdownStabilityImprovements"]
       44 CALL                             R6 1 1
       45 DUPCLOSURE                       R7 K17 [PROTO_3]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R2
       49 RETURN                           R7 1
