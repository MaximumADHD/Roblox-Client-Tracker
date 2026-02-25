PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R2 R3 K2 ["diagnostics"]
        7 GETUPVAL                         R3 0
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R5 0
       12 NAMECALL                         R3 R3 K3 ["addOrFindScript"]
       14 CALL                             R3 2 1
       15 GETTABLE                         R4 R2 R3
       16 JUMPIF                           R4 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R6 2
       19 MOVE                             R7 R4
       20 CALL                             R6 1 1
       21 GETTABLEKS                       R5 R6 K4 ["_list"]
       23 LOADNIL                          R6
       24 LOADB                            R7 0
       25 GETUPVAL                         R8 3
       26 LOADNIL                          R9
       27 LOADNIL                          R10
       28 FORGPREP                         R8
       29 GETUPVAL                         R14 4
       30 GETTABLEKS                       R13 R14 K5 ["fromLinter"]
       32 GETTABLEKS                       R14 R12 K6 ["range"]
       34 CALL                             R13 1 1
       35 SETTABLEKS                       R13 R12 K6 ["range"]
       37 NEWTABLE                         R6 0 0
       39 MOVE                             R13 R5
       40 LOADNIL                          R14
       41 LOADNIL                          R15
       42 FORGPREP                         R13
       43 GETTABLEKS                       R18 R17 K6 ["range"]
       45 GETTABLEKS                       R20 R12 K6 ["range"]
       47 NAMECALL                         R18 R18 K7 ["Overlaps"]
       49 CALL                             R18 2 1
       50 JUMPIFNOT                        R18 ; [+2]
       51 LOADB                            R7 1
       52 JUMP                             ; [+138]
       53 GETTABLEKS                       R19 R12 K6 ["range"]
       55 GETTABLEKS                       R18 R19 K8 ["startLine"]
       57 GETTABLEKS                       R20 R17 K6 ["range"]
       59 GETTABLEKS                       R19 R20 K8 ["startLine"]
       61 JUMPIFLT                         R18 R19 ; [+21]
       63 GETTABLEKS                       R19 R12 K6 ["range"]
       65 GETTABLEKS                       R18 R19 K8 ["startLine"]
       67 GETTABLEKS                       R20 R17 K6 ["range"]
       69 GETTABLEKS                       R19 R20 K8 ["startLine"]
       71 JUMPIFNOTEQ                      R18 R19 ; [+112]
       73 GETTABLEKS                       R19 R12 K6 ["range"]
       75 GETTABLEKS                       R18 R19 K9 ["startCharacter"]
       77 GETTABLEKS                       R20 R17 K6 ["range"]
       79 GETTABLEKS                       R19 R20 K9 ["startCharacter"]
       81 JUMPIFNOTLT                      R18 R19 ; [+102]
       83 GETTABLEKS                       R18 R12 K10 ["text"]
       85 LOADK                            R20 K11 ["\n"]
       86 LOADK                            R21 K11 ["\n"]
       87 NAMECALL                         R18 R18 K12 ["gsub"]
       89 CALL                             R18 3 2
       90 GETTABLEKS                       R23 R12 K6 ["range"]
       92 GETTABLEKS                       R22 R23 K13 ["endLine"]
       94 GETTABLEKS                       R24 R12 K6 ["range"]
       96 GETTABLEKS                       R23 R24 K8 ["startLine"]
       98 SUB                              R21 R22 R23
       99 SUB                              R20 R19 R21
      100 LOADN                            R21 0
      101 GETTABLEKS                       R23 R12 K6 ["range"]
      103 GETTABLEKS                       R22 R23 K13 ["endLine"]
      105 GETTABLEKS                       R24 R17 K6 ["range"]
      107 GETTABLEKS                       R23 R24 K8 ["startLine"]
      109 JUMPIFNOTEQ                      R22 R23 ; [+50]
      111 GETTABLEKS                       R22 R12 K10 ["text"]
      113 LOADK                            R24 K14 ["\n[^\n]*$"]
      114 NAMECALL                         R22 R22 K15 ["find"]
      116 CALL                             R22 2 1
      117 GETTABLEKS                       R25 R12 K10 ["text"]
      119 LENGTH                           R24 R25
      120 ORK                              R25 R22 K16 [0]
      121 SUB                              R23 R24 R25
      122 JUMPIFEQKNIL                     R22 ; [+3]
      124 LOADN                            R25 1
      125 JUMP                             ; [+4]
      126 GETTABLEKS                       R26 R12 K6 ["range"]
      128 GETTABLEKS                       R25 R26 K9 ["startCharacter"]
      130 ADD                              R24 R23 R25
      131 GETTABLEKS                       R26 R12 K6 ["range"]
      133 GETTABLEKS                       R25 R26 K17 ["endCharacter"]
      135 SUB                              R21 R24 R25
      136 GETTABLEKS                       R24 R17 K6 ["range"]
      138 GETTABLEKS                       R25 R24 K9 ["startCharacter"]
      140 ADD                              R25 R25 R21
      141 SETTABLEKS                       R25 R24 K9 ["startCharacter"]
      143 GETTABLEKS                       R25 R17 K6 ["range"]
      145 GETTABLEKS                       R24 R25 K13 ["endLine"]
      147 GETTABLEKS                       R26 R17 K6 ["range"]
      149 GETTABLEKS                       R25 R26 K8 ["startLine"]
      151 JUMPIFNOTEQ                      R24 R25 ; [+8]
      153 GETTABLEKS                       R24 R17 K6 ["range"]
      155 GETTABLEKS                       R25 R24 K17 ["endCharacter"]
      157 ADD                              R25 R25 R21
      158 SETTABLEKS                       R25 R24 K17 ["endCharacter"]
      160 GETTABLEKS                       R22 R17 K6 ["range"]
      162 GETTABLEKS                       R23 R22 K8 ["startLine"]
      164 ADD                              R23 R23 R20
      165 SETTABLEKS                       R23 R22 K8 ["startLine"]
      167 GETTABLEKS                       R22 R17 K6 ["range"]
      169 GETTABLEKS                       R23 R22 K13 ["endLine"]
      171 ADD                              R23 R23 R20
      172 SETTABLEKS                       R23 R22 K13 ["endLine"]
      174 MOVE                             R22 R7
      175 JUMPIF                           R22 ; [+7]
      176 LOADB                            R22 1
      177 JUMPIFNOTEQKN                    R20 K16 [0] ; [+5]
      179 JUMPIFNOTEQKN                    R21 K16 [0] ; [+2]
      181 LOADB                            R22 0 +1
      182 LOADB                            R22 1
      183 MOVE                             R7 R22
      184 FASTCALL2                        TABLE_INSERT R6 R17 ; [+5]
      186 MOVE                             R19 R6
      187 MOVE                             R20 R17
      188 GETIMPORT                        R18 K20 [table.insert]
      190 CALL                             R18 2 0
      191 FORGLOOP                         R13 2 ; [-149]
      193 MOVE                             R5 R6
      194 FORGLOOP                         R8 2 ; [-166]
      196 JUMPIFNOT                        R7 ; [+12]
      197 GETUPVAL                         R8 2
      198 MOVE                             R9 R2
      199 CALL                             R8 1 1
      200 GETTABLE                         R9 R8 R3
      201 SETTABLEKS                       R6 R9 K4 ["_list"]
      203 GETUPVAL                         R11 5
      204 MOVE                             R12 R8
      205 CALL                             R11 1 -1
      206 NAMECALL                         R9 R0 K21 ["dispatch"]
      208 CALL                             R9 -1 0
      209 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["deepCopy"]
       18 GETTABLEKS                       R4 R0 K10 ["Src"]
       20 GETTABLEKS                       R3 R4 K11 ["Actions"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R3 K12 ["SetDiagnostics"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R6 R0 K10 ["Src"]
       29 GETTABLEKS                       R5 R6 K8 ["Util"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R8 R5 K13 ["ScriptAnalysis"]
       35 GETTABLEKS                       R7 R8 K14 ["Range"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K15 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R4
       42 RETURN                           R7 1
