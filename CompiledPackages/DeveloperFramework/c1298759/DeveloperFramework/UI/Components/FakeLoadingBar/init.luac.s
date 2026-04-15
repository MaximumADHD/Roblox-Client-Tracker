PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"progress"}]
        2 SETTABLEKS                       R0 R3 K0 ["progress"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K3 ["props"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K4 ["lastProgress"]
       13 JUMPIFEQ                         R0 R2 ; [+11]
       15 GETUPVAL                         R2 0
       16 SETTABLEKS                       R0 R2 K4 ["lastProgress"]
       18 GETTABLEKS                       R2 R1 K5 ["OnProgressChanged"]
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETTABLEKS                       R2 R1 K5 ["OnProgressChanged"]
       23 MOVE                             R3 R0
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETIMPORT                        R2 K2 [tick]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["startTime"]
        9 SUB                              R1 R2 R3
       10 LOADNIL                          R2
       11 GETUPVAL                         R3 1
       12 JUMPIFNOTLT                      R3 R1 ; [+8]
       14 GETTABLEKS                       R3 R0 K4 ["Completed"]
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADN                            R2 1
       18 JUMP                             ; [+6]
       19 GETUPVAL                         R2 2
       20 JUMP                             ; [+4]
       21 GETUPVAL                         R4 1
       22 DIV                              R3 R1 R4
       23 GETUPVAL                         R4 2
       24 MUL                              R2 R3 R4
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K5 ["updateProgress"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 SETTABLEKS                       R2 R0 K2 ["startTime"]
        5 LOADN                            R2 0
        6 SETTABLEKS                       R2 R0 K3 ["lastProgress"]
        8 DUPTABLE                         R2 K5 [{"progress"}]
        9 LOADN                            R3 0
       10 SETTABLEKS                       R3 R2 K4 ["progress"]
       12 SETTABLEKS                       R2 R0 K6 ["state"]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K7 ["updateProgress"]
       18 GETTABLEKS                       R2 R1 K8 ["LoadingTime"]
       20 FASTCALL1                        TYPE R2 ; [+3]
       21 MOVE                             R6 R2
       22 GETIMPORT                        R5 K10 [type]
       24 CALL                             R5 1 1
       25 JUMPIFEQKS                       R5 K11 ["number"] ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       31 LOADK                            R5 K12 ["FakeLoadingBar expects a 'LoadingTime' prop."]
       32 GETIMPORT                        R3 K14 [assert]
       34 CALL                             R3 2 0
       35 LOADN                            R5 0
       36 JUMPIFLT                         R5 R2 ; [+2]
       38 LOADB                            R4 0 +1
       39 LOADB                            R4 1
       40 FASTCALL2K                       ASSERT R4 K15 ; [+4]
       42 LOADK                            R5 K15 ["FakeLoadingBar expects 'LoadingTime' to be > 0."]
       43 GETIMPORT                        R3 K14 [assert]
       45 CALL                             R3 2 0
       46 GETTABLEKS                       R4 R1 K17 ["HoldValue"]
       48 ORK                              R3 R4 K16 [1]
       49 LOADN                            R6 0
       50 JUMPIFLT                         R6 R3 ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 FASTCALL2K                       ASSERT R5 K18 ; [+4]
       56 LOADK                            R6 K18 ["FakeLoadingBar expects 'HoldValue' to be > 0."]
       57 GETIMPORT                        R4 K14 [assert]
       59 CALL                             R4 2 0
       60 LOADN                            R6 1
       61 JUMPIFLE                         R3 R6 ; [+2]
       63 LOADB                            R5 0 +1
       64 LOADB                            R5 1
       65 FASTCALL2K                       ASSERT R5 K19 ; [+4]
       67 LOADK                            R6 K19 ["FakeLoadingBar expects 'HoldValue' to be <= 1."]
       68 GETIMPORT                        R4 K14 [assert]
       70 CALL                             R4 2 0
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R4 R5 K20 ["RenderStepped"]
       74 NEWCLOSURE                       R6 P1
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R3
       78 NAMECALL                         R4 R4 K21 ["Connect"]
       80 CALL                             R4 2 1
       81 SETTABLEKS                       R4 R0 K22 ["updateConnection"]
       83 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["updateConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["updateConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R2 K2 ["progress"]
        6 LOADN                            R5 0
        7 LOADN                            R6 1
        8 FASTCALL                         MATH_CLAMP ; [+2]
        9 GETIMPORT                        R3 K5 [math.clamp]
       11 CALL                             R3 3 1
       12 GETTABLEKS                       R4 R1 K6 ["Style"]
       14 GETTABLEKS                       R5 R1 K7 ["Size"]
       16 GETTABLEKS                       R6 R1 K8 ["Position"]
       18 GETTABLEKS                       R7 R1 K9 ["AnchorPoint"]
       20 GETTABLEKS                       R8 R1 K10 ["ZIndex"]
       22 GETTABLEKS                       R9 R1 K11 ["LayoutOrder"]
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R10 R11 K12 ["createElement"]
       27 GETUPVAL                         R11 1
       28 DUPTABLE                         R12 K14 [{"Progress", "Style", "Size", "Position", "AnchorPoint", "ZIndex", "LayoutOrder"}]
       29 SETTABLEKS                       R3 R12 K13 ["Progress"]
       31 SETTABLEKS                       R4 R12 K6 ["Style"]
       33 SETTABLEKS                       R5 R12 K7 ["Size"]
       35 SETTABLEKS                       R6 R12 K8 ["Position"]
       37 SETTABLEKS                       R7 R12 K9 ["AnchorPoint"]
       39 SETTABLEKS                       R8 R12 K10 ["ZIndex"]
       41 SETTABLEKS                       R9 R12 K11 ["LayoutOrder"]
       43 CALL                             R10 2 -1
       44 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R4 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R6 R1 K6 ["UI"]
       26 GETTABLEKS                       R5 R6 K12 ["Components"]
       28 GETTABLEKS                       R4 R5 K13 ["LoadingBar"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R1 K14 ["Util"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R4 R5 K15 ["Typecheck"]
       38 GETTABLEKS                       R5 R2 K16 ["PureComponent"]
       40 LOADK                            R7 K17 ["FakeLoadingBar"]
       41 NAMECALL                         R5 R5 K18 ["extend"]
       43 CALL                             R5 2 1
       44 GETTABLEKS                       R6 R4 K19 ["wrap"]
       46 MOVE                             R7 R5
       47 GETIMPORT                        R8 K5 [script]
       49 CALL                             R6 2 0
       50 DUPCLOSURE                       R6 K20 [PROTO_2]
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R6 R5 K21 ["init"]
       54 DUPCLOSURE                       R6 K22 [PROTO_3]
       55 SETTABLEKS                       R6 R5 K23 ["willUnmount"]
       57 DUPCLOSURE                       R6 K24 [PROTO_4]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R6 R5 K25 ["render"]
       62 RETURN                           R5 1
