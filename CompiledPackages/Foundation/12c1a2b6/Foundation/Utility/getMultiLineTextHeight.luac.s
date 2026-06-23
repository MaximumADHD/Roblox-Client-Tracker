PROTO_0:
        0 LOADN                            R3 0
        1 JUMPIFLE                         R0 R3 ; [+4]
        3 LOADN                            R3 0
        4 JUMPIFNOTLE                      R1 R3 ; [+3]
        6 LOADN                            R3 0
        7 RETURN                           R3 1
        8 LOADN                            R3 1
        9 JUMPIFNOTLE                      R2 R3 ; [+2]
       11 LOADN                            R2 1
       12 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       13 MOVE                             R4 R0
       14 GETIMPORT                        R3 K2 [math.floor]
       16 CALL                             R3 1 1
       17 MOVE                             R0 R3
       18 LOADN                            R3 0
       19 GETUPVAL                         R5 0
       20 GETIMPORT                        R6 K5 [Font.fromEnum]
       22 GETIMPORT                        R7 K8 [Enum.Font.BuilderSans]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R6 R6 K9 ["Family"]
       27 GETTABLE                         R4 R5 R6
       28 JUMPIFEQKNIL                     R4 ; [+6]
       30 DIV                              R5 R0 R4
       31 MUL                              R6 R2 R4
       32 MUL                              R8 R5 R6
       33 SUB                              R7 R8 R0
       34 DIVK                             R3 R7 K10 [2]
       35 SUBK                             R8 R1 K11 [1]
       36 MUL                              R7 R8 R2
       37 MUL                              R6 R7 R0
       38 FASTCALL1                        MATH_CEIL R6 ; [+2]
       39 GETIMPORT                        R5 K13 [math.ceil]
       41 CALL                             R5 1 1
       42 LOADN                            R7 1
       43 JUMPIFNOTLE                      R7 R3 ; [+7]
       45 FASTCALL1                        MATH_CEIL R3 ; [+3]
       46 MOVE                             R7 R3
       47 GETIMPORT                        R6 K13 [math.ceil]
       49 CALL                             R6 1 1
       50 JUMP                             ; [+5]
       51 FASTCALL1                        MATH_FLOOR R3 ; [+3]
       52 MOVE                             R7 R3
       53 GETIMPORT                        R6 K2 [math.floor]
       55 CALL                             R6 1 1
       56 ADD                              R8 R5 R0
       57 ADD                              R7 R8 R6
       58 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Text"]
       13 GETTABLEKS                       R2 R2 K8 ["FontScales"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
