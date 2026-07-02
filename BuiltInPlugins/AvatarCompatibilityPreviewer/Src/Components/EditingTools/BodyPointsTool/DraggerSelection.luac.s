PROTO_0:
        0 DUPTABLE                         R2 K5 [{[1], ["draggerContext"] = , ["_selection"], ["_setSelectedPointNamesCallback"]}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K6 ["new"]
        4 CALL                             R3 0 1
        5 SETTABLEKS                       R3 R2 K0 ["SelectionChanged"]
        7 NEWTABLE                         R3 0 0
        9 SETTABLEKS                       R3 R2 K3 ["_selection"]
       11 SETTABLEKS                       R0 R2 K4 ["_setSelectedPointNamesCallback"]
       13 GETUPVAL                         R3 1
       14 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       16 GETIMPORT                        R1 K8 [setmetatable]
       18 CALL                             R1 2 1
       19 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_selection"]
        2 LENGTH                           R2 R3
        3 JUMPIFNOTEQKN                    R2 K1 [0] ; [+9]
        5 NEWTABLE                         R1 0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["PHONY_NO_SELECTION"]
       10 SETLIST                          R1 R2 1 [1]
       12 RETURN                           R1 1
       13 GETTABLEKS                       R1 R0 K0 ["_selection"]
       15 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["find"]
        3 GETTABLEKS                       R3 R0 K1 ["points"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       14 LOADK                            R5 K2 ["Could not find point by name"]
       15 GETIMPORT                        R3 K4 [assert]
       17 CALL                             R3 2 0
       18 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["draggerContext"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["draggerContext"]
        5 GETTABLEKS                       R2 R2 K1 ["points"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 RETURN                           R0 0
       10 LOADB                            R4 0
       11 GETTABLEKS                       R5 R0 K0 ["draggerContext"]
       13 JUMPIFEQKNIL                     R5 ; [+5]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["LUAU_ANALYZE_ERROR"]
       22 FASTCALL2                        ASSERT R4 R5 ; [+3]
       24 GETIMPORT                        R3 K4 [assert]
       26 CALL                             R3 2 0
       27 LENGTH                           R3 R1
       28 LOADN                            R4 1
       29 JUMPIFNOTLT                      R4 R3 ; [+73]
       31 GETTABLEKS                       R4 R0 K0 ["draggerContext"]
       33 LENGTH                           R6 R1
       34 GETTABLE                         R5 R1 R6
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K5 ["find"]
       38 GETTABLEKS                       R7 R4 K1 ["points"]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R5
       42 CALL                             R6 2 1
       43 JUMPIFNOTEQKNIL                  R6 ; [+2]
       45 LOADB                            R8 0 +1
       46 LOADB                            R8 1
       47 FASTCALL2K                       ASSERT R8 K6 ; [+4]
       49 LOADK                            R9 K6 ["Could not find point by name"]
       50 GETIMPORT                        R7 K4 [assert]
       52 CALL                             R7 2 0
       53 MOVE                             R3 R6
       54 GETTABLEKS                       R3 R3 K7 ["limb"]
       56 NEWTABLE                         R4 0 1
       58 LENGTH                           R6 R1
       59 GETTABLE                         R5 R1 R6
       60 SETLIST                          R4 R5 1 [1]
       62 LENGTH                           R8 R1
       63 SUBK                             R7 R8 K8 [1]
       64 LOADN                            R5 1
       65 LOADN                            R6 -1
       66 FORNPREP                         R5
       67 GETTABLEKS                       R9 R0 K0 ["draggerContext"]
       69 GETTABLE                         R10 R1 R7
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K5 ["find"]
       73 GETTABLEKS                       R12 R9 K1 ["points"]
       75 NEWCLOSURE                       R13 P0
       76 CAPTURE                          VAL R10
       77 CALL                             R11 2 1
       78 JUMPIFNOTEQKNIL                  R11 ; [+2]
       80 LOADB                            R13 0 +1
       81 LOADB                            R13 1
       82 FASTCALL2K                       ASSERT R13 K6 ; [+4]
       84 LOADK                            R14 K6 ["Could not find point by name"]
       85 GETIMPORT                        R12 K4 [assert]
       87 CALL                             R12 2 0
       88 MOVE                             R8 R11
       89 GETTABLEKS                       R9 R8 K7 ["limb"]
       91 JUMPIFNOTEQ                      R9 R3 ; [+9]
       93 LOADN                            R11 1
       94 GETTABLE                         R12 R1 R7
       95 FASTCALL3                        TABLE_INSERT R4 R11 R12
       97 MOVE                             R10 R4
       98 GETIMPORT                        R9 K11 [table.insert]
      100 CALL                             R9 3 0
      101 FORNLOOP                         R5
      102 MOVE                             R1 R4
      103 MOVE                             R5 R1
      104 NAMECALL                         R3 R0 K12 ["_fireOnSelect"]
      106 CALL                             R3 2 0
      107 SETTABLEKS                       R1 R0 K13 ["_selection"]
      109 GETTABLEKS                       R3 R0 K14 ["_setSelectedPointNamesCallback"]
      111 MOVE                             R4 R1
      112 CALL                             R3 1 0
      113 GETTABLEKS                       R3 R0 K15 ["SelectionChanged"]
      115 NAMECALL                         R3 R3 K16 ["Fire"]
      117 CALL                             R3 1 0
      118 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["draggerContext"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["_fireOnSelect called without dragger context"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 0
       13 MOVE                             R3 R1
       14 GETTABLEKS                       R4 R0 K4 ["_selection"]
       16 CALL                             R2 2 2
       17 LOADN                            R4 0
       18 GETTABLEKS                       R5 R0 K0 ["draggerContext"]
       20 GETTABLEKS                       R5 R5 K5 ["points"]
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETIMPORT                        R10 K8 [table.find]
       27 MOVE                             R11 R2
       28 GETTABLEKS                       R12 R9 K9 ["name"]
       30 CALL                             R10 2 1
       31 JUMPIFEQKNIL                     R10 ; [+9]
       33 GETTABLEKS                       R10 R9 K10 ["onSelect"]
       35 JUMPIFEQKNIL                     R10 ; [+22]
       37 GETTABLEKS                       R10 R9 K10 ["onSelect"]
       39 CALL                             R10 0 0
       40 JUMP                             ; [+17]
       41 GETIMPORT                        R10 K8 [table.find]
       43 MOVE                             R11 R3
       44 GETTABLEKS                       R12 R9 K9 ["name"]
       46 CALL                             R10 2 1
       47 JUMPIFEQKNIL                     R10 ; [+16]
       49 GETTABLEKS                       R10 R9 K11 ["onUnselect"]
       51 JUMPIFEQKNIL                     R10 ; [+6]
       53 GETTABLEKS                       R10 R9 K11 ["onUnselect"]
       55 CALL                             R10 0 0
       56 JUMP                             ; [+1]
       57 JUMP                             ; [+6]
       58 ADDK                             R4 R4 K12 [1]
       59 LENGTH                           R11 R2
       60 LENGTH                           R12 R3
       61 ADD                              R10 R11 R12
       62 JUMPIFEQ                         R4 R10 ; [+3]
       64 FORGLOOP                         R5 2 ; [-40]
       66 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["DraggerFramework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Utility"]
       23 GETTABLEKS                       R3 R3 K10 ["Signal"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Components"]
       31 GETTABLEKS                       R5 R5 K13 ["EditingTools"]
       33 GETTABLEKS                       R5 R5 K14 ["BodyPointsTool"]
       35 GETTABLEKS                       R5 R5 K15 ["Types"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R0 K11 ["Src"]
       42 GETTABLEKS                       R6 R6 K16 ["Util"]
       44 GETTABLEKS                       R6 R6 K17 ["Constants"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R7 R0 K11 ["Src"]
       51 GETTABLEKS                       R7 R7 K16 ["Util"]
       53 GETTABLEKS                       R7 R7 K18 ["diffArray"]
       55 CALL                             R6 1 1
       56 NEWTABLE                         R7 8 0
       58 SETTABLEKS                       R7 R7 K19 ["__index"]
       60 DUPCLOSURE                       R8 K20 [PROTO_0]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R7
       63 SETTABLEKS                       R8 R7 K21 ["new"]
       65 DUPCLOSURE                       R8 K22 [PROTO_1]
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R8 R7 K23 ["Get"]
       69 DUPCLOSURE                       R8 K24 [PROTO_3]
       70 CAPTURE                          VAL R1
       71 DUPCLOSURE                       R9 K25 [PROTO_4]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R9 R7 K26 ["Set"]
       76 DUPCLOSURE                       R9 K27 [PROTO_5]
       77 CAPTURE                          VAL R6
       78 SETTABLEKS                       R9 R7 K28 ["_fireOnSelect"]
       80 RETURN                           R7 1
