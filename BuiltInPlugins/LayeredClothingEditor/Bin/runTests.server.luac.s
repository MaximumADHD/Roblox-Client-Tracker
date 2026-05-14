PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["TestEZ"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["Reporters"]
       12 GETTABLEKS                       R1 R1 K6 ["TextReporter"]
       14 GETTABLEKS                       R2 R0 K5 ["Reporters"]
       16 GETTABLEKS                       R2 R2 K7 ["TeamCityReporter"]
       18 GETIMPORT                        R5 K10 [_G]
       20 GETTABLEKS                       R4 R5 K8 ["TEAMCITY"]
       22 JUMPIFNOT                        R4 ; [+2]
       23 MOVE                             R3 R2
       24 JUMPIF                           R3 ; [+1]
       25 MOVE                             R3 R1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["runAvatarToolsSharedTests"]
       31 MOVE                             R5 R0
       32 MOVE                             R6 R3
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["TestEZ"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["Reporters"]
       12 GETTABLEKS                       R1 R1 K6 ["TextReporter"]
       14 GETTABLEKS                       R2 R0 K5 ["Reporters"]
       16 GETTABLEKS                       R2 R2 K7 ["TeamCityReporter"]
       18 GETIMPORT                        R5 K10 [_G]
       20 GETTABLEKS                       R4 R5 K8 ["TEAMCITY"]
       22 JUMPIFNOT                        R4 ; [+2]
       23 MOVE                             R3 R2
       24 JUMPIF                           R3 ; [+1]
       25 MOVE                             R3 R1
       26 GETIMPORT                        R4 K1 [require]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K11 ["Util"]
       31 GETTABLEKS                       R5 R5 K12 ["runLuaMeshEditingModuleTests"]
       33 CALL                             R4 1 1
       34 MOVE                             R5 R4
       35 MOVE                             R6 R0
       36 MOVE                             R7 R3
       37 CALL                             R5 2 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["TestEZ"]
        9 CALL                             R0 1 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["Src"]
       13 GETTABLEKS                       R2 R0 K6 ["TestBootstrap"]
       15 GETTABLEKS                       R3 R0 K7 ["Reporters"]
       17 GETTABLEKS                       R3 R3 K8 ["TextReporter"]
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R1
       22 SETLIST                          R6 R7 1 [1]
       24 MOVE                             R7 R3
       25 NAMECALL                         R4 R2 K9 ["run"]
       27 CALL                             R4 3 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["TestEZ"]
        9 CALL                             R0 1 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["RhodiumTests"]
       13 GETTABLEKS                       R2 R0 K6 ["TestBootstrap"]
       15 GETTABLEKS                       R3 R0 K7 ["Reporters"]
       17 GETTABLEKS                       R3 R3 K8 ["TextReporter"]
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R1
       22 SETLIST                          R6 R7 1 [1]
       24 MOVE                             R7 R3
       25 LOADB                            R8 0
       26 LOADB                            R9 1
       27 NAMECALL                         R4 R2 K9 ["run"]
       29 CALL                             R4 5 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R4 R4 K6 ["Util"]
       15 GETTABLEKS                       R4 R4 K7 ["DebugFlags"]
       17 CALL                             R3 1 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          REF R1
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          REF R2
       24 DUPCLOSURE                       R6 K8 [PROTO_2]
       25 CAPTURE                          VAL R0
       26 DUPCLOSURE                       R7 K9 [PROTO_3]
       27 CAPTURE                          VAL R0
       28 GETTABLEKS                       R8 R3 K10 ["RunTests"]
       30 CALL                             R8 0 1
       31 GETTABLEKS                       R9 R3 K11 ["RunRhodiumTests"]
       33 CALL                             R9 0 1
       34 JUMPIFNOT                        R8 ; [+149]
       35 GETIMPORT                        R10 K4 [require]
       37 GETTABLEKS                       R11 R0 K12 ["Packages"]
       39 GETTABLEKS                       R11 R11 K13 ["AvatarToolsShared"]
       41 CALL                             R10 1 1
       42 MOVE                             R1 R10
       43 GETTABLEKS                       R10 R0 K12 ["Packages"]
       45 GETTABLEKS                       R2 R10 K14 ["LuaMeshEditingModule"]
       47 GETIMPORT                        R10 K16 [print]
       49 LOADK                            R12 K17 ["----- All "]
       50 GETIMPORT                        R13 K1 [script]
       52 GETTABLEKS                       R13 R13 K2 ["Parent"]
       54 GETTABLEKS                       R13 R13 K2 ["Parent"]
       56 GETTABLEKS                       R13 R13 K18 ["Name"]
       58 LOADK                            R14 K19 [" Tests ------"]
       59 CONCAT                           R11 R12 R14
       60 CALL                             R10 1 0
       61 GETIMPORT                        R10 K4 [require]
       63 GETIMPORT                        R11 K1 [script]
       65 GETTABLEKS                       R11 R11 K2 ["Parent"]
       67 GETTABLEKS                       R11 R11 K20 ["defineLuaFlags"]
       69 CALL                             R10 1 0
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K12 ["Packages"]
       74 GETTABLEKS                       R11 R11 K21 ["Dev"]
       76 GETTABLEKS                       R11 R11 K22 ["TestEZ"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R0 K5 ["Src"]
       81 GETTABLEKS                       R12 R10 K23 ["TestBootstrap"]
       83 GETTABLEKS                       R13 R10 K24 ["Reporters"]
       85 GETTABLEKS                       R13 R13 K25 ["TextReporter"]
       87 NEWTABLE                         R16 0 1
       89 MOVE                             R17 R11
       90 SETLIST                          R16 R17 1 [1]
       92 MOVE                             R17 R13
       93 NAMECALL                         R14 R12 K26 ["run"]
       95 CALL                             R14 3 0
       96 GETIMPORT                        R10 K16 [print]
       98 LOADK                            R11 K27 ["----------------------------------"]
       99 CALL                             R10 1 0
      100 GETIMPORT                        R10 K16 [print]
      102 LOADK                            R11 K28 ["----- All AvatarToolsShared Tests ------"]
      103 CALL                             R10 1 0
      104 GETIMPORT                        R10 K4 [require]
      106 GETTABLEKS                       R11 R0 K12 ["Packages"]
      108 GETTABLEKS                       R11 R11 K21 ["Dev"]
      110 GETTABLEKS                       R11 R11 K22 ["TestEZ"]
      112 CALL                             R10 1 1
      113 GETTABLEKS                       R11 R10 K24 ["Reporters"]
      115 GETTABLEKS                       R11 R11 K25 ["TextReporter"]
      117 GETTABLEKS                       R12 R10 K24 ["Reporters"]
      119 GETTABLEKS                       R12 R12 K29 ["TeamCityReporter"]
      121 GETIMPORT                        R15 K32 [_G]
      123 GETTABLEKS                       R14 R15 K30 ["TEAMCITY"]
      125 JUMPIFNOT                        R14 ; [+2]
      126 MOVE                             R13 R12
      127 JUMPIF                           R13 ; [+1]
      128 MOVE                             R13 R11
      129 GETTABLEKS                       R14 R1 K6 ["Util"]
      131 GETTABLEKS                       R14 R14 K33 ["runAvatarToolsSharedTests"]
      133 MOVE                             R15 R10
      134 MOVE                             R16 R13
      135 CALL                             R14 2 0
      136 GETIMPORT                        R10 K16 [print]
      138 LOADK                            R11 K27 ["----------------------------------"]
      139 CALL                             R10 1 0
      140 GETIMPORT                        R10 K16 [print]
      142 LOADK                            R11 K34 ["----- All LuaMeshEditingModule Tests ------"]
      143 CALL                             R10 1 0
      144 GETIMPORT                        R10 K4 [require]
      146 GETTABLEKS                       R11 R0 K12 ["Packages"]
      148 GETTABLEKS                       R11 R11 K21 ["Dev"]
      150 GETTABLEKS                       R11 R11 K22 ["TestEZ"]
      152 CALL                             R10 1 1
      153 GETTABLEKS                       R11 R10 K24 ["Reporters"]
      155 GETTABLEKS                       R11 R11 K25 ["TextReporter"]
      157 GETTABLEKS                       R12 R10 K24 ["Reporters"]
      159 GETTABLEKS                       R12 R12 K29 ["TeamCityReporter"]
      161 GETIMPORT                        R15 K32 [_G]
      163 GETTABLEKS                       R14 R15 K30 ["TEAMCITY"]
      165 JUMPIFNOT                        R14 ; [+2]
      166 MOVE                             R13 R12
      167 JUMPIF                           R13 ; [+1]
      168 MOVE                             R13 R11
      169 GETIMPORT                        R14 K4 [require]
      171 GETTABLEKS                       R15 R2 K6 ["Util"]
      173 GETTABLEKS                       R15 R15 K35 ["runLuaMeshEditingModuleTests"]
      175 CALL                             R14 1 1
      176 MOVE                             R15 R14
      177 MOVE                             R16 R10
      178 MOVE                             R17 R13
      179 CALL                             R15 2 0
      180 GETIMPORT                        R10 K16 [print]
      182 LOADK                            R11 K27 ["----------------------------------"]
      183 CALL                             R10 1 0
      184 JUMPIFNOT                        R9 ; [+20]
      185 GETIMPORT                        R10 K16 [print]
      187 LOADK                            R12 K17 ["----- All "]
      188 GETIMPORT                        R13 K1 [script]
      190 GETTABLEKS                       R13 R13 K2 ["Parent"]
      192 GETTABLEKS                       R13 R13 K2 ["Parent"]
      194 GETTABLEKS                       R13 R13 K18 ["Name"]
      196 LOADK                            R14 K36 [" Rhodium Tests ------"]
      197 CONCAT                           R11 R12 R14
      198 CALL                             R10 1 0
      199 MOVE                             R10 R7
      200 CALL                             R10 0 0
      201 GETIMPORT                        R10 K16 [print]
      203 LOADK                            R11 K27 ["----------------------------------"]
      204 CALL                             R10 1 0
      205 JUMPIF                           R8 ; [+1]
      206 JUMPIFNOT                        R9 ; [+10]
      207 GETIMPORT                        R10 K38 [game]
      209 LOADK                            R12 K39 ["ProcessService"]
      210 NAMECALL                         R10 R10 K40 ["GetService"]
      212 CALL                             R10 2 1
      213 LOADN                            R12 0
      214 NAMECALL                         R10 R10 K41 ["ExitAsync"]
      216 CALL                             R10 2 0
      217 CLOSEUPVALS                      R1
      218 RETURN                           R0 0
