PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["selectedIdsArrayObservable"]
        2 GETTABLEKS                       R1 R1 K1 ["get"]
        4 CALL                             R1 0 1
        5 LENGTH                           R4 R1
        6 LOADN                            R2 1
        7 LOADN                            R3 -1
        8 FORNPREP                         R2
        9 GETTABLEKS                       R5 R0 K2 ["getExplorerNodeById"]
       11 GETTABLE                         R6 R1 R4
       12 CALL                             R5 1 1
       13 JUMPIFEQKNIL                     R5 ; [+6]
       15 GETUPVAL                         R6 0
       16 MOVE                             R7 R5
       17 CALL                             R6 1 1
       18 JUMPIFNOT                        R6 ; [+1]
       19 RETURN                           R5 1
       20 FORNLOOP                         R2
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getNthDescendant"]
        3 GETTABLEKS                       R2 R0 K1 ["focusedRootObservable"]
        5 GETTABLEKS                       R2 R2 K2 ["get"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R2 R2 K3 ["children"]
       10 LOADN                            R3 1
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R2 R0 K4 ["selectIds"]
       17 GETIMPORT                        R3 K7 [table.freeze]
       19 NEWTABLE                         R4 0 1
       21 GETTABLEKS                       R5 R1 K8 ["datum"]
       23 GETTABLEKS                       R5 R5 K9 ["id"]
       25 SETLIST                          R4 R5 1 [1]
       27 CALL                             R3 1 -1
       28 CALL                             R2 -1 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [next]
        2 GETTABLEKS                       R3 R0 K2 ["selectedIdsArrayObservable"]
        4 GETTABLEKS                       R3 R3 K3 ["get"]
        6 CALL                             R3 0 -1
        7 CALL                             R2 -1 1
        8 JUMPIFEQKNIL                     R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["getNthDescendant"]
        9 GETTABLEKS                       R3 R0 K2 ["focusedRootObservable"]
       11 GETTABLEKS                       R3 R3 K3 ["get"]
       13 CALL                             R3 0 1
       14 GETTABLEKS                       R3 R3 K4 ["children"]
       16 MOVE                             R4 R1
       17 CALL                             R2 2 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R3 R0 K5 ["selectIds"]
       23 GETIMPORT                        R4 K8 [table.freeze]
       25 NEWTABLE                         R5 0 1
       27 GETTABLEKS                       R6 R2 K9 ["datum"]
       29 GETTABLEKS                       R6 R6 K10 ["id"]
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R4 1 -1
       34 CALL                             R3 -1 0
       35 RETURN                           R0 0

PROTO_4:
        0 ADD                              R3 R1 R2
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["getNthDescendant"]
        4 MOVE                             R5 R0
        5 MOVE                             R6 R3
        6 CALL                             R4 2 1
        7 JUMPIFNOTEQKNIL                  R4 ; [+3]
        9 LOADNIL                          R5
       10 RETURN                           R5 1
       11 GETTABLEKS                       R5 R4 K1 ["datum"]
       13 GETTABLEKS                       R5 R5 K2 ["isGhost"]
       15 JUMPIFNOT                        R5 ; [+2]
       16 ADD                              R3 R3 R2
       17 JUMP                             ; [+1]
       18 RETURN                           R4 1
       19 JUMPBACK                         ; [-19]
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+20]
        5 DUPTABLE                         R2 K4 [{"baseSelection", "direction", "addedIds"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K5 ["selectedIdsArrayObservable"]
        9 GETTABLEKS                       R3 R3 K6 ["get"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R2 K1 ["baseSelection"]
       14 SETTABLEKS                       R0 R2 K2 ["direction"]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K3 ["addedIds"]
       20 MOVE                             R1 R2
       21 GETUPVAL                         R2 0
       22 SETTABLEKS                       R1 R2 K0 ["current"]
       24 JUMPIFNOTEQKNIL                  R1 ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       30 LOADK                            R4 K7 ["Luau"]
       31 GETIMPORT                        R2 K9 [assert]
       33 CALL                             R2 2 0
       34 GETTABLEKS                       R2 R1 K2 ["direction"]
       36 JUMPIFEQ                         R0 R2 ; [+39]
       38 GETIMPORT                        R2 K12 [table.remove]
       40 GETTABLEKS                       R3 R1 K3 ["addedIds"]
       42 CALL                             R2 1 0
       43 GETTABLEKS                       R3 R1 K3 ["addedIds"]
       45 GETTABLEKS                       R5 R1 K3 ["addedIds"]
       47 LENGTH                           R4 R5
       48 GETTABLE                         R2 R3 R4
       49 JUMPIFNOTEQKNIL                  R2 ; [+12]
       51 GETUPVAL                         R3 1
       52 GETTABLEKS                       R3 R3 K13 ["selectIds"]
       54 GETTABLEKS                       R4 R1 K1 ["baseSelection"]
       56 CALL                             R3 1 0
       57 GETUPVAL                         R3 0
       58 LOADNIL                          R4
       59 SETTABLEKS                       R4 R3 K0 ["current"]
       61 RETURN                           R0 0
       62 GETUPVAL                         R3 2
       63 LOADB                            R4 1
       64 SETTABLEKS                       R4 R3 K0 ["current"]
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R3 R3 K14 ["shiftClick"]
       69 MOVE                             R4 R2
       70 CALL                             R3 1 0
       71 GETUPVAL                         R3 2
       72 LOADB                            R4 0
       73 SETTABLEKS                       R4 R3 K0 ["current"]
       75 RETURN                           R0 0
       76 GETUPVAL                         R2 1
       77 GETTABLEKS                       R2 R2 K5 ["selectedIdsArrayObservable"]
       79 GETTABLEKS                       R2 R2 K6 ["get"]
       81 CALL                             R2 0 1
       82 GETUPVAL                         R3 1
       83 GETTABLEKS                       R3 R3 K15 ["selectedIdsObservable"]
       85 GETTABLEKS                       R3 R3 K6 ["get"]
       87 CALL                             R3 0 1
       88 LOADNIL                          R4
       89 LENGTH                           R7 R2
       90 LOADN                            R5 1
       91 LOADN                            R6 -1
       92 FORNPREP                         R5
       93 GETUPVAL                         R8 1
       94 GETTABLEKS                       R8 R8 K16 ["getExplorerNodeById"]
       96 GETTABLE                         R9 R2 R7
       97 CALL                             R8 1 1
       98 JUMPIFEQKNIL                     R8 ; [+10]
      100 GETUPVAL                         R9 3
      101 MOVE                             R10 R8
      102 CALL                             R9 1 1
      103 JUMPIFNOT                        R9 ; [+5]
      104 GETUPVAL                         R9 4
      105 MOVE                             R10 R8
      106 CALL                             R9 1 1
      107 MOVE                             R4 R9
      108 JUMP                             ; [+1]
      109 FORNLOOP                         R5
      110 JUMPIFNOTEQKNIL                  R4 ; [+2]
      112 RETURN                           R0 0
      113 ADD                              R5 R4 R0
      114 GETUPVAL                         R6 1
      115 GETTABLEKS                       R6 R6 K17 ["focusedRootObservable"]
      117 GETTABLEKS                       R6 R6 K6 ["get"]
      119 CALL                             R6 0 1
      120 JUMPIFNOTEQKN                    R5 K18 [0] ; [+2]
      122 RETURN                           R0 0
      123 GETUPVAL                         R7 5
      124 GETTABLEKS                       R7 R7 K19 ["getNthDescendant"]
      126 GETTABLEKS                       R8 R6 K20 ["children"]
      128 MOVE                             R9 R5
      129 CALL                             R7 2 1
      130 JUMPIFNOTEQKNIL                  R7 ; [+2]
      132 RETURN                           R0 0
      133 GETTABLEKS                       R9 R7 K21 ["datum"]
      135 GETTABLEKS                       R9 R9 K22 ["id"]
      137 GETTABLE                         R8 R3 R9
      138 JUMPIF                           R8 ; [+28]
      139 GETUPVAL                         R8 2
      140 LOADB                            R9 1
      141 SETTABLEKS                       R9 R8 K0 ["current"]
      143 GETUPVAL                         R8 1
      144 GETTABLEKS                       R8 R8 K14 ["shiftClick"]
      146 GETTABLEKS                       R9 R7 K21 ["datum"]
      148 GETTABLEKS                       R9 R9 K22 ["id"]
      150 CALL                             R8 1 0
      151 GETUPVAL                         R8 2
      152 LOADB                            R9 0
      153 SETTABLEKS                       R9 R8 K0 ["current"]
      155 GETTABLEKS                       R9 R1 K3 ["addedIds"]
      157 GETTABLEKS                       R10 R7 K21 ["datum"]
      159 GETTABLEKS                       R10 R10 K22 ["id"]
      161 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
      163 GETIMPORT                        R8 K24 [table.insert]
      165 CALL                             R8 2 0
      166 RETURN                           R0 0
      167 ADD                              R5 R5 R0
      168 JUMPBACK                         ; [-49]
      169 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R5 0 0
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       22 GETTABLEKS                       R5 R0 K3 ["selectedIdsObservable"]
       24 MOVE                             R6 R3
       25 NEWTABLE                         R7 0 0
       27 CALL                             R4 3 0
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       31 NEWCLOSURE                       R5 P1
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 NEWTABLE                         R6 0 1
       40 MOVE                             R7 R0
       41 SETLIST                          R6 R7 1 [1]
       43 CALL                             R4 2 1
       44 RETURN                           R4 1

PROTO_8:
        0 GETIMPORT                        R3 K3 [Enum.ModifierKey.Ctrl]
        2 NAMECALL                         R1 R0 K4 ["IsModifierKeyDown"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R3 K6 [Enum.ModifierKey.Shift]
        9 NAMECALL                         R1 R0 K4 ["IsModifierKeyDown"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R1 0
       14 LOADN                            R2 -1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["current"]
       20 JUMPIFNOTEQKNIL                  R1 ; [+2]
       22 RETURN                           R0 0
       23 NAMECALL                         R2 R1 K8 ["IsFocused"]
       25 CALL                             R2 1 1
       26 JUMPIFNOT                        R2 ; [+1]
       27 RETURN                           R0 0
       28 GETUPVAL                         R3 2
       29 GETIMPORT                        R4 K10 [next]
       31 GETTABLEKS                       R5 R3 K11 ["selectedIdsArrayObservable"]
       33 GETTABLEKS                       R5 R5 K12 ["get"]
       35 CALL                             R5 0 -1
       36 CALL                             R4 -1 1
       37 JUMPIFEQKNIL                     R4 ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 JUMPIFNOT                        R2 ; [+4]
       42 GETUPVAL                         R2 3
       43 GETUPVAL                         R3 2
       44 CALL                             R2 1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R2 4
       47 GETUPVAL                         R3 2
       48 CALL                             R2 1 1
       49 JUMPIFNOTEQKNIL                  R2 ; [+2]
       51 RETURN                           R0 0
       52 GETUPVAL                         R3 5
       53 MOVE                             R4 R2
       54 CALL                             R3 1 1
       55 JUMPIFNOTEQKN                    R3 K13 [1] ; [+16]
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R4 R4 K14 ["selectIds"]
       60 GETIMPORT                        R5 K17 [table.freeze]
       62 NEWTABLE                         R6 0 0
       64 CALL                             R5 1 -1
       65 CALL                             R4 -1 0
       66 NAMECALL                         R4 R1 K18 ["CaptureFocus"]
       68 CALL                             R4 1 0
       69 GETUPVAL                         R4 6
       70 CALL                             R4 0 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R5 7
       73 CALL                             R5 0 1
       74 JUMPIFNOT                        R5 ; [+13]
       75 GETUPVAL                         R4 8
       76 GETUPVAL                         R5 2
       77 GETTABLEKS                       R5 R5 K19 ["focusedRootObservable"]
       79 GETTABLEKS                       R5 R5 K12 ["get"]
       81 CALL                             R5 0 1
       82 GETTABLEKS                       R5 R5 K20 ["children"]
       84 MOVE                             R6 R3
       85 LOADN                            R7 -1
       86 CALL                             R4 3 1
       87 JUMP                             ; [+13]
       88 GETUPVAL                         R4 9
       89 GETTABLEKS                       R4 R4 K21 ["getNthDescendant"]
       91 GETUPVAL                         R5 2
       92 GETTABLEKS                       R5 R5 K19 ["focusedRootObservable"]
       94 GETTABLEKS                       R5 R5 K12 ["get"]
       96 CALL                             R5 0 1
       97 GETTABLEKS                       R5 R5 K20 ["children"]
       99 SUBK                             R6 R3 K13 [1]
      100 CALL                             R4 2 1
      101 JUMPIFNOTEQKNIL                  R4 ; [+2]
      103 RETURN                           R0 0
      104 GETUPVAL                         R5 2
      105 GETTABLEKS                       R5 R5 K14 ["selectIds"]
      107 GETIMPORT                        R6 K17 [table.freeze]
      109 NEWTABLE                         R7 0 1
      111 GETTABLEKS                       R8 R4 K22 ["datum"]
      113 GETTABLEKS                       R8 R8 K23 ["id"]
      115 SETLIST                          R7 R8 1 [1]
      117 CALL                             R6 1 -1
      118 CALL                             R5 -1 0
      119 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R3 K3 [Enum.ModifierKey.Ctrl]
        2 NAMECALL                         R1 R0 K4 ["IsModifierKeyDown"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R3 K6 [Enum.ModifierKey.Shift]
        9 NAMECALL                         R1 R0 K4 ["IsModifierKeyDown"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R1 0
       14 LOADN                            R2 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["current"]
       20 JUMPIFNOTEQKNIL                  R1 ; [+2]
       22 RETURN                           R0 0
       23 NAMECALL                         R2 R1 K8 ["IsFocused"]
       25 CALL                             R2 1 1
       26 JUMPIFNOT                        R2 ; [+7]
       27 GETUPVAL                         R2 2
       28 GETUPVAL                         R3 3
       29 CALL                             R2 1 0
       30 NAMECALL                         R2 R1 K9 ["ReleaseFocus"]
       32 CALL                             R2 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R3 3
       35 GETIMPORT                        R4 K11 [next]
       37 GETTABLEKS                       R5 R3 K12 ["selectedIdsArrayObservable"]
       39 GETTABLEKS                       R5 R5 K13 ["get"]
       41 CALL                             R5 0 -1
       42 CALL                             R4 -1 1
       43 JUMPIFEQKNIL                     R4 ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 JUMPIFNOT                        R2 ; [+4]
       48 GETUPVAL                         R2 2
       49 GETUPVAL                         R3 3
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R2 4
       53 GETUPVAL                         R3 3
       54 CALL                             R2 1 1
       55 JUMPIFNOTEQKNIL                  R2 ; [+2]
       57 RETURN                           R0 0
       58 GETUPVAL                         R3 5
       59 MOVE                             R4 R2
       60 CALL                             R3 1 1
       61 GETUPVAL                         R5 6
       62 CALL                             R5 0 1
       63 JUMPIFNOT                        R5 ; [+13]
       64 GETUPVAL                         R4 7
       65 GETUPVAL                         R5 3
       66 GETTABLEKS                       R5 R5 K14 ["focusedRootObservable"]
       68 GETTABLEKS                       R5 R5 K13 ["get"]
       70 CALL                             R5 0 1
       71 GETTABLEKS                       R5 R5 K15 ["children"]
       73 MOVE                             R6 R3
       74 LOADN                            R7 1
       75 CALL                             R4 3 1
       76 JUMP                             ; [+13]
       77 GETUPVAL                         R4 8
       78 GETTABLEKS                       R4 R4 K16 ["getNthDescendant"]
       80 GETUPVAL                         R5 3
       81 GETTABLEKS                       R5 R5 K14 ["focusedRootObservable"]
       83 GETTABLEKS                       R5 R5 K13 ["get"]
       85 CALL                             R5 0 1
       86 GETTABLEKS                       R5 R5 K15 ["children"]
       88 ADDK                             R6 R3 K17 [1]
       89 CALL                             R4 2 1
       90 JUMPIFNOTEQKNIL                  R4 ; [+2]
       92 RETURN                           R0 0
       93 GETUPVAL                         R5 3
       94 GETTABLEKS                       R5 R5 K18 ["selectIds"]
       96 GETIMPORT                        R6 K21 [table.freeze]
       98 NEWTABLE                         R7 0 1
      100 GETTABLEKS                       R8 R4 K22 ["datum"]
      102 GETTABLEKS                       R8 R8 K23 ["id"]
      104 SETLIST                          R7 R8 1 [1]
      106 CALL                             R6 1 -1
      107 CALL                             R5 -1 0
      108 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R3 K3 [Enum.ModifierKey.Ctrl]
        2 NAMECALL                         R1 R0 K4 ["IsModifierKeyDown"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+33]
       17 GETTABLEKS                       R2 R1 K5 ["datum"]
       19 GETTABLEKS                       R2 R2 K6 ["hasChildren"]
       21 JUMPIFNOT                        R2 ; [+28]
       22 GETIMPORT                        R4 K8 [Enum.ModifierKey.Shift]
       24 NAMECALL                         R2 R0 K4 ["IsModifierKeyDown"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+13]
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K9 ["collapseAll"]
       31 NEWTABLE                         R3 0 1
       33 GETTABLEKS                       R4 R1 K5 ["datum"]
       35 GETTABLEKS                       R4 R4 K10 ["id"]
       37 SETLIST                          R3 R4 1 [1]
       39 CALL                             R2 1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R2 R2 K11 ["unexpand"]
       44 GETTABLEKS                       R3 R1 K5 ["datum"]
       46 GETTABLEKS                       R3 R3 K10 ["id"]
       48 CALL                             R2 1 0
       49 RETURN                           R0 0
       50 GETTABLEKS                       R2 R1 K12 ["parent"]
       52 JUMPIFEQKNIL                     R2 ; [+25]
       54 GETTABLEKS                       R3 R2 K5 ["datum"]
       56 GETTABLEKS                       R3 R3 K10 ["id"]
       58 GETUPVAL                         R4 3
       59 GETTABLEKS                       R4 R4 K13 ["rootId"]
       61 JUMPIFEQ                         R3 R4 ; [+16]
       63 GETUPVAL                         R3 1
       64 GETTABLEKS                       R3 R3 K14 ["selectIds"]
       66 GETIMPORT                        R4 K17 [table.freeze]
       68 NEWTABLE                         R5 0 1
       70 GETTABLEKS                       R6 R2 K5 ["datum"]
       72 GETTABLEKS                       R6 R6 K10 ["id"]
       74 SETLIST                          R5 R6 1 [1]
       76 CALL                             R4 1 -1
       77 CALL                             R3 -1 0
       78 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["expandAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["datum"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R3 K3 [Enum.ModifierKey.Ctrl]
        2 NAMECALL                         R1 R0 K4 ["IsModifierKeyDown"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R1 K5 ["datum"]
       15 GETTABLEKS                       R2 R2 K6 ["hasChildren"]
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 2
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 JUMPIFNOT                        R2 ; [+24]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K7 ["first"]
       26 GETTABLEKS                       R3 R1 K8 ["children"]
       28 CALL                             R2 1 1
       29 JUMPIFEQKNIL                     R2 ; [+42]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K9 ["selectIds"]
       34 GETIMPORT                        R4 K12 [table.freeze]
       36 NEWTABLE                         R5 0 1
       38 GETTABLEKS                       R6 R2 K5 ["datum"]
       40 GETTABLEKS                       R6 R6 K13 ["id"]
       42 SETLIST                          R5 R6 1 [1]
       44 CALL                             R4 1 -1
       45 CALL                             R3 -1 0
       46 RETURN                           R0 0
       47 GETIMPORT                        R4 K15 [Enum.ModifierKey.Shift]
       49 NAMECALL                         R2 R0 K4 ["IsModifierKeyDown"]
       51 CALL                             R2 2 1
       52 JUMPIFNOT                        R2 ; [+13]
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K16 ["expandAll"]
       56 NEWTABLE                         R3 0 1
       58 GETTABLEKS                       R4 R1 K5 ["datum"]
       60 GETTABLEKS                       R4 R4 K13 ["id"]
       62 SETLIST                          R3 R4 1 [1]
       64 CALL                             R2 1 0
       65 RETURN                           R0 0
       66 GETIMPORT                        R2 K19 [task.spawn]
       68 NEWCLOSURE                       R3 P0
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R1
       71 CALL                             R2 1 0
       72 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getArrowKeysEnabled"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["KeyCode"]
        8 GETIMPORT                        R2 K4 [Enum.KeyCode.Up]
       10 JUMPIFNOTEQ                      R1 R2 ; [+8]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K5 ["startPressHold"]
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R0
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R1 R0 K1 ["KeyCode"]
       21 GETIMPORT                        R2 K7 [Enum.KeyCode.Down]
       23 JUMPIFNOTEQ                      R1 R2 ; [+8]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K5 ["startPressHold"]
       28 GETUPVAL                         R2 3
       29 MOVE                             R3 R0
       30 CALL                             R1 2 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R1 R0 K1 ["KeyCode"]
       34 GETIMPORT                        R2 K9 [Enum.KeyCode.Left]
       36 JUMPIFNOTEQ                      R1 R2 ; [+8]
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K5 ["startPressHold"]
       41 GETUPVAL                         R2 4
       42 MOVE                             R3 R0
       43 CALL                             R1 2 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R1 R0 K1 ["KeyCode"]
       47 GETIMPORT                        R2 K11 [Enum.KeyCode.Right]
       49 JUMPIFNOTEQ                      R1 R2 ; [+7]
       51 GETUPVAL                         R1 1
       52 GETTABLEKS                       R1 R1 K5 ["startPressHold"]
       54 GETUPVAL                         R2 5
       55 MOVE                             R3 R0
       56 CALL                             R1 2 0
       57 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["useCallback"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 NEWTABLE                         R6 0 2
       19 MOVE                             R7 R0
       20 MOVE                             R8 R3
       21 SETLIST                          R6 R7 2 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 NEWTABLE                         R7 0 2
       39 MOVE                             R8 R0
       40 MOVE                             R9 R3
       41 SETLIST                          R7 R8 2 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K0 ["useCallback"]
       47 NEWCLOSURE                       R7 P2
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U9
       51 CAPTURE                          UPVAL U10
       52 NEWTABLE                         R8 0 1
       54 MOVE                             R9 R0
       55 SETLIST                          R8 R9 1 [1]
       57 CALL                             R6 2 1
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K0 ["useCallback"]
       61 NEWCLOSURE                       R8 P3
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U9
       65 CAPTURE                          UPVAL U7
       66 NEWTABLE                         R9 0 1
       68 MOVE                             R10 R0
       69 SETLIST                          R9 R10 1 [1]
       71 CALL                             R7 2 1
       72 GETUPVAL                         R8 11
       73 MOVE                             R9 R0
       74 CALL                             R8 1 1
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R9 R9 K1 ["useContext"]
       78 GETUPVAL                         R10 12
       79 GETTABLEKS                       R10 R10 K2 ["Context"]
       81 CALL                             R9 1 1
       82 GETUPVAL                         R10 13
       83 GETTABLEKS                       R11 R9 K3 ["inputBeganSignal"]
       85 NEWCLOSURE                       R12 P4
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R7
       92 NEWTABLE                         R13 0 5
       94 GETTABLEKS                       R14 R8 K4 ["startPressHold"]
       96 MOVE                             R15 R4
       97 MOVE                             R16 R5
       98 MOVE                             R17 R6
       99 MOVE                             R18 R7
      100 SETLIST                          R13 R14 5 [1]
      102 CALL                             R10 3 0
      103 GETUPVAL                         R10 13
      104 GETTABLEKS                       R11 R9 K5 ["inputEndedSignal"]
      106 GETTABLEKS                       R12 R8 K6 ["endHold"]
      108 NEWTABLE                         R13 0 1
      110 GETTABLEKS                       R14 R8 K6 ["endHold"]
      112 SETLIST                          R13 R14 1 [1]
      114 CALL                             R10 3 0
      115 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["ExplorerNodeChildrenMutable"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K9 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["RpcTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Components"]
       44 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K15 ["WindowInputContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Util"]
       53 GETTABLEKS                       R8 R8 K16 ["getExplorerNodeIndex"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K17 ["Flags"]
       60 GETTABLEKS                       R9 R9 K18 ["getFFlagExplorerStreaming"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Util"]
       67 GETTABLEKS                       R10 R10 K19 ["getItemCount"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Util"]
       74 GETTABLEKS                       R11 R11 K20 ["isExpanded"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Util"]
       81 GETTABLEKS                       R12 R12 K21 ["isNodeVisible"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       88 GETTABLEKS                       R13 R13 K23 ["useEventConnection"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K22 ["Hooks"]
       95 GETTABLEKS                       R14 R14 K24 ["usePressHoldKey"]
       97 CALL                             R13 1 1
       98 DUPCLOSURE                       R14 K25 [PROTO_0]
       99 CAPTURE                          VAL R11
      100 DUPCLOSURE                       R15 K26 [PROTO_1]
      101 CAPTURE                          VAL R2
      102 DUPCLOSURE                       R16 K27 [PROTO_2]
      103 DUPCLOSURE                       R17 K28 [PROTO_3]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R2
      106 DUPCLOSURE                       R18 K29 [PROTO_4]
      107 CAPTURE                          VAL R2
      108 DUPCLOSURE                       R19 K30 [PROTO_7]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R2
      114 DUPCLOSURE                       R20 K31 [PROTO_14]
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R12
      129 RETURN                           R20 1
