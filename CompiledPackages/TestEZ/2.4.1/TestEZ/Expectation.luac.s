PROTO_0:
        0 ORK                              R1 R1 K0 ["Assertion failed!"]
        1 ORK                              R2 R2 K1 [1]
        2 JUMPIF                           R0 ; [+5]
        3 GETIMPORT                        R3 K3 [error]
        5 MOVE                             R4 R1
        6 ADDK                             R5 R2 K1 [1]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 JUMPIFNOTEQ                      R0 R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 0
        6 GETVARARGS                       R3 -1
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R0
       12 GETVARARGS                       R4 -1
       13 CALL                             R1 -1 -1
       14 RETURN                           R1 -1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+1]
        1 RETURN                           R1 1
        2 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R1 K5 [{"value", "successCondition", "condition", "matchers", "_boundMatchers"}]
        1 SETTABLEKS                       R0 R1 K0 ["value"]
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K1 ["successCondition"]
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K2 ["condition"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K3 ["matchers"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K4 ["_boundMatchers"]
       17 GETUPVAL                         R4 0
       18 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       20 MOVE                             R3 R1
       21 GETIMPORT                        R2 K7 [setmetatable]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R3 R1 K8 ["a"]
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R2 R1 K8 ["a"]
       31 GETTABLEKS                       R2 R1 K8 ["a"]
       33 SETTABLEKS                       R2 R1 K9 ["an"]
       35 GETTABLEKS                       R3 R1 K10 ["ok"]
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R2 R1 K10 ["ok"]
       42 GETTABLEKS                       R3 R1 K11 ["equal"]
       44 NEWCLOSURE                       R2 P0
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R2 R1 K11 ["equal"]
       49 GETTABLEKS                       R3 R1 K12 ["throw"]
       51 NEWCLOSURE                       R2 P0
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R2 R1 K12 ["throw"]
       56 GETTABLEKS                       R3 R1 K13 ["near"]
       58 NEWCLOSURE                       R2 P0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R2 R1 K13 ["near"]
       63 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R1 R2 R0
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R2 2
        7 GETTABLE                         R1 R2 R0
        8 JUMPIFNOT                        R1 ; [+2]
        9 LOADB                            R1 0
       10 RETURN                           R1 1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_6:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["value"]
        5 GETVARARGS                       R3 -1
        6 CALL                             R1 -1 1
        7 GETTABLEKS                       R3 R1 K1 ["pass"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["successCondition"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETTABLEKS                       R3 R1 K3 ["message"]
       18 LOADN                            R4 3
       19 ORK                              R3 R3 K4 ["Assertion failed!"]
       20 ORK                              R4 R4 K5 [1]
       21 JUMPIF                           R2 ; [+5]
       22 GETIMPORT                        R5 K7 [error]
       24 MOVE                             R6 R3
       25 ADDK                             R7 R4 K5 [1]
       26 CALL                             R5 2 0
       27 GETUPVAL                         R3 1
       28 NAMECALL                         R3 R3 K8 ["_resetModifiers"]
       30 CALL                             R3 1 0
       31 GETUPVAL                         R3 1
       32 RETURN                           R3 1

PROTO_7:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R0 K0 ["matchers"]
        6 GETIMPORT                        R2 K2 [pairs]
        8 GETTABLEKS                       R3 R0 K0 ["matchers"]
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETTABLEKS                       R7 R0 K3 ["_boundMatchers"]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          VAL R6
       16 CAPTURE                          VAL R0
       17 NEWCLOSURE                       R8 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R9
       20 SETTABLE                         R8 R7 R5
       21 FORGLOOP                         R2 2 ; [-10]
       23 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 1
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R3 R1
        6 JUMPIFNOT                        R2 ; [+17]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K0 ["new"]
       10 GETTABLEKS                       R3 R0 K1 ["value"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R4 R0 K2 ["matchers"]
       15 NAMECALL                         R2 R2 K3 ["extend"]
       17 CALL                             R2 2 1
       18 GETTABLEKS                       R4 R0 K4 ["successCondition"]
       20 NOT                              R3 R4
       21 SETTABLEKS                       R3 R2 K4 ["successCondition"]
       23 RETURN                           R2 1
       24 GETTABLEKS                       R3 R0 K5 ["_boundMatchers"]
       26 GETTABLE                         R2 R3 R1
       27 JUMPIFNOT                        R2 ; [+4]
       28 GETTABLEKS                       R3 R0 K5 ["_boundMatchers"]
       30 GETTABLE                         R2 R3 R1
       31 RETURN                           R2 1
       32 GETUPVAL                         R3 2
       33 GETTABLE                         R2 R3 R1
       34 RETURN                           R2 1

PROTO_9:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["successCondition"]
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R5 R0 K0 ["value"]
        2 FASTCALL1                        TYPE R5 ; [+2]
        3 GETIMPORT                        R4 K2 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQ                         R4 R1 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETTABLEKS                       R4 R0 K3 ["successCondition"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETTABLEKS                       R4 R0 K3 ["successCondition"]
       18 LOADK                            R5 K4 ["Expected value of type %q, got value %q of type %s"]
       19 MOVE                             R7 R1
       20 GETTABLEKS                       R9 R0 K0 ["value"]
       22 FASTCALL1                        TOSTRING R9 ; [+2]
       23 GETIMPORT                        R8 K6 [tostring]
       25 CALL                             R8 1 1
       26 GETTABLEKS                       R10 R0 K0 ["value"]
       28 FASTCALL1                        TYPE R10 ; [+2]
       29 GETIMPORT                        R9 K2 [type]
       31 CALL                             R9 1 1
       32 NAMECALL                         R5 R5 K7 ["format"]
       34 CALL                             R5 4 1
       35 LOADK                            R6 K8 ["Expected value not of type %q, got value %q of type %s"]
       36 MOVE                             R8 R1
       37 GETTABLEKS                       R10 R0 K0 ["value"]
       39 FASTCALL1                        TOSTRING R10 ; [+2]
       40 GETIMPORT                        R9 K6 [tostring]
       42 CALL                             R9 1 1
       43 GETTABLEKS                       R11 R0 K0 ["value"]
       45 FASTCALL1                        TYPE R11 ; [+2]
       46 GETIMPORT                        R10 K2 [type]
       48 CALL                             R10 1 1
       49 NAMECALL                         R6 R6 K7 ["format"]
       51 CALL                             R6 4 1
       52 JUMPIFNOT                        R4 ; [+2]
       53 MOVE                             R3 R5
       54 JUMP                             ; [+1]
       55 MOVE                             R3 R6
       56 MOVE                             R4 R3
       57 LOADN                            R5 3
       58 ORK                              R4 R4 K9 ["Assertion failed!"]
       59 ORK                              R5 R5 K10 [1]
       60 JUMPIF                           R2 ; [+5]
       61 GETIMPORT                        R6 K12 [error]
       63 MOVE                             R7 R4
       64 ADDK                             R8 R5 K10 [1]
       65 CALL                             R6 2 0
       66 NAMECALL                         R4 R0 K13 ["_resetModifiers"]
       68 CALL                             R4 1 0
       69 RETURN                           R0 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["value"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 GETTABLEKS                       R3 R0 K1 ["successCondition"]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 GETTABLEKS                       R3 R0 K1 ["successCondition"]
       14 LOADK                            R4 K2 ["Expected value %q to be non-nil"]
       15 GETTABLEKS                       R7 R0 K0 ["value"]
       17 FASTCALL1                        TOSTRING R7 ; [+2]
       18 GETIMPORT                        R6 K4 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R4 R4 K5 ["format"]
       23 CALL                             R4 2 1
       24 LOADK                            R5 K6 ["Expected value %q to be nil"]
       25 GETTABLEKS                       R8 R0 K0 ["value"]
       27 FASTCALL1                        TOSTRING R8 ; [+2]
       28 GETIMPORT                        R7 K4 [tostring]
       30 CALL                             R7 1 1
       31 NAMECALL                         R5 R5 K5 ["format"]
       33 CALL                             R5 2 1
       34 JUMPIFNOT                        R3 ; [+2]
       35 MOVE                             R2 R4
       36 JUMP                             ; [+1]
       37 MOVE                             R2 R5
       38 MOVE                             R3 R2
       39 LOADN                            R4 3
       40 ORK                              R3 R3 K7 ["Assertion failed!"]
       41 ORK                              R4 R4 K8 [1]
       42 JUMPIF                           R1 ; [+5]
       43 GETIMPORT                        R5 K10 [error]
       45 MOVE                             R6 R3
       46 ADDK                             R7 R4 K8 [1]
       47 CALL                             R5 2 0
       48 NAMECALL                         R3 R0 K11 ["_resetModifiers"]
       50 CALL                             R3 1 0
       51 RETURN                           R0 1

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["value"]
        2 JUMPIFEQ                         R4 R1 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 GETTABLEKS                       R4 R0 K1 ["successCondition"]
        8 JUMPIFEQ                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETTABLEKS                       R4 R0 K1 ["successCondition"]
       14 LOADK                            R5 K2 ["Expected value %q (%s), got %q (%s) instead"]
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K4 [tostring]
       19 CALL                             R7 1 1
       20 FASTCALL1                        TYPE R1 ; [+3]
       21 MOVE                             R9 R1
       22 GETIMPORT                        R8 K6 [type]
       24 CALL                             R8 1 1
       25 GETTABLEKS                       R10 R0 K0 ["value"]
       27 FASTCALL1                        TOSTRING R10 ; [+2]
       28 GETIMPORT                        R9 K4 [tostring]
       30 CALL                             R9 1 1
       31 GETTABLEKS                       R11 R0 K0 ["value"]
       33 FASTCALL1                        TYPE R11 ; [+2]
       34 GETIMPORT                        R10 K6 [type]
       36 CALL                             R10 1 1
       37 NAMECALL                         R5 R5 K7 ["format"]
       39 CALL                             R5 5 1
       40 LOADK                            R6 K8 ["Expected anything but value %q (%s)"]
       41 FASTCALL1                        TOSTRING R1 ; [+3]
       42 MOVE                             R9 R1
       43 GETIMPORT                        R8 K4 [tostring]
       45 CALL                             R8 1 1
       46 FASTCALL1                        TYPE R1 ; [+3]
       47 MOVE                             R10 R1
       48 GETIMPORT                        R9 K6 [type]
       50 CALL                             R9 1 1
       51 NAMECALL                         R6 R6 K7 ["format"]
       53 CALL                             R6 3 1
       54 JUMPIFNOT                        R4 ; [+2]
       55 MOVE                             R3 R5
       56 JUMP                             ; [+1]
       57 MOVE                             R3 R6
       58 MOVE                             R4 R3
       59 LOADN                            R5 3
       60 ORK                              R4 R4 K9 ["Assertion failed!"]
       61 ORK                              R5 R5 K10 [1]
       62 JUMPIF                           R2 ; [+5]
       63 GETIMPORT                        R6 K12 [error]
       65 MOVE                             R7 R4
       66 ADDK                             R8 R5 K10 [1]
       67 CALL                             R6 2 0
       68 NAMECALL                         R4 R0 K13 ["_resetModifiers"]
       70 CALL                             R4 1 0
       71 RETURN                           R0 1

PROTO_13:
        0 GETTABLEKS                       R6 R0 K0 ["value"]
        2 FASTCALL1                        TYPE R6 ; [+2]
        3 GETIMPORT                        R5 K2 [type]
        5 CALL                             R5 1 1
        6 JUMPIFEQKS                       R5 K3 ["number"] ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       12 LOADK                            R5 K4 ["Expectation value must be a number to use 'near'"]
       13 GETIMPORT                        R3 K6 [assert]
       15 CALL                             R3 2 0
       16 FASTCALL1                        TYPE R1 ; [+3]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K2 [type]
       20 CALL                             R5 1 1
       21 JUMPIFEQKS                       R5 K3 ["number"] ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       27 LOADK                            R5 K7 ["otherValue must be a number"]
       28 GETIMPORT                        R3 K6 [assert]
       30 CALL                             R3 2 0
       31 LOADB                            R4 1
       32 FASTCALL1                        TYPE R2 ; [+3]
       33 MOVE                             R6 R2
       34 GETIMPORT                        R5 K2 [type]
       36 CALL                             R5 1 1
       37 JUMPIFEQKS                       R5 K3 ["number"] ; [+5]
       39 JUMPIFEQKNIL                     R2 ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       45 LOADK                            R5 K8 ["limit must be a number or nil"]
       46 GETIMPORT                        R3 K6 [assert]
       48 CALL                             R3 2 0
       49 ORK                              R2 R2 K9 [1E-07]
       50 GETTABLEKS                       R7 R0 K0 ["value"]
       52 SUB                              R6 R7 R1
       53 FASTCALL1                        MATH_ABS R6 ; [+2]
       54 GETIMPORT                        R5 K12 [math.abs]
       56 CALL                             R5 1 1
       57 JUMPIFLE                         R5 R2 ; [+2]
       59 LOADB                            R4 0 +1
       60 LOADB                            R4 1
       61 GETTABLEKS                       R5 R0 K13 ["successCondition"]
       63 JUMPIFEQ                         R4 R5 ; [+2]
       65 LOADB                            R3 0 +1
       66 LOADB                            R3 1
       67 GETTABLEKS                       R5 R0 K13 ["successCondition"]
       69 LOADK                            R6 K14 ["Expected value to be near %f (within %f) but got %f instead"]
       70 MOVE                             R8 R1
       71 MOVE                             R9 R2
       72 GETTABLEKS                       R10 R0 K0 ["value"]
       74 NAMECALL                         R6 R6 K15 ["format"]
       76 CALL                             R6 4 1
       77 LOADK                            R7 K16 ["Expected value to not be near %f (within %f) but got %f instead"]
       78 MOVE                             R9 R1
       79 MOVE                             R10 R2
       80 GETTABLEKS                       R11 R0 K0 ["value"]
       82 NAMECALL                         R7 R7 K15 ["format"]
       84 CALL                             R7 4 1
       85 JUMPIFNOT                        R5 ; [+2]
       86 MOVE                             R4 R6
       87 JUMP                             ; [+1]
       88 MOVE                             R4 R7
       89 MOVE                             R5 R4
       90 LOADN                            R6 3
       91 ORK                              R5 R5 K17 ["Assertion failed!"]
       92 ORK                              R6 R6 K18 [1]
       93 JUMPIF                           R3 ; [+5]
       94 GETIMPORT                        R7 K20 [error]
       96 MOVE                             R8 R5
       97 ADDK                             R9 R6 K18 [1]
       98 CALL                             R7 2 0
       99 NAMECALL                         R5 R0 K21 ["_resetModifiers"]
      101 CALL                             R5 1 0
      102 RETURN                           R0 1

PROTO_14:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETTABLEKS                       R3 R0 K2 ["value"]
        4 CALL                             R2 1 2
        5 GETTABLEKS                       R5 R0 K3 ["successCondition"]
        7 JUMPIFNOTEQ                      R2 R5 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 JUMPIFNOT                        R1 ; [+25]
       12 JUMPIF                           R2 ; [+24]
       13 GETTABLEKS                       R5 R0 K3 ["successCondition"]
       15 JUMPIFNOT                        R5 ; [+11]
       16 MOVE                             R7 R1
       17 LOADN                            R8 1
       18 LOADB                            R9 1
       19 NAMECALL                         R5 R3 K4 ["find"]
       21 CALL                             R5 4 1
       22 JUMPIFNOTEQKNIL                  R5 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 JUMP                             ; [+10]
       27 MOVE                             R7 R1
       28 LOADN                            R8 1
       29 LOADB                            R9 1
       30 NAMECALL                         R5 R3 K4 ["find"]
       32 CALL                             R5 4 1
       33 JUMPIFEQKNIL                     R5 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 LOADNIL                          R5
       38 JUMPIFNOT                        R1 ; [+30]
       39 GETTABLEKS                       R6 R0 K3 ["successCondition"]
       41 LOADK                            R7 K5 ["Expected function to throw an error containing %q, but it %s"]
       42 MOVE                             R9 R1
       43 JUMPIFNOT                        R3 ; [+6]
       44 LOADK                            R10 K6 ["threw: %s"]
       45 MOVE                             R12 R3
       46 NAMECALL                         R10 R10 K7 ["format"]
       48 CALL                             R10 2 1
       49 JUMPIF                           R10 ; [+1]
       50 LOADK                            R10 K8 ["did not throw."]
       51 NAMECALL                         R7 R7 K7 ["format"]
       53 CALL                             R7 3 1
       54 LOADK                            R8 K9 ["Expected function to never throw an error containing %q, but it threw: %s"]
       55 MOVE                             R10 R1
       56 FASTCALL1                        TOSTRING R3 ; [+3]
       57 MOVE                             R12 R3
       58 GETIMPORT                        R11 K11 [tostring]
       60 CALL                             R11 1 1
       61 NAMECALL                         R8 R8 K7 ["format"]
       63 CALL                             R8 3 1
       64 JUMPIFNOT                        R6 ; [+2]
       65 MOVE                             R5 R7
       66 JUMP                             ; [+17]
       67 MOVE                             R5 R8
       68 JUMP                             ; [+15]
       69 GETTABLEKS                       R6 R0 K3 ["successCondition"]
       71 LOADK                            R7 K12 ["Expected function to succeed, but it threw an error: %s"]
       72 FASTCALL1                        TOSTRING R3 ; [+3]
       73 MOVE                             R10 R3
       74 GETIMPORT                        R9 K11 [tostring]
       76 CALL                             R9 1 1
       77 NAMECALL                         R7 R7 K7 ["format"]
       79 CALL                             R7 2 1
       80 JUMPIFNOT                        R6 ; [+2]
       81 LOADK                            R5 K13 ["Expected function to throw an error, but it did not throw."]
       82 JUMP                             ; [+1]
       83 MOVE                             R5 R7
       84 MOVE                             R6 R4
       85 MOVE                             R7 R5
       86 LOADN                            R8 3
       87 ORK                              R7 R7 K14 ["Assertion failed!"]
       88 ORK                              R8 R8 K15 [1]
       89 JUMPIF                           R6 ; [+5]
       90 GETIMPORT                        R9 K17 [error]
       92 MOVE                             R10 R7
       93 ADDK                             R11 R8 K15 [1]
       94 CALL                             R9 2 0
       95 NAMECALL                         R6 R0 K18 ["_resetModifiers"]
       97 CALL                             R6 1 0
       98 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPTABLE                         R1 K6 [{"to", "be", "been", "have", "was", "at"}]
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K0 ["to"]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K1 ["be"]
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K2 ["been"]
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R1 K3 ["have"]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K4 ["was"]
       19 LOADB                            R2 1
       20 SETTABLEKS                       R2 R1 K5 ["at"]
       22 DUPTABLE                         R2 K8 [{"never"}]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K7 ["never"]
       26 DUPCLOSURE                       R3 K9 [PROTO_0]
       27 DUPCLOSURE                       R4 K10 [PROTO_2]
       28 DUPCLOSURE                       R5 K11 [PROTO_3]
       29 DUPCLOSURE                       R6 K12 [PROTO_4]
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R6 R0 K13 ["new"]
       33 DUPCLOSURE                       R6 K14 [PROTO_5]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R6 R0 K15 ["checkMatcherNameCollisions"]
       39 DUPCLOSURE                       R6 K16 [PROTO_7]
       40 SETTABLEKS                       R6 R0 K17 ["extend"]
       42 DUPCLOSURE                       R6 K18 [PROTO_8]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R6 R0 K19 ["__index"]
       48 DUPCLOSURE                       R6 K20 [PROTO_9]
       49 SETTABLEKS                       R6 R0 K21 ["_resetModifiers"]
       51 DUPCLOSURE                       R6 K22 [PROTO_10]
       52 SETTABLEKS                       R6 R0 K23 ["a"]
       54 GETTABLEKS                       R6 R0 K23 ["a"]
       56 SETTABLEKS                       R6 R0 K24 ["an"]
       58 DUPCLOSURE                       R6 K25 [PROTO_11]
       59 SETTABLEKS                       R6 R0 K26 ["ok"]
       61 DUPCLOSURE                       R6 K27 [PROTO_12]
       62 SETTABLEKS                       R6 R0 K28 ["equal"]
       64 DUPCLOSURE                       R6 K29 [PROTO_13]
       65 SETTABLEKS                       R6 R0 K30 ["near"]
       67 DUPCLOSURE                       R6 K31 [PROTO_14]
       68 SETTABLEKS                       R6 R0 K32 ["throw"]
       70 RETURN                           R0 1
