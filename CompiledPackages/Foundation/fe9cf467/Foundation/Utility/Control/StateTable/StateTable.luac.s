PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["handleEvent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R2 K1 [error]
        2 GETIMPORT                        R3 K4 [string.format]
        4 LOADK                            R4 K5 ["'%s' is not a valid event in StateTable '%s'"]
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R6 R1
        7 GETIMPORT                        R5 K7 [tostring]
        9 CALL                             R5 1 1
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K8 ["name"]
       13 CALL                             R3 3 1
       14 LOADN                            R4 2
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 LENGTH                           R5 R0
        1 LOADN                            R6 0
        2 JUMPIFLT                         R6 R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        8 LOADK                            R5 K0 ["name must not be an empty string"]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETTABLE                         R5 R2 R1
       13 JUMPIFNOTEQKNIL                  R5 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       19 LOADK                            R5 K3 ["initialState must be present in transitionTable"]
       20 GETIMPORT                        R3 K2 [assert]
       22 CALL                             R3 2 0
       23 NEWTABLE                         R3 4 0
       25 GETUPVAL                         R6 0
       26 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       28 MOVE                             R5 R3
       29 GETIMPORT                        R4 K5 [setmetatable]
       31 CALL                             R4 2 0
       32 SETTABLEKS                       R0 R3 K6 ["name"]
       34 SETTABLEKS                       R1 R3 K7 ["currentState"]
       36 NEWTABLE                         R4 0 0
       38 SETTABLEKS                       R4 R3 K8 ["transitionTable"]
       40 NEWTABLE                         R4 0 0
       42 SETTABLEKS                       R4 R3 K9 ["events"]
       44 MOVE                             R4 R2
       45 LOADNIL                          R5
       46 LOADNIL                          R6
       47 FORGPREP                         R4
       48 NEWTABLE                         R9 0 0
       50 MOVE                             R10 R8
       51 LOADNIL                          R11
       52 LOADNIL                          R12
       53 FORGPREP                         R10
       54 GETTABLEKS                       R15 R14 K10 ["nextState"]
       56 JUMPIFEQKNIL                     R15 ; [+12]
       58 GETTABLE                         R18 R2 R15
       59 JUMPIFNOTEQKNIL                  R18 ; [+2]
       61 LOADB                            R17 0 +1
       62 LOADB                            R17 1
       63 FASTCALL2K                       ASSERT R17 K11 ; [+4]
       65 LOADK                            R18 K11 ["nextState does not exist in transitionTable"]
       66 GETIMPORT                        R16 K2 [assert]
       68 CALL                             R16 2 0
       69 SETTABLE                         R14 R9 R13
       70 GETTABLEKS                       R17 R3 K9 ["events"]
       72 GETTABLE                         R16 R17 R13
       73 JUMPIFNOTEQKNIL                  R16 ; [+7]
       75 GETTABLEKS                       R16 R3 K9 ["events"]
       77 NEWCLOSURE                       R17 P0
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R13
       80 SETTABLE                         R17 R16 R13
       81 FORGLOOP                         R10 2 ; [-28]
       83 GETTABLEKS                       R10 R3 K8 ["transitionTable"]
       85 SETTABLE                         R9 R10 R7
       86 FORGLOOP                         R4 2 ; [-39]
       88 GETTABLEKS                       R5 R3 K9 ["events"]
       90 DUPTABLE                         R6 K13 [{"__index"}]
       91 NEWCLOSURE                       R7 P1
       92 CAPTURE                          VAL R3
       93 SETTABLEKS                       R7 R6 K12 ["__index"]
       95 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       97 GETIMPORT                        R4 K5 [setmetatable]
       99 CALL                             R4 2 0
      100 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["currentState"]
        2 GETTABLEKS                       R4 R0 K1 ["transitionTable"]
        4 GETTABLE                         R3 R4 R2
        5 GETTABLE                         R4 R3 R1
        6 JUMPIFNOTEQKNIL                  R4 ; [+11]
        8 GETUPVAL                         R5 0
        9 LOADK                            R8 K2 ["No transition found for event "]
       10 MOVE                             R9 R1
       11 LOADK                            R10 K3 [" in state "]
       12 MOVE                             R11 R2
       13 CONCAT                           R7 R8 R11
       14 NAMECALL                         R5 R5 K4 ["debug"]
       16 CALL                             R5 2 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R5 R4 K5 ["nextState"]
       20 SETTABLEKS                       R5 R0 K0 ["currentState"]
       22 GETTABLEKS                       R6 R0 K6 ["stateChangeHandler"]
       24 JUMPIFEQKNIL                     R6 ; [+5]
       26 GETTABLEKS                       R6 R0 K6 ["stateChangeHandler"]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 0
       30 RETURN                           R0 0

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["stateChangeHandler"]
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["ControlState"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["ControlStateEvent"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Utility"]
       25 GETTABLEKS                       R4 R5 K10 ["Logger"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 4 0
       30 SETTABLEKS                       R4 R4 K11 ["__index"]
       32 DUPCLOSURE                       R5 K12 [PROTO_2]
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R5 R4 K13 ["new"]
       36 DUPCLOSURE                       R5 K14 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R5 R4 K15 ["handleEvent"]
       40 DUPCLOSURE                       R5 K16 [PROTO_4]
       41 SETTABLEKS                       R5 R4 K17 ["onStateChange"]
       43 RETURN                           R4 1
