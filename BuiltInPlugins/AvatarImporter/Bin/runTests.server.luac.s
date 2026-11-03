PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AvatarImporterFlags"]
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
        9 LOADK                            R5 K5 ["AvatarImporterFlags"]
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
       29 LOADK                            R5 K5 ["AvatarImporterFlags"]
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
       48 JUMPIFNOT                        R2 ; [+117]
       49 GETIMPORT                        R2 K11 [script]
       51 GETTABLEKS                       R2 R2 K12 ["Parent"]
       53 GETTABLEKS                       R2 R2 K12 ["Parent"]
       55 GETTABLEKS                       R2 R2 K13 ["src"]
       57 GETIMPORT                        R3 K15 [require]
       59 GETIMPORT                        R4 K11 [script]
       61 GETTABLEKS                       R4 R4 K12 ["Parent"]
       63 GETTABLEKS                       R4 R4 K12 ["Parent"]
       65 GETTABLEKS                       R4 R4 K16 ["Packages"]
       67 GETTABLEKS                       R4 R4 K17 ["Dev"]
       69 GETTABLEKS                       R4 R4 K18 ["TestEZ"]
       71 CALL                             R3 1 1
       72 GETTABLEKS                       R4 R3 K19 ["TestBootstrap"]
       74 GETTABLEKS                       R5 R3 K20 ["Reporters"]
       76 GETTABLEKS                       R5 R5 K21 ["TextReporterQuiet"]
       78 GETIMPORT                        R6 K23 [print]
       80 LOADK                            R8 K24 ["----- All "]
       81 GETIMPORT                        R9 K11 [script]
       83 GETTABLEKS                       R9 R9 K12 ["Parent"]
       85 GETTABLEKS                       R9 R9 K12 ["Parent"]
       87 GETTABLEKS                       R9 R9 K25 ["Name"]
       89 LOADK                            R10 K26 [" Tests ------"]
       90 CONCAT                           R7 R8 R10
       91 CALL                             R6 1 0
       92 GETIMPORT                        R6 K15 [require]
       94 GETIMPORT                        R7 K11 [script]
       96 GETTABLEKS                       R7 R7 K12 ["Parent"]
       98 GETTABLEKS                       R7 R7 K27 ["defineLuaFlags"]
      100 CALL                             R6 1 0
      101 NEWTABLE                         R8 0 1
      103 MOVE                             R9 R2
      104 SETLIST                          R8 R9 1 [1]
      106 MOVE                             R9 R5
      107 NAMECALL                         R6 R4 K28 ["run"]
      109 CALL                             R6 3 1
      110 GETIMPORT                        R7 K23 [print]
      112 LOADK                            R8 K29 ["----------------------------------"]
      113 CALL                             R7 1 0
      114 LOADB                            R7 0
      115 FASTCALL1                        TYPEOF R6 ; [+3]
      116 MOVE                             R9 R6
      117 GETIMPORT                        R8 K31 [typeof]
      119 CALL                             R8 1 1
      120 JUMPIFNOTEQKS                    R8 K32 ["table"] ; [+9]
      122 GETTABLEKS                       R9 R6 K34 ["failureCount"]
      124 ORK                              R8 R9 K33 [0]
      125 LOADN                            R9 0
      126 JUMPIFLT                         R9 R8 ; [+2]
      128 LOADB                            R7 0 +1
      129 LOADB                            R7 1
      130 JUMPIFNOT                        R7 ; [+10]
      131 GETIMPORT                        R8 K1 [game]
      133 LOADK                            R10 K35 ["TestService"]
      134 NAMECALL                         R8 R8 K3 ["GetService"]
      136 CALL                             R8 2 1
      137 LOADK                            R10 K36 ["TestEZ test run failed"]
      138 NAMECALL                         R8 R8 K37 ["Error"]
      140 CALL                             R8 2 0
      141 LOADK                            R11 K5 ["AvatarImporterFlags"]
      142 NAMECALL                         R9 R0 K6 ["FindFirstChild"]
      144 CALL                             R9 2 1
      145 MOVE                             R10 R9
      146 JUMPIFNOT                        R10 ; [+4]
      147 LOADK                            R12 K9 ["RunningUnderCLI"]
      148 NAMECALL                         R10 R9 K6 ["FindFirstChild"]
      150 CALL                             R10 2 1
      151 LOADB                            R8 0
      152 JUMPIFEQKNIL                     R10 ; [+7]
      154 GETTABLEKS                       R11 R10 K8 ["Value"]
      156 JUMPIFEQKB                       R11 TRUE ; [+2]
      158 LOADB                            R8 0 +1
      159 LOADB                            R8 1
      160 JUMPIFNOT                        R8 ; [+5]
      161 GETIMPORT                        R8 K39 [pcall]
      163 DUPCLOSURE                       R9 K40 [PROTO_1]
      164 CAPTURE                          VAL R7
      165 CALL                             R8 1 0
      166 RETURN                           R0 0
