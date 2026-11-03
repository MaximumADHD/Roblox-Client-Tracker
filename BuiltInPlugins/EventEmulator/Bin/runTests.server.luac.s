PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["EventEmulatorFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 MOVE                             R2 R1
        6 JUMPIFNOT                        R2 ; [+4]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 LOADB                            R3 0
       12 JUMPIFEQKNIL                     R2 ; [+7]
       14 GETTABLEKS                       R4 R2 K2 ["Value"]
       16 JUMPIFEQKB                       R4 TRUE ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R3 0
        7 JUMPIFNOT                        R3 ; [+2]
        8 LOADN                            R2 1
        9 JUMP                             ; [+1]
       10 LOADN                            R2 0
       11 NAMECALL                         R0 R0 K4 ["ExitAsync"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 LOADK                            R5 K5 ["EventEmulatorFlags"]
       10 NAMECALL                         R3 R0 K6 ["FindFirstChild"]
       12 CALL                             R3 2 1
       13 MOVE                             R4 R3
       14 JUMPIFNOT                        R4 ; [+4]
       15 LOADK                            R6 K7 ["RunTests"]
       16 NAMECALL                         R4 R3 K6 ["FindFirstChild"]
       18 CALL                             R4 2 1
       19 LOADB                            R2 0
       20 JUMPIFEQKNIL                     R4 ; [+7]
       22 GETTABLEKS                       R5 R4 K8 ["Value"]
       24 JUMPIFEQKB                       R5 TRUE ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 JUMPIF                           R2 ; [+20]
       29 LOADK                            R5 K5 ["EventEmulatorFlags"]
       30 NAMECALL                         R3 R0 K6 ["FindFirstChild"]
       32 CALL                             R3 2 1
       33 MOVE                             R4 R3
       34 JUMPIFNOT                        R4 ; [+4]
       35 LOADK                            R6 K9 ["RunningUnderCLI"]
       36 NAMECALL                         R4 R3 K6 ["FindFirstChild"]
       38 CALL                             R4 2 1
       39 LOADB                            R2 0
       40 JUMPIFEQKNIL                     R4 ; [+7]
       42 GETTABLEKS                       R5 R4 K8 ["Value"]
       44 JUMPIFEQKB                       R5 TRUE ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 JUMPIFNOT                        R2 ; [+101]
       49 GETIMPORT                        R2 K11 [script]
       51 GETTABLEKS                       R2 R2 K12 ["Parent"]
       53 GETTABLEKS                       R2 R2 K12 ["Parent"]
       55 GETTABLEKS                       R3 R2 K13 ["Src"]
       57 GETIMPORT                        R4 K15 [require]
       59 GETTABLEKS                       R5 R2 K16 ["Packages"]
       61 GETTABLEKS                       R5 R5 K17 ["Dev"]
       63 GETTABLEKS                       R5 R5 K18 ["TestEZ"]
       65 CALL                             R4 1 1
       66 GETTABLEKS                       R5 R4 K19 ["TestBootstrap"]
       68 GETTABLEKS                       R6 R4 K20 ["Reporters"]
       70 GETTABLEKS                       R6 R6 K21 ["TextReporter"]
       72 GETIMPORT                        R7 K23 [print]
       74 LOADK                            R8 K24 ["----- All Event Emulator Tests ------"]
       75 CALL                             R7 1 0
       76 GETIMPORT                        R7 K15 [require]
       78 GETIMPORT                        R8 K11 [script]
       80 GETTABLEKS                       R8 R8 K12 ["Parent"]
       82 GETTABLEKS                       R8 R8 K25 ["defineLuaFlags"]
       84 CALL                             R7 1 0
       85 NEWTABLE                         R9 0 1
       87 MOVE                             R10 R3
       88 SETLIST                          R9 R10 1 [1]
       90 MOVE                             R10 R6
       91 NAMECALL                         R7 R5 K26 ["run"]
       93 CALL                             R7 3 1
       94 GETIMPORT                        R8 K23 [print]
       96 LOADK                            R9 K27 ["----------------------------------"]
       97 CALL                             R8 1 0
       98 LOADB                            R8 0
       99 FASTCALL1                        TYPEOF R7 ; [+3]
      100 MOVE                             R10 R7
      101 GETIMPORT                        R9 K29 [typeof]
      103 CALL                             R9 1 1
      104 JUMPIFNOTEQKS                    R9 K30 ["table"] ; [+9]
      106 GETTABLEKS                       R10 R7 K32 ["failureCount"]
      108 ORK                              R9 R10 K31 [0]
      109 LOADN                            R10 0
      110 JUMPIFLT                         R10 R9 ; [+2]
      112 LOADB                            R8 0 +1
      113 LOADB                            R8 1
      114 JUMPIFNOT                        R8 ; [+10]
      115 GETIMPORT                        R9 K1 [game]
      117 LOADK                            R11 K33 ["TestService"]
      118 NAMECALL                         R9 R9 K3 ["GetService"]
      120 CALL                             R9 2 1
      121 LOADK                            R11 K34 ["TestEZ test run failed"]
      122 NAMECALL                         R9 R9 K35 ["Error"]
      124 CALL                             R9 2 0
      125 LOADK                            R12 K5 ["EventEmulatorFlags"]
      126 NAMECALL                         R10 R0 K6 ["FindFirstChild"]
      128 CALL                             R10 2 1
      129 MOVE                             R11 R10
      130 JUMPIFNOT                        R11 ; [+4]
      131 LOADK                            R13 K9 ["RunningUnderCLI"]
      132 NAMECALL                         R11 R10 K6 ["FindFirstChild"]
      134 CALL                             R11 2 1
      135 LOADB                            R9 0
      136 JUMPIFEQKNIL                     R11 ; [+7]
      138 GETTABLEKS                       R12 R11 K8 ["Value"]
      140 JUMPIFEQKB                       R12 TRUE ; [+2]
      142 LOADB                            R9 0 +1
      143 LOADB                            R9 1
      144 JUMPIFNOT                        R9 ; [+5]
      145 GETIMPORT                        R9 K37 [pcall]
      147 DUPCLOSURE                       R10 K38 [PROTO_1]
      148 CAPTURE                          VAL R8
      149 CALL                             R9 1 0
      150 RETURN                           R0 0
