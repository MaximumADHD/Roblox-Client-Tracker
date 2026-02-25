PROTO_0:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADB                            R3 0
        3 LOADB                            R4 0
        4 GETUPVAL                         R5 0
        5 JUMPIFNOT                        R5 ; [+14]
        6 GETUPVAL                         R5 0
        7 GETIMPORT                        R7 K3 [Enum.ModifierKey.Ctrl]
        9 NAMECALL                         R5 R5 K4 ["IsModifierKeyDown"]
       11 CALL                             R5 2 1
       12 MOVE                             R3 R5
       13 GETUPVAL                         R5 0
       14 GETIMPORT                        R7 K6 [Enum.ModifierKey.Shift]
       16 NAMECALL                         R5 R5 K4 ["IsModifierKeyDown"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 NAMECALL                         R5 R0 K7 ["getState"]
       22 CALL                             R5 1 1
       23 JUMPIF                           R3 ; [+4]
       24 JUMPIF                           R4 ; [+3]
       25 NEWTABLE                         R1 0 0
       27 JUMP                             ; [+4]
       28 GETTABLEKS                       R6 R5 K8 ["AssetManagerReducer"]
       30 GETTABLEKS                       R1 R6 K9 ["selectedAssets"]
       32 JUMPIFNOT                        R4 ; [+4]
       33 GETTABLEKS                       R6 R5 K8 ["AssetManagerReducer"]
       35 GETTABLEKS                       R2 R6 K10 ["selectionIndex"]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R7 R8 K11 ["ClassName"]
       40 JUMPIFEQKS                       R7 K12 ["Folder"] ; [+2]
       42 LOADB                            R6 0 +1
       43 LOADB                            R6 1
       44 JUMPIFNOT                        R6 ; [+89]
       45 LOADNIL                          R7
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R10 R11 K13 ["Screen"]
       49 GETTABLEKS                       R9 R10 K14 ["LayoutOrder"]
       51 GETTABLE                         R8 R1 R9
       52 JUMPIFNOT                        R8 ; [+3]
       53 JUMPIFNOT                        R3 ; [+2]
       54 LOADB                            R7 0
       55 JUMP                             ; [+1]
       56 LOADB                            R7 1
       57 JUMPIFNOT                        R4 ; [+49]
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R9 R10 K13 ["Screen"]
       61 GETTABLEKS                       R8 R9 K14 ["LayoutOrder"]
       63 JUMPIFNOTLE                      R8 R2 ; [+22]
       65 GETUPVAL                         R12 1
       66 GETTABLEKS                       R11 R12 K13 ["Screen"]
       68 GETTABLEKS                       R10 R11 K14 ["LayoutOrder"]
       70 MOVE                             R8 R2
       71 LOADN                            R9 1
       72 FORNPREP                         R8
       73 GETUPVAL                         R13 2
       74 GETTABLEKS                       R12 R13 K15 ["Dictionary"]
       76 GETTABLEKS                       R11 R12 K16 ["join"]
       78 MOVE                             R12 R1
       79 NEWTABLE                         R13 1 0
       81 SETTABLE                         R7 R13 R10
       82 CALL                             R11 2 1
       83 MOVE                             R1 R11
       84 FORNLOOP                         R8
       85 JUMP                             ; [+124]
       86 MOVE                             R10 R2
       87 GETUPVAL                         R12 1
       88 GETTABLEKS                       R11 R12 K13 ["Screen"]
       90 GETTABLEKS                       R8 R11 K14 ["LayoutOrder"]
       92 LOADN                            R9 1
       93 FORNPREP                         R8
       94 GETUPVAL                         R13 2
       95 GETTABLEKS                       R12 R13 K15 ["Dictionary"]
       97 GETTABLEKS                       R11 R12 K16 ["join"]
       99 MOVE                             R12 R1
      100 NEWTABLE                         R13 1 0
      102 SETTABLE                         R7 R13 R10
      103 CALL                             R11 2 1
      104 MOVE                             R1 R11
      105 FORNLOOP                         R8
      106 JUMP                             ; [+103]
      107 GETUPVAL                         R10 2
      108 GETTABLEKS                       R9 R10 K15 ["Dictionary"]
      110 GETTABLEKS                       R8 R9 K16 ["join"]
      112 MOVE                             R9 R1
      113 NEWTABLE                         R10 1 0
      115 GETUPVAL                         R13 1
      116 GETTABLEKS                       R12 R13 K13 ["Screen"]
      118 GETTABLEKS                       R11 R12 K14 ["LayoutOrder"]
      120 SETTABLE                         R7 R10 R11
      121 CALL                             R8 2 1
      122 MOVE                             R1 R8
      123 GETUPVAL                         R10 3
      124 GETUPVAL                         R13 1
      125 GETTABLEKS                       R12 R13 K13 ["Screen"]
      127 GETTABLEKS                       R11 R12 K14 ["LayoutOrder"]
      129 CALL                             R10 1 -1
      130 NAMECALL                         R8 R0 K17 ["dispatch"]
      132 CALL                             R8 -1 0
      133 JUMP                             ; [+76]
      134 LOADNIL                          R7
      135 GETUPVAL                         R10 1
      136 GETTABLEKS                       R9 R10 K18 ["key"]
      138 GETTABLE                         R8 R1 R9
      139 JUMPIFNOT                        R8 ; [+3]
      140 JUMPIFNOT                        R3 ; [+2]
      141 LOADB                            R7 0
      142 JUMP                             ; [+1]
      143 LOADB                            R7 1
      144 JUMPIFNOT                        R4 ; [+43]
      145 GETUPVAL                         R9 1
      146 GETTABLEKS                       R8 R9 K18 ["key"]
      148 JUMPIFNOTLE                      R8 R2 ; [+20]
      150 GETUPVAL                         R11 1
      151 GETTABLEKS                       R10 R11 K18 ["key"]
      153 MOVE                             R8 R2
      154 LOADN                            R9 1
      155 FORNPREP                         R8
      156 GETUPVAL                         R13 2
      157 GETTABLEKS                       R12 R13 K15 ["Dictionary"]
      159 GETTABLEKS                       R11 R12 K16 ["join"]
      161 MOVE                             R12 R1
      162 NEWTABLE                         R13 1 0
      164 SETTABLE                         R7 R13 R10
      165 CALL                             R11 2 1
      166 MOVE                             R1 R11
      167 FORNLOOP                         R8
      168 JUMP                             ; [+41]
      169 MOVE                             R10 R2
      170 GETUPVAL                         R11 1
      171 GETTABLEKS                       R8 R11 K18 ["key"]
      173 LOADN                            R9 1
      174 FORNPREP                         R8
      175 GETUPVAL                         R13 2
      176 GETTABLEKS                       R12 R13 K15 ["Dictionary"]
      178 GETTABLEKS                       R11 R12 K16 ["join"]
      180 MOVE                             R12 R1
      181 NEWTABLE                         R13 1 0
      183 SETTABLE                         R7 R13 R10
      184 CALL                             R11 2 1
      185 MOVE                             R1 R11
      186 FORNLOOP                         R8
      187 JUMP                             ; [+22]
      188 GETUPVAL                         R10 2
      189 GETTABLEKS                       R9 R10 K15 ["Dictionary"]
      191 GETTABLEKS                       R8 R9 K16 ["join"]
      193 MOVE                             R9 R1
      194 NEWTABLE                         R10 1 0
      196 GETUPVAL                         R12 1
      197 GETTABLEKS                       R11 R12 K18 ["key"]
      199 SETTABLE                         R7 R10 R11
      200 CALL                             R8 2 1
      201 MOVE                             R1 R8
      202 GETUPVAL                         R10 3
      203 GETUPVAL                         R12 1
      204 GETTABLEKS                       R11 R12 K18 ["key"]
      206 CALL                             R10 1 -1
      207 NAMECALL                         R8 R0 K17 ["dispatch"]
      209 CALL                             R8 -1 0
      210 GETUPVAL                         R9 4
      211 MOVE                             R10 R1
      212 CALL                             R9 1 -1
      213 NAMECALL                         R7 R0 K17 ["dispatch"]
      215 CALL                             R7 -1 0
      216 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Actions"]
       22 GETTABLEKS                       R3 R4 K9 ["SetSelectionIndex"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K7 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Thunks"]
       31 GETTABLEKS                       R4 R5 K11 ["UpdateSelectedAssets"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 RETURN                           R4 1
